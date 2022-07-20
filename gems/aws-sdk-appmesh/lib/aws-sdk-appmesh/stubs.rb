# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::AppMesh
  module Stubs

    # Operation Stubber for CreateGatewayRoute
    class CreateGatewayRoute
      def self.default(visited=[])
        {
          gateway_route: GatewayRouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = GatewayRouteData.stub(stub[:gateway_route]) unless stub[:gateway_route].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GatewayRouteData
    class GatewayRouteData
      def self.default(visited=[])
        return nil if visited.include?('GatewayRouteData')
        visited = visited + ['GatewayRouteData']
        {
          mesh_name: 'mesh_name',
          gateway_route_name: 'gateway_route_name',
          virtual_gateway_name: 'virtual_gateway_name',
          spec: GatewayRouteSpec.default(visited),
          metadata: ResourceMetadata.default(visited),
          status: GatewayRouteStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayRouteData.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['gatewayRouteName'] = stub[:gateway_route_name] unless stub[:gateway_route_name].nil?
        data['virtualGatewayName'] = stub[:virtual_gateway_name] unless stub[:virtual_gateway_name].nil?
        data['spec'] = GatewayRouteSpec.stub(stub[:spec]) unless stub[:spec].nil?
        data['metadata'] = ResourceMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['status'] = GatewayRouteStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for GatewayRouteStatus
    class GatewayRouteStatus
      def self.default(visited=[])
        return nil if visited.include?('GatewayRouteStatus')
        visited = visited + ['GatewayRouteStatus']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayRouteStatus.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for ResourceMetadata
    class ResourceMetadata
      def self.default(visited=[])
        return nil if visited.include?('ResourceMetadata')
        visited = visited + ['ResourceMetadata']
        {
          arn: 'arn',
          version: 1,
          uid: 'uid',
          created_at: Time.now,
          last_updated_at: Time.now,
          mesh_owner: 'mesh_owner',
          resource_owner: 'resource_owner',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceMetadata.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['uid'] = stub[:uid] unless stub[:uid].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['meshOwner'] = stub[:mesh_owner] unless stub[:mesh_owner].nil?
        data['resourceOwner'] = stub[:resource_owner] unless stub[:resource_owner].nil?
        data
      end
    end

    # Structure Stubber for GatewayRouteSpec
    class GatewayRouteSpec
      def self.default(visited=[])
        return nil if visited.include?('GatewayRouteSpec')
        visited = visited + ['GatewayRouteSpec']
        {
          priority: 1,
          http_route: HttpGatewayRoute.default(visited),
          http2_route: HttpGatewayRoute.default(visited),
          grpc_route: GrpcGatewayRoute.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayRouteSpec.new
        data = {}
        data['priority'] = stub[:priority] unless stub[:priority].nil?
        data['httpRoute'] = HttpGatewayRoute.stub(stub[:http_route]) unless stub[:http_route].nil?
        data['http2Route'] = HttpGatewayRoute.stub(stub[:http2_route]) unless stub[:http2_route].nil?
        data['grpcRoute'] = GrpcGatewayRoute.stub(stub[:grpc_route]) unless stub[:grpc_route].nil?
        data
      end
    end

    # Structure Stubber for GrpcGatewayRoute
    class GrpcGatewayRoute
      def self.default(visited=[])
        return nil if visited.include?('GrpcGatewayRoute')
        visited = visited + ['GrpcGatewayRoute']
        {
          match: GrpcGatewayRouteMatch.default(visited),
          action: GrpcGatewayRouteAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcGatewayRoute.new
        data = {}
        data['match'] = GrpcGatewayRouteMatch.stub(stub[:match]) unless stub[:match].nil?
        data['action'] = GrpcGatewayRouteAction.stub(stub[:action]) unless stub[:action].nil?
        data
      end
    end

    # Structure Stubber for GrpcGatewayRouteAction
    class GrpcGatewayRouteAction
      def self.default(visited=[])
        return nil if visited.include?('GrpcGatewayRouteAction')
        visited = visited + ['GrpcGatewayRouteAction']
        {
          target: GatewayRouteTarget.default(visited),
          rewrite: GrpcGatewayRouteRewrite.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcGatewayRouteAction.new
        data = {}
        data['target'] = GatewayRouteTarget.stub(stub[:target]) unless stub[:target].nil?
        data['rewrite'] = GrpcGatewayRouteRewrite.stub(stub[:rewrite]) unless stub[:rewrite].nil?
        data
      end
    end

    # Structure Stubber for GrpcGatewayRouteRewrite
    class GrpcGatewayRouteRewrite
      def self.default(visited=[])
        return nil if visited.include?('GrpcGatewayRouteRewrite')
        visited = visited + ['GrpcGatewayRouteRewrite']
        {
          hostname: GatewayRouteHostnameRewrite.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcGatewayRouteRewrite.new
        data = {}
        data['hostname'] = GatewayRouteHostnameRewrite.stub(stub[:hostname]) unless stub[:hostname].nil?
        data
      end
    end

    # Structure Stubber for GatewayRouteHostnameRewrite
    class GatewayRouteHostnameRewrite
      def self.default(visited=[])
        return nil if visited.include?('GatewayRouteHostnameRewrite')
        visited = visited + ['GatewayRouteHostnameRewrite']
        {
          default_target_hostname: 'default_target_hostname',
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayRouteHostnameRewrite.new
        data = {}
        data['defaultTargetHostname'] = stub[:default_target_hostname] unless stub[:default_target_hostname].nil?
        data
      end
    end

    # Structure Stubber for GatewayRouteTarget
    class GatewayRouteTarget
      def self.default(visited=[])
        return nil if visited.include?('GatewayRouteTarget')
        visited = visited + ['GatewayRouteTarget']
        {
          virtual_service: GatewayRouteVirtualService.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayRouteTarget.new
        data = {}
        data['virtualService'] = GatewayRouteVirtualService.stub(stub[:virtual_service]) unless stub[:virtual_service].nil?
        data
      end
    end

    # Structure Stubber for GatewayRouteVirtualService
    class GatewayRouteVirtualService
      def self.default(visited=[])
        return nil if visited.include?('GatewayRouteVirtualService')
        visited = visited + ['GatewayRouteVirtualService']
        {
          virtual_service_name: 'virtual_service_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayRouteVirtualService.new
        data = {}
        data['virtualServiceName'] = stub[:virtual_service_name] unless stub[:virtual_service_name].nil?
        data
      end
    end

    # Structure Stubber for GrpcGatewayRouteMatch
    class GrpcGatewayRouteMatch
      def self.default(visited=[])
        return nil if visited.include?('GrpcGatewayRouteMatch')
        visited = visited + ['GrpcGatewayRouteMatch']
        {
          service_name: 'service_name',
          hostname: GatewayRouteHostnameMatch.default(visited),
          metadata: GrpcGatewayRouteMetadataList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcGatewayRouteMatch.new
        data = {}
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['hostname'] = GatewayRouteHostnameMatch.stub(stub[:hostname]) unless stub[:hostname].nil?
        data['metadata'] = GrpcGatewayRouteMetadataList.stub(stub[:metadata]) unless stub[:metadata].nil?
        data
      end
    end

    # List Stubber for GrpcGatewayRouteMetadataList
    class GrpcGatewayRouteMetadataList
      def self.default(visited=[])
        return nil if visited.include?('GrpcGatewayRouteMetadataList')
        visited = visited + ['GrpcGatewayRouteMetadataList']
        [
          GrpcGatewayRouteMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GrpcGatewayRouteMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GrpcGatewayRouteMetadata
    class GrpcGatewayRouteMetadata
      def self.default(visited=[])
        return nil if visited.include?('GrpcGatewayRouteMetadata')
        visited = visited + ['GrpcGatewayRouteMetadata']
        {
          name: 'name',
          invert: false,
          match: GrpcMetadataMatchMethod.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcGatewayRouteMetadata.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['invert'] = stub[:invert] unless stub[:invert].nil?
        data['match'] = GrpcMetadataMatchMethod.stub(stub[:match]) unless stub[:match].nil?
        data
      end
    end

    # Union Stubber for GrpcMetadataMatchMethod
    class GrpcMetadataMatchMethod
      def self.default(visited=[])
        return nil if visited.include?('GrpcMetadataMatchMethod')
        visited = visited + ['GrpcMetadataMatchMethod']
        {
          exact: 'exact',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::GrpcMetadataMatchMethod::Exact
          data['exact'] = stub.__getobj__
        when Types::GrpcMetadataMatchMethod::Regex
          data['regex'] = stub.__getobj__
        when Types::GrpcMetadataMatchMethod::Range
          data['range'] = (MatchRange.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::GrpcMetadataMatchMethod::Prefix
          data['prefix'] = stub.__getobj__
        when Types::GrpcMetadataMatchMethod::Suffix
          data['suffix'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::GrpcMetadataMatchMethod"
        end

        data
      end
    end

    # Structure Stubber for MatchRange
    class MatchRange
      def self.default(visited=[])
        return nil if visited.include?('MatchRange')
        visited = visited + ['MatchRange']
        {
          start: 1,
          end: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MatchRange.new
        data = {}
        data['start'] = stub[:start] unless stub[:start].nil?
        data['end'] = stub[:end] unless stub[:end].nil?
        data
      end
    end

    # Structure Stubber for GatewayRouteHostnameMatch
    class GatewayRouteHostnameMatch
      def self.default(visited=[])
        return nil if visited.include?('GatewayRouteHostnameMatch')
        visited = visited + ['GatewayRouteHostnameMatch']
        {
          exact: 'exact',
          suffix: 'suffix',
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayRouteHostnameMatch.new
        data = {}
        data['exact'] = stub[:exact] unless stub[:exact].nil?
        data['suffix'] = stub[:suffix] unless stub[:suffix].nil?
        data
      end
    end

    # Structure Stubber for HttpGatewayRoute
    class HttpGatewayRoute
      def self.default(visited=[])
        return nil if visited.include?('HttpGatewayRoute')
        visited = visited + ['HttpGatewayRoute']
        {
          match: HttpGatewayRouteMatch.default(visited),
          action: HttpGatewayRouteAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpGatewayRoute.new
        data = {}
        data['match'] = HttpGatewayRouteMatch.stub(stub[:match]) unless stub[:match].nil?
        data['action'] = HttpGatewayRouteAction.stub(stub[:action]) unless stub[:action].nil?
        data
      end
    end

    # Structure Stubber for HttpGatewayRouteAction
    class HttpGatewayRouteAction
      def self.default(visited=[])
        return nil if visited.include?('HttpGatewayRouteAction')
        visited = visited + ['HttpGatewayRouteAction']
        {
          target: GatewayRouteTarget.default(visited),
          rewrite: HttpGatewayRouteRewrite.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpGatewayRouteAction.new
        data = {}
        data['target'] = GatewayRouteTarget.stub(stub[:target]) unless stub[:target].nil?
        data['rewrite'] = HttpGatewayRouteRewrite.stub(stub[:rewrite]) unless stub[:rewrite].nil?
        data
      end
    end

    # Structure Stubber for HttpGatewayRouteRewrite
    class HttpGatewayRouteRewrite
      def self.default(visited=[])
        return nil if visited.include?('HttpGatewayRouteRewrite')
        visited = visited + ['HttpGatewayRouteRewrite']
        {
          prefix: HttpGatewayRoutePrefixRewrite.default(visited),
          path: HttpGatewayRoutePathRewrite.default(visited),
          hostname: GatewayRouteHostnameRewrite.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpGatewayRouteRewrite.new
        data = {}
        data['prefix'] = HttpGatewayRoutePrefixRewrite.stub(stub[:prefix]) unless stub[:prefix].nil?
        data['path'] = HttpGatewayRoutePathRewrite.stub(stub[:path]) unless stub[:path].nil?
        data['hostname'] = GatewayRouteHostnameRewrite.stub(stub[:hostname]) unless stub[:hostname].nil?
        data
      end
    end

    # Structure Stubber for HttpGatewayRoutePathRewrite
    class HttpGatewayRoutePathRewrite
      def self.default(visited=[])
        return nil if visited.include?('HttpGatewayRoutePathRewrite')
        visited = visited + ['HttpGatewayRoutePathRewrite']
        {
          exact: 'exact',
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpGatewayRoutePathRewrite.new
        data = {}
        data['exact'] = stub[:exact] unless stub[:exact].nil?
        data
      end
    end

    # Structure Stubber for HttpGatewayRoutePrefixRewrite
    class HttpGatewayRoutePrefixRewrite
      def self.default(visited=[])
        return nil if visited.include?('HttpGatewayRoutePrefixRewrite')
        visited = visited + ['HttpGatewayRoutePrefixRewrite']
        {
          default_prefix: 'default_prefix',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpGatewayRoutePrefixRewrite.new
        data = {}
        data['defaultPrefix'] = stub[:default_prefix] unless stub[:default_prefix].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for HttpGatewayRouteMatch
    class HttpGatewayRouteMatch
      def self.default(visited=[])
        return nil if visited.include?('HttpGatewayRouteMatch')
        visited = visited + ['HttpGatewayRouteMatch']
        {
          prefix: 'prefix',
          path: HttpPathMatch.default(visited),
          query_parameters: HttpQueryParameters.default(visited),
          member_method: 'member_method',
          hostname: GatewayRouteHostnameMatch.default(visited),
          headers: HttpGatewayRouteHeaders.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpGatewayRouteMatch.new
        data = {}
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['path'] = HttpPathMatch.stub(stub[:path]) unless stub[:path].nil?
        data['queryParameters'] = HttpQueryParameters.stub(stub[:query_parameters]) unless stub[:query_parameters].nil?
        data['method'] = stub[:member_method] unless stub[:member_method].nil?
        data['hostname'] = GatewayRouteHostnameMatch.stub(stub[:hostname]) unless stub[:hostname].nil?
        data['headers'] = HttpGatewayRouteHeaders.stub(stub[:headers]) unless stub[:headers].nil?
        data
      end
    end

    # List Stubber for HttpGatewayRouteHeaders
    class HttpGatewayRouteHeaders
      def self.default(visited=[])
        return nil if visited.include?('HttpGatewayRouteHeaders')
        visited = visited + ['HttpGatewayRouteHeaders']
        [
          HttpGatewayRouteHeader.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HttpGatewayRouteHeader.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HttpGatewayRouteHeader
    class HttpGatewayRouteHeader
      def self.default(visited=[])
        return nil if visited.include?('HttpGatewayRouteHeader')
        visited = visited + ['HttpGatewayRouteHeader']
        {
          name: 'name',
          invert: false,
          match: HeaderMatchMethod.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpGatewayRouteHeader.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['invert'] = stub[:invert] unless stub[:invert].nil?
        data['match'] = HeaderMatchMethod.stub(stub[:match]) unless stub[:match].nil?
        data
      end
    end

    # Union Stubber for HeaderMatchMethod
    class HeaderMatchMethod
      def self.default(visited=[])
        return nil if visited.include?('HeaderMatchMethod')
        visited = visited + ['HeaderMatchMethod']
        {
          exact: 'exact',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::HeaderMatchMethod::Exact
          data['exact'] = stub.__getobj__
        when Types::HeaderMatchMethod::Regex
          data['regex'] = stub.__getobj__
        when Types::HeaderMatchMethod::Range
          data['range'] = (MatchRange.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::HeaderMatchMethod::Prefix
          data['prefix'] = stub.__getobj__
        when Types::HeaderMatchMethod::Suffix
          data['suffix'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::HeaderMatchMethod"
        end

        data
      end
    end

    # List Stubber for HttpQueryParameters
    class HttpQueryParameters
      def self.default(visited=[])
        return nil if visited.include?('HttpQueryParameters')
        visited = visited + ['HttpQueryParameters']
        [
          HttpQueryParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HttpQueryParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HttpQueryParameter
    class HttpQueryParameter
      def self.default(visited=[])
        return nil if visited.include?('HttpQueryParameter')
        visited = visited + ['HttpQueryParameter']
        {
          name: 'name',
          match: QueryParameterMatch.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpQueryParameter.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['match'] = QueryParameterMatch.stub(stub[:match]) unless stub[:match].nil?
        data
      end
    end

    # Structure Stubber for QueryParameterMatch
    class QueryParameterMatch
      def self.default(visited=[])
        return nil if visited.include?('QueryParameterMatch')
        visited = visited + ['QueryParameterMatch']
        {
          exact: 'exact',
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryParameterMatch.new
        data = {}
        data['exact'] = stub[:exact] unless stub[:exact].nil?
        data
      end
    end

    # Structure Stubber for HttpPathMatch
    class HttpPathMatch
      def self.default(visited=[])
        return nil if visited.include?('HttpPathMatch')
        visited = visited + ['HttpPathMatch']
        {
          exact: 'exact',
          regex: 'regex',
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpPathMatch.new
        data = {}
        data['exact'] = stub[:exact] unless stub[:exact].nil?
        data['regex'] = stub[:regex] unless stub[:regex].nil?
        data
      end
    end

    # Operation Stubber for CreateMesh
    class CreateMesh
      def self.default(visited=[])
        {
          mesh: MeshData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = MeshData.stub(stub[:mesh]) unless stub[:mesh].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for MeshData
    class MeshData
      def self.default(visited=[])
        return nil if visited.include?('MeshData')
        visited = visited + ['MeshData']
        {
          mesh_name: 'mesh_name',
          spec: MeshSpec.default(visited),
          metadata: ResourceMetadata.default(visited),
          status: MeshStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MeshData.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['spec'] = MeshSpec.stub(stub[:spec]) unless stub[:spec].nil?
        data['metadata'] = ResourceMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['status'] = MeshStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for MeshStatus
    class MeshStatus
      def self.default(visited=[])
        return nil if visited.include?('MeshStatus')
        visited = visited + ['MeshStatus']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::MeshStatus.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for MeshSpec
    class MeshSpec
      def self.default(visited=[])
        return nil if visited.include?('MeshSpec')
        visited = visited + ['MeshSpec']
        {
          egress_filter: EgressFilter.default(visited),
          service_discovery: MeshServiceDiscovery.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MeshSpec.new
        data = {}
        data['egressFilter'] = EgressFilter.stub(stub[:egress_filter]) unless stub[:egress_filter].nil?
        data['serviceDiscovery'] = MeshServiceDiscovery.stub(stub[:service_discovery]) unless stub[:service_discovery].nil?
        data
      end
    end

    # Structure Stubber for MeshServiceDiscovery
    class MeshServiceDiscovery
      def self.default(visited=[])
        return nil if visited.include?('MeshServiceDiscovery')
        visited = visited + ['MeshServiceDiscovery']
        {
          ip_preference: 'ip_preference',
        }
      end

      def self.stub(stub)
        stub ||= Types::MeshServiceDiscovery.new
        data = {}
        data['ipPreference'] = stub[:ip_preference] unless stub[:ip_preference].nil?
        data
      end
    end

    # Structure Stubber for EgressFilter
    class EgressFilter
      def self.default(visited=[])
        return nil if visited.include?('EgressFilter')
        visited = visited + ['EgressFilter']
        {
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::EgressFilter.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for CreateRoute
    class CreateRoute
      def self.default(visited=[])
        {
          route: RouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = RouteData.stub(stub[:route]) unless stub[:route].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RouteData
    class RouteData
      def self.default(visited=[])
        return nil if visited.include?('RouteData')
        visited = visited + ['RouteData']
        {
          mesh_name: 'mesh_name',
          virtual_router_name: 'virtual_router_name',
          route_name: 'route_name',
          spec: RouteSpec.default(visited),
          metadata: ResourceMetadata.default(visited),
          status: RouteStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteData.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['virtualRouterName'] = stub[:virtual_router_name] unless stub[:virtual_router_name].nil?
        data['routeName'] = stub[:route_name] unless stub[:route_name].nil?
        data['spec'] = RouteSpec.stub(stub[:spec]) unless stub[:spec].nil?
        data['metadata'] = ResourceMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['status'] = RouteStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for RouteStatus
    class RouteStatus
      def self.default(visited=[])
        return nil if visited.include?('RouteStatus')
        visited = visited + ['RouteStatus']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteStatus.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for RouteSpec
    class RouteSpec
      def self.default(visited=[])
        return nil if visited.include?('RouteSpec')
        visited = visited + ['RouteSpec']
        {
          priority: 1,
          http_route: HttpRoute.default(visited),
          tcp_route: TcpRoute.default(visited),
          http2_route: HttpRoute.default(visited),
          grpc_route: GrpcRoute.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteSpec.new
        data = {}
        data['priority'] = stub[:priority] unless stub[:priority].nil?
        data['httpRoute'] = HttpRoute.stub(stub[:http_route]) unless stub[:http_route].nil?
        data['tcpRoute'] = TcpRoute.stub(stub[:tcp_route]) unless stub[:tcp_route].nil?
        data['http2Route'] = HttpRoute.stub(stub[:http2_route]) unless stub[:http2_route].nil?
        data['grpcRoute'] = GrpcRoute.stub(stub[:grpc_route]) unless stub[:grpc_route].nil?
        data
      end
    end

    # Structure Stubber for GrpcRoute
    class GrpcRoute
      def self.default(visited=[])
        return nil if visited.include?('GrpcRoute')
        visited = visited + ['GrpcRoute']
        {
          action: GrpcRouteAction.default(visited),
          match: GrpcRouteMatch.default(visited),
          retry_policy: GrpcRetryPolicy.default(visited),
          timeout: GrpcTimeout.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcRoute.new
        data = {}
        data['action'] = GrpcRouteAction.stub(stub[:action]) unless stub[:action].nil?
        data['match'] = GrpcRouteMatch.stub(stub[:match]) unless stub[:match].nil?
        data['retryPolicy'] = GrpcRetryPolicy.stub(stub[:retry_policy]) unless stub[:retry_policy].nil?
        data['timeout'] = GrpcTimeout.stub(stub[:timeout]) unless stub[:timeout].nil?
        data
      end
    end

    # Structure Stubber for GrpcTimeout
    class GrpcTimeout
      def self.default(visited=[])
        return nil if visited.include?('GrpcTimeout')
        visited = visited + ['GrpcTimeout']
        {
          per_request: Duration.default(visited),
          idle: Duration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcTimeout.new
        data = {}
        data['perRequest'] = Duration.stub(stub[:per_request]) unless stub[:per_request].nil?
        data['idle'] = Duration.stub(stub[:idle]) unless stub[:idle].nil?
        data
      end
    end

    # Structure Stubber for Duration
    class Duration
      def self.default(visited=[])
        return nil if visited.include?('Duration')
        visited = visited + ['Duration']
        {
          value: 1,
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::Duration.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # Structure Stubber for GrpcRetryPolicy
    class GrpcRetryPolicy
      def self.default(visited=[])
        return nil if visited.include?('GrpcRetryPolicy')
        visited = visited + ['GrpcRetryPolicy']
        {
          per_retry_timeout: Duration.default(visited),
          max_retries: 1,
          http_retry_events: HttpRetryPolicyEvents.default(visited),
          tcp_retry_events: TcpRetryPolicyEvents.default(visited),
          grpc_retry_events: GrpcRetryPolicyEvents.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcRetryPolicy.new
        data = {}
        data['perRetryTimeout'] = Duration.stub(stub[:per_retry_timeout]) unless stub[:per_retry_timeout].nil?
        data['maxRetries'] = stub[:max_retries] unless stub[:max_retries].nil?
        data['httpRetryEvents'] = HttpRetryPolicyEvents.stub(stub[:http_retry_events]) unless stub[:http_retry_events].nil?
        data['tcpRetryEvents'] = TcpRetryPolicyEvents.stub(stub[:tcp_retry_events]) unless stub[:tcp_retry_events].nil?
        data['grpcRetryEvents'] = GrpcRetryPolicyEvents.stub(stub[:grpc_retry_events]) unless stub[:grpc_retry_events].nil?
        data
      end
    end

    # List Stubber for GrpcRetryPolicyEvents
    class GrpcRetryPolicyEvents
      def self.default(visited=[])
        return nil if visited.include?('GrpcRetryPolicyEvents')
        visited = visited + ['GrpcRetryPolicyEvents']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for TcpRetryPolicyEvents
    class TcpRetryPolicyEvents
      def self.default(visited=[])
        return nil if visited.include?('TcpRetryPolicyEvents')
        visited = visited + ['TcpRetryPolicyEvents']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for HttpRetryPolicyEvents
    class HttpRetryPolicyEvents
      def self.default(visited=[])
        return nil if visited.include?('HttpRetryPolicyEvents')
        visited = visited + ['HttpRetryPolicyEvents']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GrpcRouteMatch
    class GrpcRouteMatch
      def self.default(visited=[])
        return nil if visited.include?('GrpcRouteMatch')
        visited = visited + ['GrpcRouteMatch']
        {
          service_name: 'service_name',
          method_name: 'method_name',
          metadata: GrpcRouteMetadataList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcRouteMatch.new
        data = {}
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['methodName'] = stub[:method_name] unless stub[:method_name].nil?
        data['metadata'] = GrpcRouteMetadataList.stub(stub[:metadata]) unless stub[:metadata].nil?
        data
      end
    end

    # List Stubber for GrpcRouteMetadataList
    class GrpcRouteMetadataList
      def self.default(visited=[])
        return nil if visited.include?('GrpcRouteMetadataList')
        visited = visited + ['GrpcRouteMetadataList']
        [
          GrpcRouteMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GrpcRouteMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GrpcRouteMetadata
    class GrpcRouteMetadata
      def self.default(visited=[])
        return nil if visited.include?('GrpcRouteMetadata')
        visited = visited + ['GrpcRouteMetadata']
        {
          name: 'name',
          invert: false,
          match: GrpcRouteMetadataMatchMethod.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcRouteMetadata.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['invert'] = stub[:invert] unless stub[:invert].nil?
        data['match'] = GrpcRouteMetadataMatchMethod.stub(stub[:match]) unless stub[:match].nil?
        data
      end
    end

    # Union Stubber for GrpcRouteMetadataMatchMethod
    class GrpcRouteMetadataMatchMethod
      def self.default(visited=[])
        return nil if visited.include?('GrpcRouteMetadataMatchMethod')
        visited = visited + ['GrpcRouteMetadataMatchMethod']
        {
          exact: 'exact',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::GrpcRouteMetadataMatchMethod::Exact
          data['exact'] = stub.__getobj__
        when Types::GrpcRouteMetadataMatchMethod::Regex
          data['regex'] = stub.__getobj__
        when Types::GrpcRouteMetadataMatchMethod::Range
          data['range'] = (MatchRange.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::GrpcRouteMetadataMatchMethod::Prefix
          data['prefix'] = stub.__getobj__
        when Types::GrpcRouteMetadataMatchMethod::Suffix
          data['suffix'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::GrpcRouteMetadataMatchMethod"
        end

        data
      end
    end

    # Structure Stubber for GrpcRouteAction
    class GrpcRouteAction
      def self.default(visited=[])
        return nil if visited.include?('GrpcRouteAction')
        visited = visited + ['GrpcRouteAction']
        {
          weighted_targets: WeightedTargets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcRouteAction.new
        data = {}
        data['weightedTargets'] = WeightedTargets.stub(stub[:weighted_targets]) unless stub[:weighted_targets].nil?
        data
      end
    end

    # List Stubber for WeightedTargets
    class WeightedTargets
      def self.default(visited=[])
        return nil if visited.include?('WeightedTargets')
        visited = visited + ['WeightedTargets']
        [
          WeightedTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WeightedTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WeightedTarget
    class WeightedTarget
      def self.default(visited=[])
        return nil if visited.include?('WeightedTarget')
        visited = visited + ['WeightedTarget']
        {
          virtual_node: 'virtual_node',
          weight: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::WeightedTarget.new
        data = {}
        data['virtualNode'] = stub[:virtual_node] unless stub[:virtual_node].nil?
        data['weight'] = stub[:weight] unless stub[:weight].nil?
        data
      end
    end

    # Structure Stubber for HttpRoute
    class HttpRoute
      def self.default(visited=[])
        return nil if visited.include?('HttpRoute')
        visited = visited + ['HttpRoute']
        {
          match: HttpRouteMatch.default(visited),
          action: HttpRouteAction.default(visited),
          retry_policy: HttpRetryPolicy.default(visited),
          timeout: HttpTimeout.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpRoute.new
        data = {}
        data['match'] = HttpRouteMatch.stub(stub[:match]) unless stub[:match].nil?
        data['action'] = HttpRouteAction.stub(stub[:action]) unless stub[:action].nil?
        data['retryPolicy'] = HttpRetryPolicy.stub(stub[:retry_policy]) unless stub[:retry_policy].nil?
        data['timeout'] = HttpTimeout.stub(stub[:timeout]) unless stub[:timeout].nil?
        data
      end
    end

    # Structure Stubber for HttpTimeout
    class HttpTimeout
      def self.default(visited=[])
        return nil if visited.include?('HttpTimeout')
        visited = visited + ['HttpTimeout']
        {
          per_request: Duration.default(visited),
          idle: Duration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpTimeout.new
        data = {}
        data['perRequest'] = Duration.stub(stub[:per_request]) unless stub[:per_request].nil?
        data['idle'] = Duration.stub(stub[:idle]) unless stub[:idle].nil?
        data
      end
    end

    # Structure Stubber for HttpRetryPolicy
    class HttpRetryPolicy
      def self.default(visited=[])
        return nil if visited.include?('HttpRetryPolicy')
        visited = visited + ['HttpRetryPolicy']
        {
          per_retry_timeout: Duration.default(visited),
          max_retries: 1,
          http_retry_events: HttpRetryPolicyEvents.default(visited),
          tcp_retry_events: TcpRetryPolicyEvents.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpRetryPolicy.new
        data = {}
        data['perRetryTimeout'] = Duration.stub(stub[:per_retry_timeout]) unless stub[:per_retry_timeout].nil?
        data['maxRetries'] = stub[:max_retries] unless stub[:max_retries].nil?
        data['httpRetryEvents'] = HttpRetryPolicyEvents.stub(stub[:http_retry_events]) unless stub[:http_retry_events].nil?
        data['tcpRetryEvents'] = TcpRetryPolicyEvents.stub(stub[:tcp_retry_events]) unless stub[:tcp_retry_events].nil?
        data
      end
    end

    # Structure Stubber for HttpRouteAction
    class HttpRouteAction
      def self.default(visited=[])
        return nil if visited.include?('HttpRouteAction')
        visited = visited + ['HttpRouteAction']
        {
          weighted_targets: WeightedTargets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpRouteAction.new
        data = {}
        data['weightedTargets'] = WeightedTargets.stub(stub[:weighted_targets]) unless stub[:weighted_targets].nil?
        data
      end
    end

    # Structure Stubber for HttpRouteMatch
    class HttpRouteMatch
      def self.default(visited=[])
        return nil if visited.include?('HttpRouteMatch')
        visited = visited + ['HttpRouteMatch']
        {
          prefix: 'prefix',
          path: HttpPathMatch.default(visited),
          query_parameters: HttpQueryParameters.default(visited),
          member_method: 'member_method',
          scheme: 'scheme',
          headers: HttpRouteHeaders.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpRouteMatch.new
        data = {}
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['path'] = HttpPathMatch.stub(stub[:path]) unless stub[:path].nil?
        data['queryParameters'] = HttpQueryParameters.stub(stub[:query_parameters]) unless stub[:query_parameters].nil?
        data['method'] = stub[:member_method] unless stub[:member_method].nil?
        data['scheme'] = stub[:scheme] unless stub[:scheme].nil?
        data['headers'] = HttpRouteHeaders.stub(stub[:headers]) unless stub[:headers].nil?
        data
      end
    end

    # List Stubber for HttpRouteHeaders
    class HttpRouteHeaders
      def self.default(visited=[])
        return nil if visited.include?('HttpRouteHeaders')
        visited = visited + ['HttpRouteHeaders']
        [
          HttpRouteHeader.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HttpRouteHeader.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HttpRouteHeader
    class HttpRouteHeader
      def self.default(visited=[])
        return nil if visited.include?('HttpRouteHeader')
        visited = visited + ['HttpRouteHeader']
        {
          name: 'name',
          invert: false,
          match: HeaderMatchMethod.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpRouteHeader.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['invert'] = stub[:invert] unless stub[:invert].nil?
        data['match'] = HeaderMatchMethod.stub(stub[:match]) unless stub[:match].nil?
        data
      end
    end

    # Structure Stubber for TcpRoute
    class TcpRoute
      def self.default(visited=[])
        return nil if visited.include?('TcpRoute')
        visited = visited + ['TcpRoute']
        {
          action: TcpRouteAction.default(visited),
          timeout: TcpTimeout.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TcpRoute.new
        data = {}
        data['action'] = TcpRouteAction.stub(stub[:action]) unless stub[:action].nil?
        data['timeout'] = TcpTimeout.stub(stub[:timeout]) unless stub[:timeout].nil?
        data
      end
    end

    # Structure Stubber for TcpTimeout
    class TcpTimeout
      def self.default(visited=[])
        return nil if visited.include?('TcpTimeout')
        visited = visited + ['TcpTimeout']
        {
          idle: Duration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TcpTimeout.new
        data = {}
        data['idle'] = Duration.stub(stub[:idle]) unless stub[:idle].nil?
        data
      end
    end

    # Structure Stubber for TcpRouteAction
    class TcpRouteAction
      def self.default(visited=[])
        return nil if visited.include?('TcpRouteAction')
        visited = visited + ['TcpRouteAction']
        {
          weighted_targets: WeightedTargets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TcpRouteAction.new
        data = {}
        data['weightedTargets'] = WeightedTargets.stub(stub[:weighted_targets]) unless stub[:weighted_targets].nil?
        data
      end
    end

    # Operation Stubber for CreateVirtualGateway
    class CreateVirtualGateway
      def self.default(visited=[])
        {
          virtual_gateway: VirtualGatewayData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualGatewayData.stub(stub[:virtual_gateway]) unless stub[:virtual_gateway].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VirtualGatewayData
    class VirtualGatewayData
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayData')
        visited = visited + ['VirtualGatewayData']
        {
          mesh_name: 'mesh_name',
          virtual_gateway_name: 'virtual_gateway_name',
          spec: VirtualGatewaySpec.default(visited),
          metadata: ResourceMetadata.default(visited),
          status: VirtualGatewayStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayData.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['virtualGatewayName'] = stub[:virtual_gateway_name] unless stub[:virtual_gateway_name].nil?
        data['spec'] = VirtualGatewaySpec.stub(stub[:spec]) unless stub[:spec].nil?
        data['metadata'] = ResourceMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['status'] = VirtualGatewayStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayStatus
    class VirtualGatewayStatus
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayStatus')
        visited = visited + ['VirtualGatewayStatus']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayStatus.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewaySpec
    class VirtualGatewaySpec
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewaySpec')
        visited = visited + ['VirtualGatewaySpec']
        {
          backend_defaults: VirtualGatewayBackendDefaults.default(visited),
          listeners: VirtualGatewayListeners.default(visited),
          logging: VirtualGatewayLogging.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewaySpec.new
        data = {}
        data['backendDefaults'] = VirtualGatewayBackendDefaults.stub(stub[:backend_defaults]) unless stub[:backend_defaults].nil?
        data['listeners'] = VirtualGatewayListeners.stub(stub[:listeners]) unless stub[:listeners].nil?
        data['logging'] = VirtualGatewayLogging.stub(stub[:logging]) unless stub[:logging].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayLogging
    class VirtualGatewayLogging
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayLogging')
        visited = visited + ['VirtualGatewayLogging']
        {
          access_log: VirtualGatewayAccessLog.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayLogging.new
        data = {}
        data['accessLog'] = VirtualGatewayAccessLog.stub(stub[:access_log]) unless stub[:access_log].nil?
        data
      end
    end

    # Union Stubber for VirtualGatewayAccessLog
    class VirtualGatewayAccessLog
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayAccessLog')
        visited = visited + ['VirtualGatewayAccessLog']
        {
          file: VirtualGatewayFileAccessLog.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualGatewayAccessLog::File
          data['file'] = (VirtualGatewayFileAccessLog.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualGatewayAccessLog"
        end

        data
      end
    end

    # Structure Stubber for VirtualGatewayFileAccessLog
    class VirtualGatewayFileAccessLog
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayFileAccessLog')
        visited = visited + ['VirtualGatewayFileAccessLog']
        {
          path: 'path',
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayFileAccessLog.new
        data = {}
        data['path'] = stub[:path] unless stub[:path].nil?
        data
      end
    end

    # List Stubber for VirtualGatewayListeners
    class VirtualGatewayListeners
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayListeners')
        visited = visited + ['VirtualGatewayListeners']
        [
          VirtualGatewayListener.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VirtualGatewayListener.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VirtualGatewayListener
    class VirtualGatewayListener
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayListener')
        visited = visited + ['VirtualGatewayListener']
        {
          health_check: VirtualGatewayHealthCheckPolicy.default(visited),
          port_mapping: VirtualGatewayPortMapping.default(visited),
          tls: VirtualGatewayListenerTls.default(visited),
          connection_pool: VirtualGatewayConnectionPool.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayListener.new
        data = {}
        data['healthCheck'] = VirtualGatewayHealthCheckPolicy.stub(stub[:health_check]) unless stub[:health_check].nil?
        data['portMapping'] = VirtualGatewayPortMapping.stub(stub[:port_mapping]) unless stub[:port_mapping].nil?
        data['tls'] = VirtualGatewayListenerTls.stub(stub[:tls]) unless stub[:tls].nil?
        data['connectionPool'] = VirtualGatewayConnectionPool.stub(stub[:connection_pool]) unless stub[:connection_pool].nil?
        data
      end
    end

    # Union Stubber for VirtualGatewayConnectionPool
    class VirtualGatewayConnectionPool
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayConnectionPool')
        visited = visited + ['VirtualGatewayConnectionPool']
        {
          http: VirtualGatewayHttpConnectionPool.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualGatewayConnectionPool::Http
          data['http'] = (VirtualGatewayHttpConnectionPool.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayConnectionPool::Http2
          data['http2'] = (VirtualGatewayHttp2ConnectionPool.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayConnectionPool::Grpc
          data['grpc'] = (VirtualGatewayGrpcConnectionPool.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualGatewayConnectionPool"
        end

        data
      end
    end

    # Structure Stubber for VirtualGatewayGrpcConnectionPool
    class VirtualGatewayGrpcConnectionPool
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayGrpcConnectionPool')
        visited = visited + ['VirtualGatewayGrpcConnectionPool']
        {
          max_requests: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayGrpcConnectionPool.new
        data = {}
        data['maxRequests'] = stub[:max_requests] unless stub[:max_requests].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayHttp2ConnectionPool
    class VirtualGatewayHttp2ConnectionPool
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayHttp2ConnectionPool')
        visited = visited + ['VirtualGatewayHttp2ConnectionPool']
        {
          max_requests: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayHttp2ConnectionPool.new
        data = {}
        data['maxRequests'] = stub[:max_requests] unless stub[:max_requests].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayHttpConnectionPool
    class VirtualGatewayHttpConnectionPool
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayHttpConnectionPool')
        visited = visited + ['VirtualGatewayHttpConnectionPool']
        {
          max_connections: 1,
          max_pending_requests: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayHttpConnectionPool.new
        data = {}
        data['maxConnections'] = stub[:max_connections] unless stub[:max_connections].nil?
        data['maxPendingRequests'] = stub[:max_pending_requests] unless stub[:max_pending_requests].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayListenerTls
    class VirtualGatewayListenerTls
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayListenerTls')
        visited = visited + ['VirtualGatewayListenerTls']
        {
          mode: 'mode',
          validation: VirtualGatewayListenerTlsValidationContext.default(visited),
          certificate: VirtualGatewayListenerTlsCertificate.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayListenerTls.new
        data = {}
        data['mode'] = stub[:mode] unless stub[:mode].nil?
        data['validation'] = VirtualGatewayListenerTlsValidationContext.stub(stub[:validation]) unless stub[:validation].nil?
        data['certificate'] = VirtualGatewayListenerTlsCertificate.stub(stub[:certificate]) unless stub[:certificate].nil?
        data
      end
    end

    # Union Stubber for VirtualGatewayListenerTlsCertificate
    class VirtualGatewayListenerTlsCertificate
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayListenerTlsCertificate')
        visited = visited + ['VirtualGatewayListenerTlsCertificate']
        {
          acm: VirtualGatewayListenerTlsAcmCertificate.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualGatewayListenerTlsCertificate::Acm
          data['acm'] = (VirtualGatewayListenerTlsAcmCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayListenerTlsCertificate::File
          data['file'] = (VirtualGatewayListenerTlsFileCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayListenerTlsCertificate::Sds
          data['sds'] = (VirtualGatewayListenerTlsSdsCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualGatewayListenerTlsCertificate"
        end

        data
      end
    end

    # Structure Stubber for VirtualGatewayListenerTlsSdsCertificate
    class VirtualGatewayListenerTlsSdsCertificate
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayListenerTlsSdsCertificate')
        visited = visited + ['VirtualGatewayListenerTlsSdsCertificate']
        {
          secret_name: 'secret_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayListenerTlsSdsCertificate.new
        data = {}
        data['secretName'] = stub[:secret_name] unless stub[:secret_name].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayListenerTlsFileCertificate
    class VirtualGatewayListenerTlsFileCertificate
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayListenerTlsFileCertificate')
        visited = visited + ['VirtualGatewayListenerTlsFileCertificate']
        {
          certificate_chain: 'certificate_chain',
          private_key: 'private_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayListenerTlsFileCertificate.new
        data = {}
        data['certificateChain'] = stub[:certificate_chain] unless stub[:certificate_chain].nil?
        data['privateKey'] = stub[:private_key] unless stub[:private_key].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayListenerTlsAcmCertificate
    class VirtualGatewayListenerTlsAcmCertificate
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayListenerTlsAcmCertificate')
        visited = visited + ['VirtualGatewayListenerTlsAcmCertificate']
        {
          certificate_arn: 'certificate_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayListenerTlsAcmCertificate.new
        data = {}
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayListenerTlsValidationContext
    class VirtualGatewayListenerTlsValidationContext
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayListenerTlsValidationContext')
        visited = visited + ['VirtualGatewayListenerTlsValidationContext']
        {
          member_trust: VirtualGatewayListenerTlsValidationContextTrust.default(visited),
          subject_alternative_names: SubjectAlternativeNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayListenerTlsValidationContext.new
        data = {}
        data['trust'] = VirtualGatewayListenerTlsValidationContextTrust.stub(stub[:member_trust]) unless stub[:member_trust].nil?
        data['subjectAlternativeNames'] = SubjectAlternativeNames.stub(stub[:subject_alternative_names]) unless stub[:subject_alternative_names].nil?
        data
      end
    end

    # Structure Stubber for SubjectAlternativeNames
    class SubjectAlternativeNames
      def self.default(visited=[])
        return nil if visited.include?('SubjectAlternativeNames')
        visited = visited + ['SubjectAlternativeNames']
        {
          match: SubjectAlternativeNameMatchers.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SubjectAlternativeNames.new
        data = {}
        data['match'] = SubjectAlternativeNameMatchers.stub(stub[:match]) unless stub[:match].nil?
        data
      end
    end

    # Structure Stubber for SubjectAlternativeNameMatchers
    class SubjectAlternativeNameMatchers
      def self.default(visited=[])
        return nil if visited.include?('SubjectAlternativeNameMatchers')
        visited = visited + ['SubjectAlternativeNameMatchers']
        {
          exact: SubjectAlternativeNameList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SubjectAlternativeNameMatchers.new
        data = {}
        data['exact'] = SubjectAlternativeNameList.stub(stub[:exact]) unless stub[:exact].nil?
        data
      end
    end

    # List Stubber for SubjectAlternativeNameList
    class SubjectAlternativeNameList
      def self.default(visited=[])
        return nil if visited.include?('SubjectAlternativeNameList')
        visited = visited + ['SubjectAlternativeNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Union Stubber for VirtualGatewayListenerTlsValidationContextTrust
    class VirtualGatewayListenerTlsValidationContextTrust
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayListenerTlsValidationContextTrust')
        visited = visited + ['VirtualGatewayListenerTlsValidationContextTrust']
        {
          file: VirtualGatewayTlsValidationContextFileTrust.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualGatewayListenerTlsValidationContextTrust::File
          data['file'] = (VirtualGatewayTlsValidationContextFileTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayListenerTlsValidationContextTrust::Sds
          data['sds'] = (VirtualGatewayTlsValidationContextSdsTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualGatewayListenerTlsValidationContextTrust"
        end

        data
      end
    end

    # Structure Stubber for VirtualGatewayTlsValidationContextSdsTrust
    class VirtualGatewayTlsValidationContextSdsTrust
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayTlsValidationContextSdsTrust')
        visited = visited + ['VirtualGatewayTlsValidationContextSdsTrust']
        {
          secret_name: 'secret_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayTlsValidationContextSdsTrust.new
        data = {}
        data['secretName'] = stub[:secret_name] unless stub[:secret_name].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayTlsValidationContextFileTrust
    class VirtualGatewayTlsValidationContextFileTrust
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayTlsValidationContextFileTrust')
        visited = visited + ['VirtualGatewayTlsValidationContextFileTrust']
        {
          certificate_chain: 'certificate_chain',
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayTlsValidationContextFileTrust.new
        data = {}
        data['certificateChain'] = stub[:certificate_chain] unless stub[:certificate_chain].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayPortMapping
    class VirtualGatewayPortMapping
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayPortMapping')
        visited = visited + ['VirtualGatewayPortMapping']
        {
          port: 1,
          protocol: 'protocol',
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayPortMapping.new
        data = {}
        data['port'] = stub[:port] unless stub[:port].nil?
        data['protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayHealthCheckPolicy
    class VirtualGatewayHealthCheckPolicy
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayHealthCheckPolicy')
        visited = visited + ['VirtualGatewayHealthCheckPolicy']
        {
          timeout_millis: 1,
          interval_millis: 1,
          protocol: 'protocol',
          port: 1,
          path: 'path',
          healthy_threshold: 1,
          unhealthy_threshold: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayHealthCheckPolicy.new
        data = {}
        data['timeoutMillis'] = stub[:timeout_millis] unless stub[:timeout_millis].nil?
        data['intervalMillis'] = stub[:interval_millis] unless stub[:interval_millis].nil?
        data['protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['port'] = stub[:port] unless stub[:port].nil?
        data['path'] = stub[:path] unless stub[:path].nil?
        data['healthyThreshold'] = stub[:healthy_threshold] unless stub[:healthy_threshold].nil?
        data['unhealthyThreshold'] = stub[:unhealthy_threshold] unless stub[:unhealthy_threshold].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayBackendDefaults
    class VirtualGatewayBackendDefaults
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayBackendDefaults')
        visited = visited + ['VirtualGatewayBackendDefaults']
        {
          client_policy: VirtualGatewayClientPolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayBackendDefaults.new
        data = {}
        data['clientPolicy'] = VirtualGatewayClientPolicy.stub(stub[:client_policy]) unless stub[:client_policy].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayClientPolicy
    class VirtualGatewayClientPolicy
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayClientPolicy')
        visited = visited + ['VirtualGatewayClientPolicy']
        {
          tls: VirtualGatewayClientPolicyTls.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayClientPolicy.new
        data = {}
        data['tls'] = VirtualGatewayClientPolicyTls.stub(stub[:tls]) unless stub[:tls].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayClientPolicyTls
    class VirtualGatewayClientPolicyTls
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayClientPolicyTls')
        visited = visited + ['VirtualGatewayClientPolicyTls']
        {
          enforce: false,
          ports: PortSet.default(visited),
          certificate: VirtualGatewayClientTlsCertificate.default(visited),
          validation: VirtualGatewayTlsValidationContext.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayClientPolicyTls.new
        data = {}
        data['enforce'] = stub[:enforce] unless stub[:enforce].nil?
        data['ports'] = PortSet.stub(stub[:ports]) unless stub[:ports].nil?
        data['certificate'] = VirtualGatewayClientTlsCertificate.stub(stub[:certificate]) unless stub[:certificate].nil?
        data['validation'] = VirtualGatewayTlsValidationContext.stub(stub[:validation]) unless stub[:validation].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayTlsValidationContext
    class VirtualGatewayTlsValidationContext
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayTlsValidationContext')
        visited = visited + ['VirtualGatewayTlsValidationContext']
        {
          member_trust: VirtualGatewayTlsValidationContextTrust.default(visited),
          subject_alternative_names: SubjectAlternativeNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayTlsValidationContext.new
        data = {}
        data['trust'] = VirtualGatewayTlsValidationContextTrust.stub(stub[:member_trust]) unless stub[:member_trust].nil?
        data['subjectAlternativeNames'] = SubjectAlternativeNames.stub(stub[:subject_alternative_names]) unless stub[:subject_alternative_names].nil?
        data
      end
    end

    # Union Stubber for VirtualGatewayTlsValidationContextTrust
    class VirtualGatewayTlsValidationContextTrust
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayTlsValidationContextTrust')
        visited = visited + ['VirtualGatewayTlsValidationContextTrust']
        {
          acm: VirtualGatewayTlsValidationContextAcmTrust.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualGatewayTlsValidationContextTrust::Acm
          data['acm'] = (VirtualGatewayTlsValidationContextAcmTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayTlsValidationContextTrust::File
          data['file'] = (VirtualGatewayTlsValidationContextFileTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayTlsValidationContextTrust::Sds
          data['sds'] = (VirtualGatewayTlsValidationContextSdsTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualGatewayTlsValidationContextTrust"
        end

        data
      end
    end

    # Structure Stubber for VirtualGatewayTlsValidationContextAcmTrust
    class VirtualGatewayTlsValidationContextAcmTrust
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayTlsValidationContextAcmTrust')
        visited = visited + ['VirtualGatewayTlsValidationContextAcmTrust']
        {
          certificate_authority_arns: VirtualGatewayCertificateAuthorityArns.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayTlsValidationContextAcmTrust.new
        data = {}
        data['certificateAuthorityArns'] = VirtualGatewayCertificateAuthorityArns.stub(stub[:certificate_authority_arns]) unless stub[:certificate_authority_arns].nil?
        data
      end
    end

    # List Stubber for VirtualGatewayCertificateAuthorityArns
    class VirtualGatewayCertificateAuthorityArns
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayCertificateAuthorityArns')
        visited = visited + ['VirtualGatewayCertificateAuthorityArns']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Union Stubber for VirtualGatewayClientTlsCertificate
    class VirtualGatewayClientTlsCertificate
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayClientTlsCertificate')
        visited = visited + ['VirtualGatewayClientTlsCertificate']
        {
          file: VirtualGatewayListenerTlsFileCertificate.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualGatewayClientTlsCertificate::File
          data['file'] = (VirtualGatewayListenerTlsFileCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayClientTlsCertificate::Sds
          data['sds'] = (VirtualGatewayListenerTlsSdsCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualGatewayClientTlsCertificate"
        end

        data
      end
    end

    # List Stubber for PortSet
    class PortSet
      def self.default(visited=[])
        return nil if visited.include?('PortSet')
        visited = visited + ['PortSet']
        [
          1
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateVirtualNode
    class CreateVirtualNode
      def self.default(visited=[])
        {
          virtual_node: VirtualNodeData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualNodeData.stub(stub[:virtual_node]) unless stub[:virtual_node].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VirtualNodeData
    class VirtualNodeData
      def self.default(visited=[])
        return nil if visited.include?('VirtualNodeData')
        visited = visited + ['VirtualNodeData']
        {
          mesh_name: 'mesh_name',
          virtual_node_name: 'virtual_node_name',
          spec: VirtualNodeSpec.default(visited),
          metadata: ResourceMetadata.default(visited),
          status: VirtualNodeStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualNodeData.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['virtualNodeName'] = stub[:virtual_node_name] unless stub[:virtual_node_name].nil?
        data['spec'] = VirtualNodeSpec.stub(stub[:spec]) unless stub[:spec].nil?
        data['metadata'] = ResourceMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['status'] = VirtualNodeStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for VirtualNodeStatus
    class VirtualNodeStatus
      def self.default(visited=[])
        return nil if visited.include?('VirtualNodeStatus')
        visited = visited + ['VirtualNodeStatus']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualNodeStatus.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for VirtualNodeSpec
    class VirtualNodeSpec
      def self.default(visited=[])
        return nil if visited.include?('VirtualNodeSpec')
        visited = visited + ['VirtualNodeSpec']
        {
          service_discovery: ServiceDiscovery.default(visited),
          listeners: Listeners.default(visited),
          backends: Backends.default(visited),
          backend_defaults: BackendDefaults.default(visited),
          logging: Logging.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualNodeSpec.new
        data = {}
        data['serviceDiscovery'] = ServiceDiscovery.stub(stub[:service_discovery]) unless stub[:service_discovery].nil?
        data['listeners'] = Listeners.stub(stub[:listeners]) unless stub[:listeners].nil?
        data['backends'] = Backends.stub(stub[:backends]) unless stub[:backends].nil?
        data['backendDefaults'] = BackendDefaults.stub(stub[:backend_defaults]) unless stub[:backend_defaults].nil?
        data['logging'] = Logging.stub(stub[:logging]) unless stub[:logging].nil?
        data
      end
    end

    # Structure Stubber for Logging
    class Logging
      def self.default(visited=[])
        return nil if visited.include?('Logging')
        visited = visited + ['Logging']
        {
          access_log: AccessLog.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Logging.new
        data = {}
        data['accessLog'] = AccessLog.stub(stub[:access_log]) unless stub[:access_log].nil?
        data
      end
    end

    # Union Stubber for AccessLog
    class AccessLog
      def self.default(visited=[])
        return nil if visited.include?('AccessLog')
        visited = visited + ['AccessLog']
        {
          file: FileAccessLog.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::AccessLog::File
          data['file'] = (FileAccessLog.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AccessLog"
        end

        data
      end
    end

    # Structure Stubber for FileAccessLog
    class FileAccessLog
      def self.default(visited=[])
        return nil if visited.include?('FileAccessLog')
        visited = visited + ['FileAccessLog']
        {
          path: 'path',
        }
      end

      def self.stub(stub)
        stub ||= Types::FileAccessLog.new
        data = {}
        data['path'] = stub[:path] unless stub[:path].nil?
        data
      end
    end

    # Structure Stubber for BackendDefaults
    class BackendDefaults
      def self.default(visited=[])
        return nil if visited.include?('BackendDefaults')
        visited = visited + ['BackendDefaults']
        {
          client_policy: ClientPolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BackendDefaults.new
        data = {}
        data['clientPolicy'] = ClientPolicy.stub(stub[:client_policy]) unless stub[:client_policy].nil?
        data
      end
    end

    # Structure Stubber for ClientPolicy
    class ClientPolicy
      def self.default(visited=[])
        return nil if visited.include?('ClientPolicy')
        visited = visited + ['ClientPolicy']
        {
          tls: ClientPolicyTls.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClientPolicy.new
        data = {}
        data['tls'] = ClientPolicyTls.stub(stub[:tls]) unless stub[:tls].nil?
        data
      end
    end

    # Structure Stubber for ClientPolicyTls
    class ClientPolicyTls
      def self.default(visited=[])
        return nil if visited.include?('ClientPolicyTls')
        visited = visited + ['ClientPolicyTls']
        {
          enforce: false,
          ports: PortSet.default(visited),
          certificate: ClientTlsCertificate.default(visited),
          validation: TlsValidationContext.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClientPolicyTls.new
        data = {}
        data['enforce'] = stub[:enforce] unless stub[:enforce].nil?
        data['ports'] = PortSet.stub(stub[:ports]) unless stub[:ports].nil?
        data['certificate'] = ClientTlsCertificate.stub(stub[:certificate]) unless stub[:certificate].nil?
        data['validation'] = TlsValidationContext.stub(stub[:validation]) unless stub[:validation].nil?
        data
      end
    end

    # Structure Stubber for TlsValidationContext
    class TlsValidationContext
      def self.default(visited=[])
        return nil if visited.include?('TlsValidationContext')
        visited = visited + ['TlsValidationContext']
        {
          member_trust: TlsValidationContextTrust.default(visited),
          subject_alternative_names: SubjectAlternativeNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TlsValidationContext.new
        data = {}
        data['trust'] = TlsValidationContextTrust.stub(stub[:member_trust]) unless stub[:member_trust].nil?
        data['subjectAlternativeNames'] = SubjectAlternativeNames.stub(stub[:subject_alternative_names]) unless stub[:subject_alternative_names].nil?
        data
      end
    end

    # Union Stubber for TlsValidationContextTrust
    class TlsValidationContextTrust
      def self.default(visited=[])
        return nil if visited.include?('TlsValidationContextTrust')
        visited = visited + ['TlsValidationContextTrust']
        {
          acm: TlsValidationContextAcmTrust.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::TlsValidationContextTrust::Acm
          data['acm'] = (TlsValidationContextAcmTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::TlsValidationContextTrust::File
          data['file'] = (TlsValidationContextFileTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::TlsValidationContextTrust::Sds
          data['sds'] = (TlsValidationContextSdsTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::TlsValidationContextTrust"
        end

        data
      end
    end

    # Structure Stubber for TlsValidationContextSdsTrust
    class TlsValidationContextSdsTrust
      def self.default(visited=[])
        return nil if visited.include?('TlsValidationContextSdsTrust')
        visited = visited + ['TlsValidationContextSdsTrust']
        {
          secret_name: 'secret_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TlsValidationContextSdsTrust.new
        data = {}
        data['secretName'] = stub[:secret_name] unless stub[:secret_name].nil?
        data
      end
    end

    # Structure Stubber for TlsValidationContextFileTrust
    class TlsValidationContextFileTrust
      def self.default(visited=[])
        return nil if visited.include?('TlsValidationContextFileTrust')
        visited = visited + ['TlsValidationContextFileTrust']
        {
          certificate_chain: 'certificate_chain',
        }
      end

      def self.stub(stub)
        stub ||= Types::TlsValidationContextFileTrust.new
        data = {}
        data['certificateChain'] = stub[:certificate_chain] unless stub[:certificate_chain].nil?
        data
      end
    end

    # Structure Stubber for TlsValidationContextAcmTrust
    class TlsValidationContextAcmTrust
      def self.default(visited=[])
        return nil if visited.include?('TlsValidationContextAcmTrust')
        visited = visited + ['TlsValidationContextAcmTrust']
        {
          certificate_authority_arns: CertificateAuthorityArns.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TlsValidationContextAcmTrust.new
        data = {}
        data['certificateAuthorityArns'] = CertificateAuthorityArns.stub(stub[:certificate_authority_arns]) unless stub[:certificate_authority_arns].nil?
        data
      end
    end

    # List Stubber for CertificateAuthorityArns
    class CertificateAuthorityArns
      def self.default(visited=[])
        return nil if visited.include?('CertificateAuthorityArns')
        visited = visited + ['CertificateAuthorityArns']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Union Stubber for ClientTlsCertificate
    class ClientTlsCertificate
      def self.default(visited=[])
        return nil if visited.include?('ClientTlsCertificate')
        visited = visited + ['ClientTlsCertificate']
        {
          file: ListenerTlsFileCertificate.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ClientTlsCertificate::File
          data['file'] = (ListenerTlsFileCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ClientTlsCertificate::Sds
          data['sds'] = (ListenerTlsSdsCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ClientTlsCertificate"
        end

        data
      end
    end

    # Structure Stubber for ListenerTlsSdsCertificate
    class ListenerTlsSdsCertificate
      def self.default(visited=[])
        return nil if visited.include?('ListenerTlsSdsCertificate')
        visited = visited + ['ListenerTlsSdsCertificate']
        {
          secret_name: 'secret_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListenerTlsSdsCertificate.new
        data = {}
        data['secretName'] = stub[:secret_name] unless stub[:secret_name].nil?
        data
      end
    end

    # Structure Stubber for ListenerTlsFileCertificate
    class ListenerTlsFileCertificate
      def self.default(visited=[])
        return nil if visited.include?('ListenerTlsFileCertificate')
        visited = visited + ['ListenerTlsFileCertificate']
        {
          certificate_chain: 'certificate_chain',
          private_key: 'private_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListenerTlsFileCertificate.new
        data = {}
        data['certificateChain'] = stub[:certificate_chain] unless stub[:certificate_chain].nil?
        data['privateKey'] = stub[:private_key] unless stub[:private_key].nil?
        data
      end
    end

    # List Stubber for Backends
    class Backends
      def self.default(visited=[])
        return nil if visited.include?('Backends')
        visited = visited + ['Backends']
        [
          Backend.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Backend.stub(element) unless element.nil?
        end
        data
      end
    end

    # Union Stubber for Backend
    class Backend
      def self.default(visited=[])
        return nil if visited.include?('Backend')
        visited = visited + ['Backend']
        {
          virtual_service: VirtualServiceBackend.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::Backend::VirtualService
          data['virtualService'] = (VirtualServiceBackend.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::Backend"
        end

        data
      end
    end

    # Structure Stubber for VirtualServiceBackend
    class VirtualServiceBackend
      def self.default(visited=[])
        return nil if visited.include?('VirtualServiceBackend')
        visited = visited + ['VirtualServiceBackend']
        {
          virtual_service_name: 'virtual_service_name',
          client_policy: ClientPolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualServiceBackend.new
        data = {}
        data['virtualServiceName'] = stub[:virtual_service_name] unless stub[:virtual_service_name].nil?
        data['clientPolicy'] = ClientPolicy.stub(stub[:client_policy]) unless stub[:client_policy].nil?
        data
      end
    end

    # List Stubber for Listeners
    class Listeners
      def self.default(visited=[])
        return nil if visited.include?('Listeners')
        visited = visited + ['Listeners']
        [
          Listener.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Listener.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Listener
    class Listener
      def self.default(visited=[])
        return nil if visited.include?('Listener')
        visited = visited + ['Listener']
        {
          port_mapping: PortMapping.default(visited),
          tls: ListenerTls.default(visited),
          health_check: HealthCheckPolicy.default(visited),
          timeout: ListenerTimeout.default(visited),
          outlier_detection: OutlierDetection.default(visited),
          connection_pool: VirtualNodeConnectionPool.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Listener.new
        data = {}
        data['portMapping'] = PortMapping.stub(stub[:port_mapping]) unless stub[:port_mapping].nil?
        data['tls'] = ListenerTls.stub(stub[:tls]) unless stub[:tls].nil?
        data['healthCheck'] = HealthCheckPolicy.stub(stub[:health_check]) unless stub[:health_check].nil?
        data['timeout'] = ListenerTimeout.stub(stub[:timeout]) unless stub[:timeout].nil?
        data['outlierDetection'] = OutlierDetection.stub(stub[:outlier_detection]) unless stub[:outlier_detection].nil?
        data['connectionPool'] = VirtualNodeConnectionPool.stub(stub[:connection_pool]) unless stub[:connection_pool].nil?
        data
      end
    end

    # Union Stubber for VirtualNodeConnectionPool
    class VirtualNodeConnectionPool
      def self.default(visited=[])
        return nil if visited.include?('VirtualNodeConnectionPool')
        visited = visited + ['VirtualNodeConnectionPool']
        {
          tcp: VirtualNodeTcpConnectionPool.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualNodeConnectionPool::Tcp
          data['tcp'] = (VirtualNodeTcpConnectionPool.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualNodeConnectionPool::Http
          data['http'] = (VirtualNodeHttpConnectionPool.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualNodeConnectionPool::Http2
          data['http2'] = (VirtualNodeHttp2ConnectionPool.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualNodeConnectionPool::Grpc
          data['grpc'] = (VirtualNodeGrpcConnectionPool.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualNodeConnectionPool"
        end

        data
      end
    end

    # Structure Stubber for VirtualNodeGrpcConnectionPool
    class VirtualNodeGrpcConnectionPool
      def self.default(visited=[])
        return nil if visited.include?('VirtualNodeGrpcConnectionPool')
        visited = visited + ['VirtualNodeGrpcConnectionPool']
        {
          max_requests: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualNodeGrpcConnectionPool.new
        data = {}
        data['maxRequests'] = stub[:max_requests] unless stub[:max_requests].nil?
        data
      end
    end

    # Structure Stubber for VirtualNodeHttp2ConnectionPool
    class VirtualNodeHttp2ConnectionPool
      def self.default(visited=[])
        return nil if visited.include?('VirtualNodeHttp2ConnectionPool')
        visited = visited + ['VirtualNodeHttp2ConnectionPool']
        {
          max_requests: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualNodeHttp2ConnectionPool.new
        data = {}
        data['maxRequests'] = stub[:max_requests] unless stub[:max_requests].nil?
        data
      end
    end

    # Structure Stubber for VirtualNodeHttpConnectionPool
    class VirtualNodeHttpConnectionPool
      def self.default(visited=[])
        return nil if visited.include?('VirtualNodeHttpConnectionPool')
        visited = visited + ['VirtualNodeHttpConnectionPool']
        {
          max_connections: 1,
          max_pending_requests: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualNodeHttpConnectionPool.new
        data = {}
        data['maxConnections'] = stub[:max_connections] unless stub[:max_connections].nil?
        data['maxPendingRequests'] = stub[:max_pending_requests] unless stub[:max_pending_requests].nil?
        data
      end
    end

    # Structure Stubber for VirtualNodeTcpConnectionPool
    class VirtualNodeTcpConnectionPool
      def self.default(visited=[])
        return nil if visited.include?('VirtualNodeTcpConnectionPool')
        visited = visited + ['VirtualNodeTcpConnectionPool']
        {
          max_connections: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualNodeTcpConnectionPool.new
        data = {}
        data['maxConnections'] = stub[:max_connections] unless stub[:max_connections].nil?
        data
      end
    end

    # Structure Stubber for OutlierDetection
    class OutlierDetection
      def self.default(visited=[])
        return nil if visited.include?('OutlierDetection')
        visited = visited + ['OutlierDetection']
        {
          max_server_errors: 1,
          interval: Duration.default(visited),
          base_ejection_duration: Duration.default(visited),
          max_ejection_percent: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::OutlierDetection.new
        data = {}
        data['maxServerErrors'] = stub[:max_server_errors] unless stub[:max_server_errors].nil?
        data['interval'] = Duration.stub(stub[:interval]) unless stub[:interval].nil?
        data['baseEjectionDuration'] = Duration.stub(stub[:base_ejection_duration]) unless stub[:base_ejection_duration].nil?
        data['maxEjectionPercent'] = stub[:max_ejection_percent] unless stub[:max_ejection_percent].nil?
        data
      end
    end

    # Union Stubber for ListenerTimeout
    class ListenerTimeout
      def self.default(visited=[])
        return nil if visited.include?('ListenerTimeout')
        visited = visited + ['ListenerTimeout']
        {
          tcp: TcpTimeout.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ListenerTimeout::Tcp
          data['tcp'] = (TcpTimeout.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ListenerTimeout::Http
          data['http'] = (HttpTimeout.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ListenerTimeout::Http2
          data['http2'] = (HttpTimeout.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ListenerTimeout::Grpc
          data['grpc'] = (GrpcTimeout.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ListenerTimeout"
        end

        data
      end
    end

    # Structure Stubber for HealthCheckPolicy
    class HealthCheckPolicy
      def self.default(visited=[])
        return nil if visited.include?('HealthCheckPolicy')
        visited = visited + ['HealthCheckPolicy']
        {
          timeout_millis: 1,
          interval_millis: 1,
          protocol: 'protocol',
          port: 1,
          path: 'path',
          healthy_threshold: 1,
          unhealthy_threshold: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HealthCheckPolicy.new
        data = {}
        data['timeoutMillis'] = stub[:timeout_millis] unless stub[:timeout_millis].nil?
        data['intervalMillis'] = stub[:interval_millis] unless stub[:interval_millis].nil?
        data['protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['port'] = stub[:port] unless stub[:port].nil?
        data['path'] = stub[:path] unless stub[:path].nil?
        data['healthyThreshold'] = stub[:healthy_threshold] unless stub[:healthy_threshold].nil?
        data['unhealthyThreshold'] = stub[:unhealthy_threshold] unless stub[:unhealthy_threshold].nil?
        data
      end
    end

    # Structure Stubber for ListenerTls
    class ListenerTls
      def self.default(visited=[])
        return nil if visited.include?('ListenerTls')
        visited = visited + ['ListenerTls']
        {
          mode: 'mode',
          certificate: ListenerTlsCertificate.default(visited),
          validation: ListenerTlsValidationContext.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ListenerTls.new
        data = {}
        data['mode'] = stub[:mode] unless stub[:mode].nil?
        data['certificate'] = ListenerTlsCertificate.stub(stub[:certificate]) unless stub[:certificate].nil?
        data['validation'] = ListenerTlsValidationContext.stub(stub[:validation]) unless stub[:validation].nil?
        data
      end
    end

    # Structure Stubber for ListenerTlsValidationContext
    class ListenerTlsValidationContext
      def self.default(visited=[])
        return nil if visited.include?('ListenerTlsValidationContext')
        visited = visited + ['ListenerTlsValidationContext']
        {
          member_trust: ListenerTlsValidationContextTrust.default(visited),
          subject_alternative_names: SubjectAlternativeNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ListenerTlsValidationContext.new
        data = {}
        data['trust'] = ListenerTlsValidationContextTrust.stub(stub[:member_trust]) unless stub[:member_trust].nil?
        data['subjectAlternativeNames'] = SubjectAlternativeNames.stub(stub[:subject_alternative_names]) unless stub[:subject_alternative_names].nil?
        data
      end
    end

    # Union Stubber for ListenerTlsValidationContextTrust
    class ListenerTlsValidationContextTrust
      def self.default(visited=[])
        return nil if visited.include?('ListenerTlsValidationContextTrust')
        visited = visited + ['ListenerTlsValidationContextTrust']
        {
          file: TlsValidationContextFileTrust.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ListenerTlsValidationContextTrust::File
          data['file'] = (TlsValidationContextFileTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ListenerTlsValidationContextTrust::Sds
          data['sds'] = (TlsValidationContextSdsTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ListenerTlsValidationContextTrust"
        end

        data
      end
    end

    # Union Stubber for ListenerTlsCertificate
    class ListenerTlsCertificate
      def self.default(visited=[])
        return nil if visited.include?('ListenerTlsCertificate')
        visited = visited + ['ListenerTlsCertificate']
        {
          acm: ListenerTlsAcmCertificate.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ListenerTlsCertificate::Acm
          data['acm'] = (ListenerTlsAcmCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ListenerTlsCertificate::File
          data['file'] = (ListenerTlsFileCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ListenerTlsCertificate::Sds
          data['sds'] = (ListenerTlsSdsCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ListenerTlsCertificate"
        end

        data
      end
    end

    # Structure Stubber for ListenerTlsAcmCertificate
    class ListenerTlsAcmCertificate
      def self.default(visited=[])
        return nil if visited.include?('ListenerTlsAcmCertificate')
        visited = visited + ['ListenerTlsAcmCertificate']
        {
          certificate_arn: 'certificate_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListenerTlsAcmCertificate.new
        data = {}
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data
      end
    end

    # Structure Stubber for PortMapping
    class PortMapping
      def self.default(visited=[])
        return nil if visited.include?('PortMapping')
        visited = visited + ['PortMapping']
        {
          port: 1,
          protocol: 'protocol',
        }
      end

      def self.stub(stub)
        stub ||= Types::PortMapping.new
        data = {}
        data['port'] = stub[:port] unless stub[:port].nil?
        data['protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data
      end
    end

    # Union Stubber for ServiceDiscovery
    class ServiceDiscovery
      def self.default(visited=[])
        return nil if visited.include?('ServiceDiscovery')
        visited = visited + ['ServiceDiscovery']
        {
          dns: DnsServiceDiscovery.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ServiceDiscovery::Dns
          data['dns'] = (DnsServiceDiscovery.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ServiceDiscovery::AwsCloudMap
          data['awsCloudMap'] = (AwsCloudMapServiceDiscovery.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ServiceDiscovery"
        end

        data
      end
    end

    # Structure Stubber for AwsCloudMapServiceDiscovery
    class AwsCloudMapServiceDiscovery
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudMapServiceDiscovery')
        visited = visited + ['AwsCloudMapServiceDiscovery']
        {
          namespace_name: 'namespace_name',
          service_name: 'service_name',
          attributes: AwsCloudMapInstanceAttributes.default(visited),
          ip_preference: 'ip_preference',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudMapServiceDiscovery.new
        data = {}
        data['namespaceName'] = stub[:namespace_name] unless stub[:namespace_name].nil?
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['attributes'] = AwsCloudMapInstanceAttributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['ipPreference'] = stub[:ip_preference] unless stub[:ip_preference].nil?
        data
      end
    end

    # List Stubber for AwsCloudMapInstanceAttributes
    class AwsCloudMapInstanceAttributes
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudMapInstanceAttributes')
        visited = visited + ['AwsCloudMapInstanceAttributes']
        [
          AwsCloudMapInstanceAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AwsCloudMapInstanceAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AwsCloudMapInstanceAttribute
    class AwsCloudMapInstanceAttribute
      def self.default(visited=[])
        return nil if visited.include?('AwsCloudMapInstanceAttribute')
        visited = visited + ['AwsCloudMapInstanceAttribute']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudMapInstanceAttribute.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for DnsServiceDiscovery
    class DnsServiceDiscovery
      def self.default(visited=[])
        return nil if visited.include?('DnsServiceDiscovery')
        visited = visited + ['DnsServiceDiscovery']
        {
          hostname: 'hostname',
          response_type: 'response_type',
          ip_preference: 'ip_preference',
        }
      end

      def self.stub(stub)
        stub ||= Types::DnsServiceDiscovery.new
        data = {}
        data['hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['responseType'] = stub[:response_type] unless stub[:response_type].nil?
        data['ipPreference'] = stub[:ip_preference] unless stub[:ip_preference].nil?
        data
      end
    end

    # Operation Stubber for CreateVirtualRouter
    class CreateVirtualRouter
      def self.default(visited=[])
        {
          virtual_router: VirtualRouterData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualRouterData.stub(stub[:virtual_router]) unless stub[:virtual_router].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VirtualRouterData
    class VirtualRouterData
      def self.default(visited=[])
        return nil if visited.include?('VirtualRouterData')
        visited = visited + ['VirtualRouterData']
        {
          mesh_name: 'mesh_name',
          virtual_router_name: 'virtual_router_name',
          spec: VirtualRouterSpec.default(visited),
          metadata: ResourceMetadata.default(visited),
          status: VirtualRouterStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualRouterData.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['virtualRouterName'] = stub[:virtual_router_name] unless stub[:virtual_router_name].nil?
        data['spec'] = VirtualRouterSpec.stub(stub[:spec]) unless stub[:spec].nil?
        data['metadata'] = ResourceMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['status'] = VirtualRouterStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for VirtualRouterStatus
    class VirtualRouterStatus
      def self.default(visited=[])
        return nil if visited.include?('VirtualRouterStatus')
        visited = visited + ['VirtualRouterStatus']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualRouterStatus.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for VirtualRouterSpec
    class VirtualRouterSpec
      def self.default(visited=[])
        return nil if visited.include?('VirtualRouterSpec')
        visited = visited + ['VirtualRouterSpec']
        {
          listeners: VirtualRouterListeners.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualRouterSpec.new
        data = {}
        data['listeners'] = VirtualRouterListeners.stub(stub[:listeners]) unless stub[:listeners].nil?
        data
      end
    end

    # List Stubber for VirtualRouterListeners
    class VirtualRouterListeners
      def self.default(visited=[])
        return nil if visited.include?('VirtualRouterListeners')
        visited = visited + ['VirtualRouterListeners']
        [
          VirtualRouterListener.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VirtualRouterListener.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VirtualRouterListener
    class VirtualRouterListener
      def self.default(visited=[])
        return nil if visited.include?('VirtualRouterListener')
        visited = visited + ['VirtualRouterListener']
        {
          port_mapping: PortMapping.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualRouterListener.new
        data = {}
        data['portMapping'] = PortMapping.stub(stub[:port_mapping]) unless stub[:port_mapping].nil?
        data
      end
    end

    # Operation Stubber for CreateVirtualService
    class CreateVirtualService
      def self.default(visited=[])
        {
          virtual_service: VirtualServiceData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualServiceData.stub(stub[:virtual_service]) unless stub[:virtual_service].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VirtualServiceData
    class VirtualServiceData
      def self.default(visited=[])
        return nil if visited.include?('VirtualServiceData')
        visited = visited + ['VirtualServiceData']
        {
          mesh_name: 'mesh_name',
          virtual_service_name: 'virtual_service_name',
          spec: VirtualServiceSpec.default(visited),
          metadata: ResourceMetadata.default(visited),
          status: VirtualServiceStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualServiceData.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['virtualServiceName'] = stub[:virtual_service_name] unless stub[:virtual_service_name].nil?
        data['spec'] = VirtualServiceSpec.stub(stub[:spec]) unless stub[:spec].nil?
        data['metadata'] = ResourceMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['status'] = VirtualServiceStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for VirtualServiceStatus
    class VirtualServiceStatus
      def self.default(visited=[])
        return nil if visited.include?('VirtualServiceStatus')
        visited = visited + ['VirtualServiceStatus']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualServiceStatus.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for VirtualServiceSpec
    class VirtualServiceSpec
      def self.default(visited=[])
        return nil if visited.include?('VirtualServiceSpec')
        visited = visited + ['VirtualServiceSpec']
        {
          provider: VirtualServiceProvider.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualServiceSpec.new
        data = {}
        data['provider'] = VirtualServiceProvider.stub(stub[:provider]) unless stub[:provider].nil?
        data
      end
    end

    # Union Stubber for VirtualServiceProvider
    class VirtualServiceProvider
      def self.default(visited=[])
        return nil if visited.include?('VirtualServiceProvider')
        visited = visited + ['VirtualServiceProvider']
        {
          virtual_node: VirtualNodeServiceProvider.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualServiceProvider::VirtualNode
          data['virtualNode'] = (VirtualNodeServiceProvider.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualServiceProvider::VirtualRouter
          data['virtualRouter'] = (VirtualRouterServiceProvider.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualServiceProvider"
        end

        data
      end
    end

    # Structure Stubber for VirtualRouterServiceProvider
    class VirtualRouterServiceProvider
      def self.default(visited=[])
        return nil if visited.include?('VirtualRouterServiceProvider')
        visited = visited + ['VirtualRouterServiceProvider']
        {
          virtual_router_name: 'virtual_router_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualRouterServiceProvider.new
        data = {}
        data['virtualRouterName'] = stub[:virtual_router_name] unless stub[:virtual_router_name].nil?
        data
      end
    end

    # Structure Stubber for VirtualNodeServiceProvider
    class VirtualNodeServiceProvider
      def self.default(visited=[])
        return nil if visited.include?('VirtualNodeServiceProvider')
        visited = visited + ['VirtualNodeServiceProvider']
        {
          virtual_node_name: 'virtual_node_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualNodeServiceProvider.new
        data = {}
        data['virtualNodeName'] = stub[:virtual_node_name] unless stub[:virtual_node_name].nil?
        data
      end
    end

    # Operation Stubber for DeleteGatewayRoute
    class DeleteGatewayRoute
      def self.default(visited=[])
        {
          gateway_route: GatewayRouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = GatewayRouteData.stub(stub[:gateway_route]) unless stub[:gateway_route].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteMesh
    class DeleteMesh
      def self.default(visited=[])
        {
          mesh: MeshData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = MeshData.stub(stub[:mesh]) unless stub[:mesh].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteRoute
    class DeleteRoute
      def self.default(visited=[])
        {
          route: RouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = RouteData.stub(stub[:route]) unless stub[:route].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteVirtualGateway
    class DeleteVirtualGateway
      def self.default(visited=[])
        {
          virtual_gateway: VirtualGatewayData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualGatewayData.stub(stub[:virtual_gateway]) unless stub[:virtual_gateway].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteVirtualNode
    class DeleteVirtualNode
      def self.default(visited=[])
        {
          virtual_node: VirtualNodeData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualNodeData.stub(stub[:virtual_node]) unless stub[:virtual_node].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteVirtualRouter
    class DeleteVirtualRouter
      def self.default(visited=[])
        {
          virtual_router: VirtualRouterData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualRouterData.stub(stub[:virtual_router]) unless stub[:virtual_router].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteVirtualService
    class DeleteVirtualService
      def self.default(visited=[])
        {
          virtual_service: VirtualServiceData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualServiceData.stub(stub[:virtual_service]) unless stub[:virtual_service].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeGatewayRoute
    class DescribeGatewayRoute
      def self.default(visited=[])
        {
          gateway_route: GatewayRouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = GatewayRouteData.stub(stub[:gateway_route]) unless stub[:gateway_route].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeMesh
    class DescribeMesh
      def self.default(visited=[])
        {
          mesh: MeshData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = MeshData.stub(stub[:mesh]) unless stub[:mesh].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeRoute
    class DescribeRoute
      def self.default(visited=[])
        {
          route: RouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = RouteData.stub(stub[:route]) unless stub[:route].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeVirtualGateway
    class DescribeVirtualGateway
      def self.default(visited=[])
        {
          virtual_gateway: VirtualGatewayData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualGatewayData.stub(stub[:virtual_gateway]) unless stub[:virtual_gateway].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeVirtualNode
    class DescribeVirtualNode
      def self.default(visited=[])
        {
          virtual_node: VirtualNodeData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualNodeData.stub(stub[:virtual_node]) unless stub[:virtual_node].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeVirtualRouter
    class DescribeVirtualRouter
      def self.default(visited=[])
        {
          virtual_router: VirtualRouterData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualRouterData.stub(stub[:virtual_router]) unless stub[:virtual_router].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeVirtualService
    class DescribeVirtualService
      def self.default(visited=[])
        {
          virtual_service: VirtualServiceData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualServiceData.stub(stub[:virtual_service]) unless stub[:virtual_service].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListGatewayRoutes
    class ListGatewayRoutes
      def self.default(visited=[])
        {
          gateway_routes: GatewayRouteList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['gatewayRoutes'] = GatewayRouteList.stub(stub[:gateway_routes]) unless stub[:gateway_routes].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for GatewayRouteList
    class GatewayRouteList
      def self.default(visited=[])
        return nil if visited.include?('GatewayRouteList')
        visited = visited + ['GatewayRouteList']
        [
          GatewayRouteRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GatewayRouteRef.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GatewayRouteRef
    class GatewayRouteRef
      def self.default(visited=[])
        return nil if visited.include?('GatewayRouteRef')
        visited = visited + ['GatewayRouteRef']
        {
          mesh_name: 'mesh_name',
          gateway_route_name: 'gateway_route_name',
          virtual_gateway_name: 'virtual_gateway_name',
          mesh_owner: 'mesh_owner',
          resource_owner: 'resource_owner',
          arn: 'arn',
          version: 1,
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayRouteRef.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['gatewayRouteName'] = stub[:gateway_route_name] unless stub[:gateway_route_name].nil?
        data['virtualGatewayName'] = stub[:virtual_gateway_name] unless stub[:virtual_gateway_name].nil?
        data['meshOwner'] = stub[:mesh_owner] unless stub[:mesh_owner].nil?
        data['resourceOwner'] = stub[:resource_owner] unless stub[:resource_owner].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListMeshes
    class ListMeshes
      def self.default(visited=[])
        {
          meshes: MeshList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['meshes'] = MeshList.stub(stub[:meshes]) unless stub[:meshes].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MeshList
    class MeshList
      def self.default(visited=[])
        return nil if visited.include?('MeshList')
        visited = visited + ['MeshList']
        [
          MeshRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MeshRef.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MeshRef
    class MeshRef
      def self.default(visited=[])
        return nil if visited.include?('MeshRef')
        visited = visited + ['MeshRef']
        {
          mesh_name: 'mesh_name',
          mesh_owner: 'mesh_owner',
          resource_owner: 'resource_owner',
          arn: 'arn',
          version: 1,
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::MeshRef.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['meshOwner'] = stub[:mesh_owner] unless stub[:mesh_owner].nil?
        data['resourceOwner'] = stub[:resource_owner] unless stub[:resource_owner].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListRoutes
    class ListRoutes
      def self.default(visited=[])
        {
          routes: RouteList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['routes'] = RouteList.stub(stub[:routes]) unless stub[:routes].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RouteList
    class RouteList
      def self.default(visited=[])
        return nil if visited.include?('RouteList')
        visited = visited + ['RouteList']
        [
          RouteRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RouteRef.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RouteRef
    class RouteRef
      def self.default(visited=[])
        return nil if visited.include?('RouteRef')
        visited = visited + ['RouteRef']
        {
          mesh_name: 'mesh_name',
          virtual_router_name: 'virtual_router_name',
          route_name: 'route_name',
          mesh_owner: 'mesh_owner',
          resource_owner: 'resource_owner',
          arn: 'arn',
          version: 1,
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteRef.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['virtualRouterName'] = stub[:virtual_router_name] unless stub[:virtual_router_name].nil?
        data['routeName'] = stub[:route_name] unless stub[:route_name].nil?
        data['meshOwner'] = stub[:mesh_owner] unless stub[:mesh_owner].nil?
        data['resourceOwner'] = stub[:resource_owner] unless stub[:resource_owner].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          TagRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TagRef.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TagRef
    class TagRef
      def self.default(visited=[])
        return nil if visited.include?('TagRef')
        visited = visited + ['TagRef']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::TagRef.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListVirtualGateways
    class ListVirtualGateways
      def self.default(visited=[])
        {
          virtual_gateways: VirtualGatewayList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['virtualGateways'] = VirtualGatewayList.stub(stub[:virtual_gateways]) unless stub[:virtual_gateways].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for VirtualGatewayList
    class VirtualGatewayList
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayList')
        visited = visited + ['VirtualGatewayList']
        [
          VirtualGatewayRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VirtualGatewayRef.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VirtualGatewayRef
    class VirtualGatewayRef
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayRef')
        visited = visited + ['VirtualGatewayRef']
        {
          mesh_name: 'mesh_name',
          virtual_gateway_name: 'virtual_gateway_name',
          mesh_owner: 'mesh_owner',
          resource_owner: 'resource_owner',
          arn: 'arn',
          version: 1,
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayRef.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['virtualGatewayName'] = stub[:virtual_gateway_name] unless stub[:virtual_gateway_name].nil?
        data['meshOwner'] = stub[:mesh_owner] unless stub[:mesh_owner].nil?
        data['resourceOwner'] = stub[:resource_owner] unless stub[:resource_owner].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListVirtualNodes
    class ListVirtualNodes
      def self.default(visited=[])
        {
          virtual_nodes: VirtualNodeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['virtualNodes'] = VirtualNodeList.stub(stub[:virtual_nodes]) unless stub[:virtual_nodes].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for VirtualNodeList
    class VirtualNodeList
      def self.default(visited=[])
        return nil if visited.include?('VirtualNodeList')
        visited = visited + ['VirtualNodeList']
        [
          VirtualNodeRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VirtualNodeRef.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VirtualNodeRef
    class VirtualNodeRef
      def self.default(visited=[])
        return nil if visited.include?('VirtualNodeRef')
        visited = visited + ['VirtualNodeRef']
        {
          mesh_name: 'mesh_name',
          virtual_node_name: 'virtual_node_name',
          mesh_owner: 'mesh_owner',
          resource_owner: 'resource_owner',
          arn: 'arn',
          version: 1,
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualNodeRef.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['virtualNodeName'] = stub[:virtual_node_name] unless stub[:virtual_node_name].nil?
        data['meshOwner'] = stub[:mesh_owner] unless stub[:mesh_owner].nil?
        data['resourceOwner'] = stub[:resource_owner] unless stub[:resource_owner].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListVirtualRouters
    class ListVirtualRouters
      def self.default(visited=[])
        {
          virtual_routers: VirtualRouterList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['virtualRouters'] = VirtualRouterList.stub(stub[:virtual_routers]) unless stub[:virtual_routers].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for VirtualRouterList
    class VirtualRouterList
      def self.default(visited=[])
        return nil if visited.include?('VirtualRouterList')
        visited = visited + ['VirtualRouterList']
        [
          VirtualRouterRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VirtualRouterRef.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VirtualRouterRef
    class VirtualRouterRef
      def self.default(visited=[])
        return nil if visited.include?('VirtualRouterRef')
        visited = visited + ['VirtualRouterRef']
        {
          mesh_name: 'mesh_name',
          virtual_router_name: 'virtual_router_name',
          mesh_owner: 'mesh_owner',
          resource_owner: 'resource_owner',
          arn: 'arn',
          version: 1,
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualRouterRef.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['virtualRouterName'] = stub[:virtual_router_name] unless stub[:virtual_router_name].nil?
        data['meshOwner'] = stub[:mesh_owner] unless stub[:mesh_owner].nil?
        data['resourceOwner'] = stub[:resource_owner] unless stub[:resource_owner].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListVirtualServices
    class ListVirtualServices
      def self.default(visited=[])
        {
          virtual_services: VirtualServiceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['virtualServices'] = VirtualServiceList.stub(stub[:virtual_services]) unless stub[:virtual_services].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for VirtualServiceList
    class VirtualServiceList
      def self.default(visited=[])
        return nil if visited.include?('VirtualServiceList')
        visited = visited + ['VirtualServiceList']
        [
          VirtualServiceRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VirtualServiceRef.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VirtualServiceRef
    class VirtualServiceRef
      def self.default(visited=[])
        return nil if visited.include?('VirtualServiceRef')
        visited = visited + ['VirtualServiceRef']
        {
          mesh_name: 'mesh_name',
          virtual_service_name: 'virtual_service_name',
          mesh_owner: 'mesh_owner',
          resource_owner: 'resource_owner',
          arn: 'arn',
          version: 1,
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualServiceRef.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['virtualServiceName'] = stub[:virtual_service_name] unless stub[:virtual_service_name].nil?
        data['meshOwner'] = stub[:mesh_owner] unless stub[:mesh_owner].nil?
        data['resourceOwner'] = stub[:resource_owner] unless stub[:resource_owner].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGatewayRoute
    class UpdateGatewayRoute
      def self.default(visited=[])
        {
          gateway_route: GatewayRouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = GatewayRouteData.stub(stub[:gateway_route]) unless stub[:gateway_route].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateMesh
    class UpdateMesh
      def self.default(visited=[])
        {
          mesh: MeshData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = MeshData.stub(stub[:mesh]) unless stub[:mesh].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRoute
    class UpdateRoute
      def self.default(visited=[])
        {
          route: RouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = RouteData.stub(stub[:route]) unless stub[:route].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateVirtualGateway
    class UpdateVirtualGateway
      def self.default(visited=[])
        {
          virtual_gateway: VirtualGatewayData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualGatewayData.stub(stub[:virtual_gateway]) unless stub[:virtual_gateway].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateVirtualNode
    class UpdateVirtualNode
      def self.default(visited=[])
        {
          virtual_node: VirtualNodeData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualNodeData.stub(stub[:virtual_node]) unless stub[:virtual_node].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateVirtualRouter
    class UpdateVirtualRouter
      def self.default(visited=[])
        {
          virtual_router: VirtualRouterData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualRouterData.stub(stub[:virtual_router]) unless stub[:virtual_router].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateVirtualService
    class UpdateVirtualService
      def self.default(visited=[])
        {
          virtual_service: VirtualServiceData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = VirtualServiceData.stub(stub[:virtual_service]) unless stub[:virtual_service].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
