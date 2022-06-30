# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppMesh
  module Stubs

    # Operation Stubber for CreateGatewayRoute
    class CreateGatewayRoute
      def self.default(visited=[])
        {
          gateway_route: Stubs::GatewayRouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::GatewayRouteData.stub(stub[:gateway_route]) unless stub[:gateway_route].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          spec: Stubs::GatewayRouteSpec.default(visited),
          metadata: Stubs::ResourceMetadata.default(visited),
          status: Stubs::GatewayRouteStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayRouteData.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['gatewayRouteName'] = stub[:gateway_route_name] unless stub[:gateway_route_name].nil?
        data['virtualGatewayName'] = stub[:virtual_gateway_name] unless stub[:virtual_gateway_name].nil?
        data['spec'] = Stubs::GatewayRouteSpec.stub(stub[:spec]) unless stub[:spec].nil?
        data['metadata'] = Stubs::ResourceMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['status'] = Stubs::GatewayRouteStatus.stub(stub[:status]) unless stub[:status].nil?
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
          http_route: Stubs::HttpGatewayRoute.default(visited),
          http2_route: Stubs::HttpGatewayRoute.default(visited),
          grpc_route: Stubs::GrpcGatewayRoute.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayRouteSpec.new
        data = {}
        data['priority'] = stub[:priority] unless stub[:priority].nil?
        data['httpRoute'] = Stubs::HttpGatewayRoute.stub(stub[:http_route]) unless stub[:http_route].nil?
        data['http2Route'] = Stubs::HttpGatewayRoute.stub(stub[:http2_route]) unless stub[:http2_route].nil?
        data['grpcRoute'] = Stubs::GrpcGatewayRoute.stub(stub[:grpc_route]) unless stub[:grpc_route].nil?
        data
      end
    end

    # Structure Stubber for GrpcGatewayRoute
    class GrpcGatewayRoute
      def self.default(visited=[])
        return nil if visited.include?('GrpcGatewayRoute')
        visited = visited + ['GrpcGatewayRoute']
        {
          match: Stubs::GrpcGatewayRouteMatch.default(visited),
          action: Stubs::GrpcGatewayRouteAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcGatewayRoute.new
        data = {}
        data['match'] = Stubs::GrpcGatewayRouteMatch.stub(stub[:match]) unless stub[:match].nil?
        data['action'] = Stubs::GrpcGatewayRouteAction.stub(stub[:action]) unless stub[:action].nil?
        data
      end
    end

    # Structure Stubber for GrpcGatewayRouteAction
    class GrpcGatewayRouteAction
      def self.default(visited=[])
        return nil if visited.include?('GrpcGatewayRouteAction')
        visited = visited + ['GrpcGatewayRouteAction']
        {
          target: Stubs::GatewayRouteTarget.default(visited),
          rewrite: Stubs::GrpcGatewayRouteRewrite.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcGatewayRouteAction.new
        data = {}
        data['target'] = Stubs::GatewayRouteTarget.stub(stub[:target]) unless stub[:target].nil?
        data['rewrite'] = Stubs::GrpcGatewayRouteRewrite.stub(stub[:rewrite]) unless stub[:rewrite].nil?
        data
      end
    end

    # Structure Stubber for GrpcGatewayRouteRewrite
    class GrpcGatewayRouteRewrite
      def self.default(visited=[])
        return nil if visited.include?('GrpcGatewayRouteRewrite')
        visited = visited + ['GrpcGatewayRouteRewrite']
        {
          hostname: Stubs::GatewayRouteHostnameRewrite.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcGatewayRouteRewrite.new
        data = {}
        data['hostname'] = Stubs::GatewayRouteHostnameRewrite.stub(stub[:hostname]) unless stub[:hostname].nil?
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
          virtual_service: Stubs::GatewayRouteVirtualService.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayRouteTarget.new
        data = {}
        data['virtualService'] = Stubs::GatewayRouteVirtualService.stub(stub[:virtual_service]) unless stub[:virtual_service].nil?
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
          hostname: Stubs::GatewayRouteHostnameMatch.default(visited),
          metadata: Stubs::GrpcGatewayRouteMetadataList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcGatewayRouteMatch.new
        data = {}
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['hostname'] = Stubs::GatewayRouteHostnameMatch.stub(stub[:hostname]) unless stub[:hostname].nil?
        data['metadata'] = Stubs::GrpcGatewayRouteMetadataList.stub(stub[:metadata]) unless stub[:metadata].nil?
        data
      end
    end

    # List Stubber for GrpcGatewayRouteMetadataList
    class GrpcGatewayRouteMetadataList
      def self.default(visited=[])
        return nil if visited.include?('GrpcGatewayRouteMetadataList')
        visited = visited + ['GrpcGatewayRouteMetadataList']
        [
          Stubs::GrpcGatewayRouteMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GrpcGatewayRouteMetadata.stub(element) unless element.nil?
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
          match: Stubs::GrpcMetadataMatchMethod.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcGatewayRouteMetadata.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['invert'] = stub[:invert] unless stub[:invert].nil?
        data['match'] = Stubs::GrpcMetadataMatchMethod.stub(stub[:match]) unless stub[:match].nil?
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
          data['range'] = (Stubs::MatchRange.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          match: Stubs::HttpGatewayRouteMatch.default(visited),
          action: Stubs::HttpGatewayRouteAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpGatewayRoute.new
        data = {}
        data['match'] = Stubs::HttpGatewayRouteMatch.stub(stub[:match]) unless stub[:match].nil?
        data['action'] = Stubs::HttpGatewayRouteAction.stub(stub[:action]) unless stub[:action].nil?
        data
      end
    end

    # Structure Stubber for HttpGatewayRouteAction
    class HttpGatewayRouteAction
      def self.default(visited=[])
        return nil if visited.include?('HttpGatewayRouteAction')
        visited = visited + ['HttpGatewayRouteAction']
        {
          target: Stubs::GatewayRouteTarget.default(visited),
          rewrite: Stubs::HttpGatewayRouteRewrite.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpGatewayRouteAction.new
        data = {}
        data['target'] = Stubs::GatewayRouteTarget.stub(stub[:target]) unless stub[:target].nil?
        data['rewrite'] = Stubs::HttpGatewayRouteRewrite.stub(stub[:rewrite]) unless stub[:rewrite].nil?
        data
      end
    end

    # Structure Stubber for HttpGatewayRouteRewrite
    class HttpGatewayRouteRewrite
      def self.default(visited=[])
        return nil if visited.include?('HttpGatewayRouteRewrite')
        visited = visited + ['HttpGatewayRouteRewrite']
        {
          prefix: Stubs::HttpGatewayRoutePrefixRewrite.default(visited),
          path: Stubs::HttpGatewayRoutePathRewrite.default(visited),
          hostname: Stubs::GatewayRouteHostnameRewrite.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpGatewayRouteRewrite.new
        data = {}
        data['prefix'] = Stubs::HttpGatewayRoutePrefixRewrite.stub(stub[:prefix]) unless stub[:prefix].nil?
        data['path'] = Stubs::HttpGatewayRoutePathRewrite.stub(stub[:path]) unless stub[:path].nil?
        data['hostname'] = Stubs::GatewayRouteHostnameRewrite.stub(stub[:hostname]) unless stub[:hostname].nil?
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
          path: Stubs::HttpPathMatch.default(visited),
          query_parameters: Stubs::HttpQueryParameters.default(visited),
          member_method: 'member_method',
          hostname: Stubs::GatewayRouteHostnameMatch.default(visited),
          headers: Stubs::HttpGatewayRouteHeaders.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpGatewayRouteMatch.new
        data = {}
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['path'] = Stubs::HttpPathMatch.stub(stub[:path]) unless stub[:path].nil?
        data['queryParameters'] = Stubs::HttpQueryParameters.stub(stub[:query_parameters]) unless stub[:query_parameters].nil?
        data['method'] = stub[:member_method] unless stub[:member_method].nil?
        data['hostname'] = Stubs::GatewayRouteHostnameMatch.stub(stub[:hostname]) unless stub[:hostname].nil?
        data['headers'] = Stubs::HttpGatewayRouteHeaders.stub(stub[:headers]) unless stub[:headers].nil?
        data
      end
    end

    # List Stubber for HttpGatewayRouteHeaders
    class HttpGatewayRouteHeaders
      def self.default(visited=[])
        return nil if visited.include?('HttpGatewayRouteHeaders')
        visited = visited + ['HttpGatewayRouteHeaders']
        [
          Stubs::HttpGatewayRouteHeader.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HttpGatewayRouteHeader.stub(element) unless element.nil?
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
          match: Stubs::HeaderMatchMethod.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpGatewayRouteHeader.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['invert'] = stub[:invert] unless stub[:invert].nil?
        data['match'] = Stubs::HeaderMatchMethod.stub(stub[:match]) unless stub[:match].nil?
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
          data['range'] = (Stubs::MatchRange.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          Stubs::HttpQueryParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HttpQueryParameter.stub(element) unless element.nil?
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
          match: Stubs::QueryParameterMatch.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpQueryParameter.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['match'] = Stubs::QueryParameterMatch.stub(stub[:match]) unless stub[:match].nil?
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
          mesh: Stubs::MeshData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MeshData.stub(stub[:mesh]) unless stub[:mesh].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for MeshData
    class MeshData
      def self.default(visited=[])
        return nil if visited.include?('MeshData')
        visited = visited + ['MeshData']
        {
          mesh_name: 'mesh_name',
          spec: Stubs::MeshSpec.default(visited),
          metadata: Stubs::ResourceMetadata.default(visited),
          status: Stubs::MeshStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MeshData.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['spec'] = Stubs::MeshSpec.stub(stub[:spec]) unless stub[:spec].nil?
        data['metadata'] = Stubs::ResourceMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['status'] = Stubs::MeshStatus.stub(stub[:status]) unless stub[:status].nil?
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
          egress_filter: Stubs::EgressFilter.default(visited),
          service_discovery: Stubs::MeshServiceDiscovery.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MeshSpec.new
        data = {}
        data['egressFilter'] = Stubs::EgressFilter.stub(stub[:egress_filter]) unless stub[:egress_filter].nil?
        data['serviceDiscovery'] = Stubs::MeshServiceDiscovery.stub(stub[:service_discovery]) unless stub[:service_discovery].nil?
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
          route: Stubs::RouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::RouteData.stub(stub[:route]) unless stub[:route].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          spec: Stubs::RouteSpec.default(visited),
          metadata: Stubs::ResourceMetadata.default(visited),
          status: Stubs::RouteStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteData.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['virtualRouterName'] = stub[:virtual_router_name] unless stub[:virtual_router_name].nil?
        data['routeName'] = stub[:route_name] unless stub[:route_name].nil?
        data['spec'] = Stubs::RouteSpec.stub(stub[:spec]) unless stub[:spec].nil?
        data['metadata'] = Stubs::ResourceMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['status'] = Stubs::RouteStatus.stub(stub[:status]) unless stub[:status].nil?
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
          http_route: Stubs::HttpRoute.default(visited),
          tcp_route: Stubs::TcpRoute.default(visited),
          http2_route: Stubs::HttpRoute.default(visited),
          grpc_route: Stubs::GrpcRoute.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteSpec.new
        data = {}
        data['priority'] = stub[:priority] unless stub[:priority].nil?
        data['httpRoute'] = Stubs::HttpRoute.stub(stub[:http_route]) unless stub[:http_route].nil?
        data['tcpRoute'] = Stubs::TcpRoute.stub(stub[:tcp_route]) unless stub[:tcp_route].nil?
        data['http2Route'] = Stubs::HttpRoute.stub(stub[:http2_route]) unless stub[:http2_route].nil?
        data['grpcRoute'] = Stubs::GrpcRoute.stub(stub[:grpc_route]) unless stub[:grpc_route].nil?
        data
      end
    end

    # Structure Stubber for GrpcRoute
    class GrpcRoute
      def self.default(visited=[])
        return nil if visited.include?('GrpcRoute')
        visited = visited + ['GrpcRoute']
        {
          action: Stubs::GrpcRouteAction.default(visited),
          match: Stubs::GrpcRouteMatch.default(visited),
          retry_policy: Stubs::GrpcRetryPolicy.default(visited),
          timeout: Stubs::GrpcTimeout.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcRoute.new
        data = {}
        data['action'] = Stubs::GrpcRouteAction.stub(stub[:action]) unless stub[:action].nil?
        data['match'] = Stubs::GrpcRouteMatch.stub(stub[:match]) unless stub[:match].nil?
        data['retryPolicy'] = Stubs::GrpcRetryPolicy.stub(stub[:retry_policy]) unless stub[:retry_policy].nil?
        data['timeout'] = Stubs::GrpcTimeout.stub(stub[:timeout]) unless stub[:timeout].nil?
        data
      end
    end

    # Structure Stubber for GrpcTimeout
    class GrpcTimeout
      def self.default(visited=[])
        return nil if visited.include?('GrpcTimeout')
        visited = visited + ['GrpcTimeout']
        {
          per_request: Stubs::Duration.default(visited),
          idle: Stubs::Duration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcTimeout.new
        data = {}
        data['perRequest'] = Stubs::Duration.stub(stub[:per_request]) unless stub[:per_request].nil?
        data['idle'] = Stubs::Duration.stub(stub[:idle]) unless stub[:idle].nil?
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
          per_retry_timeout: Stubs::Duration.default(visited),
          max_retries: 1,
          http_retry_events: Stubs::HttpRetryPolicyEvents.default(visited),
          tcp_retry_events: Stubs::TcpRetryPolicyEvents.default(visited),
          grpc_retry_events: Stubs::GrpcRetryPolicyEvents.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcRetryPolicy.new
        data = {}
        data['perRetryTimeout'] = Stubs::Duration.stub(stub[:per_retry_timeout]) unless stub[:per_retry_timeout].nil?
        data['maxRetries'] = stub[:max_retries] unless stub[:max_retries].nil?
        data['httpRetryEvents'] = Stubs::HttpRetryPolicyEvents.stub(stub[:http_retry_events]) unless stub[:http_retry_events].nil?
        data['tcpRetryEvents'] = Stubs::TcpRetryPolicyEvents.stub(stub[:tcp_retry_events]) unless stub[:tcp_retry_events].nil?
        data['grpcRetryEvents'] = Stubs::GrpcRetryPolicyEvents.stub(stub[:grpc_retry_events]) unless stub[:grpc_retry_events].nil?
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
          metadata: Stubs::GrpcRouteMetadataList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcRouteMatch.new
        data = {}
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['methodName'] = stub[:method_name] unless stub[:method_name].nil?
        data['metadata'] = Stubs::GrpcRouteMetadataList.stub(stub[:metadata]) unless stub[:metadata].nil?
        data
      end
    end

    # List Stubber for GrpcRouteMetadataList
    class GrpcRouteMetadataList
      def self.default(visited=[])
        return nil if visited.include?('GrpcRouteMetadataList')
        visited = visited + ['GrpcRouteMetadataList']
        [
          Stubs::GrpcRouteMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GrpcRouteMetadata.stub(element) unless element.nil?
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
          match: Stubs::GrpcRouteMetadataMatchMethod.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcRouteMetadata.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['invert'] = stub[:invert] unless stub[:invert].nil?
        data['match'] = Stubs::GrpcRouteMetadataMatchMethod.stub(stub[:match]) unless stub[:match].nil?
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
          data['range'] = (Stubs::MatchRange.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          weighted_targets: Stubs::WeightedTargets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrpcRouteAction.new
        data = {}
        data['weightedTargets'] = Stubs::WeightedTargets.stub(stub[:weighted_targets]) unless stub[:weighted_targets].nil?
        data
      end
    end

    # List Stubber for WeightedTargets
    class WeightedTargets
      def self.default(visited=[])
        return nil if visited.include?('WeightedTargets')
        visited = visited + ['WeightedTargets']
        [
          Stubs::WeightedTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WeightedTarget.stub(element) unless element.nil?
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
          match: Stubs::HttpRouteMatch.default(visited),
          action: Stubs::HttpRouteAction.default(visited),
          retry_policy: Stubs::HttpRetryPolicy.default(visited),
          timeout: Stubs::HttpTimeout.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpRoute.new
        data = {}
        data['match'] = Stubs::HttpRouteMatch.stub(stub[:match]) unless stub[:match].nil?
        data['action'] = Stubs::HttpRouteAction.stub(stub[:action]) unless stub[:action].nil?
        data['retryPolicy'] = Stubs::HttpRetryPolicy.stub(stub[:retry_policy]) unless stub[:retry_policy].nil?
        data['timeout'] = Stubs::HttpTimeout.stub(stub[:timeout]) unless stub[:timeout].nil?
        data
      end
    end

    # Structure Stubber for HttpTimeout
    class HttpTimeout
      def self.default(visited=[])
        return nil if visited.include?('HttpTimeout')
        visited = visited + ['HttpTimeout']
        {
          per_request: Stubs::Duration.default(visited),
          idle: Stubs::Duration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpTimeout.new
        data = {}
        data['perRequest'] = Stubs::Duration.stub(stub[:per_request]) unless stub[:per_request].nil?
        data['idle'] = Stubs::Duration.stub(stub[:idle]) unless stub[:idle].nil?
        data
      end
    end

    # Structure Stubber for HttpRetryPolicy
    class HttpRetryPolicy
      def self.default(visited=[])
        return nil if visited.include?('HttpRetryPolicy')
        visited = visited + ['HttpRetryPolicy']
        {
          per_retry_timeout: Stubs::Duration.default(visited),
          max_retries: 1,
          http_retry_events: Stubs::HttpRetryPolicyEvents.default(visited),
          tcp_retry_events: Stubs::TcpRetryPolicyEvents.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpRetryPolicy.new
        data = {}
        data['perRetryTimeout'] = Stubs::Duration.stub(stub[:per_retry_timeout]) unless stub[:per_retry_timeout].nil?
        data['maxRetries'] = stub[:max_retries] unless stub[:max_retries].nil?
        data['httpRetryEvents'] = Stubs::HttpRetryPolicyEvents.stub(stub[:http_retry_events]) unless stub[:http_retry_events].nil?
        data['tcpRetryEvents'] = Stubs::TcpRetryPolicyEvents.stub(stub[:tcp_retry_events]) unless stub[:tcp_retry_events].nil?
        data
      end
    end

    # Structure Stubber for HttpRouteAction
    class HttpRouteAction
      def self.default(visited=[])
        return nil if visited.include?('HttpRouteAction')
        visited = visited + ['HttpRouteAction']
        {
          weighted_targets: Stubs::WeightedTargets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpRouteAction.new
        data = {}
        data['weightedTargets'] = Stubs::WeightedTargets.stub(stub[:weighted_targets]) unless stub[:weighted_targets].nil?
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
          path: Stubs::HttpPathMatch.default(visited),
          query_parameters: Stubs::HttpQueryParameters.default(visited),
          member_method: 'member_method',
          scheme: 'scheme',
          headers: Stubs::HttpRouteHeaders.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpRouteMatch.new
        data = {}
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['path'] = Stubs::HttpPathMatch.stub(stub[:path]) unless stub[:path].nil?
        data['queryParameters'] = Stubs::HttpQueryParameters.stub(stub[:query_parameters]) unless stub[:query_parameters].nil?
        data['method'] = stub[:member_method] unless stub[:member_method].nil?
        data['scheme'] = stub[:scheme] unless stub[:scheme].nil?
        data['headers'] = Stubs::HttpRouteHeaders.stub(stub[:headers]) unless stub[:headers].nil?
        data
      end
    end

    # List Stubber for HttpRouteHeaders
    class HttpRouteHeaders
      def self.default(visited=[])
        return nil if visited.include?('HttpRouteHeaders')
        visited = visited + ['HttpRouteHeaders']
        [
          Stubs::HttpRouteHeader.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HttpRouteHeader.stub(element) unless element.nil?
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
          match: Stubs::HeaderMatchMethod.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpRouteHeader.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['invert'] = stub[:invert] unless stub[:invert].nil?
        data['match'] = Stubs::HeaderMatchMethod.stub(stub[:match]) unless stub[:match].nil?
        data
      end
    end

    # Structure Stubber for TcpRoute
    class TcpRoute
      def self.default(visited=[])
        return nil if visited.include?('TcpRoute')
        visited = visited + ['TcpRoute']
        {
          action: Stubs::TcpRouteAction.default(visited),
          timeout: Stubs::TcpTimeout.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TcpRoute.new
        data = {}
        data['action'] = Stubs::TcpRouteAction.stub(stub[:action]) unless stub[:action].nil?
        data['timeout'] = Stubs::TcpTimeout.stub(stub[:timeout]) unless stub[:timeout].nil?
        data
      end
    end

    # Structure Stubber for TcpTimeout
    class TcpTimeout
      def self.default(visited=[])
        return nil if visited.include?('TcpTimeout')
        visited = visited + ['TcpTimeout']
        {
          idle: Stubs::Duration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TcpTimeout.new
        data = {}
        data['idle'] = Stubs::Duration.stub(stub[:idle]) unless stub[:idle].nil?
        data
      end
    end

    # Structure Stubber for TcpRouteAction
    class TcpRouteAction
      def self.default(visited=[])
        return nil if visited.include?('TcpRouteAction')
        visited = visited + ['TcpRouteAction']
        {
          weighted_targets: Stubs::WeightedTargets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TcpRouteAction.new
        data = {}
        data['weightedTargets'] = Stubs::WeightedTargets.stub(stub[:weighted_targets]) unless stub[:weighted_targets].nil?
        data
      end
    end

    # Operation Stubber for CreateVirtualGateway
    class CreateVirtualGateway
      def self.default(visited=[])
        {
          virtual_gateway: Stubs::VirtualGatewayData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualGatewayData.stub(stub[:virtual_gateway]) unless stub[:virtual_gateway].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          spec: Stubs::VirtualGatewaySpec.default(visited),
          metadata: Stubs::ResourceMetadata.default(visited),
          status: Stubs::VirtualGatewayStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayData.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['virtualGatewayName'] = stub[:virtual_gateway_name] unless stub[:virtual_gateway_name].nil?
        data['spec'] = Stubs::VirtualGatewaySpec.stub(stub[:spec]) unless stub[:spec].nil?
        data['metadata'] = Stubs::ResourceMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['status'] = Stubs::VirtualGatewayStatus.stub(stub[:status]) unless stub[:status].nil?
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
          backend_defaults: Stubs::VirtualGatewayBackendDefaults.default(visited),
          listeners: Stubs::VirtualGatewayListeners.default(visited),
          logging: Stubs::VirtualGatewayLogging.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewaySpec.new
        data = {}
        data['backendDefaults'] = Stubs::VirtualGatewayBackendDefaults.stub(stub[:backend_defaults]) unless stub[:backend_defaults].nil?
        data['listeners'] = Stubs::VirtualGatewayListeners.stub(stub[:listeners]) unless stub[:listeners].nil?
        data['logging'] = Stubs::VirtualGatewayLogging.stub(stub[:logging]) unless stub[:logging].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayLogging
    class VirtualGatewayLogging
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayLogging')
        visited = visited + ['VirtualGatewayLogging']
        {
          access_log: Stubs::VirtualGatewayAccessLog.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayLogging.new
        data = {}
        data['accessLog'] = Stubs::VirtualGatewayAccessLog.stub(stub[:access_log]) unless stub[:access_log].nil?
        data
      end
    end

    # Union Stubber for VirtualGatewayAccessLog
    class VirtualGatewayAccessLog
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayAccessLog')
        visited = visited + ['VirtualGatewayAccessLog']
        {
          file: Stubs::VirtualGatewayFileAccessLog.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualGatewayAccessLog::File
          data['file'] = (Stubs::VirtualGatewayFileAccessLog.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          Stubs::VirtualGatewayListener.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VirtualGatewayListener.stub(element) unless element.nil?
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
          health_check: Stubs::VirtualGatewayHealthCheckPolicy.default(visited),
          port_mapping: Stubs::VirtualGatewayPortMapping.default(visited),
          tls: Stubs::VirtualGatewayListenerTls.default(visited),
          connection_pool: Stubs::VirtualGatewayConnectionPool.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayListener.new
        data = {}
        data['healthCheck'] = Stubs::VirtualGatewayHealthCheckPolicy.stub(stub[:health_check]) unless stub[:health_check].nil?
        data['portMapping'] = Stubs::VirtualGatewayPortMapping.stub(stub[:port_mapping]) unless stub[:port_mapping].nil?
        data['tls'] = Stubs::VirtualGatewayListenerTls.stub(stub[:tls]) unless stub[:tls].nil?
        data['connectionPool'] = Stubs::VirtualGatewayConnectionPool.stub(stub[:connection_pool]) unless stub[:connection_pool].nil?
        data
      end
    end

    # Union Stubber for VirtualGatewayConnectionPool
    class VirtualGatewayConnectionPool
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayConnectionPool')
        visited = visited + ['VirtualGatewayConnectionPool']
        {
          http: Stubs::VirtualGatewayHttpConnectionPool.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualGatewayConnectionPool::Http
          data['http'] = (Stubs::VirtualGatewayHttpConnectionPool.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayConnectionPool::Http2
          data['http2'] = (Stubs::VirtualGatewayHttp2ConnectionPool.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayConnectionPool::Grpc
          data['grpc'] = (Stubs::VirtualGatewayGrpcConnectionPool.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          validation: Stubs::VirtualGatewayListenerTlsValidationContext.default(visited),
          certificate: Stubs::VirtualGatewayListenerTlsCertificate.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayListenerTls.new
        data = {}
        data['mode'] = stub[:mode] unless stub[:mode].nil?
        data['validation'] = Stubs::VirtualGatewayListenerTlsValidationContext.stub(stub[:validation]) unless stub[:validation].nil?
        data['certificate'] = Stubs::VirtualGatewayListenerTlsCertificate.stub(stub[:certificate]) unless stub[:certificate].nil?
        data
      end
    end

    # Union Stubber for VirtualGatewayListenerTlsCertificate
    class VirtualGatewayListenerTlsCertificate
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayListenerTlsCertificate')
        visited = visited + ['VirtualGatewayListenerTlsCertificate']
        {
          acm: Stubs::VirtualGatewayListenerTlsAcmCertificate.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualGatewayListenerTlsCertificate::Acm
          data['acm'] = (Stubs::VirtualGatewayListenerTlsAcmCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayListenerTlsCertificate::File
          data['file'] = (Stubs::VirtualGatewayListenerTlsFileCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayListenerTlsCertificate::Sds
          data['sds'] = (Stubs::VirtualGatewayListenerTlsSdsCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          member_trust: Stubs::VirtualGatewayListenerTlsValidationContextTrust.default(visited),
          subject_alternative_names: Stubs::SubjectAlternativeNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayListenerTlsValidationContext.new
        data = {}
        data['trust'] = Stubs::VirtualGatewayListenerTlsValidationContextTrust.stub(stub[:member_trust]) unless stub[:member_trust].nil?
        data['subjectAlternativeNames'] = Stubs::SubjectAlternativeNames.stub(stub[:subject_alternative_names]) unless stub[:subject_alternative_names].nil?
        data
      end
    end

    # Structure Stubber for SubjectAlternativeNames
    class SubjectAlternativeNames
      def self.default(visited=[])
        return nil if visited.include?('SubjectAlternativeNames')
        visited = visited + ['SubjectAlternativeNames']
        {
          match: Stubs::SubjectAlternativeNameMatchers.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SubjectAlternativeNames.new
        data = {}
        data['match'] = Stubs::SubjectAlternativeNameMatchers.stub(stub[:match]) unless stub[:match].nil?
        data
      end
    end

    # Structure Stubber for SubjectAlternativeNameMatchers
    class SubjectAlternativeNameMatchers
      def self.default(visited=[])
        return nil if visited.include?('SubjectAlternativeNameMatchers')
        visited = visited + ['SubjectAlternativeNameMatchers']
        {
          exact: Stubs::SubjectAlternativeNameList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SubjectAlternativeNameMatchers.new
        data = {}
        data['exact'] = Stubs::SubjectAlternativeNameList.stub(stub[:exact]) unless stub[:exact].nil?
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
          file: Stubs::VirtualGatewayTlsValidationContextFileTrust.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualGatewayListenerTlsValidationContextTrust::File
          data['file'] = (Stubs::VirtualGatewayTlsValidationContextFileTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayListenerTlsValidationContextTrust::Sds
          data['sds'] = (Stubs::VirtualGatewayTlsValidationContextSdsTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          client_policy: Stubs::VirtualGatewayClientPolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayBackendDefaults.new
        data = {}
        data['clientPolicy'] = Stubs::VirtualGatewayClientPolicy.stub(stub[:client_policy]) unless stub[:client_policy].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayClientPolicy
    class VirtualGatewayClientPolicy
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayClientPolicy')
        visited = visited + ['VirtualGatewayClientPolicy']
        {
          tls: Stubs::VirtualGatewayClientPolicyTls.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayClientPolicy.new
        data = {}
        data['tls'] = Stubs::VirtualGatewayClientPolicyTls.stub(stub[:tls]) unless stub[:tls].nil?
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
          ports: Stubs::PortSet.default(visited),
          certificate: Stubs::VirtualGatewayClientTlsCertificate.default(visited),
          validation: Stubs::VirtualGatewayTlsValidationContext.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayClientPolicyTls.new
        data = {}
        data['enforce'] = stub[:enforce] unless stub[:enforce].nil?
        data['ports'] = Stubs::PortSet.stub(stub[:ports]) unless stub[:ports].nil?
        data['certificate'] = Stubs::VirtualGatewayClientTlsCertificate.stub(stub[:certificate]) unless stub[:certificate].nil?
        data['validation'] = Stubs::VirtualGatewayTlsValidationContext.stub(stub[:validation]) unless stub[:validation].nil?
        data
      end
    end

    # Structure Stubber for VirtualGatewayTlsValidationContext
    class VirtualGatewayTlsValidationContext
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayTlsValidationContext')
        visited = visited + ['VirtualGatewayTlsValidationContext']
        {
          member_trust: Stubs::VirtualGatewayTlsValidationContextTrust.default(visited),
          subject_alternative_names: Stubs::SubjectAlternativeNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayTlsValidationContext.new
        data = {}
        data['trust'] = Stubs::VirtualGatewayTlsValidationContextTrust.stub(stub[:member_trust]) unless stub[:member_trust].nil?
        data['subjectAlternativeNames'] = Stubs::SubjectAlternativeNames.stub(stub[:subject_alternative_names]) unless stub[:subject_alternative_names].nil?
        data
      end
    end

    # Union Stubber for VirtualGatewayTlsValidationContextTrust
    class VirtualGatewayTlsValidationContextTrust
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayTlsValidationContextTrust')
        visited = visited + ['VirtualGatewayTlsValidationContextTrust']
        {
          acm: Stubs::VirtualGatewayTlsValidationContextAcmTrust.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualGatewayTlsValidationContextTrust::Acm
          data['acm'] = (Stubs::VirtualGatewayTlsValidationContextAcmTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayTlsValidationContextTrust::File
          data['file'] = (Stubs::VirtualGatewayTlsValidationContextFileTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayTlsValidationContextTrust::Sds
          data['sds'] = (Stubs::VirtualGatewayTlsValidationContextSdsTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          certificate_authority_arns: Stubs::VirtualGatewayCertificateAuthorityArns.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualGatewayTlsValidationContextAcmTrust.new
        data = {}
        data['certificateAuthorityArns'] = Stubs::VirtualGatewayCertificateAuthorityArns.stub(stub[:certificate_authority_arns]) unless stub[:certificate_authority_arns].nil?
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
          file: Stubs::VirtualGatewayListenerTlsFileCertificate.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualGatewayClientTlsCertificate::File
          data['file'] = (Stubs::VirtualGatewayListenerTlsFileCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualGatewayClientTlsCertificate::Sds
          data['sds'] = (Stubs::VirtualGatewayListenerTlsSdsCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::VirtualGatewayClientTlsCertificate"
        end

        data
      end
    end

    # Set Stubber for PortSet
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
        data = Set.new
        stub.each do |element|
          data << element unless element.nil?
        end
        data.to_a
      end
    end

    # Operation Stubber for CreateVirtualNode
    class CreateVirtualNode
      def self.default(visited=[])
        {
          virtual_node: Stubs::VirtualNodeData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualNodeData.stub(stub[:virtual_node]) unless stub[:virtual_node].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          spec: Stubs::VirtualNodeSpec.default(visited),
          metadata: Stubs::ResourceMetadata.default(visited),
          status: Stubs::VirtualNodeStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualNodeData.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['virtualNodeName'] = stub[:virtual_node_name] unless stub[:virtual_node_name].nil?
        data['spec'] = Stubs::VirtualNodeSpec.stub(stub[:spec]) unless stub[:spec].nil?
        data['metadata'] = Stubs::ResourceMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['status'] = Stubs::VirtualNodeStatus.stub(stub[:status]) unless stub[:status].nil?
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
          service_discovery: Stubs::ServiceDiscovery.default(visited),
          listeners: Stubs::Listeners.default(visited),
          backends: Stubs::Backends.default(visited),
          backend_defaults: Stubs::BackendDefaults.default(visited),
          logging: Stubs::Logging.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualNodeSpec.new
        data = {}
        data['serviceDiscovery'] = Stubs::ServiceDiscovery.stub(stub[:service_discovery]) unless stub[:service_discovery].nil?
        data['listeners'] = Stubs::Listeners.stub(stub[:listeners]) unless stub[:listeners].nil?
        data['backends'] = Stubs::Backends.stub(stub[:backends]) unless stub[:backends].nil?
        data['backendDefaults'] = Stubs::BackendDefaults.stub(stub[:backend_defaults]) unless stub[:backend_defaults].nil?
        data['logging'] = Stubs::Logging.stub(stub[:logging]) unless stub[:logging].nil?
        data
      end
    end

    # Structure Stubber for Logging
    class Logging
      def self.default(visited=[])
        return nil if visited.include?('Logging')
        visited = visited + ['Logging']
        {
          access_log: Stubs::AccessLog.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Logging.new
        data = {}
        data['accessLog'] = Stubs::AccessLog.stub(stub[:access_log]) unless stub[:access_log].nil?
        data
      end
    end

    # Union Stubber for AccessLog
    class AccessLog
      def self.default(visited=[])
        return nil if visited.include?('AccessLog')
        visited = visited + ['AccessLog']
        {
          file: Stubs::FileAccessLog.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::AccessLog::File
          data['file'] = (Stubs::FileAccessLog.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          client_policy: Stubs::ClientPolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BackendDefaults.new
        data = {}
        data['clientPolicy'] = Stubs::ClientPolicy.stub(stub[:client_policy]) unless stub[:client_policy].nil?
        data
      end
    end

    # Structure Stubber for ClientPolicy
    class ClientPolicy
      def self.default(visited=[])
        return nil if visited.include?('ClientPolicy')
        visited = visited + ['ClientPolicy']
        {
          tls: Stubs::ClientPolicyTls.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClientPolicy.new
        data = {}
        data['tls'] = Stubs::ClientPolicyTls.stub(stub[:tls]) unless stub[:tls].nil?
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
          ports: Stubs::PortSet.default(visited),
          certificate: Stubs::ClientTlsCertificate.default(visited),
          validation: Stubs::TlsValidationContext.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClientPolicyTls.new
        data = {}
        data['enforce'] = stub[:enforce] unless stub[:enforce].nil?
        data['ports'] = Stubs::PortSet.stub(stub[:ports]) unless stub[:ports].nil?
        data['certificate'] = Stubs::ClientTlsCertificate.stub(stub[:certificate]) unless stub[:certificate].nil?
        data['validation'] = Stubs::TlsValidationContext.stub(stub[:validation]) unless stub[:validation].nil?
        data
      end
    end

    # Structure Stubber for TlsValidationContext
    class TlsValidationContext
      def self.default(visited=[])
        return nil if visited.include?('TlsValidationContext')
        visited = visited + ['TlsValidationContext']
        {
          member_trust: Stubs::TlsValidationContextTrust.default(visited),
          subject_alternative_names: Stubs::SubjectAlternativeNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TlsValidationContext.new
        data = {}
        data['trust'] = Stubs::TlsValidationContextTrust.stub(stub[:member_trust]) unless stub[:member_trust].nil?
        data['subjectAlternativeNames'] = Stubs::SubjectAlternativeNames.stub(stub[:subject_alternative_names]) unless stub[:subject_alternative_names].nil?
        data
      end
    end

    # Union Stubber for TlsValidationContextTrust
    class TlsValidationContextTrust
      def self.default(visited=[])
        return nil if visited.include?('TlsValidationContextTrust')
        visited = visited + ['TlsValidationContextTrust']
        {
          acm: Stubs::TlsValidationContextAcmTrust.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::TlsValidationContextTrust::Acm
          data['acm'] = (Stubs::TlsValidationContextAcmTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::TlsValidationContextTrust::File
          data['file'] = (Stubs::TlsValidationContextFileTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::TlsValidationContextTrust::Sds
          data['sds'] = (Stubs::TlsValidationContextSdsTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          certificate_authority_arns: Stubs::CertificateAuthorityArns.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TlsValidationContextAcmTrust.new
        data = {}
        data['certificateAuthorityArns'] = Stubs::CertificateAuthorityArns.stub(stub[:certificate_authority_arns]) unless stub[:certificate_authority_arns].nil?
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
          file: Stubs::ListenerTlsFileCertificate.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ClientTlsCertificate::File
          data['file'] = (Stubs::ListenerTlsFileCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ClientTlsCertificate::Sds
          data['sds'] = (Stubs::ListenerTlsSdsCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          Stubs::Backend.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Backend.stub(element) unless element.nil?
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
          virtual_service: Stubs::VirtualServiceBackend.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::Backend::VirtualService
          data['virtualService'] = (Stubs::VirtualServiceBackend.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          client_policy: Stubs::ClientPolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualServiceBackend.new
        data = {}
        data['virtualServiceName'] = stub[:virtual_service_name] unless stub[:virtual_service_name].nil?
        data['clientPolicy'] = Stubs::ClientPolicy.stub(stub[:client_policy]) unless stub[:client_policy].nil?
        data
      end
    end

    # List Stubber for Listeners
    class Listeners
      def self.default(visited=[])
        return nil if visited.include?('Listeners')
        visited = visited + ['Listeners']
        [
          Stubs::Listener.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Listener.stub(element) unless element.nil?
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
          port_mapping: Stubs::PortMapping.default(visited),
          tls: Stubs::ListenerTls.default(visited),
          health_check: Stubs::HealthCheckPolicy.default(visited),
          timeout: Stubs::ListenerTimeout.default(visited),
          outlier_detection: Stubs::OutlierDetection.default(visited),
          connection_pool: Stubs::VirtualNodeConnectionPool.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Listener.new
        data = {}
        data['portMapping'] = Stubs::PortMapping.stub(stub[:port_mapping]) unless stub[:port_mapping].nil?
        data['tls'] = Stubs::ListenerTls.stub(stub[:tls]) unless stub[:tls].nil?
        data['healthCheck'] = Stubs::HealthCheckPolicy.stub(stub[:health_check]) unless stub[:health_check].nil?
        data['timeout'] = Stubs::ListenerTimeout.stub(stub[:timeout]) unless stub[:timeout].nil?
        data['outlierDetection'] = Stubs::OutlierDetection.stub(stub[:outlier_detection]) unless stub[:outlier_detection].nil?
        data['connectionPool'] = Stubs::VirtualNodeConnectionPool.stub(stub[:connection_pool]) unless stub[:connection_pool].nil?
        data
      end
    end

    # Union Stubber for VirtualNodeConnectionPool
    class VirtualNodeConnectionPool
      def self.default(visited=[])
        return nil if visited.include?('VirtualNodeConnectionPool')
        visited = visited + ['VirtualNodeConnectionPool']
        {
          tcp: Stubs::VirtualNodeTcpConnectionPool.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualNodeConnectionPool::Tcp
          data['tcp'] = (Stubs::VirtualNodeTcpConnectionPool.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualNodeConnectionPool::Http
          data['http'] = (Stubs::VirtualNodeHttpConnectionPool.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualNodeConnectionPool::Http2
          data['http2'] = (Stubs::VirtualNodeHttp2ConnectionPool.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualNodeConnectionPool::Grpc
          data['grpc'] = (Stubs::VirtualNodeGrpcConnectionPool.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          interval: Stubs::Duration.default(visited),
          base_ejection_duration: Stubs::Duration.default(visited),
          max_ejection_percent: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::OutlierDetection.new
        data = {}
        data['maxServerErrors'] = stub[:max_server_errors] unless stub[:max_server_errors].nil?
        data['interval'] = Stubs::Duration.stub(stub[:interval]) unless stub[:interval].nil?
        data['baseEjectionDuration'] = Stubs::Duration.stub(stub[:base_ejection_duration]) unless stub[:base_ejection_duration].nil?
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
          tcp: Stubs::TcpTimeout.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ListenerTimeout::Tcp
          data['tcp'] = (Stubs::TcpTimeout.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ListenerTimeout::Http
          data['http'] = (Stubs::HttpTimeout.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ListenerTimeout::Http2
          data['http2'] = (Stubs::HttpTimeout.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ListenerTimeout::Grpc
          data['grpc'] = (Stubs::GrpcTimeout.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          certificate: Stubs::ListenerTlsCertificate.default(visited),
          validation: Stubs::ListenerTlsValidationContext.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ListenerTls.new
        data = {}
        data['mode'] = stub[:mode] unless stub[:mode].nil?
        data['certificate'] = Stubs::ListenerTlsCertificate.stub(stub[:certificate]) unless stub[:certificate].nil?
        data['validation'] = Stubs::ListenerTlsValidationContext.stub(stub[:validation]) unless stub[:validation].nil?
        data
      end
    end

    # Structure Stubber for ListenerTlsValidationContext
    class ListenerTlsValidationContext
      def self.default(visited=[])
        return nil if visited.include?('ListenerTlsValidationContext')
        visited = visited + ['ListenerTlsValidationContext']
        {
          member_trust: Stubs::ListenerTlsValidationContextTrust.default(visited),
          subject_alternative_names: Stubs::SubjectAlternativeNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ListenerTlsValidationContext.new
        data = {}
        data['trust'] = Stubs::ListenerTlsValidationContextTrust.stub(stub[:member_trust]) unless stub[:member_trust].nil?
        data['subjectAlternativeNames'] = Stubs::SubjectAlternativeNames.stub(stub[:subject_alternative_names]) unless stub[:subject_alternative_names].nil?
        data
      end
    end

    # Union Stubber for ListenerTlsValidationContextTrust
    class ListenerTlsValidationContextTrust
      def self.default(visited=[])
        return nil if visited.include?('ListenerTlsValidationContextTrust')
        visited = visited + ['ListenerTlsValidationContextTrust']
        {
          file: Stubs::TlsValidationContextFileTrust.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ListenerTlsValidationContextTrust::File
          data['file'] = (Stubs::TlsValidationContextFileTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ListenerTlsValidationContextTrust::Sds
          data['sds'] = (Stubs::TlsValidationContextSdsTrust.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          acm: Stubs::ListenerTlsAcmCertificate.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ListenerTlsCertificate::Acm
          data['acm'] = (Stubs::ListenerTlsAcmCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ListenerTlsCertificate::File
          data['file'] = (Stubs::ListenerTlsFileCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ListenerTlsCertificate::Sds
          data['sds'] = (Stubs::ListenerTlsSdsCertificate.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          dns: Stubs::DnsServiceDiscovery.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ServiceDiscovery::Dns
          data['dns'] = (Stubs::DnsServiceDiscovery.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ServiceDiscovery::AwsCloudMap
          data['awsCloudMap'] = (Stubs::AwsCloudMapServiceDiscovery.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          attributes: Stubs::AwsCloudMapInstanceAttributes.default(visited),
          ip_preference: 'ip_preference',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCloudMapServiceDiscovery.new
        data = {}
        data['namespaceName'] = stub[:namespace_name] unless stub[:namespace_name].nil?
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['attributes'] = Stubs::AwsCloudMapInstanceAttributes.stub(stub[:attributes]) unless stub[:attributes].nil?
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
          Stubs::AwsCloudMapInstanceAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AwsCloudMapInstanceAttribute.stub(element) unless element.nil?
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
          virtual_router: Stubs::VirtualRouterData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualRouterData.stub(stub[:virtual_router]) unless stub[:virtual_router].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          spec: Stubs::VirtualRouterSpec.default(visited),
          metadata: Stubs::ResourceMetadata.default(visited),
          status: Stubs::VirtualRouterStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualRouterData.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['virtualRouterName'] = stub[:virtual_router_name] unless stub[:virtual_router_name].nil?
        data['spec'] = Stubs::VirtualRouterSpec.stub(stub[:spec]) unless stub[:spec].nil?
        data['metadata'] = Stubs::ResourceMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['status'] = Stubs::VirtualRouterStatus.stub(stub[:status]) unless stub[:status].nil?
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
          listeners: Stubs::VirtualRouterListeners.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualRouterSpec.new
        data = {}
        data['listeners'] = Stubs::VirtualRouterListeners.stub(stub[:listeners]) unless stub[:listeners].nil?
        data
      end
    end

    # List Stubber for VirtualRouterListeners
    class VirtualRouterListeners
      def self.default(visited=[])
        return nil if visited.include?('VirtualRouterListeners')
        visited = visited + ['VirtualRouterListeners']
        [
          Stubs::VirtualRouterListener.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VirtualRouterListener.stub(element) unless element.nil?
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
          port_mapping: Stubs::PortMapping.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualRouterListener.new
        data = {}
        data['portMapping'] = Stubs::PortMapping.stub(stub[:port_mapping]) unless stub[:port_mapping].nil?
        data
      end
    end

    # Operation Stubber for CreateVirtualService
    class CreateVirtualService
      def self.default(visited=[])
        {
          virtual_service: Stubs::VirtualServiceData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualServiceData.stub(stub[:virtual_service]) unless stub[:virtual_service].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          spec: Stubs::VirtualServiceSpec.default(visited),
          metadata: Stubs::ResourceMetadata.default(visited),
          status: Stubs::VirtualServiceStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualServiceData.new
        data = {}
        data['meshName'] = stub[:mesh_name] unless stub[:mesh_name].nil?
        data['virtualServiceName'] = stub[:virtual_service_name] unless stub[:virtual_service_name].nil?
        data['spec'] = Stubs::VirtualServiceSpec.stub(stub[:spec]) unless stub[:spec].nil?
        data['metadata'] = Stubs::ResourceMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['status'] = Stubs::VirtualServiceStatus.stub(stub[:status]) unless stub[:status].nil?
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
          provider: Stubs::VirtualServiceProvider.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualServiceSpec.new
        data = {}
        data['provider'] = Stubs::VirtualServiceProvider.stub(stub[:provider]) unless stub[:provider].nil?
        data
      end
    end

    # Union Stubber for VirtualServiceProvider
    class VirtualServiceProvider
      def self.default(visited=[])
        return nil if visited.include?('VirtualServiceProvider')
        visited = visited + ['VirtualServiceProvider']
        {
          virtual_node: Stubs::VirtualNodeServiceProvider.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::VirtualServiceProvider::VirtualNode
          data['virtualNode'] = (Stubs::VirtualNodeServiceProvider.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::VirtualServiceProvider::VirtualRouter
          data['virtualRouter'] = (Stubs::VirtualRouterServiceProvider.stub(stub.__getobj__) unless stub.__getobj__.nil?)
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
          gateway_route: Stubs::GatewayRouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::GatewayRouteData.stub(stub[:gateway_route]) unless stub[:gateway_route].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteMesh
    class DeleteMesh
      def self.default(visited=[])
        {
          mesh: Stubs::MeshData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MeshData.stub(stub[:mesh]) unless stub[:mesh].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteRoute
    class DeleteRoute
      def self.default(visited=[])
        {
          route: Stubs::RouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::RouteData.stub(stub[:route]) unless stub[:route].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteVirtualGateway
    class DeleteVirtualGateway
      def self.default(visited=[])
        {
          virtual_gateway: Stubs::VirtualGatewayData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualGatewayData.stub(stub[:virtual_gateway]) unless stub[:virtual_gateway].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteVirtualNode
    class DeleteVirtualNode
      def self.default(visited=[])
        {
          virtual_node: Stubs::VirtualNodeData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualNodeData.stub(stub[:virtual_node]) unless stub[:virtual_node].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteVirtualRouter
    class DeleteVirtualRouter
      def self.default(visited=[])
        {
          virtual_router: Stubs::VirtualRouterData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualRouterData.stub(stub[:virtual_router]) unless stub[:virtual_router].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteVirtualService
    class DeleteVirtualService
      def self.default(visited=[])
        {
          virtual_service: Stubs::VirtualServiceData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualServiceData.stub(stub[:virtual_service]) unless stub[:virtual_service].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeGatewayRoute
    class DescribeGatewayRoute
      def self.default(visited=[])
        {
          gateway_route: Stubs::GatewayRouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::GatewayRouteData.stub(stub[:gateway_route]) unless stub[:gateway_route].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeMesh
    class DescribeMesh
      def self.default(visited=[])
        {
          mesh: Stubs::MeshData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MeshData.stub(stub[:mesh]) unless stub[:mesh].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeRoute
    class DescribeRoute
      def self.default(visited=[])
        {
          route: Stubs::RouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::RouteData.stub(stub[:route]) unless stub[:route].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeVirtualGateway
    class DescribeVirtualGateway
      def self.default(visited=[])
        {
          virtual_gateway: Stubs::VirtualGatewayData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualGatewayData.stub(stub[:virtual_gateway]) unless stub[:virtual_gateway].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeVirtualNode
    class DescribeVirtualNode
      def self.default(visited=[])
        {
          virtual_node: Stubs::VirtualNodeData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualNodeData.stub(stub[:virtual_node]) unless stub[:virtual_node].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeVirtualRouter
    class DescribeVirtualRouter
      def self.default(visited=[])
        {
          virtual_router: Stubs::VirtualRouterData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualRouterData.stub(stub[:virtual_router]) unless stub[:virtual_router].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeVirtualService
    class DescribeVirtualService
      def self.default(visited=[])
        {
          virtual_service: Stubs::VirtualServiceData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualServiceData.stub(stub[:virtual_service]) unless stub[:virtual_service].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListGatewayRoutes
    class ListGatewayRoutes
      def self.default(visited=[])
        {
          gateway_routes: Stubs::GatewayRouteList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['gatewayRoutes'] = Stubs::GatewayRouteList.stub(stub[:gateway_routes]) unless stub[:gateway_routes].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for GatewayRouteList
    class GatewayRouteList
      def self.default(visited=[])
        return nil if visited.include?('GatewayRouteList')
        visited = visited + ['GatewayRouteList']
        [
          Stubs::GatewayRouteRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GatewayRouteRef.stub(element) unless element.nil?
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
          meshes: Stubs::MeshList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['meshes'] = Stubs::MeshList.stub(stub[:meshes]) unless stub[:meshes].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MeshList
    class MeshList
      def self.default(visited=[])
        return nil if visited.include?('MeshList')
        visited = visited + ['MeshList']
        [
          Stubs::MeshRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MeshRef.stub(element) unless element.nil?
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
          routes: Stubs::RouteList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['routes'] = Stubs::RouteList.stub(stub[:routes]) unless stub[:routes].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RouteList
    class RouteList
      def self.default(visited=[])
        return nil if visited.include?('RouteList')
        visited = visited + ['RouteList']
        [
          Stubs::RouteRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RouteRef.stub(element) unless element.nil?
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
          tags: Stubs::TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::TagRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TagRef.stub(element) unless element.nil?
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
          virtual_gateways: Stubs::VirtualGatewayList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['virtualGateways'] = Stubs::VirtualGatewayList.stub(stub[:virtual_gateways]) unless stub[:virtual_gateways].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for VirtualGatewayList
    class VirtualGatewayList
      def self.default(visited=[])
        return nil if visited.include?('VirtualGatewayList')
        visited = visited + ['VirtualGatewayList']
        [
          Stubs::VirtualGatewayRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VirtualGatewayRef.stub(element) unless element.nil?
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
          virtual_nodes: Stubs::VirtualNodeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['virtualNodes'] = Stubs::VirtualNodeList.stub(stub[:virtual_nodes]) unless stub[:virtual_nodes].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for VirtualNodeList
    class VirtualNodeList
      def self.default(visited=[])
        return nil if visited.include?('VirtualNodeList')
        visited = visited + ['VirtualNodeList']
        [
          Stubs::VirtualNodeRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VirtualNodeRef.stub(element) unless element.nil?
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
          virtual_routers: Stubs::VirtualRouterList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['virtualRouters'] = Stubs::VirtualRouterList.stub(stub[:virtual_routers]) unless stub[:virtual_routers].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for VirtualRouterList
    class VirtualRouterList
      def self.default(visited=[])
        return nil if visited.include?('VirtualRouterList')
        visited = visited + ['VirtualRouterList']
        [
          Stubs::VirtualRouterRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VirtualRouterRef.stub(element) unless element.nil?
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
          virtual_services: Stubs::VirtualServiceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['virtualServices'] = Stubs::VirtualServiceList.stub(stub[:virtual_services]) unless stub[:virtual_services].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for VirtualServiceList
    class VirtualServiceList
      def self.default(visited=[])
        return nil if visited.include?('VirtualServiceList')
        visited = visited + ['VirtualServiceList']
        [
          Stubs::VirtualServiceRef.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VirtualServiceRef.stub(element) unless element.nil?
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
          gateway_route: Stubs::GatewayRouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::GatewayRouteData.stub(stub[:gateway_route]) unless stub[:gateway_route].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateMesh
    class UpdateMesh
      def self.default(visited=[])
        {
          mesh: Stubs::MeshData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MeshData.stub(stub[:mesh]) unless stub[:mesh].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRoute
    class UpdateRoute
      def self.default(visited=[])
        {
          route: Stubs::RouteData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::RouteData.stub(stub[:route]) unless stub[:route].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateVirtualGateway
    class UpdateVirtualGateway
      def self.default(visited=[])
        {
          virtual_gateway: Stubs::VirtualGatewayData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualGatewayData.stub(stub[:virtual_gateway]) unless stub[:virtual_gateway].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateVirtualNode
    class UpdateVirtualNode
      def self.default(visited=[])
        {
          virtual_node: Stubs::VirtualNodeData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualNodeData.stub(stub[:virtual_node]) unless stub[:virtual_node].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateVirtualRouter
    class UpdateVirtualRouter
      def self.default(visited=[])
        {
          virtual_router: Stubs::VirtualRouterData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualRouterData.stub(stub[:virtual_router]) unless stub[:virtual_router].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateVirtualService
    class UpdateVirtualService
      def self.default(visited=[])
        {
          virtual_service: Stubs::VirtualServiceData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VirtualServiceData.stub(stub[:virtual_service]) unless stub[:virtual_service].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
