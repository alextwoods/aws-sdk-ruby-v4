# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppMesh
  module Types

    # <p>An object that represents the access logging information for a virtual node.</p>
    #
    class AccessLog < Hearth::Union
      # <p>The file object to send virtual node access logs to.</p>
      #
      class File < AccessLog
        def to_h
          { file: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::File #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < AccessLog
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents the Cloud Map attribute information for your
    #          virtual node.</p>
    #          <note>
    #             <p>Cloud Map is not available in the eu-south-1 Region.</p>
    #          </note>
    #
    # @!attribute key
    #   <p>The name of an Cloud Map service instance attribute key. Any Cloud Map service instance that contains the specified key and value is
    #            returned.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of an Cloud Map service instance attribute key. Any Cloud Map service instance that contains the specified key and value is
    #            returned.</p>
    #
    #   @return [String]
    #
    AwsCloudMapInstanceAttribute = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the Cloud Map service discovery information for
    #          your virtual node.</p>
    #          <note>
    #             <p>Cloud Map is not available in the eu-south-1 Region.</p>
    #          </note>
    #
    # @!attribute namespace_name
    #   <p>The name of the Cloud Map namespace to use.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the Cloud Map service to use.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A string map that contains attributes with values that you can use to filter instances
    #            by any custom attribute that you specified when you registered the instance. Only instances
    #            that match all of the specified key/value pairs will be returned.</p>
    #
    #   @return [Array<AwsCloudMapInstanceAttribute>]
    #
    # @!attribute ip_preference
    #   <p>The IP version to use to control traffic within the mesh.</p>
    #
    #   Enum, one of: ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #
    #   @return [String]
    #
    AwsCloudMapServiceDiscovery = ::Struct.new(
      :namespace_name,
      :service_name,
      :attributes,
      :ip_preference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the backends that a virtual node is expected to send outbound
    #          traffic to.</p>
    #
    class Backend < Hearth::Union
      # <p>Specifies a virtual service to use as a backend.  </p>
      #
      class VirtualService < Backend
        def to_h
          { virtual_service: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::VirtualService #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < Backend
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents the default properties for a backend.</p>
    #
    # @!attribute client_policy
    #   <p>A reference to an object that represents a client policy.</p>
    #
    #   @return [ClientPolicy]
    #
    BackendDefaults = ::Struct.new(
      :client_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request syntax was malformed. Check your request syntax and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a client policy.</p>
    #
    # @!attribute tls
    #   <p>A reference to an object that represents a Transport Layer Security (TLS) client policy.</p>
    #
    #   @return [ClientPolicyTls]
    #
    ClientPolicy = ::Struct.new(
      :tls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A reference to an object that represents a Transport Layer Security (TLS) client policy.</p>
    #
    # @!attribute enforce
    #   <p>Whether the policy is enforced. The default is <code>True</code>, if a value isn't specified.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute ports
    #   <p>One or more ports that the policy is enforced for.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute certificate
    #   <p>A reference to an object that represents a client's TLS certificate.</p>
    #
    #   @return [ClientTlsCertificate]
    #
    # @!attribute validation
    #   <p>A reference to an object that represents a TLS validation context.</p>
    #
    #   @return [TlsValidationContext]
    #
    ClientPolicyTls = ::Struct.new(
      :enforce,
      :ports,
      :certificate,
      :validation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the client's certificate.</p>
    #
    class ClientTlsCertificate < Hearth::Union
      # <p>An object that represents a local file certificate. The certificate must meet specific
      #          requirements and you must have proxy authorization enabled. For more information, see
      #             <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html">Transport Layer Security (TLS)</a>.</p>
      #
      class File < ClientTlsCertificate
        def to_h
          { file: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::File #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A reference to an object that represents a client's TLS Secret Discovery Service
      #          certificate.</p>
      #
      class Sds < ClientTlsCertificate
        def to_h
          { sds: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Sds #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ClientTlsCertificate
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>The request contains a client token that was used for a previous update resource call
    #          with different specifications. Try the request again with a new client token.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_route_name
    #   <p>The name to use for the gateway route.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to create the gateway route in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway to associate the gateway route with. If the virtual
    #            gateway is in a shared mesh, then you must be the owner of the virtual gateway
    #            resource.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The gateway route specification to apply.</p>
    #
    #   @return [GatewayRouteSpec]
    #
    # @!attribute tags
    #   <p>Optional metadata that you can apply to the gateway route to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    #   @return [Array<TagRef>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    CreateGatewayRouteInput = ::Struct.new(
      :gateway_route_name,
      :mesh_name,
      :virtual_gateway_name,
      :spec,
      :tags,
      :client_token,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_route
    #   <p>The full description of your gateway route following the create call.</p>
    #
    #   @return [GatewayRouteData]
    #
    CreateGatewayRouteOutput = ::Struct.new(
      :gateway_route,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute mesh_name
    #   <p>The name to use for the service mesh.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The service mesh specification to apply.</p>
    #
    #   @return [MeshSpec]
    #
    # @!attribute tags
    #   <p>Optional metadata that you can apply to the service mesh to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    #   Tags: ["not-preview"]
    #
    #   @return [Array<TagRef>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    #   @return [String]
    #
    CreateMeshInput = ::Struct.new(
      :mesh_name,
      :spec,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute mesh
    #   <p>The full description of your service mesh following the create call.</p>
    #
    #   @return [MeshData]
    #
    CreateMeshOutput = ::Struct.new(
      :mesh,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute route_name
    #   <p>The name to use for the route.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to create the route in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router in which to create the route. If the virtual router is in
    #            a shared mesh, then you must be the owner of the virtual router resource.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The route specification to apply.</p>
    #
    #   @return [RouteSpec]
    #
    # @!attribute tags
    #   <p>Optional metadata that you can apply to the route to assist with categorization and
    #            organization. Each tag consists of a key and an optional value, both of which you define.
    #            Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    #   Tags: ["not-preview"]
    #
    #   @return [Array<TagRef>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    CreateRouteInput = ::Struct.new(
      :route_name,
      :mesh_name,
      :virtual_router_name,
      :spec,
      :tags,
      :client_token,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute route
    #   <p>The full description of your mesh following the create call.</p>
    #
    #   @return [RouteData]
    #
    CreateRouteOutput = ::Struct.new(
      :route,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_gateway_name
    #   <p>The name to use for the virtual gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to create the virtual gateway in.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The virtual gateway specification to apply.</p>
    #
    #   @return [VirtualGatewaySpec]
    #
    # @!attribute tags
    #   <p>Optional metadata that you can apply to the virtual gateway to assist with
    #            categorization and organization. Each tag consists of a key and an optional value, both of
    #            which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    #   @return [Array<TagRef>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    CreateVirtualGatewayInput = ::Struct.new(
      :virtual_gateway_name,
      :mesh_name,
      :spec,
      :tags,
      :client_token,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_gateway
    #   <p>The full description of your virtual gateway following the create call.</p>
    #
    #   @return [VirtualGatewayData]
    #
    CreateVirtualGatewayOutput = ::Struct.new(
      :virtual_gateway,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_node_name
    #   <p>The name to use for the virtual node.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to create the virtual node in.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The virtual node specification to apply.</p>
    #
    #   @return [VirtualNodeSpec]
    #
    # @!attribute tags
    #   <p>Optional metadata that you can apply to the virtual node to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    #   Tags: ["not-preview"]
    #
    #   @return [Array<TagRef>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    CreateVirtualNodeInput = ::Struct.new(
      :virtual_node_name,
      :mesh_name,
      :spec,
      :tags,
      :client_token,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_node
    #   <p>The full description of your virtual node following the create call.</p>
    #
    #   @return [VirtualNodeData]
    #
    CreateVirtualNodeOutput = ::Struct.new(
      :virtual_node,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_router_name
    #   <p>The name to use for the virtual router.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to create the virtual router in.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The virtual router specification to apply.</p>
    #
    #   @return [VirtualRouterSpec]
    #
    # @!attribute tags
    #   <p>Optional metadata that you can apply to the virtual router to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    #   Tags: ["not-preview"]
    #
    #   @return [Array<TagRef>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    CreateVirtualRouterInput = ::Struct.new(
      :virtual_router_name,
      :mesh_name,
      :spec,
      :tags,
      :client_token,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_router
    #   <p>The full description of your virtual router following the create call.</p>
    #
    #   @return [VirtualRouterData]
    #
    CreateVirtualRouterOutput = ::Struct.new(
      :virtual_router,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_service_name
    #   <p>The name to use for the virtual service.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to create the virtual service in.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The virtual service specification to apply.</p>
    #
    #   @return [VirtualServiceSpec]
    #
    # @!attribute tags
    #   <p>Optional metadata that you can apply to the virtual service to assist with
    #            categorization and organization. Each tag consists of a key and an optional value, both of
    #            which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    #   Tags: ["not-preview"]
    #
    #   @return [Array<TagRef>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    CreateVirtualServiceInput = ::Struct.new(
      :virtual_service_name,
      :mesh_name,
      :spec,
      :tags,
      :client_token,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_service
    #   <p>The full description of your virtual service following the create call.</p>
    #
    #   @return [VirtualServiceData]
    #
    CreateVirtualServiceOutput = ::Struct.new(
      :virtual_service,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DefaultGatewayRouteRewrite
    #
    module DefaultGatewayRouteRewrite
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # @!attribute gateway_route_name
    #   <p>The name of the gateway route to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to delete the gateway route from.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway to delete the route from.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    DeleteGatewayRouteInput = ::Struct.new(
      :gateway_route_name,
      :mesh_name,
      :virtual_gateway_name,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_route
    #   <p>The gateway route that was deleted.</p>
    #
    #   @return [GatewayRouteData]
    #
    DeleteGatewayRouteOutput = ::Struct.new(
      :gateway_route,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to delete.</p>
    #
    #   @return [String]
    #
    DeleteMeshInput = ::Struct.new(
      :mesh_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute mesh
    #   <p>The service mesh that was deleted.</p>
    #
    #   @return [MeshData]
    #
    DeleteMeshOutput = ::Struct.new(
      :mesh,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute route_name
    #   <p>The name of the route to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to delete the route in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router to delete the route in.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    DeleteRouteInput = ::Struct.new(
      :route_name,
      :mesh_name,
      :virtual_router_name,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute route
    #   <p>The route that was deleted.</p>
    #
    #   @return [RouteData]
    #
    DeleteRouteOutput = ::Struct.new(
      :route,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to delete the virtual gateway from.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    DeleteVirtualGatewayInput = ::Struct.new(
      :virtual_gateway_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_gateway
    #   <p>The virtual gateway that was deleted.</p>
    #
    #   @return [VirtualGatewayData]
    #
    DeleteVirtualGatewayOutput = ::Struct.new(
      :virtual_gateway,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Deletes a virtual node input.</p>
    #
    # @!attribute virtual_node_name
    #   <p>The name of the virtual node to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to delete the virtual node in.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    DeleteVirtualNodeInput = ::Struct.new(
      :virtual_node_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_node
    #   <p>The virtual node that was deleted.</p>
    #
    #   @return [VirtualNodeData]
    #
    DeleteVirtualNodeOutput = ::Struct.new(
      :virtual_node,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to delete the virtual router in.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    DeleteVirtualRouterInput = ::Struct.new(
      :virtual_router_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_router
    #   <p>The virtual router that was deleted.</p>
    #
    #   @return [VirtualRouterData]
    #
    DeleteVirtualRouterOutput = ::Struct.new(
      :virtual_router,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_service_name
    #   <p>The name of the virtual service to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to delete the virtual service in.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    DeleteVirtualServiceInput = ::Struct.new(
      :virtual_service_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_service
    #   <p>The virtual service that was deleted.</p>
    #
    #   @return [VirtualServiceData]
    #
    DeleteVirtualServiceOutput = ::Struct.new(
      :virtual_service,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_route_name
    #   <p>The name of the gateway route to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the gateway route resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway that the gateway route is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    DescribeGatewayRouteInput = ::Struct.new(
      :gateway_route_name,
      :mesh_name,
      :virtual_gateway_name,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_route
    #   <p>The full description of your gateway route.</p>
    #
    #   @return [GatewayRouteData]
    #
    DescribeGatewayRouteOutput = ::Struct.new(
      :gateway_route,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    DescribeMeshInput = ::Struct.new(
      :mesh_name,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute mesh
    #   <p>The full description of your service mesh.</p>
    #
    #   @return [MeshData]
    #
    DescribeMeshOutput = ::Struct.new(
      :mesh,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute route_name
    #   <p>The name of the route to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the route resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router that the route is associated with.</p>
    #
    #   @return [String]
    #
    DescribeRouteInput = ::Struct.new(
      :route_name,
      :mesh_name,
      :mesh_owner,
      :virtual_router_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute route
    #   <p>The full description of your route.</p>
    #
    #   @return [RouteData]
    #
    DescribeRouteOutput = ::Struct.new(
      :route,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the gateway route resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    DescribeVirtualGatewayInput = ::Struct.new(
      :virtual_gateway_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_gateway
    #   <p>The full description of your virtual gateway.</p>
    #
    #   @return [VirtualGatewayData]
    #
    DescribeVirtualGatewayOutput = ::Struct.new(
      :virtual_gateway,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_node_name
    #   <p>The name of the virtual node to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual node resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    DescribeVirtualNodeInput = ::Struct.new(
      :virtual_node_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_node
    #   <p>The full description of your virtual node.</p>
    #
    #   @return [VirtualNodeData]
    #
    DescribeVirtualNodeOutput = ::Struct.new(
      :virtual_node,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual router resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    DescribeVirtualRouterInput = ::Struct.new(
      :virtual_router_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_router
    #   <p>The full description of your virtual router.</p>
    #
    #   @return [VirtualRouterData]
    #
    DescribeVirtualRouterOutput = ::Struct.new(
      :virtual_router,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_service_name
    #   <p>The name of the virtual service to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual service resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    DescribeVirtualServiceInput = ::Struct.new(
      :virtual_service_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_service
    #   <p>The full description of your virtual service.</p>
    #
    #   @return [VirtualServiceData]
    #
    DescribeVirtualServiceOutput = ::Struct.new(
      :virtual_service,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DnsResponseType
    #
    module DnsResponseType
      # No documentation available.
      #
      LOADBALANCER = "LOADBALANCER"

      # No documentation available.
      #
      ENDPOINTS = "ENDPOINTS"
    end

    # <p>An object that represents the DNS service discovery information for your virtual
    #          node.</p>
    #
    # @!attribute hostname
    #   <p>Specifies the DNS service discovery hostname for the virtual node. </p>
    #
    #   @return [String]
    #
    # @!attribute response_type
    #   <p>Specifies the DNS response type for the virtual node.</p>
    #
    #   Enum, one of: ["LOADBALANCER", "ENDPOINTS"]
    #
    #   @return [String]
    #
    # @!attribute ip_preference
    #   <p>The IP version to use to control traffic within the mesh.</p>
    #
    #   Enum, one of: ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #
    #   @return [String]
    #
    DnsServiceDiscovery = ::Struct.new(
      :hostname,
      :response_type,
      :ip_preference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a duration of time.</p>
    #
    # @!attribute value
    #   <p>A number of time units.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unit
    #   <p>A unit of time.</p>
    #
    #   Enum, one of: ["s", "ms"]
    #
    #   @return [String]
    #
    Duration = ::Struct.new(
      :value,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DurationUnit
    #
    module DurationUnit
      # No documentation available.
      #
      S = "s"

      # No documentation available.
      #
      MS = "ms"
    end

    # <p>An object that represents the egress filter rules for a service mesh.</p>
    #
    # @!attribute type
    #   <p>The egress filter type. By default, the type is <code>DROP_ALL</code>, which allows
    #            egress only from virtual nodes to other defined resources in the service mesh (and any
    #            traffic to <code>*.amazonaws.com</code> for Amazon Web Services API calls). You can set the
    #            egress filter type to <code>ALLOW_ALL</code> to allow egress to any endpoint inside or
    #            outside of the service mesh.</p>
    #
    #   Enum, one of: ["ALLOW_ALL", "DROP_ALL"]
    #
    #   @return [String]
    #
    EgressFilter = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EgressFilterType
    #
    module EgressFilterType
      # No documentation available.
      #
      ALLOW_ALL = "ALLOW_ALL"

      # No documentation available.
      #
      DROP_ALL = "DROP_ALL"
    end

    # <p>An object that represents an access log file.</p>
    #
    # @!attribute path
    #   <p>The file path to write access logs to. You can use <code>/dev/stdout</code> to send
    #            access logs to standard out and configure your Envoy container to use a log driver, such as
    #               <code>awslogs</code>, to export the access logs to a log storage service such as Amazon
    #            CloudWatch Logs. You can also specify a path in the Envoy container's file system to write
    #            the files to disk.</p>
    #
    #            <note>
    #               <p>The Envoy process must have write permissions to the path that you specify here.
    #               Otherwise, Envoy fails to bootstrap properly.</p>
    #            </note>
    #
    #   @return [String]
    #
    FileAccessLog = ::Struct.new(
      :path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You don't have permissions to perform this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a gateway route returned by a describe operation.</p>
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the resource resides in. </p>
    #
    #   @return [String]
    #
    # @!attribute gateway_route_name
    #   <p>The name of the gateway route.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_name
    #   <p>The virtual gateway that the gateway route is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The specifications of the gateway route.</p>
    #
    #   @return [GatewayRouteSpec]
    #
    # @!attribute metadata
    #   <p>An object that represents metadata for a resource.</p>
    #
    #   @return [ResourceMetadata]
    #
    # @!attribute status
    #   <p>The status of the gateway route.</p>
    #
    #   @return [GatewayRouteStatus]
    #
    GatewayRouteData = ::Struct.new(
      :mesh_name,
      :gateway_route_name,
      :virtual_gateway_name,
      :spec,
      :metadata,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the gateway route host name to match.</p>
    #
    # @!attribute exact
    #   <p>The exact host name to match on.</p>
    #
    #   @return [String]
    #
    # @!attribute suffix
    #   <p>The specified ending characters of the host name to match on.</p>
    #
    #   @return [String]
    #
    GatewayRouteHostnameMatch = ::Struct.new(
      :exact,
      :suffix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the gateway route host name to rewrite.</p>
    #
    # @!attribute default_target_hostname
    #   <p>The default target host name to write to.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    GatewayRouteHostnameRewrite = ::Struct.new(
      :default_target_hostname,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a gateway route returned by a list operation.</p>
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the resource resides in. </p>
    #
    #   @return [String]
    #
    # @!attribute gateway_route_name
    #   <p>The name of the gateway route.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_name
    #   <p>The virtual gateway that the gateway route is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) for the gateway route.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #
    #   @return [Time]
    #
    GatewayRouteRef = ::Struct.new(
      :mesh_name,
      :gateway_route_name,
      :virtual_gateway_name,
      :mesh_owner,
      :resource_owner,
      :arn,
      :version,
      :created_at,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a gateway route specification. Specify one gateway route
    #          type.</p>
    #
    # @!attribute priority
    #   <p>The ordering of the gateway routes spec.</p>
    #
    #   @return [Integer]
    #
    # @!attribute http_route
    #   <p>An object that represents the specification of an HTTP gateway route.</p>
    #
    #   @return [HttpGatewayRoute]
    #
    # @!attribute http2_route
    #   <p>An object that represents the specification of an HTTP/2 gateway route.</p>
    #
    #   @return [HttpGatewayRoute]
    #
    # @!attribute grpc_route
    #   <p>An object that represents the specification of a gRPC gateway route.</p>
    #
    #   @return [GrpcGatewayRoute]
    #
    GatewayRouteSpec = ::Struct.new(
      :priority,
      :http_route,
      :http2_route,
      :grpc_route,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the current status of a gateway route.</p>
    #
    # @!attribute status
    #   <p>The current status for the gateway route.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE", "DELETED"]
    #
    #   @return [String]
    #
    GatewayRouteStatus = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GatewayRouteStatusCode
    #
    module GatewayRouteStatusCode
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>An object that represents a gateway route target.</p>
    #
    # @!attribute virtual_service
    #   <p>An object that represents a virtual service gateway route target.</p>
    #
    #   @return [GatewayRouteVirtualService]
    #
    GatewayRouteTarget = ::Struct.new(
      :virtual_service,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the virtual service that traffic is routed to.</p>
    #
    # @!attribute virtual_service_name
    #   <p>The name of the virtual service that traffic is routed to.</p>
    #
    #   @return [String]
    #
    GatewayRouteVirtualService = ::Struct.new(
      :virtual_service_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a gRPC gateway route.</p>
    #
    # @!attribute match
    #   <p>An object that represents the criteria for determining a request match.</p>
    #
    #   @return [GrpcGatewayRouteMatch]
    #
    # @!attribute action
    #   <p>An object that represents the action to take if a match is determined.</p>
    #
    #   @return [GrpcGatewayRouteAction]
    #
    GrpcGatewayRoute = ::Struct.new(
      :match,
      :action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the action to take if a match is determined.</p>
    #
    # @!attribute target
    #   <p>An object that represents the target that traffic is routed to when a request matches the gateway route.</p>
    #
    #   @return [GatewayRouteTarget]
    #
    # @!attribute rewrite
    #   <p>The gateway route action to rewrite.</p>
    #
    #   @return [GrpcGatewayRouteRewrite]
    #
    GrpcGatewayRouteAction = ::Struct.new(
      :target,
      :rewrite,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the criteria for determining a request match.</p>
    #
    # @!attribute service_name
    #   <p>The fully qualified domain name for the service to match from the request.</p>
    #
    #   @return [String]
    #
    # @!attribute hostname
    #   <p>The gateway route host name to be matched on.</p>
    #
    #   @return [GatewayRouteHostnameMatch]
    #
    # @!attribute metadata
    #   <p>The gateway route metadata to be matched on.</p>
    #
    #   @return [Array<GrpcGatewayRouteMetadata>]
    #
    GrpcGatewayRouteMatch = ::Struct.new(
      :service_name,
      :hostname,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the metadata of the gateway route.</p>
    #
    # @!attribute name
    #   <p>A name for the gateway route metadata.</p>
    #
    #   @return [String]
    #
    # @!attribute invert
    #   <p>Specify <code>True</code> to match anything except the match criteria. The default value
    #            is <code>False</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute match
    #   <p>The criteria for determining a metadata match.</p>
    #
    #   @return [GrpcMetadataMatchMethod]
    #
    GrpcGatewayRouteMetadata = ::Struct.new(
      :name,
      :invert,
      :match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the gateway route to rewrite.</p>
    #
    # @!attribute hostname
    #   <p>The host name of the gateway route to rewrite.</p>
    #
    #   @return [GatewayRouteHostnameRewrite]
    #
    GrpcGatewayRouteRewrite = ::Struct.new(
      :hostname,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the method header to be matched.</p>
    #
    class GrpcMetadataMatchMethod < Hearth::Union
      # <p>The exact method header to be matched on.</p>
      #
      class Exact < GrpcMetadataMatchMethod
        def to_h
          { exact: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Exact #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The regex used to match the method header.</p>
      #
      class Regex < GrpcMetadataMatchMethod
        def to_h
          { regex: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Regex #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that represents the range of values to match on. The first character of the range is included in the range, though the last character is not. For example, if the range specified were 1-100, only values 1-99 would be matched.</p>
      #
      class Range < GrpcMetadataMatchMethod
        def to_h
          { range: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Range #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The specified beginning characters of the method header to be matched on.</p>
      #
      class Prefix < GrpcMetadataMatchMethod
        def to_h
          { prefix: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Prefix #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The specified ending characters of the method header to match on.</p>
      #
      class Suffix < GrpcMetadataMatchMethod
        def to_h
          { suffix: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Suffix #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < GrpcMetadataMatchMethod
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents a retry policy. Specify at least one value for at least one of the types of <code>RetryEvents</code>, a value for <code>maxRetries</code>, and a value for <code>perRetryTimeout</code>.
    #                Both <code>server-error</code> and <code>gateway-error</code> under <code>httpRetryEvents</code> include the Envoy <code>reset</code> policy. For more information on the
    #                <code>reset</code> policy, see the <a href="https://www.envoyproxy.io/docs/envoy/latest/configuration/http/http_filters/router_filter#x-envoy-retry-on">Envoy documentation</a>.</p>
    #
    # @!attribute per_retry_timeout
    #   <p>The timeout for each retry attempt.</p>
    #
    #   @return [Duration]
    #
    # @!attribute max_retries
    #   <p>The maximum number of retry attempts.</p>
    #
    #   @return [Integer]
    #
    # @!attribute http_retry_events
    #   <p>Specify at least one of the following values.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>server-error</b> – HTTP status codes 500, 501,
    #                     502, 503, 504, 505, 506, 507, 508, 510, and 511</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>gateway-error</b> – HTTP status codes 502,
    #                     503, and 504</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>client-error</b> – HTTP status code 409</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>stream-error</b> – Retry on refused
    #                     stream</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute tcp_retry_events
    #   <p>Specify a valid value. The event occurs before any processing of a request has started and is encountered when the upstream is temporarily or permanently unavailable.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute grpc_retry_events
    #   <p>Specify at least one of the valid values.</p>
    #
    #   @return [Array<String>]
    #
    GrpcRetryPolicy = ::Struct.new(
      :per_retry_timeout,
      :max_retries,
      :http_retry_events,
      :tcp_retry_events,
      :grpc_retry_events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GrpcRetryPolicyEvent
    #
    module GrpcRetryPolicyEvent
      # No documentation available.
      #
      CANCELLED = "cancelled"

      # No documentation available.
      #
      DEADLINE_EXCEEDED = "deadline-exceeded"

      # No documentation available.
      #
      INTERNAL = "internal"

      # No documentation available.
      #
      RESOURCE_EXHAUSTED = "resource-exhausted"

      # No documentation available.
      #
      UNAVAILABLE = "unavailable"
    end

    # <p>An object that represents a gRPC route type.</p>
    #
    # @!attribute action
    #   <p>An object that represents the action to take if a match is determined.</p>
    #
    #   @return [GrpcRouteAction]
    #
    # @!attribute match
    #   <p>An object that represents the criteria for determining a request match.</p>
    #
    #   @return [GrpcRouteMatch]
    #
    # @!attribute retry_policy
    #   <p>An object that represents a retry policy.</p>
    #
    #   @return [GrpcRetryPolicy]
    #
    # @!attribute timeout
    #   <p>An object that represents types of timeouts. </p>
    #
    #   @return [GrpcTimeout]
    #
    GrpcRoute = ::Struct.new(
      :action,
      :match,
      :retry_policy,
      :timeout,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the action to take if a match is determined.</p>
    #
    # @!attribute weighted_targets
    #   <p>An object that represents the targets that traffic is routed to when a request matches the route.</p>
    #
    #   @return [Array<WeightedTarget>]
    #
    GrpcRouteAction = ::Struct.new(
      :weighted_targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the criteria for determining a request match.</p>
    #
    # @!attribute service_name
    #   <p>The fully qualified domain name for the service to match from the request.</p>
    #
    #   @return [String]
    #
    # @!attribute method_name
    #   <p>The method name to match from the request. If you specify a name, you must also specify
    #            a <code>serviceName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>An object that represents the data to match from the request.</p>
    #
    #   @return [Array<GrpcRouteMetadata>]
    #
    GrpcRouteMatch = ::Struct.new(
      :service_name,
      :method_name,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the match metadata for the route.</p>
    #
    # @!attribute name
    #   <p>The name of the route.</p>
    #
    #   @return [String]
    #
    # @!attribute invert
    #   <p>Specify <code>True</code> to match anything except the match criteria. The default value is <code>False</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute match
    #   <p>An object that represents the data to match from the request.</p>
    #
    #   @return [GrpcRouteMetadataMatchMethod]
    #
    GrpcRouteMetadata = ::Struct.new(
      :name,
      :invert,
      :match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the match method. Specify one of the match values.</p>
    #
    class GrpcRouteMetadataMatchMethod < Hearth::Union
      # <p>The value sent by the client must match the specified value exactly.</p>
      #
      class Exact < GrpcRouteMetadataMatchMethod
        def to_h
          { exact: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Exact #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The value sent by the client must include the specified characters.</p>
      #
      class Regex < GrpcRouteMetadataMatchMethod
        def to_h
          { regex: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Regex #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that represents the range of values to match on.</p>
      #
      class Range < GrpcRouteMetadataMatchMethod
        def to_h
          { range: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Range #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The value sent by the client must begin with the specified characters.</p>
      #
      class Prefix < GrpcRouteMetadataMatchMethod
        def to_h
          { prefix: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Prefix #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The value sent by the client must end with the specified characters.</p>
      #
      class Suffix < GrpcRouteMetadataMatchMethod
        def to_h
          { suffix: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Suffix #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < GrpcRouteMetadataMatchMethod
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents types of timeouts. </p>
    #
    # @!attribute per_request
    #   <p>An object that represents a per request timeout. The default value is 15 seconds. If you set a higher timeout, then make sure that the higher value is set for each App Mesh
    #                                     resource in a conversation. For example, if a virtual node backend uses a virtual router provider to route to another virtual node, then the timeout should be greater than 15
    #                                     seconds for the source and destination virtual node and the route.</p>
    #
    #   @return [Duration]
    #
    # @!attribute idle
    #   <p>An object that represents an idle timeout. An idle timeout bounds the amount of time that a connection may be idle. The default value is none.</p>
    #
    #   @return [Duration]
    #
    GrpcTimeout = ::Struct.new(
      :per_request,
      :idle,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the method and value to match with the header value sent in a
    #          request. Specify one match method.</p>
    #
    class HeaderMatchMethod < Hearth::Union
      # <p>The value sent by the client must match the specified value exactly.</p>
      #
      class Exact < HeaderMatchMethod
        def to_h
          { exact: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Exact #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The value sent by the client must include the specified characters.</p>
      #
      class Regex < HeaderMatchMethod
        def to_h
          { regex: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Regex #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that represents the range of values to match on.</p>
      #
      class Range < HeaderMatchMethod
        def to_h
          { range: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Range #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The value sent by the client must begin with the specified characters.</p>
      #
      class Prefix < HeaderMatchMethod
        def to_h
          { prefix: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Prefix #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The value sent by the client must end with the specified characters.</p>
      #
      class Suffix < HeaderMatchMethod
        def to_h
          { suffix: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Suffix #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < HeaderMatchMethod
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents the health check policy for a virtual node's listener.</p>
    #
    # @!attribute timeout_millis
    #   <p>The amount of time to wait when receiving a response from the health check, in
    #            milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interval_millis
    #   <p>The time period in milliseconds between each health check execution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute protocol
    #   <p>The protocol for the health check request. If you specify <code>grpc</code>, then your
    #            service must conform to the <a href="https://github.com/grpc/grpc/blob/master/doc/health-checking.md">GRPC Health
    #               Checking Protocol</a>.</p>
    #
    #   Enum, one of: ["http", "tcp", "http2", "grpc"]
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The destination port for the health check request. This port must match the port defined
    #            in the <a>PortMapping</a> for the listener.</p>
    #
    #   @return [Integer]
    #
    # @!attribute path
    #   <p>The destination path for the health check request. This value is only used if the
    #            specified protocol is HTTP or HTTP/2. For any other protocol, this value is ignored.</p>
    #
    #   @return [String]
    #
    # @!attribute healthy_threshold
    #   <p>The number of consecutive successful health checks that must occur before declaring
    #            listener healthy.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unhealthy_threshold
    #   <p>The number of consecutive failed health checks that must occur before declaring a
    #            virtual node unhealthy. </p>
    #
    #   @return [Integer]
    #
    HealthCheckPolicy = ::Struct.new(
      :timeout_millis,
      :interval_millis,
      :protocol,
      :port,
      :path,
      :healthy_threshold,
      :unhealthy_threshold,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
        self.healthy_threshold ||= 0
        self.unhealthy_threshold ||= 0
      end
    end

    # <p>An object that represents an HTTP gateway route.</p>
    #
    # @!attribute match
    #   <p>An object that represents the criteria for determining a request match.</p>
    #
    #   @return [HttpGatewayRouteMatch]
    #
    # @!attribute action
    #   <p>An object that represents the action to take if a match is determined.</p>
    #
    #   @return [HttpGatewayRouteAction]
    #
    HttpGatewayRoute = ::Struct.new(
      :match,
      :action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the action to take if a match is determined.</p>
    #
    # @!attribute target
    #   <p>An object that represents the target that traffic is routed to when a request matches the gateway route.</p>
    #
    #   @return [GatewayRouteTarget]
    #
    # @!attribute rewrite
    #   <p>The gateway route action to rewrite.</p>
    #
    #   @return [HttpGatewayRouteRewrite]
    #
    HttpGatewayRouteAction = ::Struct.new(
      :target,
      :rewrite,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the HTTP header in the gateway route.</p>
    #
    # @!attribute name
    #   <p>A name for the HTTP header in the gateway route that will be matched on.</p>
    #
    #   @return [String]
    #
    # @!attribute invert
    #   <p>Specify <code>True</code> to match anything except the match criteria. The default value
    #            is <code>False</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute match
    #   <p>An object that represents the method and value to match with the header value sent in a
    #            request. Specify one match method.</p>
    #
    #   @return [HeaderMatchMethod]
    #
    HttpGatewayRouteHeader = ::Struct.new(
      :name,
      :invert,
      :match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the criteria for determining a request match.</p>
    #
    # @!attribute prefix
    #   <p>Specifies the path to match requests with. This parameter must always start with
    #               <code>/</code>, which by itself matches all requests to the virtual service name. You
    #            can also match for path-based routing of requests. For example, if your virtual service
    #            name is <code>my-service.local</code> and you want the route to match requests to
    #               <code>my-service.local/metrics</code>, your prefix should be
    #            <code>/metrics</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>The path to match on.</p>
    #
    #   @return [HttpPathMatch]
    #
    # @!attribute query_parameters
    #   <p>The query parameter to match on.</p>
    #
    #   @return [Array<HttpQueryParameter>]
    #
    # @!attribute member_method
    #   <p>The method to match on.</p>
    #
    #   Enum, one of: ["GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"]
    #
    #   @return [String]
    #
    # @!attribute hostname
    #   <p>The host name to match on.</p>
    #
    #   @return [GatewayRouteHostnameMatch]
    #
    # @!attribute headers
    #   <p>The client request headers to match on.</p>
    #
    #   @return [Array<HttpGatewayRouteHeader>]
    #
    HttpGatewayRouteMatch = ::Struct.new(
      :prefix,
      :path,
      :query_parameters,
      :member_method,
      :hostname,
      :headers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the path to rewrite.</p>
    #
    # @!attribute exact
    #   <p>The exact path to rewrite.</p>
    #
    #   @return [String]
    #
    HttpGatewayRoutePathRewrite = ::Struct.new(
      :exact,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the beginning characters of the route to rewrite.</p>
    #
    # @!attribute default_prefix
    #   <p>The default prefix used to replace the incoming route prefix when rewritten.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value used to replace the incoming route prefix when rewritten.</p>
    #
    #   @return [String]
    #
    HttpGatewayRoutePrefixRewrite = ::Struct.new(
      :default_prefix,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the gateway route to rewrite.</p>
    #
    # @!attribute prefix
    #   <p>The specified beginning characters to rewrite.</p>
    #
    #   @return [HttpGatewayRoutePrefixRewrite]
    #
    # @!attribute path
    #   <p>The path to rewrite.</p>
    #
    #   @return [HttpGatewayRoutePathRewrite]
    #
    # @!attribute hostname
    #   <p>The host name to rewrite.</p>
    #
    #   @return [GatewayRouteHostnameRewrite]
    #
    HttpGatewayRouteRewrite = ::Struct.new(
      :prefix,
      :path,
      :hostname,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HttpMethod
    #
    module HttpMethod
      # No documentation available.
      #
      GET = "GET"

      # No documentation available.
      #
      HEAD = "HEAD"

      # No documentation available.
      #
      POST = "POST"

      # No documentation available.
      #
      PUT = "PUT"

      # No documentation available.
      #
      DELETE = "DELETE"

      # No documentation available.
      #
      CONNECT = "CONNECT"

      # No documentation available.
      #
      OPTIONS = "OPTIONS"

      # No documentation available.
      #
      TRACE = "TRACE"

      # No documentation available.
      #
      PATCH = "PATCH"
    end

    # <p>An object representing the path to match in the request.</p>
    #
    # @!attribute exact
    #   <p>The exact path to match on.</p>
    #
    #   @return [String]
    #
    # @!attribute regex
    #   <p>The regex used to match the path.</p>
    #
    #   @return [String]
    #
    HttpPathMatch = ::Struct.new(
      :exact,
      :regex,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the query parameter in the request.</p>
    #
    # @!attribute name
    #   <p>A name for the query parameter that will be matched on.</p>
    #
    #   @return [String]
    #
    # @!attribute match
    #   <p>The query parameter to match on.</p>
    #
    #   @return [QueryParameterMatch]
    #
    HttpQueryParameter = ::Struct.new(
      :name,
      :match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a retry policy. Specify at least one value for at least one of the types of <code>RetryEvents</code>, a value for <code>maxRetries</code>, and a value for <code>perRetryTimeout</code>.
    #                Both <code>server-error</code> and <code>gateway-error</code> under <code>httpRetryEvents</code> include the Envoy <code>reset</code> policy. For more information on the
    #                <code>reset</code> policy, see the <a href="https://www.envoyproxy.io/docs/envoy/latest/configuration/http/http_filters/router_filter#x-envoy-retry-on">Envoy documentation</a>.</p>
    #
    # @!attribute per_retry_timeout
    #   <p>The timeout for each retry attempt.</p>
    #
    #   @return [Duration]
    #
    # @!attribute max_retries
    #   <p>The maximum number of retry attempts.</p>
    #
    #   @return [Integer]
    #
    # @!attribute http_retry_events
    #   <p>Specify at least one of the following values.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>server-error</b> – HTTP status codes 500, 501,
    #                     502, 503, 504, 505, 506, 507, 508, 510, and 511</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>gateway-error</b> – HTTP status codes 502,
    #                     503, and 504</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>client-error</b> – HTTP status code 409</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>stream-error</b> – Retry on refused
    #                     stream</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute tcp_retry_events
    #   <p>Specify a valid value. The event occurs before any processing of a request has started and is encountered when the upstream is temporarily or permanently unavailable.</p>
    #
    #   @return [Array<String>]
    #
    HttpRetryPolicy = ::Struct.new(
      :per_retry_timeout,
      :max_retries,
      :http_retry_events,
      :tcp_retry_events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents an HTTP or HTTP/2 route type.</p>
    #
    # @!attribute match
    #   <p>An object that represents the criteria for determining a request match.</p>
    #
    #   @return [HttpRouteMatch]
    #
    # @!attribute action
    #   <p>An object that represents the action to take if a match is determined.</p>
    #
    #   @return [HttpRouteAction]
    #
    # @!attribute retry_policy
    #   <p>An object that represents a retry policy.</p>
    #
    #   @return [HttpRetryPolicy]
    #
    # @!attribute timeout
    #   <p>An object that represents types of timeouts. </p>
    #
    #   @return [HttpTimeout]
    #
    HttpRoute = ::Struct.new(
      :match,
      :action,
      :retry_policy,
      :timeout,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the action to take if a match is determined.</p>
    #
    # @!attribute weighted_targets
    #   <p>An object that represents the targets that traffic is routed to when a request matches the route.</p>
    #
    #   @return [Array<WeightedTarget>]
    #
    HttpRouteAction = ::Struct.new(
      :weighted_targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the HTTP header in the request.</p>
    #
    # @!attribute name
    #   <p>A name for the HTTP header in the client request that will be matched on.</p>
    #
    #   @return [String]
    #
    # @!attribute invert
    #   <p>Specify <code>True</code> to match anything except the match criteria. The default value is <code>False</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute match
    #   <p>The <code>HeaderMatchMethod</code> object.</p>
    #
    #   @return [HeaderMatchMethod]
    #
    HttpRouteHeader = ::Struct.new(
      :name,
      :invert,
      :match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the requirements for a route to match HTTP requests for a
    #          virtual router.</p>
    #
    # @!attribute prefix
    #   <p>Specifies the path to match requests with. This parameter must always start with
    #               <code>/</code>, which by itself matches all requests to the virtual service name. You
    #            can also match for path-based routing of requests. For example, if your virtual service
    #            name is <code>my-service.local</code> and you want the route to match requests to
    #               <code>my-service.local/metrics</code>, your prefix should be
    #            <code>/metrics</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>The client request path to match on.</p>
    #
    #   @return [HttpPathMatch]
    #
    # @!attribute query_parameters
    #   <p>The client request query parameters to match on.</p>
    #
    #   @return [Array<HttpQueryParameter>]
    #
    # @!attribute member_method
    #   <p>The client request method to match on. Specify only one.</p>
    #
    #   Enum, one of: ["GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"]
    #
    #   @return [String]
    #
    # @!attribute scheme
    #   <p>The client request scheme to match on. Specify only one. Applicable only for HTTP2
    #            routes.</p>
    #
    #   Enum, one of: ["http", "https"]
    #
    #   @return [String]
    #
    # @!attribute headers
    #   <p>The client request headers to match on.</p>
    #
    #   @return [Array<HttpRouteHeader>]
    #
    HttpRouteMatch = ::Struct.new(
      :prefix,
      :path,
      :query_parameters,
      :member_method,
      :scheme,
      :headers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HttpScheme
    #
    module HttpScheme
      # No documentation available.
      #
      HTTP = "http"

      # No documentation available.
      #
      HTTPS = "https"
    end

    # <p>An object that represents types of timeouts. </p>
    #
    # @!attribute per_request
    #   <p>An object that represents a per request timeout. The default value is 15 seconds. If you set a higher timeout, then make sure that the higher value is set for each App Mesh
    #                                     resource in a conversation. For example, if a virtual node backend uses a virtual router provider to route to another virtual node, then the timeout should be greater than 15
    #                                     seconds for the source and destination virtual node and the route.</p>
    #
    #   @return [Duration]
    #
    # @!attribute idle
    #   <p>An object that represents an idle timeout. An idle timeout bounds the amount of time that a connection may be idle. The default value is none.</p>
    #
    #   @return [Duration]
    #
    HttpTimeout = ::Struct.new(
      :per_request,
      :idle,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception, or
    #          failure.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IpPreference
    #
    module IpPreference
      # No documentation available.
      #
      IPv6_PREFERRED = "IPv6_PREFERRED"

      # No documentation available.
      #
      IPv4_PREFERRED = "IPv4_PREFERRED"

      # No documentation available.
      #
      IPv4_ONLY = "IPv4_ONLY"

      # No documentation available.
      #
      IPv6_ONLY = "IPv6_ONLY"
    end

    # <p>You have exceeded a service limit for your account. For more information, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/service-quotas.html">Service
    #             Limits</a> in the <i>App Mesh User Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute mesh_name
    #   <p>The name of the service mesh to list gateway routes in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway to list gateway routes in.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListGatewayRoutes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results returned by <code>ListGatewayRoutes</code> in paginated
    #            output. When you use this parameter, <code>ListGatewayRoutes</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListGatewayRoutes</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListGatewayRoutes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    ListGatewayRoutesInput = ::Struct.new(
      :mesh_name,
      :virtual_gateway_name,
      :next_token,
      :limit,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_routes
    #   <p>The list of existing gateway routes for the specified service mesh and virtual
    #            gateway.</p>
    #
    #   @return [Array<GatewayRouteRef>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListGatewayRoutes</code>
    #            request. When the results of a <code>ListGatewayRoutes</code> request exceed
    #               <code>limit</code>, you can use this value to retrieve the next page of results. This
    #            value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListGatewayRoutesOutput = ::Struct.new(
      :gateway_routes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListMeshes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results returned by <code>ListMeshes</code> in paginated output.
    #            When you use this parameter, <code>ListMeshes</code> returns only <code>limit</code>
    #            results in a single page along with a <code>nextToken</code> response element. You can see
    #            the remaining results of the initial request by sending another <code>ListMeshes</code>
    #            request with the returned <code>nextToken</code> value. This value can be between
    #            1 and 100. If you don't use this parameter,
    #               <code>ListMeshes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    ListMeshesInput = ::Struct.new(
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute meshes
    #   <p>The list of existing service meshes.</p>
    #
    #   @return [Array<MeshRef>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListMeshes</code> request.
    #            When the results of a <code>ListMeshes</code> request exceed <code>limit</code>, you can
    #            use this value to retrieve the next page of results. This value is <code>null</code> when
    #            there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListMeshesOutput = ::Struct.new(
      :meshes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to list routes in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router to list routes in.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListRoutes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results returned by <code>ListRoutes</code> in paginated output.
    #            When you use this parameter, <code>ListRoutes</code> returns only <code>limit</code>
    #            results in a single page along with a <code>nextToken</code> response element. You can see
    #            the remaining results of the initial request by sending another <code>ListRoutes</code>
    #            request with the returned <code>nextToken</code> value. This value can be between
    #            1 and 100. If you don't use this parameter,
    #               <code>ListRoutes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    ListRoutesInput = ::Struct.new(
      :mesh_name,
      :virtual_router_name,
      :next_token,
      :limit,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute routes
    #   <p>The list of existing routes for the specified service mesh and virtual router.</p>
    #
    #   @return [Array<RouteRef>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListRoutes</code> request.
    #            When the results of a <code>ListRoutes</code> request exceed <code>limit</code>, you can
    #            use this value to retrieve the next page of results. This value is <code>null</code> when
    #            there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListRoutesOutput = ::Struct.new(
      :routes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListTagsForResource</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of tag results returned by <code>ListTagsForResource</code> in
    #            paginated output. When this parameter is used, <code>ListTagsForResource</code> returns
    #            only <code>limit</code> results in a single page along with a <code>nextToken</code>
    #            response element. You can see the remaining results of the initial request by sending
    #            another <code>ListTagsForResource</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 100. If you don't use
    #            this parameter, <code>ListTagsForResource</code> returns up to 100
    #            results and a <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #
    #   @return [Array<TagRef>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListTagsForResource</code>
    #            request. When the results of a <code>ListTagsForResource</code> request exceed
    #               <code>limit</code>, you can use this value to retrieve the next page of results. This
    #            value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute mesh_name
    #   <p>The name of the service mesh to list virtual gateways in.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualGateways</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results returned by <code>ListVirtualGateways</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualGateways</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualGateways</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualGateways</code> returns up to 100 results and
    #            a <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    ListVirtualGatewaysInput = ::Struct.new(
      :mesh_name,
      :next_token,
      :limit,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_gateways
    #   <p>The list of existing virtual gateways for the specified service mesh.</p>
    #
    #   @return [Array<VirtualGatewayRef>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListVirtualGateways</code>
    #            request. When the results of a <code>ListVirtualGateways</code> request exceed
    #               <code>limit</code>, you can use this value to retrieve the next page of results. This
    #            value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListVirtualGatewaysOutput = ::Struct.new(
      :virtual_gateways,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to list virtual nodes in.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualNodes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results returned by <code>ListVirtualNodes</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualNodes</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualNodes</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualNodes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    ListVirtualNodesInput = ::Struct.new(
      :mesh_name,
      :next_token,
      :limit,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_nodes
    #   <p>The list of existing virtual nodes for the specified service mesh.</p>
    #
    #   @return [Array<VirtualNodeRef>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListVirtualNodes</code>
    #            request. When the results of a <code>ListVirtualNodes</code> request exceed
    #               <code>limit</code>, you can use this value to retrieve the next page of results. This
    #            value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListVirtualNodesOutput = ::Struct.new(
      :virtual_nodes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to list virtual routers in.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualRouters</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results returned by <code>ListVirtualRouters</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualRouters</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualRouters</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualRouters</code> returns up to 100 results and
    #            a <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    ListVirtualRoutersInput = ::Struct.new(
      :mesh_name,
      :next_token,
      :limit,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_routers
    #   <p>The list of existing virtual routers for the specified service mesh.</p>
    #
    #   @return [Array<VirtualRouterRef>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListVirtualRouters</code>
    #            request. When the results of a <code>ListVirtualRouters</code> request exceed
    #               <code>limit</code>, you can use this value to retrieve the next page of results. This
    #            value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListVirtualRoutersOutput = ::Struct.new(
      :virtual_routers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to list virtual services in.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualServices</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results returned by <code>ListVirtualServices</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualServices</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualServices</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualServices</code> returns up to 100 results and
    #            a <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    ListVirtualServicesInput = ::Struct.new(
      :mesh_name,
      :next_token,
      :limit,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_services
    #   <p>The list of existing virtual services for the specified service mesh.</p>
    #
    #   @return [Array<VirtualServiceRef>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListVirtualServices</code>
    #            request. When the results of a <code>ListVirtualServices</code> request exceed
    #               <code>limit</code>, you can use this value to retrieve the next page of results. This
    #            value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListVirtualServicesOutput = ::Struct.new(
      :virtual_services,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a listener for a virtual node.</p>
    #
    # @!attribute port_mapping
    #   <p>The port mapping information for the listener.</p>
    #
    #   @return [PortMapping]
    #
    # @!attribute tls
    #   <p>A reference to an object that represents the Transport Layer Security (TLS) properties for a listener.</p>
    #
    #   @return [ListenerTls]
    #
    # @!attribute health_check
    #   <p>The health check information for the listener.</p>
    #
    #   @return [HealthCheckPolicy]
    #
    # @!attribute timeout
    #   <p>An object that represents timeouts for different protocols.</p>
    #
    #   @return [ListenerTimeout]
    #
    # @!attribute outlier_detection
    #   <p>The outlier detection information for the listener.</p>
    #
    #   @return [OutlierDetection]
    #
    # @!attribute connection_pool
    #   <p>The connection pool information for the listener.</p>
    #
    #   @return [VirtualNodeConnectionPool]
    #
    Listener = ::Struct.new(
      :port_mapping,
      :tls,
      :health_check,
      :timeout,
      :outlier_detection,
      :connection_pool,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents timeouts for different protocols.</p>
    #
    class ListenerTimeout < Hearth::Union
      # <p>An object that represents types of timeouts. </p>
      #
      class Tcp < ListenerTimeout
        def to_h
          { tcp: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Tcp #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that represents types of timeouts. </p>
      #
      class Http < ListenerTimeout
        def to_h
          { http: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Http #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that represents types of timeouts. </p>
      #
      class Http2 < ListenerTimeout
        def to_h
          { http2: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Http2 #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that represents types of timeouts. </p>
      #
      class Grpc < ListenerTimeout
        def to_h
          { grpc: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Grpc #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ListenerTimeout
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents the Transport Layer Security (TLS) properties for a listener.</p>
    #
    # @!attribute mode
    #   <p>Specify one of the following modes.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b/>STRICT – Listener only accepts connections with TLS
    #                  enabled. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b/>PERMISSIVE – Listener accepts connections with or
    #                  without TLS enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b/>DISABLED – Listener only accepts connections without
    #                  TLS. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["STRICT", "PERMISSIVE", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute certificate
    #   <p>A reference to an object that represents a listener's Transport Layer Security (TLS) certificate.</p>
    #
    #   @return [ListenerTlsCertificate]
    #
    # @!attribute validation
    #   <p>A reference to an object that represents a listener's Transport Layer Security (TLS) validation context.</p>
    #
    #   @return [ListenerTlsValidationContext]
    #
    ListenerTls = ::Struct.new(
      :mode,
      :certificate,
      :validation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents an Certificate Manager certificate.</p>
    #
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) for the certificate. The certificate must meet specific requirements and you must have proxy authorization enabled. For more information, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html virtual-node-tls-prerequisites">Transport Layer Security (TLS)</a>.</p>
    #
    #   @return [String]
    #
    ListenerTlsAcmCertificate = ::Struct.new(
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a listener's Transport Layer Security (TLS) certificate.</p>
    #
    class ListenerTlsCertificate < Hearth::Union
      # <p>A reference to an object that represents an Certificate Manager certificate.</p>
      #
      class Acm < ListenerTlsCertificate
        def to_h
          { acm: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Acm #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A reference to an object that represents a local file certificate.</p>
      #
      class File < ListenerTlsCertificate
        def to_h
          { file: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::File #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A reference to an object that represents a listener's Secret Discovery Service
      #          certificate.</p>
      #
      class Sds < ListenerTlsCertificate
        def to_h
          { sds: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Sds #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ListenerTlsCertificate
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents a local file certificate.
    #          The certificate must meet specific requirements and you must have proxy authorization enabled. For more information, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html#virtual-node-tls-prerequisites">Transport Layer Security (TLS)</a>.</p>
    #
    # @!attribute certificate_chain
    #   <p>The certificate chain for the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute private_key
    #   <p>The private key for a certificate stored on the file system of the virtual node that the
    #            proxy is running on.</p>
    #
    #   @return [String]
    #
    ListenerTlsFileCertificate = ::Struct.new(
      :certificate_chain,
      :private_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ListenerTlsMode
    #
    module ListenerTlsMode
      # No documentation available.
      #
      STRICT = "STRICT"

      # No documentation available.
      #
      PERMISSIVE = "PERMISSIVE"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>An object that represents the listener's Secret Discovery Service certificate. The proxy
    #          must be configured with a local SDS provider via a Unix Domain Socket. See App Mesh
    #          <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html">TLS
    #             documentation</a> for more info.</p>
    #
    # @!attribute secret_name
    #   <p>A reference to an object that represents the name of the secret requested from the
    #            Secret Discovery Service provider representing Transport Layer Security (TLS) materials like a certificate or
    #            certificate chain.</p>
    #
    #   @return [String]
    #
    ListenerTlsSdsCertificate = ::Struct.new(
      :secret_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a listener's Transport Layer Security (TLS) validation context.</p>
    #
    # @!attribute member_trust
    #   <p>A reference to where to retrieve the trust chain when validating a peer’s Transport Layer Security (TLS)
    #            certificate.</p>
    #
    #   @return [ListenerTlsValidationContextTrust]
    #
    # @!attribute subject_alternative_names
    #   <p>A reference to an object that represents the SANs for a listener's Transport Layer Security (TLS) validation
    #            context.</p>
    #
    #   @return [SubjectAlternativeNames]
    #
    ListenerTlsValidationContext = ::Struct.new(
      :member_trust,
      :subject_alternative_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a listener's Transport Layer Security (TLS) validation context trust.</p>
    #
    class ListenerTlsValidationContextTrust < Hearth::Union
      # <p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>
      #
      class File < ListenerTlsValidationContextTrust
        def to_h
          { file: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::File #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A reference to an object that represents a listener's Transport Layer Security (TLS) Secret Discovery Service
      #          validation context trust.</p>
      #
      class Sds < ListenerTlsValidationContextTrust
        def to_h
          { sds: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Sds #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ListenerTlsValidationContextTrust
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents the logging information for a virtual node.</p>
    #
    # @!attribute access_log
    #   <p>The access log configuration for a virtual node.</p>
    #
    #   @return [AccessLog]
    #
    Logging = ::Struct.new(
      :access_log,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the range of values to match on. The first character of the range is included in the range, though the last character is not. For example, if the range specified were 1-100, only values 1-99 would be matched.</p>
    #
    # @!attribute start
    #   <p>The start of the range.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end
    #   <p>The end of the range.</p>
    #
    #   @return [Integer]
    #
    MatchRange = ::Struct.new(
      :start,
      :end,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a service mesh returned by a describe operation.</p>
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The associated specification for the service mesh.</p>
    #
    #   @return [MeshSpec]
    #
    # @!attribute metadata
    #   <p>The associated metadata for the service mesh.</p>
    #
    #   @return [ResourceMetadata]
    #
    # @!attribute status
    #   <p>The status of the service mesh.</p>
    #
    #   @return [MeshStatus]
    #
    MeshData = ::Struct.new(
      :mesh_name,
      :spec,
      :metadata,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a service mesh returned by a list operation.</p>
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) of the service mesh.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #
    #   @return [Time]
    #
    MeshRef = ::Struct.new(
      :mesh_name,
      :mesh_owner,
      :resource_owner,
      :arn,
      :version,
      :created_at,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the service discovery information for a service mesh.</p>
    #
    # @!attribute ip_preference
    #   <p>The IP version to use to control traffic within the mesh.</p>
    #
    #   Enum, one of: ["IPv6_PREFERRED", "IPv4_PREFERRED", "IPv4_ONLY", "IPv6_ONLY"]
    #
    #   @return [String]
    #
    MeshServiceDiscovery = ::Struct.new(
      :ip_preference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the specification of a service mesh.</p>
    #
    # @!attribute egress_filter
    #   <p>The egress filter rules for the service mesh.</p>
    #
    #   @return [EgressFilter]
    #
    # @!attribute service_discovery
    #   <p>An object that represents the service discovery information for a service mesh.</p>
    #
    #   @return [MeshServiceDiscovery]
    #
    MeshSpec = ::Struct.new(
      :egress_filter,
      :service_discovery,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the status of a service mesh.</p>
    #
    # @!attribute status
    #   <p>The current mesh status.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE", "DELETED"]
    #
    #   @return [String]
    #
    MeshStatus = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MeshStatusCode
    #
    module MeshStatusCode
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>The specified resource doesn't exist. Check your request syntax and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the outlier detection for a virtual node's listener.</p>
    #
    # @!attribute max_server_errors
    #   <p>Number of consecutive <code>5xx</code> errors required for ejection. </p>
    #
    #   @return [Integer]
    #
    # @!attribute interval
    #   <p>The time interval between ejection sweep analysis.</p>
    #
    #   @return [Duration]
    #
    # @!attribute base_ejection_duration
    #   <p>The base amount of time for which a host is ejected.</p>
    #
    #   @return [Duration]
    #
    # @!attribute max_ejection_percent
    #   <p>Maximum percentage of hosts in load balancing pool for upstream service that can be
    #            ejected. Will eject at least one host regardless of the value.</p>
    #
    #   @return [Integer]
    #
    OutlierDetection = ::Struct.new(
      :max_server_errors,
      :interval,
      :base_ejection_duration,
      :max_ejection_percent,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a port mapping.</p>
    #
    # @!attribute port
    #   <p>The port used for the port mapping.</p>
    #
    #   @return [Integer]
    #
    # @!attribute protocol
    #   <p>The protocol used for the port mapping. Specify one protocol.</p>
    #
    #   Enum, one of: ["http", "tcp", "http2", "grpc"]
    #
    #   @return [String]
    #
    PortMapping = ::Struct.new(
      :port,
      :protocol,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # Includes enum constants for PortProtocol
    #
    module PortProtocol
      # No documentation available.
      #
      HTTP = "http"

      # No documentation available.
      #
      TCP = "tcp"

      # No documentation available.
      #
      HTTP2 = "http2"

      # No documentation available.
      #
      GRPC = "grpc"
    end

    # <p>An object representing the query parameter to match.</p>
    #
    # @!attribute exact
    #   <p>The exact query parameter to match on.</p>
    #
    #   @return [String]
    #
    QueryParameterMatch = ::Struct.new(
      :exact,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can't delete the specified resource because it's in use or required by another
    #          resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents metadata for a resource.</p>
    #
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) for the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute uid
    #   <p>The unique identifier for the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    ResourceMetadata = ::Struct.new(
      :arn,
      :version,
      :uid,
      :created_at,
      :last_updated_at,
      :mesh_owner,
      :resource_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a route returned by a describe operation.</p>
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the route resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_router_name
    #   <p>The virtual router that the route is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute route_name
    #   <p>The name of the route.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The specifications of the route.</p>
    #
    #   @return [RouteSpec]
    #
    # @!attribute metadata
    #   <p>The associated metadata for the route.</p>
    #
    #   @return [ResourceMetadata]
    #
    # @!attribute status
    #   <p>The status of the route.</p>
    #
    #   @return [RouteStatus]
    #
    RouteData = ::Struct.new(
      :mesh_name,
      :virtual_router_name,
      :route_name,
      :spec,
      :metadata,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a route returned by a list operation.</p>
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the route resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_router_name
    #   <p>The virtual router that the route is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute route_name
    #   <p>The name of the route.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) for the route.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #
    #   @return [Time]
    #
    RouteRef = ::Struct.new(
      :mesh_name,
      :virtual_router_name,
      :route_name,
      :mesh_owner,
      :resource_owner,
      :arn,
      :version,
      :created_at,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a route specification. Specify one route type.</p>
    #
    # @!attribute priority
    #   <p>The priority for the route. Routes are matched based on the specified value, where 0 is
    #            the highest priority.</p>
    #
    #   @return [Integer]
    #
    # @!attribute http_route
    #   <p>An object that represents the specification of an HTTP route.</p>
    #
    #   @return [HttpRoute]
    #
    # @!attribute tcp_route
    #   <p>An object that represents the specification of a TCP route.</p>
    #
    #   @return [TcpRoute]
    #
    # @!attribute http2_route
    #   <p>An object that represents the specification of an HTTP/2 route.</p>
    #
    #   @return [HttpRoute]
    #
    # @!attribute grpc_route
    #   <p>An object that represents the specification of a gRPC route.</p>
    #
    #   @return [GrpcRoute]
    #
    RouteSpec = ::Struct.new(
      :priority,
      :http_route,
      :tcp_route,
      :http2_route,
      :grpc_route,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the current status of a route.</p>
    #
    # @!attribute status
    #   <p>The current status for the route.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE", "DELETED"]
    #
    #   @return [String]
    #
    RouteStatus = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RouteStatusCode
    #
    module RouteStatusCode
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>An object that represents the service discovery information for a virtual node.</p>
    #
    class ServiceDiscovery < Hearth::Union
      # <p>Specifies the DNS information for the virtual node.</p>
      #
      class Dns < ServiceDiscovery
        def to_h
          { dns: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Dns #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Specifies any Cloud Map information for the virtual node.</p>
      #
      class AwsCloudMap < ServiceDiscovery
        def to_h
          { aws_cloud_map: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::AwsCloudMap #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ServiceDiscovery
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>The request has failed due to a temporary failure of the service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the methods by which a subject alternative name on a peer
    #          Transport Layer Security (TLS) certificate can be matched.</p>
    #
    # @!attribute exact
    #   <p>The values sent must match the specified values exactly.</p>
    #
    #   @return [Array<String>]
    #
    SubjectAlternativeNameMatchers = ::Struct.new(
      :exact,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the subject alternative names secured by the
    #          certificate.</p>
    #
    # @!attribute match
    #   <p>An object that represents the criteria for determining a SANs match.</p>
    #
    #   @return [SubjectAlternativeNameMatchers]
    #
    SubjectAlternativeNames = ::Struct.new(
      :match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Optional metadata that you apply to a resource to assist with categorization and
    #          organization. Each tag consists of a key and an optional value, both of which you define.
    #          Tag keys can have a maximum character length of 128 characters, and tag values can have
    #             a maximum length of 256 characters.</p>
    #
    # @!attribute key
    #   <p>One part of a key-value pair that make up a tag. A <code>key</code> is a general label
    #            that acts like a category for more specific tag values.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The optional part of a key-value pair that make up a tag. A <code>value</code> acts as a
    #            descriptor within a tag category (key).</p>
    #
    #   @return [String]
    #
    TagRef = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add tags to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.
    #            Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    #   @return [Array<TagRef>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TcpRetryPolicyEvent
    #
    module TcpRetryPolicyEvent
      # No documentation available.
      #
      CONNECTION_ERROR = "connection-error"
    end

    # <p>An object that represents a TCP route type.</p>
    #
    # @!attribute action
    #   <p>The action to take if a match is determined.</p>
    #
    #   @return [TcpRouteAction]
    #
    # @!attribute timeout
    #   <p>An object that represents types of timeouts. </p>
    #
    #   @return [TcpTimeout]
    #
    TcpRoute = ::Struct.new(
      :action,
      :timeout,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the action to take if a match is determined.</p>
    #
    # @!attribute weighted_targets
    #   <p>An object that represents the targets that traffic is routed to when a request matches the route.</p>
    #
    #   @return [Array<WeightedTarget>]
    #
    TcpRouteAction = ::Struct.new(
      :weighted_targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents types of timeouts. </p>
    #
    # @!attribute idle
    #   <p>An object that represents an idle timeout. An idle timeout bounds the amount of time that a connection may be idle. The default value is none.</p>
    #
    #   @return [Duration]
    #
    TcpTimeout = ::Struct.new(
      :idle,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents how the proxy will validate its peer during Transport Layer Security (TLS)
    #          negotiation.</p>
    #
    # @!attribute member_trust
    #   <p>A reference to where to retrieve the trust chain when validating a peer’s Transport Layer Security (TLS)
    #            certificate.</p>
    #
    #   @return [TlsValidationContextTrust]
    #
    # @!attribute subject_alternative_names
    #   <p>A reference to an object that represents the SANs for a Transport Layer Security (TLS) validation context.</p>
    #
    #   @return [SubjectAlternativeNames]
    #
    TlsValidationContext = ::Struct.new(
      :member_trust,
      :subject_alternative_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) validation context trust for an Certificate Manager
    #          certificate.</p>
    #
    # @!attribute certificate_authority_arns
    #   <p>One or more ACM Amazon Resource Name (ARN)s.</p>
    #
    #   @return [Array<String>]
    #
    TlsValidationContextAcmTrust = ::Struct.new(
      :certificate_authority_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>
    #
    # @!attribute certificate_chain
    #   <p>The certificate trust chain for a certificate stored on the file system of the virtual
    #            node that the proxy is running on.</p>
    #
    #   @return [String]
    #
    TlsValidationContextFileTrust = ::Struct.new(
      :certificate_chain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) Secret Discovery Service validation context trust. The
    #          proxy must be configured with a local SDS provider via a Unix Domain Socket. See App Mesh
    #          <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html">TLS
    #             documentation</a> for more info.</p>
    #
    # @!attribute secret_name
    #   <p>A reference to an object that represents the name of the secret for a Transport Layer Security (TLS) Secret
    #            Discovery Service validation context trust.</p>
    #
    #   @return [String]
    #
    TlsValidationContextSdsTrust = ::Struct.new(
      :secret_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) validation context trust.</p>
    #
    class TlsValidationContextTrust < Hearth::Union
      # <p>A reference to an object that represents a Transport Layer Security (TLS) validation context trust for an Certificate Manager certificate.</p>
      #
      class Acm < TlsValidationContextTrust
        def to_h
          { acm: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Acm #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>
      #
      class File < TlsValidationContextTrust
        def to_h
          { file: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::File #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A reference to an object that represents a Transport Layer Security (TLS) Secret Discovery Service validation
      #          context trust.</p>
      #
      class Sds < TlsValidationContextTrust
        def to_h
          { sds: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Sds #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < TlsValidationContextTrust
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>The maximum request rate permitted by the App Mesh APIs has been exceeded for
    #          your account. For best results, use an increasing or variable sleep interval between
    #          requests.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request exceeds the maximum allowed number of tags allowed per resource. The current
    #          limit is 50 user tags per resource. You must reduce the number of tags in the request. None
    #          of the tags in this request were applied.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to delete tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The keys of the tags to be removed.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_route_name
    #   <p>The name of the gateway route to update.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the gateway route resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway that the gateway route is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The new gateway route specification to apply. This overwrites the existing data.</p>
    #
    #   @return [GatewayRouteSpec]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    UpdateGatewayRouteInput = ::Struct.new(
      :gateway_route_name,
      :mesh_name,
      :virtual_gateway_name,
      :spec,
      :client_token,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_route
    #   <p>A full description of the gateway route that was updated.</p>
    #
    #   @return [GatewayRouteData]
    #
    UpdateGatewayRouteOutput = ::Struct.new(
      :gateway_route,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh to update.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The service mesh specification to apply.</p>
    #
    #   @return [MeshSpec]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    #   @return [String]
    #
    UpdateMeshInput = ::Struct.new(
      :mesh_name,
      :spec,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute mesh
    #   <p>An object that represents a service mesh returned by a describe operation.</p>
    #
    #   @return [MeshData]
    #
    UpdateMeshOutput = ::Struct.new(
      :mesh,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute route_name
    #   <p>The name of the route to update.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the route resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router that the route is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The new route specification to apply. This overwrites the existing data.</p>
    #
    #   @return [RouteSpec]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    UpdateRouteInput = ::Struct.new(
      :route_name,
      :mesh_name,
      :virtual_router_name,
      :spec,
      :client_token,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute route
    #   <p>A full description of the route that was updated.</p>
    #
    #   @return [RouteData]
    #
    UpdateRouteOutput = ::Struct.new(
      :route,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway to update.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual gateway resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The new virtual gateway specification to apply. This overwrites the existing
    #            data.</p>
    #
    #   @return [VirtualGatewaySpec]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    UpdateVirtualGatewayInput = ::Struct.new(
      :virtual_gateway_name,
      :mesh_name,
      :spec,
      :client_token,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_gateway
    #   <p>A full description of the virtual gateway that was updated.</p>
    #
    #   @return [VirtualGatewayData]
    #
    UpdateVirtualGatewayOutput = ::Struct.new(
      :virtual_gateway,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_node_name
    #   <p>The name of the virtual node to update.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual node resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The new virtual node specification to apply. This overwrites the existing data.</p>
    #
    #   @return [VirtualNodeSpec]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    UpdateVirtualNodeInput = ::Struct.new(
      :virtual_node_name,
      :mesh_name,
      :spec,
      :client_token,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_node
    #   <p>A full description of the virtual node that was updated.</p>
    #
    #   @return [VirtualNodeData]
    #
    UpdateVirtualNodeOutput = ::Struct.new(
      :virtual_node,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router to update.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual router resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The new virtual router specification to apply. This overwrites the existing data.</p>
    #
    #   @return [VirtualRouterSpec]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    UpdateVirtualRouterInput = ::Struct.new(
      :virtual_router_name,
      :mesh_name,
      :spec,
      :client_token,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_router
    #   <p>A full description of the virtual router that was updated.</p>
    #
    #   @return [VirtualRouterData]
    #
    UpdateVirtualRouterOutput = ::Struct.new(
      :virtual_router,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_service_name
    #   <p>The name of the virtual service to update.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual service resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The new virtual service specification to apply. This overwrites the existing
    #            data.</p>
    #
    #   @return [VirtualServiceSpec]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    UpdateVirtualServiceInput = ::Struct.new(
      :virtual_service_name,
      :mesh_name,
      :spec,
      :client_token,
      :mesh_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    #
    #
    # @!attribute virtual_service
    #   <p>A full description of the virtual service that was updated.</p>
    #
    #   @return [VirtualServiceData]
    #
    UpdateVirtualServiceOutput = ::Struct.new(
      :virtual_service,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The access log configuration for a virtual gateway.</p>
    #
    class VirtualGatewayAccessLog < Hearth::Union
      # <p>The file object to send virtual gateway access logs to.</p>
      #
      class File < VirtualGatewayAccessLog
        def to_h
          { file: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::File #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < VirtualGatewayAccessLog
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents the default properties for a backend.</p>
    #
    # @!attribute client_policy
    #   <p>A reference to an object that represents a client policy.</p>
    #
    #   @return [VirtualGatewayClientPolicy]
    #
    VirtualGatewayBackendDefaults = ::Struct.new(
      :client_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a client policy.</p>
    #
    # @!attribute tls
    #   <p>A reference to an object that represents a Transport Layer Security (TLS) client policy.</p>
    #
    #   @return [VirtualGatewayClientPolicyTls]
    #
    VirtualGatewayClientPolicy = ::Struct.new(
      :tls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) client policy.</p>
    #
    # @!attribute enforce
    #   <p>Whether the policy is enforced. The default is <code>True</code>, if a value isn't
    #            specified.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute ports
    #   <p>One or more ports that the policy is enforced for.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute certificate
    #   <p>A reference to an object that represents a virtual gateway's client's Transport Layer Security (TLS)
    #            certificate.</p>
    #
    #   @return [VirtualGatewayClientTlsCertificate]
    #
    # @!attribute validation
    #   <p>A reference to an object that represents a Transport Layer Security (TLS) validation context.</p>
    #
    #   @return [VirtualGatewayTlsValidationContext]
    #
    VirtualGatewayClientPolicyTls = ::Struct.new(
      :enforce,
      :ports,
      :certificate,
      :validation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the virtual gateway's client's Transport Layer Security (TLS) certificate.</p>
    #
    class VirtualGatewayClientTlsCertificate < Hearth::Union
      # <p>An object that represents a local file certificate. The certificate must meet specific
      #          requirements and you must have proxy authorization enabled. For more information, see
      #             <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html"> Transport Layer Security (TLS)
      #          </a>.</p>
      #
      class File < VirtualGatewayClientTlsCertificate
        def to_h
          { file: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::File #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A reference to an object that represents a virtual gateway's client's Secret Discovery
      #          Service certificate.</p>
      #
      class Sds < VirtualGatewayClientTlsCertificate
        def to_h
          { sds: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Sds #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < VirtualGatewayClientTlsCertificate
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents the type of virtual gateway connection pool.</p>
    #          <p>Only one protocol is used at a time and should be the same protocol as the one chosen
    #          under port mapping.</p>
    #          <p>If not present the default value for <code>maxPendingRequests</code> is
    #             <code>2147483647</code>.</p>
    #
    class VirtualGatewayConnectionPool < Hearth::Union
      # <p>An object that represents a type of connection pool.</p>
      #
      class Http < VirtualGatewayConnectionPool
        def to_h
          { http: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Http #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that represents a type of connection pool.</p>
      #
      class Http2 < VirtualGatewayConnectionPool
        def to_h
          { http2: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Http2 #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that represents a type of connection pool. </p>
      #
      class Grpc < VirtualGatewayConnectionPool
        def to_h
          { grpc: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Grpc #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < VirtualGatewayConnectionPool
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents a virtual gateway returned by a describe operation.</p>
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual gateway resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The specifications of the virtual gateway.</p>
    #
    #   @return [VirtualGatewaySpec]
    #
    # @!attribute metadata
    #   <p>An object that represents metadata for a resource.</p>
    #
    #   @return [ResourceMetadata]
    #
    # @!attribute status
    #   <p>The current status of the virtual gateway.</p>
    #
    #   @return [VirtualGatewayStatus]
    #
    VirtualGatewayData = ::Struct.new(
      :mesh_name,
      :virtual_gateway_name,
      :spec,
      :metadata,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents an access log file.</p>
    #
    # @!attribute path
    #   <p>The file path to write access logs to. You can use <code>/dev/stdout</code> to send
    #            access logs to standard out and configure your Envoy container to use a log driver, such as
    #               <code>awslogs</code>, to export the access logs to a log storage service such as Amazon
    #            CloudWatch Logs. You can also specify a path in the Envoy container's file system to write
    #            the files to disk.</p>
    #
    #   @return [String]
    #
    VirtualGatewayFileAccessLog = ::Struct.new(
      :path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a type of connection pool.</p>
    #
    # @!attribute max_requests
    #   <p>Maximum number of inflight requests Envoy can concurrently support across hosts in
    #            upstream cluster.</p>
    #
    #   @return [Integer]
    #
    VirtualGatewayGrpcConnectionPool = ::Struct.new(
      :max_requests,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_requests ||= 0
      end
    end

    # <p>An object that represents the health check policy for a virtual gateway's
    #          listener.</p>
    #
    # @!attribute timeout_millis
    #   <p>The amount of time to wait when receiving a response from the health check, in
    #            milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interval_millis
    #   <p>The time period in milliseconds between each health check execution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute protocol
    #   <p>The protocol for the health check request. If you specify <code>grpc</code>, then your
    #            service must conform to the <a href="https://github.com/grpc/grpc/blob/master/doc/health-checking.md">GRPC Health
    #               Checking Protocol</a>.</p>
    #
    #   Enum, one of: ["http", "http2", "grpc"]
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The destination port for the health check request. This port must match the port defined
    #            in the <a>PortMapping</a> for the listener.</p>
    #
    #   @return [Integer]
    #
    # @!attribute path
    #   <p>The destination path for the health check request. This value is only used if the
    #            specified protocol is HTTP or HTTP/2. For any other protocol, this value is ignored.</p>
    #
    #   @return [String]
    #
    # @!attribute healthy_threshold
    #   <p>The number of consecutive successful health checks that must occur before declaring the
    #            listener healthy.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unhealthy_threshold
    #   <p>The number of consecutive failed health checks that must occur before declaring a
    #            virtual gateway unhealthy.</p>
    #
    #   @return [Integer]
    #
    VirtualGatewayHealthCheckPolicy = ::Struct.new(
      :timeout_millis,
      :interval_millis,
      :protocol,
      :port,
      :path,
      :healthy_threshold,
      :unhealthy_threshold,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
        self.healthy_threshold ||= 0
        self.unhealthy_threshold ||= 0
      end
    end

    # <p>An object that represents a type of connection pool.</p>
    #
    # @!attribute max_requests
    #   <p>Maximum number of inflight requests Envoy can concurrently support across hosts in
    #            upstream cluster.</p>
    #
    #   @return [Integer]
    #
    VirtualGatewayHttp2ConnectionPool = ::Struct.new(
      :max_requests,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_requests ||= 0
      end
    end

    # <p>An object that represents a type of connection pool.</p>
    #
    # @!attribute max_connections
    #   <p>Maximum number of outbound TCP connections Envoy can establish concurrently with all
    #            hosts in upstream cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_pending_requests
    #   <p>Number of overflowing requests after <code>max_connections</code> Envoy will queue to
    #            upstream cluster.</p>
    #
    #   @return [Integer]
    #
    VirtualGatewayHttpConnectionPool = ::Struct.new(
      :max_connections,
      :max_pending_requests,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_connections ||= 0
      end
    end

    # <p>An object that represents a listener for a virtual gateway.</p>
    #
    # @!attribute health_check
    #   <p>The health check information for the listener.</p>
    #
    #   @return [VirtualGatewayHealthCheckPolicy]
    #
    # @!attribute port_mapping
    #   <p>The port mapping information for the listener.</p>
    #
    #   @return [VirtualGatewayPortMapping]
    #
    # @!attribute tls
    #   <p>A reference to an object that represents the Transport Layer Security (TLS) properties for the listener.</p>
    #
    #   @return [VirtualGatewayListenerTls]
    #
    # @!attribute connection_pool
    #   <p>The connection pool information for the virtual gateway listener.</p>
    #
    #   @return [VirtualGatewayConnectionPool]
    #
    VirtualGatewayListener = ::Struct.new(
      :health_check,
      :port_mapping,
      :tls,
      :connection_pool,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the Transport Layer Security (TLS) properties for a listener.</p>
    #
    # @!attribute mode
    #   <p>Specify one of the following modes.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b/>STRICT – Listener only accepts connections with TLS
    #                  enabled. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b/>PERMISSIVE – Listener accepts connections with or
    #                  without TLS enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b/>DISABLED – Listener only accepts connections without
    #                  TLS. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["STRICT", "PERMISSIVE", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute validation
    #   <p>A reference to an object that represents a virtual gateway's listener's Transport Layer Security (TLS) validation
    #            context.</p>
    #
    #   @return [VirtualGatewayListenerTlsValidationContext]
    #
    # @!attribute certificate
    #   <p>An object that represents a Transport Layer Security (TLS) certificate.</p>
    #
    #   @return [VirtualGatewayListenerTlsCertificate]
    #
    VirtualGatewayListenerTls = ::Struct.new(
      :mode,
      :validation,
      :certificate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents an Certificate Manager certificate.</p>
    #
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) for the certificate. The certificate must meet specific requirements and you must have proxy authorization enabled. For more information, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html virtual-node-tls-prerequisites">Transport Layer Security (TLS)</a>.</p>
    #
    #   @return [String]
    #
    VirtualGatewayListenerTlsAcmCertificate = ::Struct.new(
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a listener's Transport Layer Security (TLS) certificate.</p>
    #
    class VirtualGatewayListenerTlsCertificate < Hearth::Union
      # <p>A reference to an object that represents an Certificate Manager certificate.</p>
      #
      class Acm < VirtualGatewayListenerTlsCertificate
        def to_h
          { acm: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Acm #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A reference to an object that represents a local file certificate.</p>
      #
      class File < VirtualGatewayListenerTlsCertificate
        def to_h
          { file: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::File #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A reference to an object that represents a virtual gateway's listener's Secret Discovery
      #          Service certificate.</p>
      #
      class Sds < VirtualGatewayListenerTlsCertificate
        def to_h
          { sds: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Sds #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < VirtualGatewayListenerTlsCertificate
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents a local file certificate.
    #          The certificate must meet specific requirements and you must have proxy authorization enabled. For more information, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html#virtual-node-tls-prerequisites">Transport Layer Security (TLS)</a>.</p>
    #
    # @!attribute certificate_chain
    #   <p>The certificate chain for the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute private_key
    #   <p>The private key for a certificate stored on the file system of the mesh endpoint that
    #            the proxy is running on.</p>
    #
    #   @return [String]
    #
    VirtualGatewayListenerTlsFileCertificate = ::Struct.new(
      :certificate_chain,
      :private_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VirtualGatewayListenerTlsMode
    #
    module VirtualGatewayListenerTlsMode
      # No documentation available.
      #
      STRICT = "STRICT"

      # No documentation available.
      #
      PERMISSIVE = "PERMISSIVE"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>An object that represents the virtual gateway's listener's Secret Discovery Service
    #          certificate.The proxy must be configured with a local SDS provider via a Unix Domain
    #          Socket. See App Mesh<a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html">TLS
    #             documentation</a> for more info. </p>
    #
    # @!attribute secret_name
    #   <p>A reference to an object that represents the name of the secret secret requested from
    #            the Secret Discovery Service provider representing Transport Layer Security (TLS) materials like a certificate or
    #            certificate chain.</p>
    #
    #   @return [String]
    #
    VirtualGatewayListenerTlsSdsCertificate = ::Struct.new(
      :secret_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a virtual gateway's listener's Transport Layer Security (TLS) validation
    #          context.</p>
    #
    # @!attribute member_trust
    #   <p>A reference to where to retrieve the trust chain when validating a peer’s Transport Layer Security (TLS)
    #            certificate.</p>
    #
    #   @return [VirtualGatewayListenerTlsValidationContextTrust]
    #
    # @!attribute subject_alternative_names
    #   <p>A reference to an object that represents the SANs for a virtual gateway listener's Transport Layer Security (TLS)
    #            validation context.</p>
    #
    #   @return [SubjectAlternativeNames]
    #
    VirtualGatewayListenerTlsValidationContext = ::Struct.new(
      :member_trust,
      :subject_alternative_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a virtual gateway's listener's Transport Layer Security (TLS) validation context
    #          trust.</p>
    #
    class VirtualGatewayListenerTlsValidationContextTrust < Hearth::Union
      # <p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>
      #
      class File < VirtualGatewayListenerTlsValidationContextTrust
        def to_h
          { file: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::File #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A reference to an object that represents a virtual gateway's listener's Transport Layer Security (TLS) Secret
      #          Discovery Service validation context trust.</p>
      #
      class Sds < VirtualGatewayListenerTlsValidationContextTrust
        def to_h
          { sds: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Sds #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < VirtualGatewayListenerTlsValidationContextTrust
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents logging information.</p>
    #
    # @!attribute access_log
    #   <p>The access log configuration.</p>
    #
    #   @return [VirtualGatewayAccessLog]
    #
    VirtualGatewayLogging = ::Struct.new(
      :access_log,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a port mapping.</p>
    #
    # @!attribute port
    #   <p>The port used for the port mapping. Specify one protocol.</p>
    #
    #   @return [Integer]
    #
    # @!attribute protocol
    #   <p>The protocol used for the port mapping.</p>
    #
    #   Enum, one of: ["http", "http2", "grpc"]
    #
    #   @return [String]
    #
    VirtualGatewayPortMapping = ::Struct.new(
      :port,
      :protocol,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # Includes enum constants for VirtualGatewayPortProtocol
    #
    module VirtualGatewayPortProtocol
      # No documentation available.
      #
      HTTP = "http"

      # No documentation available.
      #
      HTTP2 = "http2"

      # No documentation available.
      #
      GRPC = "grpc"
    end

    # <p>An object that represents a virtual gateway returned by a list operation.</p>
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the resource resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_gateway_name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) for the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #
    #   @return [Time]
    #
    VirtualGatewayRef = ::Struct.new(
      :mesh_name,
      :virtual_gateway_name,
      :mesh_owner,
      :resource_owner,
      :arn,
      :version,
      :created_at,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the specification of a service mesh resource.</p>
    #
    # @!attribute backend_defaults
    #   <p>A reference to an object that represents the defaults for backends.</p>
    #
    #   @return [VirtualGatewayBackendDefaults]
    #
    # @!attribute listeners
    #   <p>The listeners that the mesh endpoint is expected to receive inbound traffic from. You
    #            can specify one listener.</p>
    #
    #   @return [Array<VirtualGatewayListener>]
    #
    # @!attribute logging
    #   <p>An object that represents logging information.</p>
    #
    #   @return [VirtualGatewayLogging]
    #
    VirtualGatewaySpec = ::Struct.new(
      :backend_defaults,
      :listeners,
      :logging,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the status of the mesh resource.</p>
    #
    # @!attribute status
    #   <p>The current status.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE", "DELETED"]
    #
    #   @return [String]
    #
    VirtualGatewayStatus = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VirtualGatewayStatusCode
    #
    module VirtualGatewayStatusCode
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>An object that represents a Transport Layer Security (TLS) validation context.</p>
    #
    # @!attribute member_trust
    #   <p>A reference to where to retrieve the trust chain when validating a peer’s Transport Layer Security (TLS)
    #            certificate.</p>
    #
    #   @return [VirtualGatewayTlsValidationContextTrust]
    #
    # @!attribute subject_alternative_names
    #   <p>A reference to an object that represents the SANs for a virtual gateway's listener's
    #            Transport Layer Security (TLS) validation context.</p>
    #
    #   @return [SubjectAlternativeNames]
    #
    VirtualGatewayTlsValidationContext = ::Struct.new(
      :member_trust,
      :subject_alternative_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) validation context trust for an Certificate Manager
    #          certificate.</p>
    #
    # @!attribute certificate_authority_arns
    #   <p>One or more ACM Amazon Resource Name (ARN)s.</p>
    #
    #   @return [Array<String>]
    #
    VirtualGatewayTlsValidationContextAcmTrust = ::Struct.new(
      :certificate_authority_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>
    #
    # @!attribute certificate_chain
    #   <p>The certificate trust chain for a certificate stored on the file system of the virtual
    #            node that the proxy is running on.</p>
    #
    #   @return [String]
    #
    VirtualGatewayTlsValidationContextFileTrust = ::Struct.new(
      :certificate_chain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a virtual gateway's listener's Transport Layer Security (TLS) Secret Discovery Service
    #          validation context trust. The proxy must be configured with a local SDS provider via a Unix
    #          Domain Socket. See App Mesh
    #          <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html">TLS
    #             documentation</a> for more info.</p>
    #
    # @!attribute secret_name
    #   <p>A reference to an object that represents the name of the secret for a virtual gateway's
    #            Transport Layer Security (TLS) Secret Discovery Service validation context trust.</p>
    #
    #   @return [String]
    #
    VirtualGatewayTlsValidationContextSdsTrust = ::Struct.new(
      :secret_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) validation context trust.</p>
    #
    class VirtualGatewayTlsValidationContextTrust < Hearth::Union
      # <p>A reference to an object that represents a Transport Layer Security (TLS) validation context trust for an Certificate Manager certificate.</p>
      #
      class Acm < VirtualGatewayTlsValidationContextTrust
        def to_h
          { acm: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Acm #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>
      #
      class File < VirtualGatewayTlsValidationContextTrust
        def to_h
          { file: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::File #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A reference to an object that represents a virtual gateway's Transport Layer Security (TLS) Secret Discovery
      #          Service validation context trust.</p>
      #
      class Sds < VirtualGatewayTlsValidationContextTrust
        def to_h
          { sds: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Sds #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < VirtualGatewayTlsValidationContextTrust
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents the type of virtual node connection pool.</p>
    #          <p>Only one protocol is used at a time and should be the same protocol as the one chosen
    #          under port mapping.</p>
    #          <p>If not present the default value for <code>maxPendingRequests</code> is
    #             <code>2147483647</code>.</p>
    #          <p/>
    #
    class VirtualNodeConnectionPool < Hearth::Union
      # <p>An object that represents a type of connection pool.</p>
      #
      class Tcp < VirtualNodeConnectionPool
        def to_h
          { tcp: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Tcp #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that represents a type of connection pool.</p>
      #
      class Http < VirtualNodeConnectionPool
        def to_h
          { http: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Http #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that represents a type of connection pool.</p>
      #
      class Http2 < VirtualNodeConnectionPool
        def to_h
          { http2: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Http2 #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that represents a type of connection pool.</p>
      #
      class Grpc < VirtualNodeConnectionPool
        def to_h
          { grpc: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Grpc #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < VirtualNodeConnectionPool
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents a virtual node returned by a describe operation.</p>
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual node resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_node_name
    #   <p>The name of the virtual node.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The specifications of the virtual node.</p>
    #
    #   @return [VirtualNodeSpec]
    #
    # @!attribute metadata
    #   <p>The associated metadata for the virtual node.</p>
    #
    #   @return [ResourceMetadata]
    #
    # @!attribute status
    #   <p>The current status for the virtual node.</p>
    #
    #   @return [VirtualNodeStatus]
    #
    VirtualNodeData = ::Struct.new(
      :mesh_name,
      :virtual_node_name,
      :spec,
      :metadata,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a type of connection pool.</p>
    #
    # @!attribute max_requests
    #   <p>Maximum number of inflight requests Envoy can concurrently support across hosts in
    #            upstream cluster.</p>
    #
    #   @return [Integer]
    #
    VirtualNodeGrpcConnectionPool = ::Struct.new(
      :max_requests,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_requests ||= 0
      end
    end

    # <p>An object that represents a type of connection pool.</p>
    #
    # @!attribute max_requests
    #   <p>Maximum number of inflight requests Envoy can concurrently support across hosts in
    #            upstream cluster.</p>
    #
    #   @return [Integer]
    #
    VirtualNodeHttp2ConnectionPool = ::Struct.new(
      :max_requests,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_requests ||= 0
      end
    end

    # <p>An object that represents a type of connection pool.</p>
    #
    # @!attribute max_connections
    #   <p>Maximum number of outbound TCP connections Envoy can establish concurrently with all
    #            hosts in upstream cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_pending_requests
    #   <p>Number of overflowing requests after <code>max_connections</code> Envoy will queue to
    #            upstream cluster.</p>
    #
    #   @return [Integer]
    #
    VirtualNodeHttpConnectionPool = ::Struct.new(
      :max_connections,
      :max_pending_requests,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_connections ||= 0
      end
    end

    # <p>An object that represents a virtual node returned by a list operation.</p>
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual node resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_node_name
    #   <p>The name of the virtual node.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) for the virtual node.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #
    #   @return [Time]
    #
    VirtualNodeRef = ::Struct.new(
      :mesh_name,
      :virtual_node_name,
      :mesh_owner,
      :resource_owner,
      :arn,
      :version,
      :created_at,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a virtual node service provider.</p>
    #
    # @!attribute virtual_node_name
    #   <p>The name of the virtual node that is acting as a service provider.</p>
    #
    #   @return [String]
    #
    VirtualNodeServiceProvider = ::Struct.new(
      :virtual_node_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the specification of a virtual node.</p>
    #
    # @!attribute service_discovery
    #   <p>The service discovery information for the virtual node. If your virtual node does not
    #            expect ingress traffic, you can omit this parameter. If you specify a
    #            <code>listener</code>, then you must specify service discovery information.</p>
    #
    #   @return [ServiceDiscovery]
    #
    # @!attribute listeners
    #   <p>The listener that the virtual node is expected to receive inbound traffic from. You can
    #            specify one listener.</p>
    #
    #   @return [Array<Listener>]
    #
    # @!attribute backends
    #   <p>The backends that the virtual node is expected to send outbound traffic to.</p>
    #
    #   @return [Array<Backend>]
    #
    # @!attribute backend_defaults
    #   <p>A reference to an object that represents the defaults for backends.</p>
    #
    #   @return [BackendDefaults]
    #
    # @!attribute logging
    #   <p>The inbound and outbound access logging information for the virtual node.</p>
    #
    #   @return [Logging]
    #
    VirtualNodeSpec = ::Struct.new(
      :service_discovery,
      :listeners,
      :backends,
      :backend_defaults,
      :logging,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the current status of the virtual node.</p>
    #
    # @!attribute status
    #   <p>The current status of the virtual node.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE", "DELETED"]
    #
    #   @return [String]
    #
    VirtualNodeStatus = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VirtualNodeStatusCode
    #
    module VirtualNodeStatusCode
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>An object that represents a type of connection pool.</p>
    #
    # @!attribute max_connections
    #   <p>Maximum number of outbound TCP connections Envoy can establish concurrently with all
    #            hosts in upstream cluster.</p>
    #
    #   @return [Integer]
    #
    VirtualNodeTcpConnectionPool = ::Struct.new(
      :max_connections,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_connections ||= 0
      end
    end

    # <p>An object that represents a virtual router returned by a describe operation.</p>
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual router resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The specifications of the virtual router.</p>
    #
    #   @return [VirtualRouterSpec]
    #
    # @!attribute metadata
    #   <p>The associated metadata for the virtual router.</p>
    #
    #   @return [ResourceMetadata]
    #
    # @!attribute status
    #   <p>The current status of the virtual router.</p>
    #
    #   @return [VirtualRouterStatus]
    #
    VirtualRouterData = ::Struct.new(
      :mesh_name,
      :virtual_router_name,
      :spec,
      :metadata,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a virtual router listener.</p>
    #
    # @!attribute port_mapping
    #   <p>An object that represents a port mapping.</p>
    #
    #   @return [PortMapping]
    #
    VirtualRouterListener = ::Struct.new(
      :port_mapping,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a virtual router returned by a list operation.</p>
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual router resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) for the virtual router.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #
    #   @return [Time]
    #
    VirtualRouterRef = ::Struct.new(
      :mesh_name,
      :virtual_router_name,
      :mesh_owner,
      :resource_owner,
      :arn,
      :version,
      :created_at,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a virtual node service provider.</p>
    #
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router that is acting as a service provider.</p>
    #
    #   @return [String]
    #
    VirtualRouterServiceProvider = ::Struct.new(
      :virtual_router_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the specification of a virtual router.</p>
    #
    # @!attribute listeners
    #   <p>The listeners that the virtual router is expected to receive inbound traffic from. You
    #            can specify one listener.</p>
    #
    #   @return [Array<VirtualRouterListener>]
    #
    VirtualRouterSpec = ::Struct.new(
      :listeners,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the status of a virtual router. </p>
    #
    # @!attribute status
    #   <p>The current status of the virtual router.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE", "DELETED"]
    #
    #   @return [String]
    #
    VirtualRouterStatus = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VirtualRouterStatusCode
    #
    module VirtualRouterStatusCode
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>An object that represents a virtual service backend for a virtual node.</p>
    #
    # @!attribute virtual_service_name
    #   <p>The name of the virtual service that is acting as a virtual node backend.</p>
    #
    #   @return [String]
    #
    # @!attribute client_policy
    #   <p>A reference to an object that represents the client policy for a backend.</p>
    #
    #   @return [ClientPolicy]
    #
    VirtualServiceBackend = ::Struct.new(
      :virtual_service_name,
      :client_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a virtual service returned by a describe operation.</p>
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual service resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_service_name
    #   <p>The name of the virtual service.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The specifications of the virtual service.</p>
    #
    #   @return [VirtualServiceSpec]
    #
    # @!attribute metadata
    #   <p>An object that represents metadata for a resource.</p>
    #
    #   @return [ResourceMetadata]
    #
    # @!attribute status
    #   <p>The current status of the virtual service.</p>
    #
    #   @return [VirtualServiceStatus]
    #
    VirtualServiceData = ::Struct.new(
      :mesh_name,
      :virtual_service_name,
      :spec,
      :metadata,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the provider for a virtual service.</p>
    #
    class VirtualServiceProvider < Hearth::Union
      # <p>The virtual node associated with a virtual service.</p>
      #
      class VirtualNode < VirtualServiceProvider
        def to_h
          { virtual_node: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::VirtualNode #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The virtual router associated with a virtual service.</p>
      #
      class VirtualRouter < VirtualServiceProvider
        def to_h
          { virtual_router: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::VirtualRouter #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < VirtualServiceProvider
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppMesh::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An object that represents a virtual service returned by a list operation.</p>
    #
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual service resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_service_name
    #   <p>The name of the virtual service.</p>
    #
    #   @return [String]
    #
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) for the virtual service.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #
    #   @return [Time]
    #
    VirtualServiceRef = ::Struct.new(
      :mesh_name,
      :virtual_service_name,
      :mesh_owner,
      :resource_owner,
      :arn,
      :version,
      :created_at,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the specification of a virtual service.</p>
    #
    # @!attribute provider
    #   <p>The App Mesh object that is acting as the provider for a virtual service. You
    #            can specify a single virtual node or virtual router.</p>
    #
    #   @return [VirtualServiceProvider]
    #
    VirtualServiceSpec = ::Struct.new(
      :provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the status of a virtual service.</p>
    #
    # @!attribute status
    #   <p>The current status of the virtual service.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE", "DELETED"]
    #
    #   @return [String]
    #
    VirtualServiceStatus = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VirtualServiceStatusCode
    #
    module VirtualServiceStatusCode
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>An object that represents a target and its relative weight. Traffic is distributed
    #          across targets according to their relative weight. For example, a weighted target with a
    #          relative weight of 50 receives five times as much traffic as one with a relative weight of
    #          10. The total weight for all targets combined must be less than or equal to 100.</p>
    #
    # @!attribute virtual_node
    #   <p>The virtual node to associate with the weighted target.</p>
    #
    #   @return [String]
    #
    # @!attribute weight
    #   <p>The relative weight of the weighted target.</p>
    #
    #   @return [Integer]
    #
    WeightedTarget = ::Struct.new(
      :virtual_node,
      :weight,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.weight ||= 0
      end
    end

  end
end
