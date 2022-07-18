# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::AppMesh
  module Validators

    class AccessLog
      def self.validate!(input, context:)
        case input
        when Types::AccessLog::File
          FileAccessLog.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::AccessLog, got #{input.class}."
        end
      end

      class File
        def self.validate!(input, context:)
          Validators::FileAccessLog.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class AwsCloudMapInstanceAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudMapInstanceAttribute, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsCloudMapInstanceAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AwsCloudMapInstanceAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsCloudMapServiceDiscovery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudMapServiceDiscovery, context: context)
        Hearth::Validator.validate!(input[:namespace_name], ::String, context: "#{context}[:namespace_name]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        AwsCloudMapInstanceAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:ip_preference], ::String, context: "#{context}[:ip_preference]")
      end
    end

    class Backend
      def self.validate!(input, context:)
        case input
        when Types::Backend::VirtualService
          VirtualServiceBackend.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::Backend, got #{input.class}."
        end
      end

      class VirtualService
        def self.validate!(input, context:)
          Validators::VirtualServiceBackend.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class BackendDefaults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackendDefaults, context: context)
        ClientPolicy.validate!(input[:client_policy], context: "#{context}[:client_policy]") unless input[:client_policy].nil?
      end
    end

    class Backends
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Backend.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CertificateAuthorityArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ClientPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientPolicy, context: context)
        ClientPolicyTls.validate!(input[:tls], context: "#{context}[:tls]") unless input[:tls].nil?
      end
    end

    class ClientPolicyTls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientPolicyTls, context: context)
        Hearth::Validator.validate!(input[:enforce], ::TrueClass, ::FalseClass, context: "#{context}[:enforce]")
        PortSet.validate!(input[:ports], context: "#{context}[:ports]") unless input[:ports].nil?
        ClientTlsCertificate.validate!(input[:certificate], context: "#{context}[:certificate]") unless input[:certificate].nil?
        TlsValidationContext.validate!(input[:validation], context: "#{context}[:validation]") unless input[:validation].nil?
      end
    end

    class ClientTlsCertificate
      def self.validate!(input, context:)
        case input
        when Types::ClientTlsCertificate::File
          ListenerTlsFileCertificate.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ClientTlsCertificate::Sds
          ListenerTlsSdsCertificate.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ClientTlsCertificate, got #{input.class}."
        end
      end

      class File
        def self.validate!(input, context:)
          Validators::ListenerTlsFileCertificate.validate!(input, context: context) unless input.nil?
        end
      end

      class Sds
        def self.validate!(input, context:)
          Validators::ListenerTlsSdsCertificate.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateGatewayRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGatewayRouteInput, context: context)
        Hearth::Validator.validate!(input[:gateway_route_name], ::String, context: "#{context}[:gateway_route_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_gateway_name], ::String, context: "#{context}[:virtual_gateway_name]")
        GatewayRouteSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class CreateGatewayRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGatewayRouteOutput, context: context)
        GatewayRouteData.validate!(input[:gateway_route], context: "#{context}[:gateway_route]") unless input[:gateway_route].nil?
      end
    end

    class CreateMeshInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMeshInput, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        MeshSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateMeshOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMeshOutput, context: context)
        MeshData.validate!(input[:mesh], context: "#{context}[:mesh]") unless input[:mesh].nil?
      end
    end

    class CreateRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRouteInput, context: context)
        Hearth::Validator.validate!(input[:route_name], ::String, context: "#{context}[:route_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_router_name], ::String, context: "#{context}[:virtual_router_name]")
        RouteSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class CreateRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRouteOutput, context: context)
        RouteData.validate!(input[:route], context: "#{context}[:route]") unless input[:route].nil?
      end
    end

    class CreateVirtualGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVirtualGatewayInput, context: context)
        Hearth::Validator.validate!(input[:virtual_gateway_name], ::String, context: "#{context}[:virtual_gateway_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        VirtualGatewaySpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class CreateVirtualGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVirtualGatewayOutput, context: context)
        VirtualGatewayData.validate!(input[:virtual_gateway], context: "#{context}[:virtual_gateway]") unless input[:virtual_gateway].nil?
      end
    end

    class CreateVirtualNodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVirtualNodeInput, context: context)
        Hearth::Validator.validate!(input[:virtual_node_name], ::String, context: "#{context}[:virtual_node_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        VirtualNodeSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class CreateVirtualNodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVirtualNodeOutput, context: context)
        VirtualNodeData.validate!(input[:virtual_node], context: "#{context}[:virtual_node]") unless input[:virtual_node].nil?
      end
    end

    class CreateVirtualRouterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVirtualRouterInput, context: context)
        Hearth::Validator.validate!(input[:virtual_router_name], ::String, context: "#{context}[:virtual_router_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        VirtualRouterSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class CreateVirtualRouterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVirtualRouterOutput, context: context)
        VirtualRouterData.validate!(input[:virtual_router], context: "#{context}[:virtual_router]") unless input[:virtual_router].nil?
      end
    end

    class CreateVirtualServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVirtualServiceInput, context: context)
        Hearth::Validator.validate!(input[:virtual_service_name], ::String, context: "#{context}[:virtual_service_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        VirtualServiceSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class CreateVirtualServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVirtualServiceOutput, context: context)
        VirtualServiceData.validate!(input[:virtual_service], context: "#{context}[:virtual_service]") unless input[:virtual_service].nil?
      end
    end

    class DeleteGatewayRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGatewayRouteInput, context: context)
        Hearth::Validator.validate!(input[:gateway_route_name], ::String, context: "#{context}[:gateway_route_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_gateway_name], ::String, context: "#{context}[:virtual_gateway_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class DeleteGatewayRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGatewayRouteOutput, context: context)
        GatewayRouteData.validate!(input[:gateway_route], context: "#{context}[:gateway_route]") unless input[:gateway_route].nil?
      end
    end

    class DeleteMeshInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMeshInput, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
      end
    end

    class DeleteMeshOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMeshOutput, context: context)
        MeshData.validate!(input[:mesh], context: "#{context}[:mesh]") unless input[:mesh].nil?
      end
    end

    class DeleteRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteInput, context: context)
        Hearth::Validator.validate!(input[:route_name], ::String, context: "#{context}[:route_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_router_name], ::String, context: "#{context}[:virtual_router_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class DeleteRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteOutput, context: context)
        RouteData.validate!(input[:route], context: "#{context}[:route]") unless input[:route].nil?
      end
    end

    class DeleteVirtualGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVirtualGatewayInput, context: context)
        Hearth::Validator.validate!(input[:virtual_gateway_name], ::String, context: "#{context}[:virtual_gateway_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class DeleteVirtualGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVirtualGatewayOutput, context: context)
        VirtualGatewayData.validate!(input[:virtual_gateway], context: "#{context}[:virtual_gateway]") unless input[:virtual_gateway].nil?
      end
    end

    class DeleteVirtualNodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVirtualNodeInput, context: context)
        Hearth::Validator.validate!(input[:virtual_node_name], ::String, context: "#{context}[:virtual_node_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class DeleteVirtualNodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVirtualNodeOutput, context: context)
        VirtualNodeData.validate!(input[:virtual_node], context: "#{context}[:virtual_node]") unless input[:virtual_node].nil?
      end
    end

    class DeleteVirtualRouterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVirtualRouterInput, context: context)
        Hearth::Validator.validate!(input[:virtual_router_name], ::String, context: "#{context}[:virtual_router_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class DeleteVirtualRouterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVirtualRouterOutput, context: context)
        VirtualRouterData.validate!(input[:virtual_router], context: "#{context}[:virtual_router]") unless input[:virtual_router].nil?
      end
    end

    class DeleteVirtualServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVirtualServiceInput, context: context)
        Hearth::Validator.validate!(input[:virtual_service_name], ::String, context: "#{context}[:virtual_service_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class DeleteVirtualServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVirtualServiceOutput, context: context)
        VirtualServiceData.validate!(input[:virtual_service], context: "#{context}[:virtual_service]") unless input[:virtual_service].nil?
      end
    end

    class DescribeGatewayRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGatewayRouteInput, context: context)
        Hearth::Validator.validate!(input[:gateway_route_name], ::String, context: "#{context}[:gateway_route_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_gateway_name], ::String, context: "#{context}[:virtual_gateway_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class DescribeGatewayRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGatewayRouteOutput, context: context)
        GatewayRouteData.validate!(input[:gateway_route], context: "#{context}[:gateway_route]") unless input[:gateway_route].nil?
      end
    end

    class DescribeMeshInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMeshInput, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class DescribeMeshOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMeshOutput, context: context)
        MeshData.validate!(input[:mesh], context: "#{context}[:mesh]") unless input[:mesh].nil?
      end
    end

    class DescribeRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRouteInput, context: context)
        Hearth::Validator.validate!(input[:route_name], ::String, context: "#{context}[:route_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
        Hearth::Validator.validate!(input[:virtual_router_name], ::String, context: "#{context}[:virtual_router_name]")
      end
    end

    class DescribeRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRouteOutput, context: context)
        RouteData.validate!(input[:route], context: "#{context}[:route]") unless input[:route].nil?
      end
    end

    class DescribeVirtualGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVirtualGatewayInput, context: context)
        Hearth::Validator.validate!(input[:virtual_gateway_name], ::String, context: "#{context}[:virtual_gateway_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class DescribeVirtualGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVirtualGatewayOutput, context: context)
        VirtualGatewayData.validate!(input[:virtual_gateway], context: "#{context}[:virtual_gateway]") unless input[:virtual_gateway].nil?
      end
    end

    class DescribeVirtualNodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVirtualNodeInput, context: context)
        Hearth::Validator.validate!(input[:virtual_node_name], ::String, context: "#{context}[:virtual_node_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class DescribeVirtualNodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVirtualNodeOutput, context: context)
        VirtualNodeData.validate!(input[:virtual_node], context: "#{context}[:virtual_node]") unless input[:virtual_node].nil?
      end
    end

    class DescribeVirtualRouterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVirtualRouterInput, context: context)
        Hearth::Validator.validate!(input[:virtual_router_name], ::String, context: "#{context}[:virtual_router_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class DescribeVirtualRouterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVirtualRouterOutput, context: context)
        VirtualRouterData.validate!(input[:virtual_router], context: "#{context}[:virtual_router]") unless input[:virtual_router].nil?
      end
    end

    class DescribeVirtualServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVirtualServiceInput, context: context)
        Hearth::Validator.validate!(input[:virtual_service_name], ::String, context: "#{context}[:virtual_service_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class DescribeVirtualServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVirtualServiceOutput, context: context)
        VirtualServiceData.validate!(input[:virtual_service], context: "#{context}[:virtual_service]") unless input[:virtual_service].nil?
      end
    end

    class DnsServiceDiscovery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DnsServiceDiscovery, context: context)
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:response_type], ::String, context: "#{context}[:response_type]")
        Hearth::Validator.validate!(input[:ip_preference], ::String, context: "#{context}[:ip_preference]")
      end
    end

    class Duration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Duration, context: context)
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class EgressFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EgressFilter, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class FileAccessLog
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileAccessLog, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GatewayRouteData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayRouteData, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:gateway_route_name], ::String, context: "#{context}[:gateway_route_name]")
        Hearth::Validator.validate!(input[:virtual_gateway_name], ::String, context: "#{context}[:virtual_gateway_name]")
        GatewayRouteSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        ResourceMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        GatewayRouteStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class GatewayRouteHostnameMatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayRouteHostnameMatch, context: context)
        Hearth::Validator.validate!(input[:exact], ::String, context: "#{context}[:exact]")
        Hearth::Validator.validate!(input[:suffix], ::String, context: "#{context}[:suffix]")
      end
    end

    class GatewayRouteHostnameRewrite
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayRouteHostnameRewrite, context: context)
        Hearth::Validator.validate!(input[:default_target_hostname], ::String, context: "#{context}[:default_target_hostname]")
      end
    end

    class GatewayRouteList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GatewayRouteRef.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GatewayRouteRef
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayRouteRef, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:gateway_route_name], ::String, context: "#{context}[:gateway_route_name]")
        Hearth::Validator.validate!(input[:virtual_gateway_name], ::String, context: "#{context}[:virtual_gateway_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class GatewayRouteSpec
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayRouteSpec, context: context)
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        HttpGatewayRoute.validate!(input[:http_route], context: "#{context}[:http_route]") unless input[:http_route].nil?
        HttpGatewayRoute.validate!(input[:http2_route], context: "#{context}[:http2_route]") unless input[:http2_route].nil?
        GrpcGatewayRoute.validate!(input[:grpc_route], context: "#{context}[:grpc_route]") unless input[:grpc_route].nil?
      end
    end

    class GatewayRouteStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayRouteStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class GatewayRouteTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayRouteTarget, context: context)
        GatewayRouteVirtualService.validate!(input[:virtual_service], context: "#{context}[:virtual_service]") unless input[:virtual_service].nil?
      end
    end

    class GatewayRouteVirtualService
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayRouteVirtualService, context: context)
        Hearth::Validator.validate!(input[:virtual_service_name], ::String, context: "#{context}[:virtual_service_name]")
      end
    end

    class GrpcGatewayRoute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrpcGatewayRoute, context: context)
        GrpcGatewayRouteMatch.validate!(input[:match], context: "#{context}[:match]") unless input[:match].nil?
        GrpcGatewayRouteAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
      end
    end

    class GrpcGatewayRouteAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrpcGatewayRouteAction, context: context)
        GatewayRouteTarget.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        GrpcGatewayRouteRewrite.validate!(input[:rewrite], context: "#{context}[:rewrite]") unless input[:rewrite].nil?
      end
    end

    class GrpcGatewayRouteMatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrpcGatewayRouteMatch, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        GatewayRouteHostnameMatch.validate!(input[:hostname], context: "#{context}[:hostname]") unless input[:hostname].nil?
        GrpcGatewayRouteMetadataList.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
      end
    end

    class GrpcGatewayRouteMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrpcGatewayRouteMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:invert], ::TrueClass, ::FalseClass, context: "#{context}[:invert]")
        GrpcMetadataMatchMethod.validate!(input[:match], context: "#{context}[:match]") unless input[:match].nil?
      end
    end

    class GrpcGatewayRouteMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GrpcGatewayRouteMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GrpcGatewayRouteRewrite
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrpcGatewayRouteRewrite, context: context)
        GatewayRouteHostnameRewrite.validate!(input[:hostname], context: "#{context}[:hostname]") unless input[:hostname].nil?
      end
    end

    class GrpcMetadataMatchMethod
      def self.validate!(input, context:)
        case input
        when Types::GrpcMetadataMatchMethod::Exact
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::GrpcMetadataMatchMethod::Regex
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::GrpcMetadataMatchMethod::Range
          MatchRange.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::GrpcMetadataMatchMethod::Prefix
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::GrpcMetadataMatchMethod::Suffix
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::GrpcMetadataMatchMethod, got #{input.class}."
        end
      end

      class Exact
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Regex
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Range
        def self.validate!(input, context:)
          Validators::MatchRange.validate!(input, context: context) unless input.nil?
        end
      end

      class Prefix
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Suffix
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class GrpcRetryPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrpcRetryPolicy, context: context)
        Duration.validate!(input[:per_retry_timeout], context: "#{context}[:per_retry_timeout]") unless input[:per_retry_timeout].nil?
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
        HttpRetryPolicyEvents.validate!(input[:http_retry_events], context: "#{context}[:http_retry_events]") unless input[:http_retry_events].nil?
        TcpRetryPolicyEvents.validate!(input[:tcp_retry_events], context: "#{context}[:tcp_retry_events]") unless input[:tcp_retry_events].nil?
        GrpcRetryPolicyEvents.validate!(input[:grpc_retry_events], context: "#{context}[:grpc_retry_events]") unless input[:grpc_retry_events].nil?
      end
    end

    class GrpcRetryPolicyEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GrpcRoute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrpcRoute, context: context)
        GrpcRouteAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        GrpcRouteMatch.validate!(input[:match], context: "#{context}[:match]") unless input[:match].nil?
        GrpcRetryPolicy.validate!(input[:retry_policy], context: "#{context}[:retry_policy]") unless input[:retry_policy].nil?
        GrpcTimeout.validate!(input[:timeout], context: "#{context}[:timeout]") unless input[:timeout].nil?
      end
    end

    class GrpcRouteAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrpcRouteAction, context: context)
        WeightedTargets.validate!(input[:weighted_targets], context: "#{context}[:weighted_targets]") unless input[:weighted_targets].nil?
      end
    end

    class GrpcRouteMatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrpcRouteMatch, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:method_name], ::String, context: "#{context}[:method_name]")
        GrpcRouteMetadataList.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
      end
    end

    class GrpcRouteMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrpcRouteMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:invert], ::TrueClass, ::FalseClass, context: "#{context}[:invert]")
        GrpcRouteMetadataMatchMethod.validate!(input[:match], context: "#{context}[:match]") unless input[:match].nil?
      end
    end

    class GrpcRouteMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GrpcRouteMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GrpcRouteMetadataMatchMethod
      def self.validate!(input, context:)
        case input
        when Types::GrpcRouteMetadataMatchMethod::Exact
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::GrpcRouteMetadataMatchMethod::Regex
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::GrpcRouteMetadataMatchMethod::Range
          MatchRange.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::GrpcRouteMetadataMatchMethod::Prefix
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::GrpcRouteMetadataMatchMethod::Suffix
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::GrpcRouteMetadataMatchMethod, got #{input.class}."
        end
      end

      class Exact
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Regex
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Range
        def self.validate!(input, context:)
          Validators::MatchRange.validate!(input, context: context) unless input.nil?
        end
      end

      class Prefix
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Suffix
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class GrpcTimeout
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrpcTimeout, context: context)
        Duration.validate!(input[:per_request], context: "#{context}[:per_request]") unless input[:per_request].nil?
        Duration.validate!(input[:idle], context: "#{context}[:idle]") unless input[:idle].nil?
      end
    end

    class HeaderMatchMethod
      def self.validate!(input, context:)
        case input
        when Types::HeaderMatchMethod::Exact
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::HeaderMatchMethod::Regex
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::HeaderMatchMethod::Range
          MatchRange.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::HeaderMatchMethod::Prefix
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::HeaderMatchMethod::Suffix
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::HeaderMatchMethod, got #{input.class}."
        end
      end

      class Exact
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Regex
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Range
        def self.validate!(input, context:)
          Validators::MatchRange.validate!(input, context: context) unless input.nil?
        end
      end

      class Prefix
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Suffix
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class HealthCheckPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HealthCheckPolicy, context: context)
        Hearth::Validator.validate!(input[:timeout_millis], ::Integer, context: "#{context}[:timeout_millis]")
        Hearth::Validator.validate!(input[:interval_millis], ::Integer, context: "#{context}[:interval_millis]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:healthy_threshold], ::Integer, context: "#{context}[:healthy_threshold]")
        Hearth::Validator.validate!(input[:unhealthy_threshold], ::Integer, context: "#{context}[:unhealthy_threshold]")
      end
    end

    class HttpGatewayRoute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpGatewayRoute, context: context)
        HttpGatewayRouteMatch.validate!(input[:match], context: "#{context}[:match]") unless input[:match].nil?
        HttpGatewayRouteAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
      end
    end

    class HttpGatewayRouteAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpGatewayRouteAction, context: context)
        GatewayRouteTarget.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        HttpGatewayRouteRewrite.validate!(input[:rewrite], context: "#{context}[:rewrite]") unless input[:rewrite].nil?
      end
    end

    class HttpGatewayRouteHeader
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpGatewayRouteHeader, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:invert], ::TrueClass, ::FalseClass, context: "#{context}[:invert]")
        HeaderMatchMethod.validate!(input[:match], context: "#{context}[:match]") unless input[:match].nil?
      end
    end

    class HttpGatewayRouteHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HttpGatewayRouteHeader.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HttpGatewayRouteMatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpGatewayRouteMatch, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        HttpPathMatch.validate!(input[:path], context: "#{context}[:path]") unless input[:path].nil?
        HttpQueryParameters.validate!(input[:query_parameters], context: "#{context}[:query_parameters]") unless input[:query_parameters].nil?
        Hearth::Validator.validate!(input[:member_method], ::String, context: "#{context}[:member_method]")
        GatewayRouteHostnameMatch.validate!(input[:hostname], context: "#{context}[:hostname]") unless input[:hostname].nil?
        HttpGatewayRouteHeaders.validate!(input[:headers], context: "#{context}[:headers]") unless input[:headers].nil?
      end
    end

    class HttpGatewayRoutePathRewrite
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpGatewayRoutePathRewrite, context: context)
        Hearth::Validator.validate!(input[:exact], ::String, context: "#{context}[:exact]")
      end
    end

    class HttpGatewayRoutePrefixRewrite
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpGatewayRoutePrefixRewrite, context: context)
        Hearth::Validator.validate!(input[:default_prefix], ::String, context: "#{context}[:default_prefix]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class HttpGatewayRouteRewrite
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpGatewayRouteRewrite, context: context)
        HttpGatewayRoutePrefixRewrite.validate!(input[:prefix], context: "#{context}[:prefix]") unless input[:prefix].nil?
        HttpGatewayRoutePathRewrite.validate!(input[:path], context: "#{context}[:path]") unless input[:path].nil?
        GatewayRouteHostnameRewrite.validate!(input[:hostname], context: "#{context}[:hostname]") unless input[:hostname].nil?
      end
    end

    class HttpPathMatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpPathMatch, context: context)
        Hearth::Validator.validate!(input[:exact], ::String, context: "#{context}[:exact]")
        Hearth::Validator.validate!(input[:regex], ::String, context: "#{context}[:regex]")
      end
    end

    class HttpQueryParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpQueryParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        QueryParameterMatch.validate!(input[:match], context: "#{context}[:match]") unless input[:match].nil?
      end
    end

    class HttpQueryParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HttpQueryParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HttpRetryPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpRetryPolicy, context: context)
        Duration.validate!(input[:per_retry_timeout], context: "#{context}[:per_retry_timeout]") unless input[:per_retry_timeout].nil?
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
        HttpRetryPolicyEvents.validate!(input[:http_retry_events], context: "#{context}[:http_retry_events]") unless input[:http_retry_events].nil?
        TcpRetryPolicyEvents.validate!(input[:tcp_retry_events], context: "#{context}[:tcp_retry_events]") unless input[:tcp_retry_events].nil?
      end
    end

    class HttpRetryPolicyEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HttpRoute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpRoute, context: context)
        HttpRouteMatch.validate!(input[:match], context: "#{context}[:match]") unless input[:match].nil?
        HttpRouteAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        HttpRetryPolicy.validate!(input[:retry_policy], context: "#{context}[:retry_policy]") unless input[:retry_policy].nil?
        HttpTimeout.validate!(input[:timeout], context: "#{context}[:timeout]") unless input[:timeout].nil?
      end
    end

    class HttpRouteAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpRouteAction, context: context)
        WeightedTargets.validate!(input[:weighted_targets], context: "#{context}[:weighted_targets]") unless input[:weighted_targets].nil?
      end
    end

    class HttpRouteHeader
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpRouteHeader, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:invert], ::TrueClass, ::FalseClass, context: "#{context}[:invert]")
        HeaderMatchMethod.validate!(input[:match], context: "#{context}[:match]") unless input[:match].nil?
      end
    end

    class HttpRouteHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HttpRouteHeader.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HttpRouteMatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpRouteMatch, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        HttpPathMatch.validate!(input[:path], context: "#{context}[:path]") unless input[:path].nil?
        HttpQueryParameters.validate!(input[:query_parameters], context: "#{context}[:query_parameters]") unless input[:query_parameters].nil?
        Hearth::Validator.validate!(input[:member_method], ::String, context: "#{context}[:member_method]")
        Hearth::Validator.validate!(input[:scheme], ::String, context: "#{context}[:scheme]")
        HttpRouteHeaders.validate!(input[:headers], context: "#{context}[:headers]") unless input[:headers].nil?
      end
    end

    class HttpTimeout
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpTimeout, context: context)
        Duration.validate!(input[:per_request], context: "#{context}[:per_request]") unless input[:per_request].nil?
        Duration.validate!(input[:idle], context: "#{context}[:idle]") unless input[:idle].nil?
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListGatewayRoutesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGatewayRoutesInput, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_gateway_name], ::String, context: "#{context}[:virtual_gateway_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class ListGatewayRoutesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGatewayRoutesOutput, context: context)
        GatewayRouteList.validate!(input[:gateway_routes], context: "#{context}[:gateway_routes]") unless input[:gateway_routes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMeshesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMeshesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListMeshesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMeshesOutput, context: context)
        MeshList.validate!(input[:meshes], context: "#{context}[:meshes]") unless input[:meshes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRoutesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoutesInput, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_router_name], ::String, context: "#{context}[:virtual_router_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class ListRoutesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoutesOutput, context: context)
        RouteList.validate!(input[:routes], context: "#{context}[:routes]") unless input[:routes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListVirtualGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualGatewaysInput, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class ListVirtualGatewaysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualGatewaysOutput, context: context)
        VirtualGatewayList.validate!(input[:virtual_gateways], context: "#{context}[:virtual_gateways]") unless input[:virtual_gateways].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListVirtualNodesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualNodesInput, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class ListVirtualNodesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualNodesOutput, context: context)
        VirtualNodeList.validate!(input[:virtual_nodes], context: "#{context}[:virtual_nodes]") unless input[:virtual_nodes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListVirtualRoutersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualRoutersInput, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class ListVirtualRoutersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualRoutersOutput, context: context)
        VirtualRouterList.validate!(input[:virtual_routers], context: "#{context}[:virtual_routers]") unless input[:virtual_routers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListVirtualServicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualServicesInput, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class ListVirtualServicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualServicesOutput, context: context)
        VirtualServiceList.validate!(input[:virtual_services], context: "#{context}[:virtual_services]") unless input[:virtual_services].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Listener
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Listener, context: context)
        PortMapping.validate!(input[:port_mapping], context: "#{context}[:port_mapping]") unless input[:port_mapping].nil?
        ListenerTls.validate!(input[:tls], context: "#{context}[:tls]") unless input[:tls].nil?
        HealthCheckPolicy.validate!(input[:health_check], context: "#{context}[:health_check]") unless input[:health_check].nil?
        ListenerTimeout.validate!(input[:timeout], context: "#{context}[:timeout]") unless input[:timeout].nil?
        OutlierDetection.validate!(input[:outlier_detection], context: "#{context}[:outlier_detection]") unless input[:outlier_detection].nil?
        VirtualNodeConnectionPool.validate!(input[:connection_pool], context: "#{context}[:connection_pool]") unless input[:connection_pool].nil?
      end
    end

    class ListenerTimeout
      def self.validate!(input, context:)
        case input
        when Types::ListenerTimeout::Tcp
          TcpTimeout.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ListenerTimeout::Http
          HttpTimeout.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ListenerTimeout::Http2
          HttpTimeout.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ListenerTimeout::Grpc
          GrpcTimeout.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ListenerTimeout, got #{input.class}."
        end
      end

      class Tcp
        def self.validate!(input, context:)
          Validators::TcpTimeout.validate!(input, context: context) unless input.nil?
        end
      end

      class Http
        def self.validate!(input, context:)
          Validators::HttpTimeout.validate!(input, context: context) unless input.nil?
        end
      end

      class Http2
        def self.validate!(input, context:)
          Validators::HttpTimeout.validate!(input, context: context) unless input.nil?
        end
      end

      class Grpc
        def self.validate!(input, context:)
          Validators::GrpcTimeout.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ListenerTls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListenerTls, context: context)
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        ListenerTlsCertificate.validate!(input[:certificate], context: "#{context}[:certificate]") unless input[:certificate].nil?
        ListenerTlsValidationContext.validate!(input[:validation], context: "#{context}[:validation]") unless input[:validation].nil?
      end
    end

    class ListenerTlsAcmCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListenerTlsAcmCertificate, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
      end
    end

    class ListenerTlsCertificate
      def self.validate!(input, context:)
        case input
        when Types::ListenerTlsCertificate::Acm
          ListenerTlsAcmCertificate.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ListenerTlsCertificate::File
          ListenerTlsFileCertificate.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ListenerTlsCertificate::Sds
          ListenerTlsSdsCertificate.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ListenerTlsCertificate, got #{input.class}."
        end
      end

      class Acm
        def self.validate!(input, context:)
          Validators::ListenerTlsAcmCertificate.validate!(input, context: context) unless input.nil?
        end
      end

      class File
        def self.validate!(input, context:)
          Validators::ListenerTlsFileCertificate.validate!(input, context: context) unless input.nil?
        end
      end

      class Sds
        def self.validate!(input, context:)
          Validators::ListenerTlsSdsCertificate.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ListenerTlsFileCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListenerTlsFileCertificate, context: context)
        Hearth::Validator.validate!(input[:certificate_chain], ::String, context: "#{context}[:certificate_chain]")
        Hearth::Validator.validate!(input[:private_key], ::String, context: "#{context}[:private_key]")
      end
    end

    class ListenerTlsSdsCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListenerTlsSdsCertificate, context: context)
        Hearth::Validator.validate!(input[:secret_name], ::String, context: "#{context}[:secret_name]")
      end
    end

    class ListenerTlsValidationContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListenerTlsValidationContext, context: context)
        ListenerTlsValidationContextTrust.validate!(input[:member_trust], context: "#{context}[:member_trust]") unless input[:member_trust].nil?
        SubjectAlternativeNames.validate!(input[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless input[:subject_alternative_names].nil?
      end
    end

    class ListenerTlsValidationContextTrust
      def self.validate!(input, context:)
        case input
        when Types::ListenerTlsValidationContextTrust::File
          TlsValidationContextFileTrust.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ListenerTlsValidationContextTrust::Sds
          TlsValidationContextSdsTrust.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ListenerTlsValidationContextTrust, got #{input.class}."
        end
      end

      class File
        def self.validate!(input, context:)
          Validators::TlsValidationContextFileTrust.validate!(input, context: context) unless input.nil?
        end
      end

      class Sds
        def self.validate!(input, context:)
          Validators::TlsValidationContextSdsTrust.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class Listeners
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Listener.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Logging
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Logging, context: context)
        AccessLog.validate!(input[:access_log], context: "#{context}[:access_log]") unless input[:access_log].nil?
      end
    end

    class MatchRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MatchRange, context: context)
        Hearth::Validator.validate!(input[:start], ::Integer, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:end], ::Integer, context: "#{context}[:end]")
      end
    end

    class MeshData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MeshData, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        MeshSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        ResourceMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        MeshStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class MeshList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MeshRef.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MeshRef
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MeshRef, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class MeshServiceDiscovery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MeshServiceDiscovery, context: context)
        Hearth::Validator.validate!(input[:ip_preference], ::String, context: "#{context}[:ip_preference]")
      end
    end

    class MeshSpec
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MeshSpec, context: context)
        EgressFilter.validate!(input[:egress_filter], context: "#{context}[:egress_filter]") unless input[:egress_filter].nil?
        MeshServiceDiscovery.validate!(input[:service_discovery], context: "#{context}[:service_discovery]") unless input[:service_discovery].nil?
      end
    end

    class MeshStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MeshStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OutlierDetection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutlierDetection, context: context)
        Hearth::Validator.validate!(input[:max_server_errors], ::Integer, context: "#{context}[:max_server_errors]")
        Duration.validate!(input[:interval], context: "#{context}[:interval]") unless input[:interval].nil?
        Duration.validate!(input[:base_ejection_duration], context: "#{context}[:base_ejection_duration]") unless input[:base_ejection_duration].nil?
        Hearth::Validator.validate!(input[:max_ejection_percent], ::Integer, context: "#{context}[:max_ejection_percent]")
      end
    end

    class PortMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortMapping, context: context)
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class PortSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class QueryParameterMatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryParameterMatch, context: context)
        Hearth::Validator.validate!(input[:exact], ::String, context: "#{context}[:exact]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceMetadata, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:uid], ::String, context: "#{context}[:uid]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
      end
    end

    class RouteData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteData, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_router_name], ::String, context: "#{context}[:virtual_router_name]")
        Hearth::Validator.validate!(input[:route_name], ::String, context: "#{context}[:route_name]")
        RouteSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        ResourceMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        RouteStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class RouteList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RouteRef.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RouteRef
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteRef, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_router_name], ::String, context: "#{context}[:virtual_router_name]")
        Hearth::Validator.validate!(input[:route_name], ::String, context: "#{context}[:route_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class RouteSpec
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteSpec, context: context)
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        HttpRoute.validate!(input[:http_route], context: "#{context}[:http_route]") unless input[:http_route].nil?
        TcpRoute.validate!(input[:tcp_route], context: "#{context}[:tcp_route]") unless input[:tcp_route].nil?
        HttpRoute.validate!(input[:http2_route], context: "#{context}[:http2_route]") unless input[:http2_route].nil?
        GrpcRoute.validate!(input[:grpc_route], context: "#{context}[:grpc_route]") unless input[:grpc_route].nil?
      end
    end

    class RouteStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ServiceDiscovery
      def self.validate!(input, context:)
        case input
        when Types::ServiceDiscovery::Dns
          DnsServiceDiscovery.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ServiceDiscovery::AwsCloudMap
          AwsCloudMapServiceDiscovery.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ServiceDiscovery, got #{input.class}."
        end
      end

      class Dns
        def self.validate!(input, context:)
          Validators::DnsServiceDiscovery.validate!(input, context: context) unless input.nil?
        end
      end

      class AwsCloudMap
        def self.validate!(input, context:)
          Validators::AwsCloudMapServiceDiscovery.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubjectAlternativeNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubjectAlternativeNameMatchers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubjectAlternativeNameMatchers, context: context)
        SubjectAlternativeNameList.validate!(input[:exact], context: "#{context}[:exact]") unless input[:exact].nil?
      end
    end

    class SubjectAlternativeNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubjectAlternativeNames, context: context)
        SubjectAlternativeNameMatchers.validate!(input[:match], context: "#{context}[:match]") unless input[:match].nil?
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TagRef.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagRef
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagRef, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TcpRetryPolicyEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TcpRoute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TcpRoute, context: context)
        TcpRouteAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        TcpTimeout.validate!(input[:timeout], context: "#{context}[:timeout]") unless input[:timeout].nil?
      end
    end

    class TcpRouteAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TcpRouteAction, context: context)
        WeightedTargets.validate!(input[:weighted_targets], context: "#{context}[:weighted_targets]") unless input[:weighted_targets].nil?
      end
    end

    class TcpTimeout
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TcpTimeout, context: context)
        Duration.validate!(input[:idle], context: "#{context}[:idle]") unless input[:idle].nil?
      end
    end

    class TlsValidationContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TlsValidationContext, context: context)
        TlsValidationContextTrust.validate!(input[:member_trust], context: "#{context}[:member_trust]") unless input[:member_trust].nil?
        SubjectAlternativeNames.validate!(input[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless input[:subject_alternative_names].nil?
      end
    end

    class TlsValidationContextAcmTrust
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TlsValidationContextAcmTrust, context: context)
        CertificateAuthorityArns.validate!(input[:certificate_authority_arns], context: "#{context}[:certificate_authority_arns]") unless input[:certificate_authority_arns].nil?
      end
    end

    class TlsValidationContextFileTrust
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TlsValidationContextFileTrust, context: context)
        Hearth::Validator.validate!(input[:certificate_chain], ::String, context: "#{context}[:certificate_chain]")
      end
    end

    class TlsValidationContextSdsTrust
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TlsValidationContextSdsTrust, context: context)
        Hearth::Validator.validate!(input[:secret_name], ::String, context: "#{context}[:secret_name]")
      end
    end

    class TlsValidationContextTrust
      def self.validate!(input, context:)
        case input
        when Types::TlsValidationContextTrust::Acm
          TlsValidationContextAcmTrust.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::TlsValidationContextTrust::File
          TlsValidationContextFileTrust.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::TlsValidationContextTrust::Sds
          TlsValidationContextSdsTrust.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::TlsValidationContextTrust, got #{input.class}."
        end
      end

      class Acm
        def self.validate!(input, context:)
          Validators::TlsValidationContextAcmTrust.validate!(input, context: context) unless input.nil?
        end
      end

      class File
        def self.validate!(input, context:)
          Validators::TlsValidationContextFileTrust.validate!(input, context: context) unless input.nil?
        end
      end

      class Sds
        def self.validate!(input, context:)
          Validators::TlsValidationContextSdsTrust.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateGatewayRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayRouteInput, context: context)
        Hearth::Validator.validate!(input[:gateway_route_name], ::String, context: "#{context}[:gateway_route_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_gateway_name], ::String, context: "#{context}[:virtual_gateway_name]")
        GatewayRouteSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class UpdateGatewayRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayRouteOutput, context: context)
        GatewayRouteData.validate!(input[:gateway_route], context: "#{context}[:gateway_route]") unless input[:gateway_route].nil?
      end
    end

    class UpdateMeshInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMeshInput, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        MeshSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateMeshOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMeshOutput, context: context)
        MeshData.validate!(input[:mesh], context: "#{context}[:mesh]") unless input[:mesh].nil?
      end
    end

    class UpdateRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRouteInput, context: context)
        Hearth::Validator.validate!(input[:route_name], ::String, context: "#{context}[:route_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_router_name], ::String, context: "#{context}[:virtual_router_name]")
        RouteSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class UpdateRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRouteOutput, context: context)
        RouteData.validate!(input[:route], context: "#{context}[:route]") unless input[:route].nil?
      end
    end

    class UpdateVirtualGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVirtualGatewayInput, context: context)
        Hearth::Validator.validate!(input[:virtual_gateway_name], ::String, context: "#{context}[:virtual_gateway_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        VirtualGatewaySpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class UpdateVirtualGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVirtualGatewayOutput, context: context)
        VirtualGatewayData.validate!(input[:virtual_gateway], context: "#{context}[:virtual_gateway]") unless input[:virtual_gateway].nil?
      end
    end

    class UpdateVirtualNodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVirtualNodeInput, context: context)
        Hearth::Validator.validate!(input[:virtual_node_name], ::String, context: "#{context}[:virtual_node_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        VirtualNodeSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class UpdateVirtualNodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVirtualNodeOutput, context: context)
        VirtualNodeData.validate!(input[:virtual_node], context: "#{context}[:virtual_node]") unless input[:virtual_node].nil?
      end
    end

    class UpdateVirtualRouterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVirtualRouterInput, context: context)
        Hearth::Validator.validate!(input[:virtual_router_name], ::String, context: "#{context}[:virtual_router_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        VirtualRouterSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class UpdateVirtualRouterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVirtualRouterOutput, context: context)
        VirtualRouterData.validate!(input[:virtual_router], context: "#{context}[:virtual_router]") unless input[:virtual_router].nil?
      end
    end

    class UpdateVirtualServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVirtualServiceInput, context: context)
        Hearth::Validator.validate!(input[:virtual_service_name], ::String, context: "#{context}[:virtual_service_name]")
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        VirtualServiceSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
      end
    end

    class UpdateVirtualServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVirtualServiceOutput, context: context)
        VirtualServiceData.validate!(input[:virtual_service], context: "#{context}[:virtual_service]") unless input[:virtual_service].nil?
      end
    end

    class VirtualGatewayAccessLog
      def self.validate!(input, context:)
        case input
        when Types::VirtualGatewayAccessLog::File
          VirtualGatewayFileAccessLog.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::VirtualGatewayAccessLog, got #{input.class}."
        end
      end

      class File
        def self.validate!(input, context:)
          Validators::VirtualGatewayFileAccessLog.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class VirtualGatewayBackendDefaults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayBackendDefaults, context: context)
        VirtualGatewayClientPolicy.validate!(input[:client_policy], context: "#{context}[:client_policy]") unless input[:client_policy].nil?
      end
    end

    class VirtualGatewayCertificateAuthorityArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VirtualGatewayClientPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayClientPolicy, context: context)
        VirtualGatewayClientPolicyTls.validate!(input[:tls], context: "#{context}[:tls]") unless input[:tls].nil?
      end
    end

    class VirtualGatewayClientPolicyTls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayClientPolicyTls, context: context)
        Hearth::Validator.validate!(input[:enforce], ::TrueClass, ::FalseClass, context: "#{context}[:enforce]")
        PortSet.validate!(input[:ports], context: "#{context}[:ports]") unless input[:ports].nil?
        VirtualGatewayClientTlsCertificate.validate!(input[:certificate], context: "#{context}[:certificate]") unless input[:certificate].nil?
        VirtualGatewayTlsValidationContext.validate!(input[:validation], context: "#{context}[:validation]") unless input[:validation].nil?
      end
    end

    class VirtualGatewayClientTlsCertificate
      def self.validate!(input, context:)
        case input
        when Types::VirtualGatewayClientTlsCertificate::File
          VirtualGatewayListenerTlsFileCertificate.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::VirtualGatewayClientTlsCertificate::Sds
          VirtualGatewayListenerTlsSdsCertificate.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::VirtualGatewayClientTlsCertificate, got #{input.class}."
        end
      end

      class File
        def self.validate!(input, context:)
          Validators::VirtualGatewayListenerTlsFileCertificate.validate!(input, context: context) unless input.nil?
        end
      end

      class Sds
        def self.validate!(input, context:)
          Validators::VirtualGatewayListenerTlsSdsCertificate.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class VirtualGatewayConnectionPool
      def self.validate!(input, context:)
        case input
        when Types::VirtualGatewayConnectionPool::Http
          VirtualGatewayHttpConnectionPool.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::VirtualGatewayConnectionPool::Http2
          VirtualGatewayHttp2ConnectionPool.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::VirtualGatewayConnectionPool::Grpc
          VirtualGatewayGrpcConnectionPool.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::VirtualGatewayConnectionPool, got #{input.class}."
        end
      end

      class Http
        def self.validate!(input, context:)
          Validators::VirtualGatewayHttpConnectionPool.validate!(input, context: context) unless input.nil?
        end
      end

      class Http2
        def self.validate!(input, context:)
          Validators::VirtualGatewayHttp2ConnectionPool.validate!(input, context: context) unless input.nil?
        end
      end

      class Grpc
        def self.validate!(input, context:)
          Validators::VirtualGatewayGrpcConnectionPool.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class VirtualGatewayData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayData, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_gateway_name], ::String, context: "#{context}[:virtual_gateway_name]")
        VirtualGatewaySpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        ResourceMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        VirtualGatewayStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class VirtualGatewayFileAccessLog
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayFileAccessLog, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
      end
    end

    class VirtualGatewayGrpcConnectionPool
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayGrpcConnectionPool, context: context)
        Hearth::Validator.validate!(input[:max_requests], ::Integer, context: "#{context}[:max_requests]")
      end
    end

    class VirtualGatewayHealthCheckPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayHealthCheckPolicy, context: context)
        Hearth::Validator.validate!(input[:timeout_millis], ::Integer, context: "#{context}[:timeout_millis]")
        Hearth::Validator.validate!(input[:interval_millis], ::Integer, context: "#{context}[:interval_millis]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:healthy_threshold], ::Integer, context: "#{context}[:healthy_threshold]")
        Hearth::Validator.validate!(input[:unhealthy_threshold], ::Integer, context: "#{context}[:unhealthy_threshold]")
      end
    end

    class VirtualGatewayHttp2ConnectionPool
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayHttp2ConnectionPool, context: context)
        Hearth::Validator.validate!(input[:max_requests], ::Integer, context: "#{context}[:max_requests]")
      end
    end

    class VirtualGatewayHttpConnectionPool
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayHttpConnectionPool, context: context)
        Hearth::Validator.validate!(input[:max_connections], ::Integer, context: "#{context}[:max_connections]")
        Hearth::Validator.validate!(input[:max_pending_requests], ::Integer, context: "#{context}[:max_pending_requests]")
      end
    end

    class VirtualGatewayList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VirtualGatewayRef.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VirtualGatewayListener
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayListener, context: context)
        VirtualGatewayHealthCheckPolicy.validate!(input[:health_check], context: "#{context}[:health_check]") unless input[:health_check].nil?
        VirtualGatewayPortMapping.validate!(input[:port_mapping], context: "#{context}[:port_mapping]") unless input[:port_mapping].nil?
        VirtualGatewayListenerTls.validate!(input[:tls], context: "#{context}[:tls]") unless input[:tls].nil?
        VirtualGatewayConnectionPool.validate!(input[:connection_pool], context: "#{context}[:connection_pool]") unless input[:connection_pool].nil?
      end
    end

    class VirtualGatewayListenerTls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayListenerTls, context: context)
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        VirtualGatewayListenerTlsValidationContext.validate!(input[:validation], context: "#{context}[:validation]") unless input[:validation].nil?
        VirtualGatewayListenerTlsCertificate.validate!(input[:certificate], context: "#{context}[:certificate]") unless input[:certificate].nil?
      end
    end

    class VirtualGatewayListenerTlsAcmCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayListenerTlsAcmCertificate, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
      end
    end

    class VirtualGatewayListenerTlsCertificate
      def self.validate!(input, context:)
        case input
        when Types::VirtualGatewayListenerTlsCertificate::Acm
          VirtualGatewayListenerTlsAcmCertificate.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::VirtualGatewayListenerTlsCertificate::File
          VirtualGatewayListenerTlsFileCertificate.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::VirtualGatewayListenerTlsCertificate::Sds
          VirtualGatewayListenerTlsSdsCertificate.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::VirtualGatewayListenerTlsCertificate, got #{input.class}."
        end
      end

      class Acm
        def self.validate!(input, context:)
          Validators::VirtualGatewayListenerTlsAcmCertificate.validate!(input, context: context) unless input.nil?
        end
      end

      class File
        def self.validate!(input, context:)
          Validators::VirtualGatewayListenerTlsFileCertificate.validate!(input, context: context) unless input.nil?
        end
      end

      class Sds
        def self.validate!(input, context:)
          Validators::VirtualGatewayListenerTlsSdsCertificate.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class VirtualGatewayListenerTlsFileCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayListenerTlsFileCertificate, context: context)
        Hearth::Validator.validate!(input[:certificate_chain], ::String, context: "#{context}[:certificate_chain]")
        Hearth::Validator.validate!(input[:private_key], ::String, context: "#{context}[:private_key]")
      end
    end

    class VirtualGatewayListenerTlsSdsCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayListenerTlsSdsCertificate, context: context)
        Hearth::Validator.validate!(input[:secret_name], ::String, context: "#{context}[:secret_name]")
      end
    end

    class VirtualGatewayListenerTlsValidationContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayListenerTlsValidationContext, context: context)
        VirtualGatewayListenerTlsValidationContextTrust.validate!(input[:member_trust], context: "#{context}[:member_trust]") unless input[:member_trust].nil?
        SubjectAlternativeNames.validate!(input[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless input[:subject_alternative_names].nil?
      end
    end

    class VirtualGatewayListenerTlsValidationContextTrust
      def self.validate!(input, context:)
        case input
        when Types::VirtualGatewayListenerTlsValidationContextTrust::File
          VirtualGatewayTlsValidationContextFileTrust.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::VirtualGatewayListenerTlsValidationContextTrust::Sds
          VirtualGatewayTlsValidationContextSdsTrust.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::VirtualGatewayListenerTlsValidationContextTrust, got #{input.class}."
        end
      end

      class File
        def self.validate!(input, context:)
          Validators::VirtualGatewayTlsValidationContextFileTrust.validate!(input, context: context) unless input.nil?
        end
      end

      class Sds
        def self.validate!(input, context:)
          Validators::VirtualGatewayTlsValidationContextSdsTrust.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class VirtualGatewayListeners
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VirtualGatewayListener.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VirtualGatewayLogging
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayLogging, context: context)
        VirtualGatewayAccessLog.validate!(input[:access_log], context: "#{context}[:access_log]") unless input[:access_log].nil?
      end
    end

    class VirtualGatewayPortMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayPortMapping, context: context)
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class VirtualGatewayRef
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayRef, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_gateway_name], ::String, context: "#{context}[:virtual_gateway_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class VirtualGatewaySpec
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewaySpec, context: context)
        VirtualGatewayBackendDefaults.validate!(input[:backend_defaults], context: "#{context}[:backend_defaults]") unless input[:backend_defaults].nil?
        VirtualGatewayListeners.validate!(input[:listeners], context: "#{context}[:listeners]") unless input[:listeners].nil?
        VirtualGatewayLogging.validate!(input[:logging], context: "#{context}[:logging]") unless input[:logging].nil?
      end
    end

    class VirtualGatewayStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class VirtualGatewayTlsValidationContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayTlsValidationContext, context: context)
        VirtualGatewayTlsValidationContextTrust.validate!(input[:member_trust], context: "#{context}[:member_trust]") unless input[:member_trust].nil?
        SubjectAlternativeNames.validate!(input[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless input[:subject_alternative_names].nil?
      end
    end

    class VirtualGatewayTlsValidationContextAcmTrust
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayTlsValidationContextAcmTrust, context: context)
        VirtualGatewayCertificateAuthorityArns.validate!(input[:certificate_authority_arns], context: "#{context}[:certificate_authority_arns]") unless input[:certificate_authority_arns].nil?
      end
    end

    class VirtualGatewayTlsValidationContextFileTrust
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayTlsValidationContextFileTrust, context: context)
        Hearth::Validator.validate!(input[:certificate_chain], ::String, context: "#{context}[:certificate_chain]")
      end
    end

    class VirtualGatewayTlsValidationContextSdsTrust
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualGatewayTlsValidationContextSdsTrust, context: context)
        Hearth::Validator.validate!(input[:secret_name], ::String, context: "#{context}[:secret_name]")
      end
    end

    class VirtualGatewayTlsValidationContextTrust
      def self.validate!(input, context:)
        case input
        when Types::VirtualGatewayTlsValidationContextTrust::Acm
          VirtualGatewayTlsValidationContextAcmTrust.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::VirtualGatewayTlsValidationContextTrust::File
          VirtualGatewayTlsValidationContextFileTrust.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::VirtualGatewayTlsValidationContextTrust::Sds
          VirtualGatewayTlsValidationContextSdsTrust.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::VirtualGatewayTlsValidationContextTrust, got #{input.class}."
        end
      end

      class Acm
        def self.validate!(input, context:)
          Validators::VirtualGatewayTlsValidationContextAcmTrust.validate!(input, context: context) unless input.nil?
        end
      end

      class File
        def self.validate!(input, context:)
          Validators::VirtualGatewayTlsValidationContextFileTrust.validate!(input, context: context) unless input.nil?
        end
      end

      class Sds
        def self.validate!(input, context:)
          Validators::VirtualGatewayTlsValidationContextSdsTrust.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class VirtualNodeConnectionPool
      def self.validate!(input, context:)
        case input
        when Types::VirtualNodeConnectionPool::Tcp
          VirtualNodeTcpConnectionPool.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::VirtualNodeConnectionPool::Http
          VirtualNodeHttpConnectionPool.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::VirtualNodeConnectionPool::Http2
          VirtualNodeHttp2ConnectionPool.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::VirtualNodeConnectionPool::Grpc
          VirtualNodeGrpcConnectionPool.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::VirtualNodeConnectionPool, got #{input.class}."
        end
      end

      class Tcp
        def self.validate!(input, context:)
          Validators::VirtualNodeTcpConnectionPool.validate!(input, context: context) unless input.nil?
        end
      end

      class Http
        def self.validate!(input, context:)
          Validators::VirtualNodeHttpConnectionPool.validate!(input, context: context) unless input.nil?
        end
      end

      class Http2
        def self.validate!(input, context:)
          Validators::VirtualNodeHttp2ConnectionPool.validate!(input, context: context) unless input.nil?
        end
      end

      class Grpc
        def self.validate!(input, context:)
          Validators::VirtualNodeGrpcConnectionPool.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class VirtualNodeData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualNodeData, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_node_name], ::String, context: "#{context}[:virtual_node_name]")
        VirtualNodeSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        ResourceMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        VirtualNodeStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class VirtualNodeGrpcConnectionPool
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualNodeGrpcConnectionPool, context: context)
        Hearth::Validator.validate!(input[:max_requests], ::Integer, context: "#{context}[:max_requests]")
      end
    end

    class VirtualNodeHttp2ConnectionPool
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualNodeHttp2ConnectionPool, context: context)
        Hearth::Validator.validate!(input[:max_requests], ::Integer, context: "#{context}[:max_requests]")
      end
    end

    class VirtualNodeHttpConnectionPool
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualNodeHttpConnectionPool, context: context)
        Hearth::Validator.validate!(input[:max_connections], ::Integer, context: "#{context}[:max_connections]")
        Hearth::Validator.validate!(input[:max_pending_requests], ::Integer, context: "#{context}[:max_pending_requests]")
      end
    end

    class VirtualNodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VirtualNodeRef.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VirtualNodeRef
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualNodeRef, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_node_name], ::String, context: "#{context}[:virtual_node_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class VirtualNodeServiceProvider
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualNodeServiceProvider, context: context)
        Hearth::Validator.validate!(input[:virtual_node_name], ::String, context: "#{context}[:virtual_node_name]")
      end
    end

    class VirtualNodeSpec
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualNodeSpec, context: context)
        ServiceDiscovery.validate!(input[:service_discovery], context: "#{context}[:service_discovery]") unless input[:service_discovery].nil?
        Listeners.validate!(input[:listeners], context: "#{context}[:listeners]") unless input[:listeners].nil?
        Backends.validate!(input[:backends], context: "#{context}[:backends]") unless input[:backends].nil?
        BackendDefaults.validate!(input[:backend_defaults], context: "#{context}[:backend_defaults]") unless input[:backend_defaults].nil?
        Logging.validate!(input[:logging], context: "#{context}[:logging]") unless input[:logging].nil?
      end
    end

    class VirtualNodeStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualNodeStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class VirtualNodeTcpConnectionPool
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualNodeTcpConnectionPool, context: context)
        Hearth::Validator.validate!(input[:max_connections], ::Integer, context: "#{context}[:max_connections]")
      end
    end

    class VirtualRouterData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualRouterData, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_router_name], ::String, context: "#{context}[:virtual_router_name]")
        VirtualRouterSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        ResourceMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        VirtualRouterStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class VirtualRouterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VirtualRouterRef.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VirtualRouterListener
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualRouterListener, context: context)
        PortMapping.validate!(input[:port_mapping], context: "#{context}[:port_mapping]") unless input[:port_mapping].nil?
      end
    end

    class VirtualRouterListeners
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VirtualRouterListener.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VirtualRouterRef
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualRouterRef, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_router_name], ::String, context: "#{context}[:virtual_router_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class VirtualRouterServiceProvider
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualRouterServiceProvider, context: context)
        Hearth::Validator.validate!(input[:virtual_router_name], ::String, context: "#{context}[:virtual_router_name]")
      end
    end

    class VirtualRouterSpec
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualRouterSpec, context: context)
        VirtualRouterListeners.validate!(input[:listeners], context: "#{context}[:listeners]") unless input[:listeners].nil?
      end
    end

    class VirtualRouterStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualRouterStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class VirtualServiceBackend
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualServiceBackend, context: context)
        Hearth::Validator.validate!(input[:virtual_service_name], ::String, context: "#{context}[:virtual_service_name]")
        ClientPolicy.validate!(input[:client_policy], context: "#{context}[:client_policy]") unless input[:client_policy].nil?
      end
    end

    class VirtualServiceData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualServiceData, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_service_name], ::String, context: "#{context}[:virtual_service_name]")
        VirtualServiceSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        ResourceMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        VirtualServiceStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class VirtualServiceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VirtualServiceRef.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VirtualServiceProvider
      def self.validate!(input, context:)
        case input
        when Types::VirtualServiceProvider::VirtualNode
          VirtualNodeServiceProvider.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::VirtualServiceProvider::VirtualRouter
          VirtualRouterServiceProvider.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::VirtualServiceProvider, got #{input.class}."
        end
      end

      class VirtualNode
        def self.validate!(input, context:)
          Validators::VirtualNodeServiceProvider.validate!(input, context: context) unless input.nil?
        end
      end

      class VirtualRouter
        def self.validate!(input, context:)
          Validators::VirtualRouterServiceProvider.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class VirtualServiceRef
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualServiceRef, context: context)
        Hearth::Validator.validate!(input[:mesh_name], ::String, context: "#{context}[:mesh_name]")
        Hearth::Validator.validate!(input[:virtual_service_name], ::String, context: "#{context}[:virtual_service_name]")
        Hearth::Validator.validate!(input[:mesh_owner], ::String, context: "#{context}[:mesh_owner]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class VirtualServiceSpec
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualServiceSpec, context: context)
        VirtualServiceProvider.validate!(input[:provider], context: "#{context}[:provider]") unless input[:provider].nil?
      end
    end

    class VirtualServiceStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualServiceStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class WeightedTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WeightedTarget, context: context)
        Hearth::Validator.validate!(input[:virtual_node], ::String, context: "#{context}[:virtual_node]")
        Hearth::Validator.validate!(input[:weight], ::Integer, context: "#{context}[:weight]")
      end
    end

    class WeightedTargets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WeightedTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
