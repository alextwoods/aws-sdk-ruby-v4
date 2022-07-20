# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppMesh
  module Parsers

    # Operation Parser for CreateGatewayRoute
    class CreateGatewayRoute
      def self.parse(http_resp)
        data = Types::CreateGatewayRouteOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.gateway_route = GatewayRouteData.parse(json)
        data
      end
    end

    class GatewayRouteData
      def self.parse(map)
        data = Types::GatewayRouteData.new
        data.mesh_name = map['meshName']
        data.gateway_route_name = map['gatewayRouteName']
        data.virtual_gateway_name = map['virtualGatewayName']
        data.spec = (GatewayRouteSpec.parse(map['spec']) unless map['spec'].nil?)
        data.metadata = (ResourceMetadata.parse(map['metadata']) unless map['metadata'].nil?)
        data.status = (GatewayRouteStatus.parse(map['status']) unless map['status'].nil?)
        return data
      end
    end

    class GatewayRouteStatus
      def self.parse(map)
        data = Types::GatewayRouteStatus.new
        data.status = map['status']
        return data
      end
    end

    class ResourceMetadata
      def self.parse(map)
        data = Types::ResourceMetadata.new
        data.arn = map['arn']
        data.version = map['version']
        data.uid = map['uid']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.mesh_owner = map['meshOwner']
        data.resource_owner = map['resourceOwner']
        return data
      end
    end

    class GatewayRouteSpec
      def self.parse(map)
        data = Types::GatewayRouteSpec.new
        data.priority = map['priority']
        data.http_route = (HttpGatewayRoute.parse(map['httpRoute']) unless map['httpRoute'].nil?)
        data.http2_route = (HttpGatewayRoute.parse(map['http2Route']) unless map['http2Route'].nil?)
        data.grpc_route = (GrpcGatewayRoute.parse(map['grpcRoute']) unless map['grpcRoute'].nil?)
        return data
      end
    end

    class GrpcGatewayRoute
      def self.parse(map)
        data = Types::GrpcGatewayRoute.new
        data.match = (GrpcGatewayRouteMatch.parse(map['match']) unless map['match'].nil?)
        data.action = (GrpcGatewayRouteAction.parse(map['action']) unless map['action'].nil?)
        return data
      end
    end

    class GrpcGatewayRouteAction
      def self.parse(map)
        data = Types::GrpcGatewayRouteAction.new
        data.target = (GatewayRouteTarget.parse(map['target']) unless map['target'].nil?)
        data.rewrite = (GrpcGatewayRouteRewrite.parse(map['rewrite']) unless map['rewrite'].nil?)
        return data
      end
    end

    class GrpcGatewayRouteRewrite
      def self.parse(map)
        data = Types::GrpcGatewayRouteRewrite.new
        data.hostname = (GatewayRouteHostnameRewrite.parse(map['hostname']) unless map['hostname'].nil?)
        return data
      end
    end

    class GatewayRouteHostnameRewrite
      def self.parse(map)
        data = Types::GatewayRouteHostnameRewrite.new
        data.default_target_hostname = map['defaultTargetHostname']
        return data
      end
    end

    class GatewayRouteTarget
      def self.parse(map)
        data = Types::GatewayRouteTarget.new
        data.virtual_service = (GatewayRouteVirtualService.parse(map['virtualService']) unless map['virtualService'].nil?)
        return data
      end
    end

    class GatewayRouteVirtualService
      def self.parse(map)
        data = Types::GatewayRouteVirtualService.new
        data.virtual_service_name = map['virtualServiceName']
        return data
      end
    end

    class GrpcGatewayRouteMatch
      def self.parse(map)
        data = Types::GrpcGatewayRouteMatch.new
        data.service_name = map['serviceName']
        data.hostname = (GatewayRouteHostnameMatch.parse(map['hostname']) unless map['hostname'].nil?)
        data.metadata = (GrpcGatewayRouteMetadataList.parse(map['metadata']) unless map['metadata'].nil?)
        return data
      end
    end

    class GrpcGatewayRouteMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << GrpcGatewayRouteMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class GrpcGatewayRouteMetadata
      def self.parse(map)
        data = Types::GrpcGatewayRouteMetadata.new
        data.name = map['name']
        data.invert = map['invert']
        data.match = (GrpcMetadataMatchMethod.parse(map['match']) unless map['match'].nil?)
        return data
      end
    end

    class GrpcMetadataMatchMethod
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'exact'
          value = value
          Types::GrpcMetadataMatchMethod::Exact.new(value) if value
        when 'regex'
          value = value
          Types::GrpcMetadataMatchMethod::Regex.new(value) if value
        when 'range'
          value = (MatchRange.parse(value) unless value.nil?)
          Types::GrpcMetadataMatchMethod::Range.new(value) if value
        when 'prefix'
          value = value
          Types::GrpcMetadataMatchMethod::Prefix.new(value) if value
        when 'suffix'
          value = value
          Types::GrpcMetadataMatchMethod::Suffix.new(value) if value
        else
          Types::GrpcMetadataMatchMethod::Unknown.new({name: key, value: value})
        end
      end
    end

    class MatchRange
      def self.parse(map)
        data = Types::MatchRange.new
        data.start = map['start']
        data.end = map['end']
        return data
      end
    end

    class GatewayRouteHostnameMatch
      def self.parse(map)
        data = Types::GatewayRouteHostnameMatch.new
        data.exact = map['exact']
        data.suffix = map['suffix']
        return data
      end
    end

    class HttpGatewayRoute
      def self.parse(map)
        data = Types::HttpGatewayRoute.new
        data.match = (HttpGatewayRouteMatch.parse(map['match']) unless map['match'].nil?)
        data.action = (HttpGatewayRouteAction.parse(map['action']) unless map['action'].nil?)
        return data
      end
    end

    class HttpGatewayRouteAction
      def self.parse(map)
        data = Types::HttpGatewayRouteAction.new
        data.target = (GatewayRouteTarget.parse(map['target']) unless map['target'].nil?)
        data.rewrite = (HttpGatewayRouteRewrite.parse(map['rewrite']) unless map['rewrite'].nil?)
        return data
      end
    end

    class HttpGatewayRouteRewrite
      def self.parse(map)
        data = Types::HttpGatewayRouteRewrite.new
        data.prefix = (HttpGatewayRoutePrefixRewrite.parse(map['prefix']) unless map['prefix'].nil?)
        data.path = (HttpGatewayRoutePathRewrite.parse(map['path']) unless map['path'].nil?)
        data.hostname = (GatewayRouteHostnameRewrite.parse(map['hostname']) unless map['hostname'].nil?)
        return data
      end
    end

    class HttpGatewayRoutePathRewrite
      def self.parse(map)
        data = Types::HttpGatewayRoutePathRewrite.new
        data.exact = map['exact']
        return data
      end
    end

    class HttpGatewayRoutePrefixRewrite
      def self.parse(map)
        data = Types::HttpGatewayRoutePrefixRewrite.new
        data.default_prefix = map['defaultPrefix']
        data.value = map['value']
        return data
      end
    end

    class HttpGatewayRouteMatch
      def self.parse(map)
        data = Types::HttpGatewayRouteMatch.new
        data.prefix = map['prefix']
        data.path = (HttpPathMatch.parse(map['path']) unless map['path'].nil?)
        data.query_parameters = (HttpQueryParameters.parse(map['queryParameters']) unless map['queryParameters'].nil?)
        data.member_method = map['method']
        data.hostname = (GatewayRouteHostnameMatch.parse(map['hostname']) unless map['hostname'].nil?)
        data.headers = (HttpGatewayRouteHeaders.parse(map['headers']) unless map['headers'].nil?)
        return data
      end
    end

    class HttpGatewayRouteHeaders
      def self.parse(list)
        data = []
        list.map do |value|
          data << HttpGatewayRouteHeader.parse(value) unless value.nil?
        end
        data
      end
    end

    class HttpGatewayRouteHeader
      def self.parse(map)
        data = Types::HttpGatewayRouteHeader.new
        data.name = map['name']
        data.invert = map['invert']
        data.match = (HeaderMatchMethod.parse(map['match']) unless map['match'].nil?)
        return data
      end
    end

    class HeaderMatchMethod
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'exact'
          value = value
          Types::HeaderMatchMethod::Exact.new(value) if value
        when 'regex'
          value = value
          Types::HeaderMatchMethod::Regex.new(value) if value
        when 'range'
          value = (MatchRange.parse(value) unless value.nil?)
          Types::HeaderMatchMethod::Range.new(value) if value
        when 'prefix'
          value = value
          Types::HeaderMatchMethod::Prefix.new(value) if value
        when 'suffix'
          value = value
          Types::HeaderMatchMethod::Suffix.new(value) if value
        else
          Types::HeaderMatchMethod::Unknown.new({name: key, value: value})
        end
      end
    end

    class HttpQueryParameters
      def self.parse(list)
        data = []
        list.map do |value|
          data << HttpQueryParameter.parse(value) unless value.nil?
        end
        data
      end
    end

    class HttpQueryParameter
      def self.parse(map)
        data = Types::HttpQueryParameter.new
        data.name = map['name']
        data.match = (QueryParameterMatch.parse(map['match']) unless map['match'].nil?)
        return data
      end
    end

    class QueryParameterMatch
      def self.parse(map)
        data = Types::QueryParameterMatch.new
        data.exact = map['exact']
        return data
      end
    end

    class HttpPathMatch
      def self.parse(map)
        data = Types::HttpPathMatch.new
        data.exact = map['exact']
        data.regex = map['regex']
        return data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateMesh
    class CreateMesh
      def self.parse(http_resp)
        data = Types::CreateMeshOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.mesh = MeshData.parse(json)
        data
      end
    end

    class MeshData
      def self.parse(map)
        data = Types::MeshData.new
        data.mesh_name = map['meshName']
        data.spec = (MeshSpec.parse(map['spec']) unless map['spec'].nil?)
        data.metadata = (ResourceMetadata.parse(map['metadata']) unless map['metadata'].nil?)
        data.status = (MeshStatus.parse(map['status']) unless map['status'].nil?)
        return data
      end
    end

    class MeshStatus
      def self.parse(map)
        data = Types::MeshStatus.new
        data.status = map['status']
        return data
      end
    end

    class MeshSpec
      def self.parse(map)
        data = Types::MeshSpec.new
        data.egress_filter = (EgressFilter.parse(map['egressFilter']) unless map['egressFilter'].nil?)
        data.service_discovery = (MeshServiceDiscovery.parse(map['serviceDiscovery']) unless map['serviceDiscovery'].nil?)
        return data
      end
    end

    class MeshServiceDiscovery
      def self.parse(map)
        data = Types::MeshServiceDiscovery.new
        data.ip_preference = map['ipPreference']
        return data
      end
    end

    class EgressFilter
      def self.parse(map)
        data = Types::EgressFilter.new
        data.type = map['type']
        return data
      end
    end

    # Operation Parser for CreateRoute
    class CreateRoute
      def self.parse(http_resp)
        data = Types::CreateRouteOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.route = RouteData.parse(json)
        data
      end
    end

    class RouteData
      def self.parse(map)
        data = Types::RouteData.new
        data.mesh_name = map['meshName']
        data.virtual_router_name = map['virtualRouterName']
        data.route_name = map['routeName']
        data.spec = (RouteSpec.parse(map['spec']) unless map['spec'].nil?)
        data.metadata = (ResourceMetadata.parse(map['metadata']) unless map['metadata'].nil?)
        data.status = (RouteStatus.parse(map['status']) unless map['status'].nil?)
        return data
      end
    end

    class RouteStatus
      def self.parse(map)
        data = Types::RouteStatus.new
        data.status = map['status']
        return data
      end
    end

    class RouteSpec
      def self.parse(map)
        data = Types::RouteSpec.new
        data.priority = map['priority']
        data.http_route = (HttpRoute.parse(map['httpRoute']) unless map['httpRoute'].nil?)
        data.tcp_route = (TcpRoute.parse(map['tcpRoute']) unless map['tcpRoute'].nil?)
        data.http2_route = (HttpRoute.parse(map['http2Route']) unless map['http2Route'].nil?)
        data.grpc_route = (GrpcRoute.parse(map['grpcRoute']) unless map['grpcRoute'].nil?)
        return data
      end
    end

    class GrpcRoute
      def self.parse(map)
        data = Types::GrpcRoute.new
        data.action = (GrpcRouteAction.parse(map['action']) unless map['action'].nil?)
        data.match = (GrpcRouteMatch.parse(map['match']) unless map['match'].nil?)
        data.retry_policy = (GrpcRetryPolicy.parse(map['retryPolicy']) unless map['retryPolicy'].nil?)
        data.timeout = (GrpcTimeout.parse(map['timeout']) unless map['timeout'].nil?)
        return data
      end
    end

    class GrpcTimeout
      def self.parse(map)
        data = Types::GrpcTimeout.new
        data.per_request = (Duration.parse(map['perRequest']) unless map['perRequest'].nil?)
        data.idle = (Duration.parse(map['idle']) unless map['idle'].nil?)
        return data
      end
    end

    class Duration
      def self.parse(map)
        data = Types::Duration.new
        data.value = map['value']
        data.unit = map['unit']
        return data
      end
    end

    class GrpcRetryPolicy
      def self.parse(map)
        data = Types::GrpcRetryPolicy.new
        data.per_retry_timeout = (Duration.parse(map['perRetryTimeout']) unless map['perRetryTimeout'].nil?)
        data.max_retries = map['maxRetries']
        data.http_retry_events = (HttpRetryPolicyEvents.parse(map['httpRetryEvents']) unless map['httpRetryEvents'].nil?)
        data.tcp_retry_events = (TcpRetryPolicyEvents.parse(map['tcpRetryEvents']) unless map['tcpRetryEvents'].nil?)
        data.grpc_retry_events = (GrpcRetryPolicyEvents.parse(map['grpcRetryEvents']) unless map['grpcRetryEvents'].nil?)
        return data
      end
    end

    class GrpcRetryPolicyEvents
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class TcpRetryPolicyEvents
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class HttpRetryPolicyEvents
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class GrpcRouteMatch
      def self.parse(map)
        data = Types::GrpcRouteMatch.new
        data.service_name = map['serviceName']
        data.method_name = map['methodName']
        data.metadata = (GrpcRouteMetadataList.parse(map['metadata']) unless map['metadata'].nil?)
        return data
      end
    end

    class GrpcRouteMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << GrpcRouteMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class GrpcRouteMetadata
      def self.parse(map)
        data = Types::GrpcRouteMetadata.new
        data.name = map['name']
        data.invert = map['invert']
        data.match = (GrpcRouteMetadataMatchMethod.parse(map['match']) unless map['match'].nil?)
        return data
      end
    end

    class GrpcRouteMetadataMatchMethod
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'exact'
          value = value
          Types::GrpcRouteMetadataMatchMethod::Exact.new(value) if value
        when 'regex'
          value = value
          Types::GrpcRouteMetadataMatchMethod::Regex.new(value) if value
        when 'range'
          value = (MatchRange.parse(value) unless value.nil?)
          Types::GrpcRouteMetadataMatchMethod::Range.new(value) if value
        when 'prefix'
          value = value
          Types::GrpcRouteMetadataMatchMethod::Prefix.new(value) if value
        when 'suffix'
          value = value
          Types::GrpcRouteMetadataMatchMethod::Suffix.new(value) if value
        else
          Types::GrpcRouteMetadataMatchMethod::Unknown.new({name: key, value: value})
        end
      end
    end

    class GrpcRouteAction
      def self.parse(map)
        data = Types::GrpcRouteAction.new
        data.weighted_targets = (WeightedTargets.parse(map['weightedTargets']) unless map['weightedTargets'].nil?)
        return data
      end
    end

    class WeightedTargets
      def self.parse(list)
        data = []
        list.map do |value|
          data << WeightedTarget.parse(value) unless value.nil?
        end
        data
      end
    end

    class WeightedTarget
      def self.parse(map)
        data = Types::WeightedTarget.new
        data.virtual_node = map['virtualNode']
        data.weight = map['weight']
        return data
      end
    end

    class HttpRoute
      def self.parse(map)
        data = Types::HttpRoute.new
        data.match = (HttpRouteMatch.parse(map['match']) unless map['match'].nil?)
        data.action = (HttpRouteAction.parse(map['action']) unless map['action'].nil?)
        data.retry_policy = (HttpRetryPolicy.parse(map['retryPolicy']) unless map['retryPolicy'].nil?)
        data.timeout = (HttpTimeout.parse(map['timeout']) unless map['timeout'].nil?)
        return data
      end
    end

    class HttpTimeout
      def self.parse(map)
        data = Types::HttpTimeout.new
        data.per_request = (Duration.parse(map['perRequest']) unless map['perRequest'].nil?)
        data.idle = (Duration.parse(map['idle']) unless map['idle'].nil?)
        return data
      end
    end

    class HttpRetryPolicy
      def self.parse(map)
        data = Types::HttpRetryPolicy.new
        data.per_retry_timeout = (Duration.parse(map['perRetryTimeout']) unless map['perRetryTimeout'].nil?)
        data.max_retries = map['maxRetries']
        data.http_retry_events = (HttpRetryPolicyEvents.parse(map['httpRetryEvents']) unless map['httpRetryEvents'].nil?)
        data.tcp_retry_events = (TcpRetryPolicyEvents.parse(map['tcpRetryEvents']) unless map['tcpRetryEvents'].nil?)
        return data
      end
    end

    class HttpRouteAction
      def self.parse(map)
        data = Types::HttpRouteAction.new
        data.weighted_targets = (WeightedTargets.parse(map['weightedTargets']) unless map['weightedTargets'].nil?)
        return data
      end
    end

    class HttpRouteMatch
      def self.parse(map)
        data = Types::HttpRouteMatch.new
        data.prefix = map['prefix']
        data.path = (HttpPathMatch.parse(map['path']) unless map['path'].nil?)
        data.query_parameters = (HttpQueryParameters.parse(map['queryParameters']) unless map['queryParameters'].nil?)
        data.member_method = map['method']
        data.scheme = map['scheme']
        data.headers = (HttpRouteHeaders.parse(map['headers']) unless map['headers'].nil?)
        return data
      end
    end

    class HttpRouteHeaders
      def self.parse(list)
        data = []
        list.map do |value|
          data << HttpRouteHeader.parse(value) unless value.nil?
        end
        data
      end
    end

    class HttpRouteHeader
      def self.parse(map)
        data = Types::HttpRouteHeader.new
        data.name = map['name']
        data.invert = map['invert']
        data.match = (HeaderMatchMethod.parse(map['match']) unless map['match'].nil?)
        return data
      end
    end

    class TcpRoute
      def self.parse(map)
        data = Types::TcpRoute.new
        data.action = (TcpRouteAction.parse(map['action']) unless map['action'].nil?)
        data.timeout = (TcpTimeout.parse(map['timeout']) unless map['timeout'].nil?)
        return data
      end
    end

    class TcpTimeout
      def self.parse(map)
        data = Types::TcpTimeout.new
        data.idle = (Duration.parse(map['idle']) unless map['idle'].nil?)
        return data
      end
    end

    class TcpRouteAction
      def self.parse(map)
        data = Types::TcpRouteAction.new
        data.weighted_targets = (WeightedTargets.parse(map['weightedTargets']) unless map['weightedTargets'].nil?)
        return data
      end
    end

    # Operation Parser for CreateVirtualGateway
    class CreateVirtualGateway
      def self.parse(http_resp)
        data = Types::CreateVirtualGatewayOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_gateway = VirtualGatewayData.parse(json)
        data
      end
    end

    class VirtualGatewayData
      def self.parse(map)
        data = Types::VirtualGatewayData.new
        data.mesh_name = map['meshName']
        data.virtual_gateway_name = map['virtualGatewayName']
        data.spec = (VirtualGatewaySpec.parse(map['spec']) unless map['spec'].nil?)
        data.metadata = (ResourceMetadata.parse(map['metadata']) unless map['metadata'].nil?)
        data.status = (VirtualGatewayStatus.parse(map['status']) unless map['status'].nil?)
        return data
      end
    end

    class VirtualGatewayStatus
      def self.parse(map)
        data = Types::VirtualGatewayStatus.new
        data.status = map['status']
        return data
      end
    end

    class VirtualGatewaySpec
      def self.parse(map)
        data = Types::VirtualGatewaySpec.new
        data.backend_defaults = (VirtualGatewayBackendDefaults.parse(map['backendDefaults']) unless map['backendDefaults'].nil?)
        data.listeners = (VirtualGatewayListeners.parse(map['listeners']) unless map['listeners'].nil?)
        data.logging = (VirtualGatewayLogging.parse(map['logging']) unless map['logging'].nil?)
        return data
      end
    end

    class VirtualGatewayLogging
      def self.parse(map)
        data = Types::VirtualGatewayLogging.new
        data.access_log = (VirtualGatewayAccessLog.parse(map['accessLog']) unless map['accessLog'].nil?)
        return data
      end
    end

    class VirtualGatewayAccessLog
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'file'
          value = (VirtualGatewayFileAccessLog.parse(value) unless value.nil?)
          Types::VirtualGatewayAccessLog::File.new(value) if value
        else
          Types::VirtualGatewayAccessLog::Unknown.new({name: key, value: value})
        end
      end
    end

    class VirtualGatewayFileAccessLog
      def self.parse(map)
        data = Types::VirtualGatewayFileAccessLog.new
        data.path = map['path']
        return data
      end
    end

    class VirtualGatewayListeners
      def self.parse(list)
        data = []
        list.map do |value|
          data << VirtualGatewayListener.parse(value) unless value.nil?
        end
        data
      end
    end

    class VirtualGatewayListener
      def self.parse(map)
        data = Types::VirtualGatewayListener.new
        data.health_check = (VirtualGatewayHealthCheckPolicy.parse(map['healthCheck']) unless map['healthCheck'].nil?)
        data.port_mapping = (VirtualGatewayPortMapping.parse(map['portMapping']) unless map['portMapping'].nil?)
        data.tls = (VirtualGatewayListenerTls.parse(map['tls']) unless map['tls'].nil?)
        data.connection_pool = (VirtualGatewayConnectionPool.parse(map['connectionPool']) unless map['connectionPool'].nil?)
        return data
      end
    end

    class VirtualGatewayConnectionPool
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'http'
          value = (VirtualGatewayHttpConnectionPool.parse(value) unless value.nil?)
          Types::VirtualGatewayConnectionPool::Http.new(value) if value
        when 'http2'
          value = (VirtualGatewayHttp2ConnectionPool.parse(value) unless value.nil?)
          Types::VirtualGatewayConnectionPool::Http2.new(value) if value
        when 'grpc'
          value = (VirtualGatewayGrpcConnectionPool.parse(value) unless value.nil?)
          Types::VirtualGatewayConnectionPool::Grpc.new(value) if value
        else
          Types::VirtualGatewayConnectionPool::Unknown.new({name: key, value: value})
        end
      end
    end

    class VirtualGatewayGrpcConnectionPool
      def self.parse(map)
        data = Types::VirtualGatewayGrpcConnectionPool.new
        data.max_requests = map['maxRequests']
        return data
      end
    end

    class VirtualGatewayHttp2ConnectionPool
      def self.parse(map)
        data = Types::VirtualGatewayHttp2ConnectionPool.new
        data.max_requests = map['maxRequests']
        return data
      end
    end

    class VirtualGatewayHttpConnectionPool
      def self.parse(map)
        data = Types::VirtualGatewayHttpConnectionPool.new
        data.max_connections = map['maxConnections']
        data.max_pending_requests = map['maxPendingRequests']
        return data
      end
    end

    class VirtualGatewayListenerTls
      def self.parse(map)
        data = Types::VirtualGatewayListenerTls.new
        data.mode = map['mode']
        data.validation = (VirtualGatewayListenerTlsValidationContext.parse(map['validation']) unless map['validation'].nil?)
        data.certificate = (VirtualGatewayListenerTlsCertificate.parse(map['certificate']) unless map['certificate'].nil?)
        return data
      end
    end

    class VirtualGatewayListenerTlsCertificate
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'acm'
          value = (VirtualGatewayListenerTlsAcmCertificate.parse(value) unless value.nil?)
          Types::VirtualGatewayListenerTlsCertificate::Acm.new(value) if value
        when 'file'
          value = (VirtualGatewayListenerTlsFileCertificate.parse(value) unless value.nil?)
          Types::VirtualGatewayListenerTlsCertificate::File.new(value) if value
        when 'sds'
          value = (VirtualGatewayListenerTlsSdsCertificate.parse(value) unless value.nil?)
          Types::VirtualGatewayListenerTlsCertificate::Sds.new(value) if value
        else
          Types::VirtualGatewayListenerTlsCertificate::Unknown.new({name: key, value: value})
        end
      end
    end

    class VirtualGatewayListenerTlsSdsCertificate
      def self.parse(map)
        data = Types::VirtualGatewayListenerTlsSdsCertificate.new
        data.secret_name = map['secretName']
        return data
      end
    end

    class VirtualGatewayListenerTlsFileCertificate
      def self.parse(map)
        data = Types::VirtualGatewayListenerTlsFileCertificate.new
        data.certificate_chain = map['certificateChain']
        data.private_key = map['privateKey']
        return data
      end
    end

    class VirtualGatewayListenerTlsAcmCertificate
      def self.parse(map)
        data = Types::VirtualGatewayListenerTlsAcmCertificate.new
        data.certificate_arn = map['certificateArn']
        return data
      end
    end

    class VirtualGatewayListenerTlsValidationContext
      def self.parse(map)
        data = Types::VirtualGatewayListenerTlsValidationContext.new
        data.member_trust = (VirtualGatewayListenerTlsValidationContextTrust.parse(map['trust']) unless map['trust'].nil?)
        data.subject_alternative_names = (SubjectAlternativeNames.parse(map['subjectAlternativeNames']) unless map['subjectAlternativeNames'].nil?)
        return data
      end
    end

    class SubjectAlternativeNames
      def self.parse(map)
        data = Types::SubjectAlternativeNames.new
        data.match = (SubjectAlternativeNameMatchers.parse(map['match']) unless map['match'].nil?)
        return data
      end
    end

    class SubjectAlternativeNameMatchers
      def self.parse(map)
        data = Types::SubjectAlternativeNameMatchers.new
        data.exact = (SubjectAlternativeNameList.parse(map['exact']) unless map['exact'].nil?)
        return data
      end
    end

    class SubjectAlternativeNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class VirtualGatewayListenerTlsValidationContextTrust
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'file'
          value = (VirtualGatewayTlsValidationContextFileTrust.parse(value) unless value.nil?)
          Types::VirtualGatewayListenerTlsValidationContextTrust::File.new(value) if value
        when 'sds'
          value = (VirtualGatewayTlsValidationContextSdsTrust.parse(value) unless value.nil?)
          Types::VirtualGatewayListenerTlsValidationContextTrust::Sds.new(value) if value
        else
          Types::VirtualGatewayListenerTlsValidationContextTrust::Unknown.new({name: key, value: value})
        end
      end
    end

    class VirtualGatewayTlsValidationContextSdsTrust
      def self.parse(map)
        data = Types::VirtualGatewayTlsValidationContextSdsTrust.new
        data.secret_name = map['secretName']
        return data
      end
    end

    class VirtualGatewayTlsValidationContextFileTrust
      def self.parse(map)
        data = Types::VirtualGatewayTlsValidationContextFileTrust.new
        data.certificate_chain = map['certificateChain']
        return data
      end
    end

    class VirtualGatewayPortMapping
      def self.parse(map)
        data = Types::VirtualGatewayPortMapping.new
        data.port = map['port']
        data.protocol = map['protocol']
        return data
      end
    end

    class VirtualGatewayHealthCheckPolicy
      def self.parse(map)
        data = Types::VirtualGatewayHealthCheckPolicy.new
        data.timeout_millis = map['timeoutMillis']
        data.interval_millis = map['intervalMillis']
        data.protocol = map['protocol']
        data.port = map['port']
        data.path = map['path']
        data.healthy_threshold = map['healthyThreshold']
        data.unhealthy_threshold = map['unhealthyThreshold']
        return data
      end
    end

    class VirtualGatewayBackendDefaults
      def self.parse(map)
        data = Types::VirtualGatewayBackendDefaults.new
        data.client_policy = (VirtualGatewayClientPolicy.parse(map['clientPolicy']) unless map['clientPolicy'].nil?)
        return data
      end
    end

    class VirtualGatewayClientPolicy
      def self.parse(map)
        data = Types::VirtualGatewayClientPolicy.new
        data.tls = (VirtualGatewayClientPolicyTls.parse(map['tls']) unless map['tls'].nil?)
        return data
      end
    end

    class VirtualGatewayClientPolicyTls
      def self.parse(map)
        data = Types::VirtualGatewayClientPolicyTls.new
        data.enforce = map['enforce']
        data.ports = (PortSet.parse(map['ports']) unless map['ports'].nil?)
        data.certificate = (VirtualGatewayClientTlsCertificate.parse(map['certificate']) unless map['certificate'].nil?)
        data.validation = (VirtualGatewayTlsValidationContext.parse(map['validation']) unless map['validation'].nil?)
        return data
      end
    end

    class VirtualGatewayTlsValidationContext
      def self.parse(map)
        data = Types::VirtualGatewayTlsValidationContext.new
        data.member_trust = (VirtualGatewayTlsValidationContextTrust.parse(map['trust']) unless map['trust'].nil?)
        data.subject_alternative_names = (SubjectAlternativeNames.parse(map['subjectAlternativeNames']) unless map['subjectAlternativeNames'].nil?)
        return data
      end
    end

    class VirtualGatewayTlsValidationContextTrust
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'acm'
          value = (VirtualGatewayTlsValidationContextAcmTrust.parse(value) unless value.nil?)
          Types::VirtualGatewayTlsValidationContextTrust::Acm.new(value) if value
        when 'file'
          value = (VirtualGatewayTlsValidationContextFileTrust.parse(value) unless value.nil?)
          Types::VirtualGatewayTlsValidationContextTrust::File.new(value) if value
        when 'sds'
          value = (VirtualGatewayTlsValidationContextSdsTrust.parse(value) unless value.nil?)
          Types::VirtualGatewayTlsValidationContextTrust::Sds.new(value) if value
        else
          Types::VirtualGatewayTlsValidationContextTrust::Unknown.new({name: key, value: value})
        end
      end
    end

    class VirtualGatewayTlsValidationContextAcmTrust
      def self.parse(map)
        data = Types::VirtualGatewayTlsValidationContextAcmTrust.new
        data.certificate_authority_arns = (VirtualGatewayCertificateAuthorityArns.parse(map['certificateAuthorityArns']) unless map['certificateAuthorityArns'].nil?)
        return data
      end
    end

    class VirtualGatewayCertificateAuthorityArns
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class VirtualGatewayClientTlsCertificate
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'file'
          value = (VirtualGatewayListenerTlsFileCertificate.parse(value) unless value.nil?)
          Types::VirtualGatewayClientTlsCertificate::File.new(value) if value
        when 'sds'
          value = (VirtualGatewayListenerTlsSdsCertificate.parse(value) unless value.nil?)
          Types::VirtualGatewayClientTlsCertificate::Sds.new(value) if value
        else
          Types::VirtualGatewayClientTlsCertificate::Unknown.new({name: key, value: value})
        end
      end
    end

    class PortSet
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateVirtualNode
    class CreateVirtualNode
      def self.parse(http_resp)
        data = Types::CreateVirtualNodeOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_node = VirtualNodeData.parse(json)
        data
      end
    end

    class VirtualNodeData
      def self.parse(map)
        data = Types::VirtualNodeData.new
        data.mesh_name = map['meshName']
        data.virtual_node_name = map['virtualNodeName']
        data.spec = (VirtualNodeSpec.parse(map['spec']) unless map['spec'].nil?)
        data.metadata = (ResourceMetadata.parse(map['metadata']) unless map['metadata'].nil?)
        data.status = (VirtualNodeStatus.parse(map['status']) unless map['status'].nil?)
        return data
      end
    end

    class VirtualNodeStatus
      def self.parse(map)
        data = Types::VirtualNodeStatus.new
        data.status = map['status']
        return data
      end
    end

    class VirtualNodeSpec
      def self.parse(map)
        data = Types::VirtualNodeSpec.new
        data.service_discovery = (ServiceDiscovery.parse(map['serviceDiscovery']) unless map['serviceDiscovery'].nil?)
        data.listeners = (Listeners.parse(map['listeners']) unless map['listeners'].nil?)
        data.backends = (Backends.parse(map['backends']) unless map['backends'].nil?)
        data.backend_defaults = (BackendDefaults.parse(map['backendDefaults']) unless map['backendDefaults'].nil?)
        data.logging = (Logging.parse(map['logging']) unless map['logging'].nil?)
        return data
      end
    end

    class Logging
      def self.parse(map)
        data = Types::Logging.new
        data.access_log = (AccessLog.parse(map['accessLog']) unless map['accessLog'].nil?)
        return data
      end
    end

    class AccessLog
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'file'
          value = (FileAccessLog.parse(value) unless value.nil?)
          Types::AccessLog::File.new(value) if value
        else
          Types::AccessLog::Unknown.new({name: key, value: value})
        end
      end
    end

    class FileAccessLog
      def self.parse(map)
        data = Types::FileAccessLog.new
        data.path = map['path']
        return data
      end
    end

    class BackendDefaults
      def self.parse(map)
        data = Types::BackendDefaults.new
        data.client_policy = (ClientPolicy.parse(map['clientPolicy']) unless map['clientPolicy'].nil?)
        return data
      end
    end

    class ClientPolicy
      def self.parse(map)
        data = Types::ClientPolicy.new
        data.tls = (ClientPolicyTls.parse(map['tls']) unless map['tls'].nil?)
        return data
      end
    end

    class ClientPolicyTls
      def self.parse(map)
        data = Types::ClientPolicyTls.new
        data.enforce = map['enforce']
        data.ports = (PortSet.parse(map['ports']) unless map['ports'].nil?)
        data.certificate = (ClientTlsCertificate.parse(map['certificate']) unless map['certificate'].nil?)
        data.validation = (TlsValidationContext.parse(map['validation']) unless map['validation'].nil?)
        return data
      end
    end

    class TlsValidationContext
      def self.parse(map)
        data = Types::TlsValidationContext.new
        data.member_trust = (TlsValidationContextTrust.parse(map['trust']) unless map['trust'].nil?)
        data.subject_alternative_names = (SubjectAlternativeNames.parse(map['subjectAlternativeNames']) unless map['subjectAlternativeNames'].nil?)
        return data
      end
    end

    class TlsValidationContextTrust
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'acm'
          value = (TlsValidationContextAcmTrust.parse(value) unless value.nil?)
          Types::TlsValidationContextTrust::Acm.new(value) if value
        when 'file'
          value = (TlsValidationContextFileTrust.parse(value) unless value.nil?)
          Types::TlsValidationContextTrust::File.new(value) if value
        when 'sds'
          value = (TlsValidationContextSdsTrust.parse(value) unless value.nil?)
          Types::TlsValidationContextTrust::Sds.new(value) if value
        else
          Types::TlsValidationContextTrust::Unknown.new({name: key, value: value})
        end
      end
    end

    class TlsValidationContextSdsTrust
      def self.parse(map)
        data = Types::TlsValidationContextSdsTrust.new
        data.secret_name = map['secretName']
        return data
      end
    end

    class TlsValidationContextFileTrust
      def self.parse(map)
        data = Types::TlsValidationContextFileTrust.new
        data.certificate_chain = map['certificateChain']
        return data
      end
    end

    class TlsValidationContextAcmTrust
      def self.parse(map)
        data = Types::TlsValidationContextAcmTrust.new
        data.certificate_authority_arns = (CertificateAuthorityArns.parse(map['certificateAuthorityArns']) unless map['certificateAuthorityArns'].nil?)
        return data
      end
    end

    class CertificateAuthorityArns
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ClientTlsCertificate
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'file'
          value = (ListenerTlsFileCertificate.parse(value) unless value.nil?)
          Types::ClientTlsCertificate::File.new(value) if value
        when 'sds'
          value = (ListenerTlsSdsCertificate.parse(value) unless value.nil?)
          Types::ClientTlsCertificate::Sds.new(value) if value
        else
          Types::ClientTlsCertificate::Unknown.new({name: key, value: value})
        end
      end
    end

    class ListenerTlsSdsCertificate
      def self.parse(map)
        data = Types::ListenerTlsSdsCertificate.new
        data.secret_name = map['secretName']
        return data
      end
    end

    class ListenerTlsFileCertificate
      def self.parse(map)
        data = Types::ListenerTlsFileCertificate.new
        data.certificate_chain = map['certificateChain']
        data.private_key = map['privateKey']
        return data
      end
    end

    class Backends
      def self.parse(list)
        data = []
        list.map do |value|
          data << Backend.parse(value) unless value.nil?
        end
        data
      end
    end

    class Backend
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'virtualService'
          value = (VirtualServiceBackend.parse(value) unless value.nil?)
          Types::Backend::VirtualService.new(value) if value
        else
          Types::Backend::Unknown.new({name: key, value: value})
        end
      end
    end

    class VirtualServiceBackend
      def self.parse(map)
        data = Types::VirtualServiceBackend.new
        data.virtual_service_name = map['virtualServiceName']
        data.client_policy = (ClientPolicy.parse(map['clientPolicy']) unless map['clientPolicy'].nil?)
        return data
      end
    end

    class Listeners
      def self.parse(list)
        data = []
        list.map do |value|
          data << Listener.parse(value) unless value.nil?
        end
        data
      end
    end

    class Listener
      def self.parse(map)
        data = Types::Listener.new
        data.port_mapping = (PortMapping.parse(map['portMapping']) unless map['portMapping'].nil?)
        data.tls = (ListenerTls.parse(map['tls']) unless map['tls'].nil?)
        data.health_check = (HealthCheckPolicy.parse(map['healthCheck']) unless map['healthCheck'].nil?)
        data.timeout = (ListenerTimeout.parse(map['timeout']) unless map['timeout'].nil?)
        data.outlier_detection = (OutlierDetection.parse(map['outlierDetection']) unless map['outlierDetection'].nil?)
        data.connection_pool = (VirtualNodeConnectionPool.parse(map['connectionPool']) unless map['connectionPool'].nil?)
        return data
      end
    end

    class VirtualNodeConnectionPool
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'tcp'
          value = (VirtualNodeTcpConnectionPool.parse(value) unless value.nil?)
          Types::VirtualNodeConnectionPool::Tcp.new(value) if value
        when 'http'
          value = (VirtualNodeHttpConnectionPool.parse(value) unless value.nil?)
          Types::VirtualNodeConnectionPool::Http.new(value) if value
        when 'http2'
          value = (VirtualNodeHttp2ConnectionPool.parse(value) unless value.nil?)
          Types::VirtualNodeConnectionPool::Http2.new(value) if value
        when 'grpc'
          value = (VirtualNodeGrpcConnectionPool.parse(value) unless value.nil?)
          Types::VirtualNodeConnectionPool::Grpc.new(value) if value
        else
          Types::VirtualNodeConnectionPool::Unknown.new({name: key, value: value})
        end
      end
    end

    class VirtualNodeGrpcConnectionPool
      def self.parse(map)
        data = Types::VirtualNodeGrpcConnectionPool.new
        data.max_requests = map['maxRequests']
        return data
      end
    end

    class VirtualNodeHttp2ConnectionPool
      def self.parse(map)
        data = Types::VirtualNodeHttp2ConnectionPool.new
        data.max_requests = map['maxRequests']
        return data
      end
    end

    class VirtualNodeHttpConnectionPool
      def self.parse(map)
        data = Types::VirtualNodeHttpConnectionPool.new
        data.max_connections = map['maxConnections']
        data.max_pending_requests = map['maxPendingRequests']
        return data
      end
    end

    class VirtualNodeTcpConnectionPool
      def self.parse(map)
        data = Types::VirtualNodeTcpConnectionPool.new
        data.max_connections = map['maxConnections']
        return data
      end
    end

    class OutlierDetection
      def self.parse(map)
        data = Types::OutlierDetection.new
        data.max_server_errors = map['maxServerErrors']
        data.interval = (Duration.parse(map['interval']) unless map['interval'].nil?)
        data.base_ejection_duration = (Duration.parse(map['baseEjectionDuration']) unless map['baseEjectionDuration'].nil?)
        data.max_ejection_percent = map['maxEjectionPercent']
        return data
      end
    end

    class ListenerTimeout
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'tcp'
          value = (TcpTimeout.parse(value) unless value.nil?)
          Types::ListenerTimeout::Tcp.new(value) if value
        when 'http'
          value = (HttpTimeout.parse(value) unless value.nil?)
          Types::ListenerTimeout::Http.new(value) if value
        when 'http2'
          value = (HttpTimeout.parse(value) unless value.nil?)
          Types::ListenerTimeout::Http2.new(value) if value
        when 'grpc'
          value = (GrpcTimeout.parse(value) unless value.nil?)
          Types::ListenerTimeout::Grpc.new(value) if value
        else
          Types::ListenerTimeout::Unknown.new({name: key, value: value})
        end
      end
    end

    class HealthCheckPolicy
      def self.parse(map)
        data = Types::HealthCheckPolicy.new
        data.timeout_millis = map['timeoutMillis']
        data.interval_millis = map['intervalMillis']
        data.protocol = map['protocol']
        data.port = map['port']
        data.path = map['path']
        data.healthy_threshold = map['healthyThreshold']
        data.unhealthy_threshold = map['unhealthyThreshold']
        return data
      end
    end

    class ListenerTls
      def self.parse(map)
        data = Types::ListenerTls.new
        data.mode = map['mode']
        data.certificate = (ListenerTlsCertificate.parse(map['certificate']) unless map['certificate'].nil?)
        data.validation = (ListenerTlsValidationContext.parse(map['validation']) unless map['validation'].nil?)
        return data
      end
    end

    class ListenerTlsValidationContext
      def self.parse(map)
        data = Types::ListenerTlsValidationContext.new
        data.member_trust = (ListenerTlsValidationContextTrust.parse(map['trust']) unless map['trust'].nil?)
        data.subject_alternative_names = (SubjectAlternativeNames.parse(map['subjectAlternativeNames']) unless map['subjectAlternativeNames'].nil?)
        return data
      end
    end

    class ListenerTlsValidationContextTrust
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'file'
          value = (TlsValidationContextFileTrust.parse(value) unless value.nil?)
          Types::ListenerTlsValidationContextTrust::File.new(value) if value
        when 'sds'
          value = (TlsValidationContextSdsTrust.parse(value) unless value.nil?)
          Types::ListenerTlsValidationContextTrust::Sds.new(value) if value
        else
          Types::ListenerTlsValidationContextTrust::Unknown.new({name: key, value: value})
        end
      end
    end

    class ListenerTlsCertificate
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'acm'
          value = (ListenerTlsAcmCertificate.parse(value) unless value.nil?)
          Types::ListenerTlsCertificate::Acm.new(value) if value
        when 'file'
          value = (ListenerTlsFileCertificate.parse(value) unless value.nil?)
          Types::ListenerTlsCertificate::File.new(value) if value
        when 'sds'
          value = (ListenerTlsSdsCertificate.parse(value) unless value.nil?)
          Types::ListenerTlsCertificate::Sds.new(value) if value
        else
          Types::ListenerTlsCertificate::Unknown.new({name: key, value: value})
        end
      end
    end

    class ListenerTlsAcmCertificate
      def self.parse(map)
        data = Types::ListenerTlsAcmCertificate.new
        data.certificate_arn = map['certificateArn']
        return data
      end
    end

    class PortMapping
      def self.parse(map)
        data = Types::PortMapping.new
        data.port = map['port']
        data.protocol = map['protocol']
        return data
      end
    end

    class ServiceDiscovery
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'dns'
          value = (DnsServiceDiscovery.parse(value) unless value.nil?)
          Types::ServiceDiscovery::Dns.new(value) if value
        when 'awsCloudMap'
          value = (AwsCloudMapServiceDiscovery.parse(value) unless value.nil?)
          Types::ServiceDiscovery::AwsCloudMap.new(value) if value
        else
          Types::ServiceDiscovery::Unknown.new({name: key, value: value})
        end
      end
    end

    class AwsCloudMapServiceDiscovery
      def self.parse(map)
        data = Types::AwsCloudMapServiceDiscovery.new
        data.namespace_name = map['namespaceName']
        data.service_name = map['serviceName']
        data.attributes = (AwsCloudMapInstanceAttributes.parse(map['attributes']) unless map['attributes'].nil?)
        data.ip_preference = map['ipPreference']
        return data
      end
    end

    class AwsCloudMapInstanceAttributes
      def self.parse(list)
        data = []
        list.map do |value|
          data << AwsCloudMapInstanceAttribute.parse(value) unless value.nil?
        end
        data
      end
    end

    class AwsCloudMapInstanceAttribute
      def self.parse(map)
        data = Types::AwsCloudMapInstanceAttribute.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class DnsServiceDiscovery
      def self.parse(map)
        data = Types::DnsServiceDiscovery.new
        data.hostname = map['hostname']
        data.response_type = map['responseType']
        data.ip_preference = map['ipPreference']
        return data
      end
    end

    # Operation Parser for CreateVirtualRouter
    class CreateVirtualRouter
      def self.parse(http_resp)
        data = Types::CreateVirtualRouterOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_router = VirtualRouterData.parse(json)
        data
      end
    end

    class VirtualRouterData
      def self.parse(map)
        data = Types::VirtualRouterData.new
        data.mesh_name = map['meshName']
        data.virtual_router_name = map['virtualRouterName']
        data.spec = (VirtualRouterSpec.parse(map['spec']) unless map['spec'].nil?)
        data.metadata = (ResourceMetadata.parse(map['metadata']) unless map['metadata'].nil?)
        data.status = (VirtualRouterStatus.parse(map['status']) unless map['status'].nil?)
        return data
      end
    end

    class VirtualRouterStatus
      def self.parse(map)
        data = Types::VirtualRouterStatus.new
        data.status = map['status']
        return data
      end
    end

    class VirtualRouterSpec
      def self.parse(map)
        data = Types::VirtualRouterSpec.new
        data.listeners = (VirtualRouterListeners.parse(map['listeners']) unless map['listeners'].nil?)
        return data
      end
    end

    class VirtualRouterListeners
      def self.parse(list)
        data = []
        list.map do |value|
          data << VirtualRouterListener.parse(value) unless value.nil?
        end
        data
      end
    end

    class VirtualRouterListener
      def self.parse(map)
        data = Types::VirtualRouterListener.new
        data.port_mapping = (PortMapping.parse(map['portMapping']) unless map['portMapping'].nil?)
        return data
      end
    end

    # Operation Parser for CreateVirtualService
    class CreateVirtualService
      def self.parse(http_resp)
        data = Types::CreateVirtualServiceOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_service = VirtualServiceData.parse(json)
        data
      end
    end

    class VirtualServiceData
      def self.parse(map)
        data = Types::VirtualServiceData.new
        data.mesh_name = map['meshName']
        data.virtual_service_name = map['virtualServiceName']
        data.spec = (VirtualServiceSpec.parse(map['spec']) unless map['spec'].nil?)
        data.metadata = (ResourceMetadata.parse(map['metadata']) unless map['metadata'].nil?)
        data.status = (VirtualServiceStatus.parse(map['status']) unless map['status'].nil?)
        return data
      end
    end

    class VirtualServiceStatus
      def self.parse(map)
        data = Types::VirtualServiceStatus.new
        data.status = map['status']
        return data
      end
    end

    class VirtualServiceSpec
      def self.parse(map)
        data = Types::VirtualServiceSpec.new
        data.provider = (VirtualServiceProvider.parse(map['provider']) unless map['provider'].nil?)
        return data
      end
    end

    class VirtualServiceProvider
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'virtualNode'
          value = (VirtualNodeServiceProvider.parse(value) unless value.nil?)
          Types::VirtualServiceProvider::VirtualNode.new(value) if value
        when 'virtualRouter'
          value = (VirtualRouterServiceProvider.parse(value) unless value.nil?)
          Types::VirtualServiceProvider::VirtualRouter.new(value) if value
        else
          Types::VirtualServiceProvider::Unknown.new({name: key, value: value})
        end
      end
    end

    class VirtualRouterServiceProvider
      def self.parse(map)
        data = Types::VirtualRouterServiceProvider.new
        data.virtual_router_name = map['virtualRouterName']
        return data
      end
    end

    class VirtualNodeServiceProvider
      def self.parse(map)
        data = Types::VirtualNodeServiceProvider.new
        data.virtual_node_name = map['virtualNodeName']
        return data
      end
    end

    # Operation Parser for DeleteGatewayRoute
    class DeleteGatewayRoute
      def self.parse(http_resp)
        data = Types::DeleteGatewayRouteOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.gateway_route = GatewayRouteData.parse(json)
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteMesh
    class DeleteMesh
      def self.parse(http_resp)
        data = Types::DeleteMeshOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.mesh = MeshData.parse(json)
        data
      end
    end

    # Operation Parser for DeleteRoute
    class DeleteRoute
      def self.parse(http_resp)
        data = Types::DeleteRouteOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.route = RouteData.parse(json)
        data
      end
    end

    # Operation Parser for DeleteVirtualGateway
    class DeleteVirtualGateway
      def self.parse(http_resp)
        data = Types::DeleteVirtualGatewayOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_gateway = VirtualGatewayData.parse(json)
        data
      end
    end

    # Operation Parser for DeleteVirtualNode
    class DeleteVirtualNode
      def self.parse(http_resp)
        data = Types::DeleteVirtualNodeOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_node = VirtualNodeData.parse(json)
        data
      end
    end

    # Operation Parser for DeleteVirtualRouter
    class DeleteVirtualRouter
      def self.parse(http_resp)
        data = Types::DeleteVirtualRouterOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_router = VirtualRouterData.parse(json)
        data
      end
    end

    # Operation Parser for DeleteVirtualService
    class DeleteVirtualService
      def self.parse(http_resp)
        data = Types::DeleteVirtualServiceOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_service = VirtualServiceData.parse(json)
        data
      end
    end

    # Operation Parser for DescribeGatewayRoute
    class DescribeGatewayRoute
      def self.parse(http_resp)
        data = Types::DescribeGatewayRouteOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.gateway_route = GatewayRouteData.parse(json)
        data
      end
    end

    # Operation Parser for DescribeMesh
    class DescribeMesh
      def self.parse(http_resp)
        data = Types::DescribeMeshOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.mesh = MeshData.parse(json)
        data
      end
    end

    # Operation Parser for DescribeRoute
    class DescribeRoute
      def self.parse(http_resp)
        data = Types::DescribeRouteOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.route = RouteData.parse(json)
        data
      end
    end

    # Operation Parser for DescribeVirtualGateway
    class DescribeVirtualGateway
      def self.parse(http_resp)
        data = Types::DescribeVirtualGatewayOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_gateway = VirtualGatewayData.parse(json)
        data
      end
    end

    # Operation Parser for DescribeVirtualNode
    class DescribeVirtualNode
      def self.parse(http_resp)
        data = Types::DescribeVirtualNodeOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_node = VirtualNodeData.parse(json)
        data
      end
    end

    # Operation Parser for DescribeVirtualRouter
    class DescribeVirtualRouter
      def self.parse(http_resp)
        data = Types::DescribeVirtualRouterOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_router = VirtualRouterData.parse(json)
        data
      end
    end

    # Operation Parser for DescribeVirtualService
    class DescribeVirtualService
      def self.parse(http_resp)
        data = Types::DescribeVirtualServiceOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_service = VirtualServiceData.parse(json)
        data
      end
    end

    # Operation Parser for ListGatewayRoutes
    class ListGatewayRoutes
      def self.parse(http_resp)
        data = Types::ListGatewayRoutesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.gateway_routes = (GatewayRouteList.parse(map['gatewayRoutes']) unless map['gatewayRoutes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class GatewayRouteList
      def self.parse(list)
        data = []
        list.map do |value|
          data << GatewayRouteRef.parse(value) unless value.nil?
        end
        data
      end
    end

    class GatewayRouteRef
      def self.parse(map)
        data = Types::GatewayRouteRef.new
        data.mesh_name = map['meshName']
        data.gateway_route_name = map['gatewayRouteName']
        data.virtual_gateway_name = map['virtualGatewayName']
        data.mesh_owner = map['meshOwner']
        data.resource_owner = map['resourceOwner']
        data.arn = map['arn']
        data.version = map['version']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        return data
      end
    end

    # Operation Parser for ListMeshes
    class ListMeshes
      def self.parse(http_resp)
        data = Types::ListMeshesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.meshes = (MeshList.parse(map['meshes']) unless map['meshes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class MeshList
      def self.parse(list)
        data = []
        list.map do |value|
          data << MeshRef.parse(value) unless value.nil?
        end
        data
      end
    end

    class MeshRef
      def self.parse(map)
        data = Types::MeshRef.new
        data.mesh_name = map['meshName']
        data.mesh_owner = map['meshOwner']
        data.resource_owner = map['resourceOwner']
        data.arn = map['arn']
        data.version = map['version']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        return data
      end
    end

    # Operation Parser for ListRoutes
    class ListRoutes
      def self.parse(http_resp)
        data = Types::ListRoutesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.routes = (RouteList.parse(map['routes']) unless map['routes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RouteList
      def self.parse(list)
        data = []
        list.map do |value|
          data << RouteRef.parse(value) unless value.nil?
        end
        data
      end
    end

    class RouteRef
      def self.parse(map)
        data = Types::RouteRef.new
        data.mesh_name = map['meshName']
        data.virtual_router_name = map['virtualRouterName']
        data.route_name = map['routeName']
        data.mesh_owner = map['meshOwner']
        data.resource_owner = map['resourceOwner']
        data.arn = map['arn']
        data.version = map['version']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << TagRef.parse(value) unless value.nil?
        end
        data
      end
    end

    class TagRef
      def self.parse(map)
        data = Types::TagRef.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for ListVirtualGateways
    class ListVirtualGateways
      def self.parse(http_resp)
        data = Types::ListVirtualGatewaysOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.virtual_gateways = (VirtualGatewayList.parse(map['virtualGateways']) unless map['virtualGateways'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class VirtualGatewayList
      def self.parse(list)
        data = []
        list.map do |value|
          data << VirtualGatewayRef.parse(value) unless value.nil?
        end
        data
      end
    end

    class VirtualGatewayRef
      def self.parse(map)
        data = Types::VirtualGatewayRef.new
        data.mesh_name = map['meshName']
        data.virtual_gateway_name = map['virtualGatewayName']
        data.mesh_owner = map['meshOwner']
        data.resource_owner = map['resourceOwner']
        data.arn = map['arn']
        data.version = map['version']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        return data
      end
    end

    # Operation Parser for ListVirtualNodes
    class ListVirtualNodes
      def self.parse(http_resp)
        data = Types::ListVirtualNodesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.virtual_nodes = (VirtualNodeList.parse(map['virtualNodes']) unless map['virtualNodes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class VirtualNodeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << VirtualNodeRef.parse(value) unless value.nil?
        end
        data
      end
    end

    class VirtualNodeRef
      def self.parse(map)
        data = Types::VirtualNodeRef.new
        data.mesh_name = map['meshName']
        data.virtual_node_name = map['virtualNodeName']
        data.mesh_owner = map['meshOwner']
        data.resource_owner = map['resourceOwner']
        data.arn = map['arn']
        data.version = map['version']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        return data
      end
    end

    # Operation Parser for ListVirtualRouters
    class ListVirtualRouters
      def self.parse(http_resp)
        data = Types::ListVirtualRoutersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.virtual_routers = (VirtualRouterList.parse(map['virtualRouters']) unless map['virtualRouters'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class VirtualRouterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << VirtualRouterRef.parse(value) unless value.nil?
        end
        data
      end
    end

    class VirtualRouterRef
      def self.parse(map)
        data = Types::VirtualRouterRef.new
        data.mesh_name = map['meshName']
        data.virtual_router_name = map['virtualRouterName']
        data.mesh_owner = map['meshOwner']
        data.resource_owner = map['resourceOwner']
        data.arn = map['arn']
        data.version = map['version']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        return data
      end
    end

    # Operation Parser for ListVirtualServices
    class ListVirtualServices
      def self.parse(http_resp)
        data = Types::ListVirtualServicesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.virtual_services = (VirtualServiceList.parse(map['virtualServices']) unless map['virtualServices'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class VirtualServiceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << VirtualServiceRef.parse(value) unless value.nil?
        end
        data
      end
    end

    class VirtualServiceRef
      def self.parse(map)
        data = Types::VirtualServiceRef.new
        data.mesh_name = map['meshName']
        data.virtual_service_name = map['virtualServiceName']
        data.mesh_owner = map['meshOwner']
        data.resource_owner = map['resourceOwner']
        data.arn = map['arn']
        data.version = map['version']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        return data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateGatewayRoute
    class UpdateGatewayRoute
      def self.parse(http_resp)
        data = Types::UpdateGatewayRouteOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.gateway_route = GatewayRouteData.parse(json)
        data
      end
    end

    # Operation Parser for UpdateMesh
    class UpdateMesh
      def self.parse(http_resp)
        data = Types::UpdateMeshOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.mesh = MeshData.parse(json)
        data
      end
    end

    # Operation Parser for UpdateRoute
    class UpdateRoute
      def self.parse(http_resp)
        data = Types::UpdateRouteOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.route = RouteData.parse(json)
        data
      end
    end

    # Operation Parser for UpdateVirtualGateway
    class UpdateVirtualGateway
      def self.parse(http_resp)
        data = Types::UpdateVirtualGatewayOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_gateway = VirtualGatewayData.parse(json)
        data
      end
    end

    # Operation Parser for UpdateVirtualNode
    class UpdateVirtualNode
      def self.parse(http_resp)
        data = Types::UpdateVirtualNodeOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_node = VirtualNodeData.parse(json)
        data
      end
    end

    # Operation Parser for UpdateVirtualRouter
    class UpdateVirtualRouter
      def self.parse(http_resp)
        data = Types::UpdateVirtualRouterOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_router = VirtualRouterData.parse(json)
        data
      end
    end

    # Operation Parser for UpdateVirtualService
    class UpdateVirtualService
      def self.parse(http_resp)
        data = Types::UpdateVirtualServiceOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.virtual_service = VirtualServiceData.parse(json)
        data
      end
    end
  end
end
