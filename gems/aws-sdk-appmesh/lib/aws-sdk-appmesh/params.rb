# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::AppMesh
  module Params

    module AccessLog
      def self.build(params, context: '')
        return params if params.is_a?(Types::AccessLog)
        Hearth::Validator.validate!(params, ::Hash, Types::AccessLog, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :file
          Types::AccessLog::File.new(
            (FileAccessLog.build(params[:file], context: "#{context}[:file]") unless params[:file].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :file set"
        end
      end
    end

    module AwsCloudMapInstanceAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudMapInstanceAttribute, context: context)
        type = Types::AwsCloudMapInstanceAttribute.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module AwsCloudMapInstanceAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsCloudMapInstanceAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsCloudMapServiceDiscovery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudMapServiceDiscovery, context: context)
        type = Types::AwsCloudMapServiceDiscovery.new
        type.namespace_name = params[:namespace_name]
        type.service_name = params[:service_name]
        type.attributes = AwsCloudMapInstanceAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.ip_preference = params[:ip_preference]
        type
      end
    end

    module Backend
      def self.build(params, context: '')
        return params if params.is_a?(Types::Backend)
        Hearth::Validator.validate!(params, ::Hash, Types::Backend, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :virtual_service
          Types::Backend::VirtualService.new(
            (VirtualServiceBackend.build(params[:virtual_service], context: "#{context}[:virtual_service]") unless params[:virtual_service].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :virtual_service set"
        end
      end
    end

    module BackendDefaults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackendDefaults, context: context)
        type = Types::BackendDefaults.new
        type.client_policy = ClientPolicy.build(params[:client_policy], context: "#{context}[:client_policy]") unless params[:client_policy].nil?
        type
      end
    end

    module Backends
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Backend.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module CertificateAuthorityArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ClientPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientPolicy, context: context)
        type = Types::ClientPolicy.new
        type.tls = ClientPolicyTls.build(params[:tls], context: "#{context}[:tls]") unless params[:tls].nil?
        type
      end
    end

    module ClientPolicyTls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientPolicyTls, context: context)
        type = Types::ClientPolicyTls.new
        type.enforce = params[:enforce]
        type.ports = PortSet.build(params[:ports], context: "#{context}[:ports]") unless params[:ports].nil?
        type.certificate = ClientTlsCertificate.build(params[:certificate], context: "#{context}[:certificate]") unless params[:certificate].nil?
        type.validation = TlsValidationContext.build(params[:validation], context: "#{context}[:validation]") unless params[:validation].nil?
        type
      end
    end

    module ClientTlsCertificate
      def self.build(params, context: '')
        return params if params.is_a?(Types::ClientTlsCertificate)
        Hearth::Validator.validate!(params, ::Hash, Types::ClientTlsCertificate, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :file
          Types::ClientTlsCertificate::File.new(
            (ListenerTlsFileCertificate.build(params[:file], context: "#{context}[:file]") unless params[:file].nil?)
          )
        when :sds
          Types::ClientTlsCertificate::Sds.new(
            (ListenerTlsSdsCertificate.build(params[:sds], context: "#{context}[:sds]") unless params[:sds].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :file, :sds set"
        end
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateGatewayRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGatewayRouteInput, context: context)
        type = Types::CreateGatewayRouteInput.new
        type.gateway_route_name = params[:gateway_route_name]
        type.mesh_name = params[:mesh_name]
        type.virtual_gateway_name = params[:virtual_gateway_name]
        type.spec = GatewayRouteSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module CreateGatewayRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGatewayRouteOutput, context: context)
        type = Types::CreateGatewayRouteOutput.new
        type.gateway_route = GatewayRouteData.build(params[:gateway_route], context: "#{context}[:gateway_route]") unless params[:gateway_route].nil?
        type
      end
    end

    module CreateMeshInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMeshInput, context: context)
        type = Types::CreateMeshInput.new
        type.mesh_name = params[:mesh_name]
        type.spec = MeshSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateMeshOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMeshOutput, context: context)
        type = Types::CreateMeshOutput.new
        type.mesh = MeshData.build(params[:mesh], context: "#{context}[:mesh]") unless params[:mesh].nil?
        type
      end
    end

    module CreateRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRouteInput, context: context)
        type = Types::CreateRouteInput.new
        type.route_name = params[:route_name]
        type.mesh_name = params[:mesh_name]
        type.virtual_router_name = params[:virtual_router_name]
        type.spec = RouteSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module CreateRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRouteOutput, context: context)
        type = Types::CreateRouteOutput.new
        type.route = RouteData.build(params[:route], context: "#{context}[:route]") unless params[:route].nil?
        type
      end
    end

    module CreateVirtualGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVirtualGatewayInput, context: context)
        type = Types::CreateVirtualGatewayInput.new
        type.virtual_gateway_name = params[:virtual_gateway_name]
        type.mesh_name = params[:mesh_name]
        type.spec = VirtualGatewaySpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module CreateVirtualGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVirtualGatewayOutput, context: context)
        type = Types::CreateVirtualGatewayOutput.new
        type.virtual_gateway = VirtualGatewayData.build(params[:virtual_gateway], context: "#{context}[:virtual_gateway]") unless params[:virtual_gateway].nil?
        type
      end
    end

    module CreateVirtualNodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVirtualNodeInput, context: context)
        type = Types::CreateVirtualNodeInput.new
        type.virtual_node_name = params[:virtual_node_name]
        type.mesh_name = params[:mesh_name]
        type.spec = VirtualNodeSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module CreateVirtualNodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVirtualNodeOutput, context: context)
        type = Types::CreateVirtualNodeOutput.new
        type.virtual_node = VirtualNodeData.build(params[:virtual_node], context: "#{context}[:virtual_node]") unless params[:virtual_node].nil?
        type
      end
    end

    module CreateVirtualRouterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVirtualRouterInput, context: context)
        type = Types::CreateVirtualRouterInput.new
        type.virtual_router_name = params[:virtual_router_name]
        type.mesh_name = params[:mesh_name]
        type.spec = VirtualRouterSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module CreateVirtualRouterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVirtualRouterOutput, context: context)
        type = Types::CreateVirtualRouterOutput.new
        type.virtual_router = VirtualRouterData.build(params[:virtual_router], context: "#{context}[:virtual_router]") unless params[:virtual_router].nil?
        type
      end
    end

    module CreateVirtualServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVirtualServiceInput, context: context)
        type = Types::CreateVirtualServiceInput.new
        type.virtual_service_name = params[:virtual_service_name]
        type.mesh_name = params[:mesh_name]
        type.spec = VirtualServiceSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module CreateVirtualServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVirtualServiceOutput, context: context)
        type = Types::CreateVirtualServiceOutput.new
        type.virtual_service = VirtualServiceData.build(params[:virtual_service], context: "#{context}[:virtual_service]") unless params[:virtual_service].nil?
        type
      end
    end

    module DeleteGatewayRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGatewayRouteInput, context: context)
        type = Types::DeleteGatewayRouteInput.new
        type.gateway_route_name = params[:gateway_route_name]
        type.mesh_name = params[:mesh_name]
        type.virtual_gateway_name = params[:virtual_gateway_name]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module DeleteGatewayRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGatewayRouteOutput, context: context)
        type = Types::DeleteGatewayRouteOutput.new
        type.gateway_route = GatewayRouteData.build(params[:gateway_route], context: "#{context}[:gateway_route]") unless params[:gateway_route].nil?
        type
      end
    end

    module DeleteMeshInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMeshInput, context: context)
        type = Types::DeleteMeshInput.new
        type.mesh_name = params[:mesh_name]
        type
      end
    end

    module DeleteMeshOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMeshOutput, context: context)
        type = Types::DeleteMeshOutput.new
        type.mesh = MeshData.build(params[:mesh], context: "#{context}[:mesh]") unless params[:mesh].nil?
        type
      end
    end

    module DeleteRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteInput, context: context)
        type = Types::DeleteRouteInput.new
        type.route_name = params[:route_name]
        type.mesh_name = params[:mesh_name]
        type.virtual_router_name = params[:virtual_router_name]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module DeleteRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteOutput, context: context)
        type = Types::DeleteRouteOutput.new
        type.route = RouteData.build(params[:route], context: "#{context}[:route]") unless params[:route].nil?
        type
      end
    end

    module DeleteVirtualGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVirtualGatewayInput, context: context)
        type = Types::DeleteVirtualGatewayInput.new
        type.virtual_gateway_name = params[:virtual_gateway_name]
        type.mesh_name = params[:mesh_name]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module DeleteVirtualGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVirtualGatewayOutput, context: context)
        type = Types::DeleteVirtualGatewayOutput.new
        type.virtual_gateway = VirtualGatewayData.build(params[:virtual_gateway], context: "#{context}[:virtual_gateway]") unless params[:virtual_gateway].nil?
        type
      end
    end

    module DeleteVirtualNodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVirtualNodeInput, context: context)
        type = Types::DeleteVirtualNodeInput.new
        type.virtual_node_name = params[:virtual_node_name]
        type.mesh_name = params[:mesh_name]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module DeleteVirtualNodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVirtualNodeOutput, context: context)
        type = Types::DeleteVirtualNodeOutput.new
        type.virtual_node = VirtualNodeData.build(params[:virtual_node], context: "#{context}[:virtual_node]") unless params[:virtual_node].nil?
        type
      end
    end

    module DeleteVirtualRouterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVirtualRouterInput, context: context)
        type = Types::DeleteVirtualRouterInput.new
        type.virtual_router_name = params[:virtual_router_name]
        type.mesh_name = params[:mesh_name]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module DeleteVirtualRouterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVirtualRouterOutput, context: context)
        type = Types::DeleteVirtualRouterOutput.new
        type.virtual_router = VirtualRouterData.build(params[:virtual_router], context: "#{context}[:virtual_router]") unless params[:virtual_router].nil?
        type
      end
    end

    module DeleteVirtualServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVirtualServiceInput, context: context)
        type = Types::DeleteVirtualServiceInput.new
        type.virtual_service_name = params[:virtual_service_name]
        type.mesh_name = params[:mesh_name]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module DeleteVirtualServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVirtualServiceOutput, context: context)
        type = Types::DeleteVirtualServiceOutput.new
        type.virtual_service = VirtualServiceData.build(params[:virtual_service], context: "#{context}[:virtual_service]") unless params[:virtual_service].nil?
        type
      end
    end

    module DescribeGatewayRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGatewayRouteInput, context: context)
        type = Types::DescribeGatewayRouteInput.new
        type.gateway_route_name = params[:gateway_route_name]
        type.mesh_name = params[:mesh_name]
        type.virtual_gateway_name = params[:virtual_gateway_name]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module DescribeGatewayRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGatewayRouteOutput, context: context)
        type = Types::DescribeGatewayRouteOutput.new
        type.gateway_route = GatewayRouteData.build(params[:gateway_route], context: "#{context}[:gateway_route]") unless params[:gateway_route].nil?
        type
      end
    end

    module DescribeMeshInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMeshInput, context: context)
        type = Types::DescribeMeshInput.new
        type.mesh_name = params[:mesh_name]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module DescribeMeshOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMeshOutput, context: context)
        type = Types::DescribeMeshOutput.new
        type.mesh = MeshData.build(params[:mesh], context: "#{context}[:mesh]") unless params[:mesh].nil?
        type
      end
    end

    module DescribeRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRouteInput, context: context)
        type = Types::DescribeRouteInput.new
        type.route_name = params[:route_name]
        type.mesh_name = params[:mesh_name]
        type.mesh_owner = params[:mesh_owner]
        type.virtual_router_name = params[:virtual_router_name]
        type
      end
    end

    module DescribeRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRouteOutput, context: context)
        type = Types::DescribeRouteOutput.new
        type.route = RouteData.build(params[:route], context: "#{context}[:route]") unless params[:route].nil?
        type
      end
    end

    module DescribeVirtualGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVirtualGatewayInput, context: context)
        type = Types::DescribeVirtualGatewayInput.new
        type.virtual_gateway_name = params[:virtual_gateway_name]
        type.mesh_name = params[:mesh_name]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module DescribeVirtualGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVirtualGatewayOutput, context: context)
        type = Types::DescribeVirtualGatewayOutput.new
        type.virtual_gateway = VirtualGatewayData.build(params[:virtual_gateway], context: "#{context}[:virtual_gateway]") unless params[:virtual_gateway].nil?
        type
      end
    end

    module DescribeVirtualNodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVirtualNodeInput, context: context)
        type = Types::DescribeVirtualNodeInput.new
        type.virtual_node_name = params[:virtual_node_name]
        type.mesh_name = params[:mesh_name]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module DescribeVirtualNodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVirtualNodeOutput, context: context)
        type = Types::DescribeVirtualNodeOutput.new
        type.virtual_node = VirtualNodeData.build(params[:virtual_node], context: "#{context}[:virtual_node]") unless params[:virtual_node].nil?
        type
      end
    end

    module DescribeVirtualRouterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVirtualRouterInput, context: context)
        type = Types::DescribeVirtualRouterInput.new
        type.virtual_router_name = params[:virtual_router_name]
        type.mesh_name = params[:mesh_name]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module DescribeVirtualRouterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVirtualRouterOutput, context: context)
        type = Types::DescribeVirtualRouterOutput.new
        type.virtual_router = VirtualRouterData.build(params[:virtual_router], context: "#{context}[:virtual_router]") unless params[:virtual_router].nil?
        type
      end
    end

    module DescribeVirtualServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVirtualServiceInput, context: context)
        type = Types::DescribeVirtualServiceInput.new
        type.virtual_service_name = params[:virtual_service_name]
        type.mesh_name = params[:mesh_name]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module DescribeVirtualServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVirtualServiceOutput, context: context)
        type = Types::DescribeVirtualServiceOutput.new
        type.virtual_service = VirtualServiceData.build(params[:virtual_service], context: "#{context}[:virtual_service]") unless params[:virtual_service].nil?
        type
      end
    end

    module DnsServiceDiscovery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DnsServiceDiscovery, context: context)
        type = Types::DnsServiceDiscovery.new
        type.hostname = params[:hostname]
        type.response_type = params[:response_type]
        type.ip_preference = params[:ip_preference]
        type
      end
    end

    module Duration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Duration, context: context)
        type = Types::Duration.new
        type.value = params[:value]
        type.unit = params[:unit]
        type
      end
    end

    module EgressFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EgressFilter, context: context)
        type = Types::EgressFilter.new
        type.type = params[:type]
        type
      end
    end

    module FileAccessLog
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileAccessLog, context: context)
        type = Types::FileAccessLog.new
        type.path = params[:path]
        type
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.message = params[:message]
        type
      end
    end

    module GatewayRouteData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayRouteData, context: context)
        type = Types::GatewayRouteData.new
        type.mesh_name = params[:mesh_name]
        type.gateway_route_name = params[:gateway_route_name]
        type.virtual_gateway_name = params[:virtual_gateway_name]
        type.spec = GatewayRouteSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.metadata = ResourceMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.status = GatewayRouteStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module GatewayRouteHostnameMatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayRouteHostnameMatch, context: context)
        type = Types::GatewayRouteHostnameMatch.new
        type.exact = params[:exact]
        type.suffix = params[:suffix]
        type
      end
    end

    module GatewayRouteHostnameRewrite
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayRouteHostnameRewrite, context: context)
        type = Types::GatewayRouteHostnameRewrite.new
        type.default_target_hostname = params[:default_target_hostname]
        type
      end
    end

    module GatewayRouteList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GatewayRouteRef.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GatewayRouteRef
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayRouteRef, context: context)
        type = Types::GatewayRouteRef.new
        type.mesh_name = params[:mesh_name]
        type.gateway_route_name = params[:gateway_route_name]
        type.virtual_gateway_name = params[:virtual_gateway_name]
        type.mesh_owner = params[:mesh_owner]
        type.resource_owner = params[:resource_owner]
        type.arn = params[:arn]
        type.version = params[:version]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module GatewayRouteSpec
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayRouteSpec, context: context)
        type = Types::GatewayRouteSpec.new
        type.priority = params[:priority]
        type.http_route = HttpGatewayRoute.build(params[:http_route], context: "#{context}[:http_route]") unless params[:http_route].nil?
        type.http2_route = HttpGatewayRoute.build(params[:http2_route], context: "#{context}[:http2_route]") unless params[:http2_route].nil?
        type.grpc_route = GrpcGatewayRoute.build(params[:grpc_route], context: "#{context}[:grpc_route]") unless params[:grpc_route].nil?
        type
      end
    end

    module GatewayRouteStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayRouteStatus, context: context)
        type = Types::GatewayRouteStatus.new
        type.status = params[:status]
        type
      end
    end

    module GatewayRouteTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayRouteTarget, context: context)
        type = Types::GatewayRouteTarget.new
        type.virtual_service = GatewayRouteVirtualService.build(params[:virtual_service], context: "#{context}[:virtual_service]") unless params[:virtual_service].nil?
        type
      end
    end

    module GatewayRouteVirtualService
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayRouteVirtualService, context: context)
        type = Types::GatewayRouteVirtualService.new
        type.virtual_service_name = params[:virtual_service_name]
        type
      end
    end

    module GrpcGatewayRoute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrpcGatewayRoute, context: context)
        type = Types::GrpcGatewayRoute.new
        type.match = GrpcGatewayRouteMatch.build(params[:match], context: "#{context}[:match]") unless params[:match].nil?
        type.action = GrpcGatewayRouteAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type
      end
    end

    module GrpcGatewayRouteAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrpcGatewayRouteAction, context: context)
        type = Types::GrpcGatewayRouteAction.new
        type.target = GatewayRouteTarget.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.rewrite = GrpcGatewayRouteRewrite.build(params[:rewrite], context: "#{context}[:rewrite]") unless params[:rewrite].nil?
        type
      end
    end

    module GrpcGatewayRouteMatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrpcGatewayRouteMatch, context: context)
        type = Types::GrpcGatewayRouteMatch.new
        type.service_name = params[:service_name]
        type.hostname = GatewayRouteHostnameMatch.build(params[:hostname], context: "#{context}[:hostname]") unless params[:hostname].nil?
        type.metadata = GrpcGatewayRouteMetadataList.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type
      end
    end

    module GrpcGatewayRouteMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrpcGatewayRouteMetadata, context: context)
        type = Types::GrpcGatewayRouteMetadata.new
        type.name = params[:name]
        type.invert = params[:invert]
        type.match = GrpcMetadataMatchMethod.build(params[:match], context: "#{context}[:match]") unless params[:match].nil?
        type
      end
    end

    module GrpcGatewayRouteMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GrpcGatewayRouteMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GrpcGatewayRouteRewrite
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrpcGatewayRouteRewrite, context: context)
        type = Types::GrpcGatewayRouteRewrite.new
        type.hostname = GatewayRouteHostnameRewrite.build(params[:hostname], context: "#{context}[:hostname]") unless params[:hostname].nil?
        type
      end
    end

    module GrpcMetadataMatchMethod
      def self.build(params, context: '')
        return params if params.is_a?(Types::GrpcMetadataMatchMethod)
        Hearth::Validator.validate!(params, ::Hash, Types::GrpcMetadataMatchMethod, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :exact
          Types::GrpcMetadataMatchMethod::Exact.new(
            params[:exact]
          )
        when :regex
          Types::GrpcMetadataMatchMethod::Regex.new(
            params[:regex]
          )
        when :range
          Types::GrpcMetadataMatchMethod::Range.new(
            (MatchRange.build(params[:range], context: "#{context}[:range]") unless params[:range].nil?)
          )
        when :prefix
          Types::GrpcMetadataMatchMethod::Prefix.new(
            params[:prefix]
          )
        when :suffix
          Types::GrpcMetadataMatchMethod::Suffix.new(
            params[:suffix]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :exact, :regex, :range, :prefix, :suffix set"
        end
      end
    end

    module GrpcRetryPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrpcRetryPolicy, context: context)
        type = Types::GrpcRetryPolicy.new
        type.per_retry_timeout = Duration.build(params[:per_retry_timeout], context: "#{context}[:per_retry_timeout]") unless params[:per_retry_timeout].nil?
        type.max_retries = params[:max_retries]
        type.http_retry_events = HttpRetryPolicyEvents.build(params[:http_retry_events], context: "#{context}[:http_retry_events]") unless params[:http_retry_events].nil?
        type.tcp_retry_events = TcpRetryPolicyEvents.build(params[:tcp_retry_events], context: "#{context}[:tcp_retry_events]") unless params[:tcp_retry_events].nil?
        type.grpc_retry_events = GrpcRetryPolicyEvents.build(params[:grpc_retry_events], context: "#{context}[:grpc_retry_events]") unless params[:grpc_retry_events].nil?
        type
      end
    end

    module GrpcRetryPolicyEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GrpcRoute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrpcRoute, context: context)
        type = Types::GrpcRoute.new
        type.action = GrpcRouteAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.match = GrpcRouteMatch.build(params[:match], context: "#{context}[:match]") unless params[:match].nil?
        type.retry_policy = GrpcRetryPolicy.build(params[:retry_policy], context: "#{context}[:retry_policy]") unless params[:retry_policy].nil?
        type.timeout = GrpcTimeout.build(params[:timeout], context: "#{context}[:timeout]") unless params[:timeout].nil?
        type
      end
    end

    module GrpcRouteAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrpcRouteAction, context: context)
        type = Types::GrpcRouteAction.new
        type.weighted_targets = WeightedTargets.build(params[:weighted_targets], context: "#{context}[:weighted_targets]") unless params[:weighted_targets].nil?
        type
      end
    end

    module GrpcRouteMatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrpcRouteMatch, context: context)
        type = Types::GrpcRouteMatch.new
        type.service_name = params[:service_name]
        type.method_name = params[:method_name]
        type.metadata = GrpcRouteMetadataList.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type
      end
    end

    module GrpcRouteMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrpcRouteMetadata, context: context)
        type = Types::GrpcRouteMetadata.new
        type.name = params[:name]
        type.invert = params[:invert]
        type.match = GrpcRouteMetadataMatchMethod.build(params[:match], context: "#{context}[:match]") unless params[:match].nil?
        type
      end
    end

    module GrpcRouteMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GrpcRouteMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GrpcRouteMetadataMatchMethod
      def self.build(params, context: '')
        return params if params.is_a?(Types::GrpcRouteMetadataMatchMethod)
        Hearth::Validator.validate!(params, ::Hash, Types::GrpcRouteMetadataMatchMethod, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :exact
          Types::GrpcRouteMetadataMatchMethod::Exact.new(
            params[:exact]
          )
        when :regex
          Types::GrpcRouteMetadataMatchMethod::Regex.new(
            params[:regex]
          )
        when :range
          Types::GrpcRouteMetadataMatchMethod::Range.new(
            (MatchRange.build(params[:range], context: "#{context}[:range]") unless params[:range].nil?)
          )
        when :prefix
          Types::GrpcRouteMetadataMatchMethod::Prefix.new(
            params[:prefix]
          )
        when :suffix
          Types::GrpcRouteMetadataMatchMethod::Suffix.new(
            params[:suffix]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :exact, :regex, :range, :prefix, :suffix set"
        end
      end
    end

    module GrpcTimeout
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrpcTimeout, context: context)
        type = Types::GrpcTimeout.new
        type.per_request = Duration.build(params[:per_request], context: "#{context}[:per_request]") unless params[:per_request].nil?
        type.idle = Duration.build(params[:idle], context: "#{context}[:idle]") unless params[:idle].nil?
        type
      end
    end

    module HeaderMatchMethod
      def self.build(params, context: '')
        return params if params.is_a?(Types::HeaderMatchMethod)
        Hearth::Validator.validate!(params, ::Hash, Types::HeaderMatchMethod, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :exact
          Types::HeaderMatchMethod::Exact.new(
            params[:exact]
          )
        when :regex
          Types::HeaderMatchMethod::Regex.new(
            params[:regex]
          )
        when :range
          Types::HeaderMatchMethod::Range.new(
            (MatchRange.build(params[:range], context: "#{context}[:range]") unless params[:range].nil?)
          )
        when :prefix
          Types::HeaderMatchMethod::Prefix.new(
            params[:prefix]
          )
        when :suffix
          Types::HeaderMatchMethod::Suffix.new(
            params[:suffix]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :exact, :regex, :range, :prefix, :suffix set"
        end
      end
    end

    module HealthCheckPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HealthCheckPolicy, context: context)
        type = Types::HealthCheckPolicy.new
        type.timeout_millis = params[:timeout_millis]
        type.interval_millis = params[:interval_millis]
        type.protocol = params[:protocol]
        type.port = params[:port]
        type.path = params[:path]
        type.healthy_threshold = params[:healthy_threshold]
        type.unhealthy_threshold = params[:unhealthy_threshold]
        type
      end
    end

    module HttpGatewayRoute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpGatewayRoute, context: context)
        type = Types::HttpGatewayRoute.new
        type.match = HttpGatewayRouteMatch.build(params[:match], context: "#{context}[:match]") unless params[:match].nil?
        type.action = HttpGatewayRouteAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type
      end
    end

    module HttpGatewayRouteAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpGatewayRouteAction, context: context)
        type = Types::HttpGatewayRouteAction.new
        type.target = GatewayRouteTarget.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.rewrite = HttpGatewayRouteRewrite.build(params[:rewrite], context: "#{context}[:rewrite]") unless params[:rewrite].nil?
        type
      end
    end

    module HttpGatewayRouteHeader
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpGatewayRouteHeader, context: context)
        type = Types::HttpGatewayRouteHeader.new
        type.name = params[:name]
        type.invert = params[:invert]
        type.match = HeaderMatchMethod.build(params[:match], context: "#{context}[:match]") unless params[:match].nil?
        type
      end
    end

    module HttpGatewayRouteHeaders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HttpGatewayRouteHeader.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HttpGatewayRouteMatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpGatewayRouteMatch, context: context)
        type = Types::HttpGatewayRouteMatch.new
        type.prefix = params[:prefix]
        type.path = HttpPathMatch.build(params[:path], context: "#{context}[:path]") unless params[:path].nil?
        type.query_parameters = HttpQueryParameters.build(params[:query_parameters], context: "#{context}[:query_parameters]") unless params[:query_parameters].nil?
        type.member_method = params[:member_method]
        type.hostname = GatewayRouteHostnameMatch.build(params[:hostname], context: "#{context}[:hostname]") unless params[:hostname].nil?
        type.headers = HttpGatewayRouteHeaders.build(params[:headers], context: "#{context}[:headers]") unless params[:headers].nil?
        type
      end
    end

    module HttpGatewayRoutePathRewrite
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpGatewayRoutePathRewrite, context: context)
        type = Types::HttpGatewayRoutePathRewrite.new
        type.exact = params[:exact]
        type
      end
    end

    module HttpGatewayRoutePrefixRewrite
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpGatewayRoutePrefixRewrite, context: context)
        type = Types::HttpGatewayRoutePrefixRewrite.new
        type.default_prefix = params[:default_prefix]
        type.value = params[:value]
        type
      end
    end

    module HttpGatewayRouteRewrite
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpGatewayRouteRewrite, context: context)
        type = Types::HttpGatewayRouteRewrite.new
        type.prefix = HttpGatewayRoutePrefixRewrite.build(params[:prefix], context: "#{context}[:prefix]") unless params[:prefix].nil?
        type.path = HttpGatewayRoutePathRewrite.build(params[:path], context: "#{context}[:path]") unless params[:path].nil?
        type.hostname = GatewayRouteHostnameRewrite.build(params[:hostname], context: "#{context}[:hostname]") unless params[:hostname].nil?
        type
      end
    end

    module HttpPathMatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpPathMatch, context: context)
        type = Types::HttpPathMatch.new
        type.exact = params[:exact]
        type.regex = params[:regex]
        type
      end
    end

    module HttpQueryParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpQueryParameter, context: context)
        type = Types::HttpQueryParameter.new
        type.name = params[:name]
        type.match = QueryParameterMatch.build(params[:match], context: "#{context}[:match]") unless params[:match].nil?
        type
      end
    end

    module HttpQueryParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HttpQueryParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HttpRetryPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpRetryPolicy, context: context)
        type = Types::HttpRetryPolicy.new
        type.per_retry_timeout = Duration.build(params[:per_retry_timeout], context: "#{context}[:per_retry_timeout]") unless params[:per_retry_timeout].nil?
        type.max_retries = params[:max_retries]
        type.http_retry_events = HttpRetryPolicyEvents.build(params[:http_retry_events], context: "#{context}[:http_retry_events]") unless params[:http_retry_events].nil?
        type.tcp_retry_events = TcpRetryPolicyEvents.build(params[:tcp_retry_events], context: "#{context}[:tcp_retry_events]") unless params[:tcp_retry_events].nil?
        type
      end
    end

    module HttpRetryPolicyEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module HttpRoute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpRoute, context: context)
        type = Types::HttpRoute.new
        type.match = HttpRouteMatch.build(params[:match], context: "#{context}[:match]") unless params[:match].nil?
        type.action = HttpRouteAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.retry_policy = HttpRetryPolicy.build(params[:retry_policy], context: "#{context}[:retry_policy]") unless params[:retry_policy].nil?
        type.timeout = HttpTimeout.build(params[:timeout], context: "#{context}[:timeout]") unless params[:timeout].nil?
        type
      end
    end

    module HttpRouteAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpRouteAction, context: context)
        type = Types::HttpRouteAction.new
        type.weighted_targets = WeightedTargets.build(params[:weighted_targets], context: "#{context}[:weighted_targets]") unless params[:weighted_targets].nil?
        type
      end
    end

    module HttpRouteHeader
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpRouteHeader, context: context)
        type = Types::HttpRouteHeader.new
        type.name = params[:name]
        type.invert = params[:invert]
        type.match = HeaderMatchMethod.build(params[:match], context: "#{context}[:match]") unless params[:match].nil?
        type
      end
    end

    module HttpRouteHeaders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HttpRouteHeader.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HttpRouteMatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpRouteMatch, context: context)
        type = Types::HttpRouteMatch.new
        type.prefix = params[:prefix]
        type.path = HttpPathMatch.build(params[:path], context: "#{context}[:path]") unless params[:path].nil?
        type.query_parameters = HttpQueryParameters.build(params[:query_parameters], context: "#{context}[:query_parameters]") unless params[:query_parameters].nil?
        type.member_method = params[:member_method]
        type.scheme = params[:scheme]
        type.headers = HttpRouteHeaders.build(params[:headers], context: "#{context}[:headers]") unless params[:headers].nil?
        type
      end
    end

    module HttpTimeout
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpTimeout, context: context)
        type = Types::HttpTimeout.new
        type.per_request = Duration.build(params[:per_request], context: "#{context}[:per_request]") unless params[:per_request].nil?
        type.idle = Duration.build(params[:idle], context: "#{context}[:idle]") unless params[:idle].nil?
        type
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListGatewayRoutesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGatewayRoutesInput, context: context)
        type = Types::ListGatewayRoutesInput.new
        type.mesh_name = params[:mesh_name]
        type.virtual_gateway_name = params[:virtual_gateway_name]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module ListGatewayRoutesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGatewayRoutesOutput, context: context)
        type = Types::ListGatewayRoutesOutput.new
        type.gateway_routes = GatewayRouteList.build(params[:gateway_routes], context: "#{context}[:gateway_routes]") unless params[:gateway_routes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMeshesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMeshesInput, context: context)
        type = Types::ListMeshesInput.new
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListMeshesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMeshesOutput, context: context)
        type = Types::ListMeshesOutput.new
        type.meshes = MeshList.build(params[:meshes], context: "#{context}[:meshes]") unless params[:meshes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRoutesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoutesInput, context: context)
        type = Types::ListRoutesInput.new
        type.mesh_name = params[:mesh_name]
        type.virtual_router_name = params[:virtual_router_name]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module ListRoutesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoutesOutput, context: context)
        type = Types::ListRoutesOutput.new
        type.routes = RouteList.build(params[:routes], context: "#{context}[:routes]") unless params[:routes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListVirtualGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualGatewaysInput, context: context)
        type = Types::ListVirtualGatewaysInput.new
        type.mesh_name = params[:mesh_name]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module ListVirtualGatewaysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualGatewaysOutput, context: context)
        type = Types::ListVirtualGatewaysOutput.new
        type.virtual_gateways = VirtualGatewayList.build(params[:virtual_gateways], context: "#{context}[:virtual_gateways]") unless params[:virtual_gateways].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListVirtualNodesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualNodesInput, context: context)
        type = Types::ListVirtualNodesInput.new
        type.mesh_name = params[:mesh_name]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module ListVirtualNodesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualNodesOutput, context: context)
        type = Types::ListVirtualNodesOutput.new
        type.virtual_nodes = VirtualNodeList.build(params[:virtual_nodes], context: "#{context}[:virtual_nodes]") unless params[:virtual_nodes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListVirtualRoutersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualRoutersInput, context: context)
        type = Types::ListVirtualRoutersInput.new
        type.mesh_name = params[:mesh_name]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module ListVirtualRoutersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualRoutersOutput, context: context)
        type = Types::ListVirtualRoutersOutput.new
        type.virtual_routers = VirtualRouterList.build(params[:virtual_routers], context: "#{context}[:virtual_routers]") unless params[:virtual_routers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListVirtualServicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualServicesInput, context: context)
        type = Types::ListVirtualServicesInput.new
        type.mesh_name = params[:mesh_name]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module ListVirtualServicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualServicesOutput, context: context)
        type = Types::ListVirtualServicesOutput.new
        type.virtual_services = VirtualServiceList.build(params[:virtual_services], context: "#{context}[:virtual_services]") unless params[:virtual_services].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Listener
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Listener, context: context)
        type = Types::Listener.new
        type.port_mapping = PortMapping.build(params[:port_mapping], context: "#{context}[:port_mapping]") unless params[:port_mapping].nil?
        type.tls = ListenerTls.build(params[:tls], context: "#{context}[:tls]") unless params[:tls].nil?
        type.health_check = HealthCheckPolicy.build(params[:health_check], context: "#{context}[:health_check]") unless params[:health_check].nil?
        type.timeout = ListenerTimeout.build(params[:timeout], context: "#{context}[:timeout]") unless params[:timeout].nil?
        type.outlier_detection = OutlierDetection.build(params[:outlier_detection], context: "#{context}[:outlier_detection]") unless params[:outlier_detection].nil?
        type.connection_pool = VirtualNodeConnectionPool.build(params[:connection_pool], context: "#{context}[:connection_pool]") unless params[:connection_pool].nil?
        type
      end
    end

    module ListenerTimeout
      def self.build(params, context: '')
        return params if params.is_a?(Types::ListenerTimeout)
        Hearth::Validator.validate!(params, ::Hash, Types::ListenerTimeout, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :tcp
          Types::ListenerTimeout::Tcp.new(
            (TcpTimeout.build(params[:tcp], context: "#{context}[:tcp]") unless params[:tcp].nil?)
          )
        when :http
          Types::ListenerTimeout::Http.new(
            (HttpTimeout.build(params[:http], context: "#{context}[:http]") unless params[:http].nil?)
          )
        when :http2
          Types::ListenerTimeout::Http2.new(
            (HttpTimeout.build(params[:http2], context: "#{context}[:http2]") unless params[:http2].nil?)
          )
        when :grpc
          Types::ListenerTimeout::Grpc.new(
            (GrpcTimeout.build(params[:grpc], context: "#{context}[:grpc]") unless params[:grpc].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :tcp, :http, :http2, :grpc set"
        end
      end
    end

    module ListenerTls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListenerTls, context: context)
        type = Types::ListenerTls.new
        type.mode = params[:mode]
        type.certificate = ListenerTlsCertificate.build(params[:certificate], context: "#{context}[:certificate]") unless params[:certificate].nil?
        type.validation = ListenerTlsValidationContext.build(params[:validation], context: "#{context}[:validation]") unless params[:validation].nil?
        type
      end
    end

    module ListenerTlsAcmCertificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListenerTlsAcmCertificate, context: context)
        type = Types::ListenerTlsAcmCertificate.new
        type.certificate_arn = params[:certificate_arn]
        type
      end
    end

    module ListenerTlsCertificate
      def self.build(params, context: '')
        return params if params.is_a?(Types::ListenerTlsCertificate)
        Hearth::Validator.validate!(params, ::Hash, Types::ListenerTlsCertificate, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :acm
          Types::ListenerTlsCertificate::Acm.new(
            (ListenerTlsAcmCertificate.build(params[:acm], context: "#{context}[:acm]") unless params[:acm].nil?)
          )
        when :file
          Types::ListenerTlsCertificate::File.new(
            (ListenerTlsFileCertificate.build(params[:file], context: "#{context}[:file]") unless params[:file].nil?)
          )
        when :sds
          Types::ListenerTlsCertificate::Sds.new(
            (ListenerTlsSdsCertificate.build(params[:sds], context: "#{context}[:sds]") unless params[:sds].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :acm, :file, :sds set"
        end
      end
    end

    module ListenerTlsFileCertificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListenerTlsFileCertificate, context: context)
        type = Types::ListenerTlsFileCertificate.new
        type.certificate_chain = params[:certificate_chain]
        type.private_key = params[:private_key]
        type
      end
    end

    module ListenerTlsSdsCertificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListenerTlsSdsCertificate, context: context)
        type = Types::ListenerTlsSdsCertificate.new
        type.secret_name = params[:secret_name]
        type
      end
    end

    module ListenerTlsValidationContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListenerTlsValidationContext, context: context)
        type = Types::ListenerTlsValidationContext.new
        type.member_trust = ListenerTlsValidationContextTrust.build(params[:member_trust], context: "#{context}[:member_trust]") unless params[:member_trust].nil?
        type.subject_alternative_names = SubjectAlternativeNames.build(params[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless params[:subject_alternative_names].nil?
        type
      end
    end

    module ListenerTlsValidationContextTrust
      def self.build(params, context: '')
        return params if params.is_a?(Types::ListenerTlsValidationContextTrust)
        Hearth::Validator.validate!(params, ::Hash, Types::ListenerTlsValidationContextTrust, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :file
          Types::ListenerTlsValidationContextTrust::File.new(
            (TlsValidationContextFileTrust.build(params[:file], context: "#{context}[:file]") unless params[:file].nil?)
          )
        when :sds
          Types::ListenerTlsValidationContextTrust::Sds.new(
            (TlsValidationContextSdsTrust.build(params[:sds], context: "#{context}[:sds]") unless params[:sds].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :file, :sds set"
        end
      end
    end

    module Listeners
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Listener.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Logging
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Logging, context: context)
        type = Types::Logging.new
        type.access_log = AccessLog.build(params[:access_log], context: "#{context}[:access_log]") unless params[:access_log].nil?
        type
      end
    end

    module MatchRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MatchRange, context: context)
        type = Types::MatchRange.new
        type.start = params[:start]
        type.end = params[:end]
        type
      end
    end

    module MeshData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MeshData, context: context)
        type = Types::MeshData.new
        type.mesh_name = params[:mesh_name]
        type.spec = MeshSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.metadata = ResourceMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.status = MeshStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module MeshList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MeshRef.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MeshRef
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MeshRef, context: context)
        type = Types::MeshRef.new
        type.mesh_name = params[:mesh_name]
        type.mesh_owner = params[:mesh_owner]
        type.resource_owner = params[:resource_owner]
        type.arn = params[:arn]
        type.version = params[:version]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module MeshServiceDiscovery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MeshServiceDiscovery, context: context)
        type = Types::MeshServiceDiscovery.new
        type.ip_preference = params[:ip_preference]
        type
      end
    end

    module MeshSpec
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MeshSpec, context: context)
        type = Types::MeshSpec.new
        type.egress_filter = EgressFilter.build(params[:egress_filter], context: "#{context}[:egress_filter]") unless params[:egress_filter].nil?
        type.service_discovery = MeshServiceDiscovery.build(params[:service_discovery], context: "#{context}[:service_discovery]") unless params[:service_discovery].nil?
        type
      end
    end

    module MeshStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MeshStatus, context: context)
        type = Types::MeshStatus.new
        type.status = params[:status]
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module OutlierDetection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutlierDetection, context: context)
        type = Types::OutlierDetection.new
        type.max_server_errors = params[:max_server_errors]
        type.interval = Duration.build(params[:interval], context: "#{context}[:interval]") unless params[:interval].nil?
        type.base_ejection_duration = Duration.build(params[:base_ejection_duration], context: "#{context}[:base_ejection_duration]") unless params[:base_ejection_duration].nil?
        type.max_ejection_percent = params[:max_ejection_percent]
        type
      end
    end

    module PortMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortMapping, context: context)
        type = Types::PortMapping.new
        type.port = params[:port]
        type.protocol = params[:protocol]
        type
      end
    end

    module PortSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module QueryParameterMatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryParameterMatch, context: context)
        type = Types::QueryParameterMatch.new
        type.exact = params[:exact]
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceMetadata, context: context)
        type = Types::ResourceMetadata.new
        type.arn = params[:arn]
        type.version = params[:version]
        type.uid = params[:uid]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.mesh_owner = params[:mesh_owner]
        type.resource_owner = params[:resource_owner]
        type
      end
    end

    module RouteData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteData, context: context)
        type = Types::RouteData.new
        type.mesh_name = params[:mesh_name]
        type.virtual_router_name = params[:virtual_router_name]
        type.route_name = params[:route_name]
        type.spec = RouteSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.metadata = ResourceMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.status = RouteStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module RouteList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RouteRef.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RouteRef
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteRef, context: context)
        type = Types::RouteRef.new
        type.mesh_name = params[:mesh_name]
        type.virtual_router_name = params[:virtual_router_name]
        type.route_name = params[:route_name]
        type.mesh_owner = params[:mesh_owner]
        type.resource_owner = params[:resource_owner]
        type.arn = params[:arn]
        type.version = params[:version]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module RouteSpec
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteSpec, context: context)
        type = Types::RouteSpec.new
        type.priority = params[:priority]
        type.http_route = HttpRoute.build(params[:http_route], context: "#{context}[:http_route]") unless params[:http_route].nil?
        type.tcp_route = TcpRoute.build(params[:tcp_route], context: "#{context}[:tcp_route]") unless params[:tcp_route].nil?
        type.http2_route = HttpRoute.build(params[:http2_route], context: "#{context}[:http2_route]") unless params[:http2_route].nil?
        type.grpc_route = GrpcRoute.build(params[:grpc_route], context: "#{context}[:grpc_route]") unless params[:grpc_route].nil?
        type
      end
    end

    module RouteStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteStatus, context: context)
        type = Types::RouteStatus.new
        type.status = params[:status]
        type
      end
    end

    module ServiceDiscovery
      def self.build(params, context: '')
        return params if params.is_a?(Types::ServiceDiscovery)
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceDiscovery, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :dns
          Types::ServiceDiscovery::Dns.new(
            (DnsServiceDiscovery.build(params[:dns], context: "#{context}[:dns]") unless params[:dns].nil?)
          )
        when :aws_cloud_map
          Types::ServiceDiscovery::AwsCloudMap.new(
            (AwsCloudMapServiceDiscovery.build(params[:aws_cloud_map], context: "#{context}[:aws_cloud_map]") unless params[:aws_cloud_map].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :dns, :aws_cloud_map set"
        end
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module SubjectAlternativeNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubjectAlternativeNameMatchers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubjectAlternativeNameMatchers, context: context)
        type = Types::SubjectAlternativeNameMatchers.new
        type.exact = SubjectAlternativeNameList.build(params[:exact], context: "#{context}[:exact]") unless params[:exact].nil?
        type
      end
    end

    module SubjectAlternativeNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubjectAlternativeNames, context: context)
        type = Types::SubjectAlternativeNames.new
        type.match = SubjectAlternativeNameMatchers.build(params[:match], context: "#{context}[:match]") unless params[:match].nil?
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagRef.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagRef
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagRef, context: context)
        type = Types::TagRef.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TcpRetryPolicyEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TcpRoute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TcpRoute, context: context)
        type = Types::TcpRoute.new
        type.action = TcpRouteAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.timeout = TcpTimeout.build(params[:timeout], context: "#{context}[:timeout]") unless params[:timeout].nil?
        type
      end
    end

    module TcpRouteAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TcpRouteAction, context: context)
        type = Types::TcpRouteAction.new
        type.weighted_targets = WeightedTargets.build(params[:weighted_targets], context: "#{context}[:weighted_targets]") unless params[:weighted_targets].nil?
        type
      end
    end

    module TcpTimeout
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TcpTimeout, context: context)
        type = Types::TcpTimeout.new
        type.idle = Duration.build(params[:idle], context: "#{context}[:idle]") unless params[:idle].nil?
        type
      end
    end

    module TlsValidationContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TlsValidationContext, context: context)
        type = Types::TlsValidationContext.new
        type.member_trust = TlsValidationContextTrust.build(params[:member_trust], context: "#{context}[:member_trust]") unless params[:member_trust].nil?
        type.subject_alternative_names = SubjectAlternativeNames.build(params[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless params[:subject_alternative_names].nil?
        type
      end
    end

    module TlsValidationContextAcmTrust
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TlsValidationContextAcmTrust, context: context)
        type = Types::TlsValidationContextAcmTrust.new
        type.certificate_authority_arns = CertificateAuthorityArns.build(params[:certificate_authority_arns], context: "#{context}[:certificate_authority_arns]") unless params[:certificate_authority_arns].nil?
        type
      end
    end

    module TlsValidationContextFileTrust
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TlsValidationContextFileTrust, context: context)
        type = Types::TlsValidationContextFileTrust.new
        type.certificate_chain = params[:certificate_chain]
        type
      end
    end

    module TlsValidationContextSdsTrust
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TlsValidationContextSdsTrust, context: context)
        type = Types::TlsValidationContextSdsTrust.new
        type.secret_name = params[:secret_name]
        type
      end
    end

    module TlsValidationContextTrust
      def self.build(params, context: '')
        return params if params.is_a?(Types::TlsValidationContextTrust)
        Hearth::Validator.validate!(params, ::Hash, Types::TlsValidationContextTrust, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :acm
          Types::TlsValidationContextTrust::Acm.new(
            (TlsValidationContextAcmTrust.build(params[:acm], context: "#{context}[:acm]") unless params[:acm].nil?)
          )
        when :file
          Types::TlsValidationContextTrust::File.new(
            (TlsValidationContextFileTrust.build(params[:file], context: "#{context}[:file]") unless params[:file].nil?)
          )
        when :sds
          Types::TlsValidationContextTrust::Sds.new(
            (TlsValidationContextSdsTrust.build(params[:sds], context: "#{context}[:sds]") unless params[:sds].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :acm, :file, :sds set"
        end
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateGatewayRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayRouteInput, context: context)
        type = Types::UpdateGatewayRouteInput.new
        type.gateway_route_name = params[:gateway_route_name]
        type.mesh_name = params[:mesh_name]
        type.virtual_gateway_name = params[:virtual_gateway_name]
        type.spec = GatewayRouteSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module UpdateGatewayRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayRouteOutput, context: context)
        type = Types::UpdateGatewayRouteOutput.new
        type.gateway_route = GatewayRouteData.build(params[:gateway_route], context: "#{context}[:gateway_route]") unless params[:gateway_route].nil?
        type
      end
    end

    module UpdateMeshInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMeshInput, context: context)
        type = Types::UpdateMeshInput.new
        type.mesh_name = params[:mesh_name]
        type.spec = MeshSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateMeshOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMeshOutput, context: context)
        type = Types::UpdateMeshOutput.new
        type.mesh = MeshData.build(params[:mesh], context: "#{context}[:mesh]") unless params[:mesh].nil?
        type
      end
    end

    module UpdateRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRouteInput, context: context)
        type = Types::UpdateRouteInput.new
        type.route_name = params[:route_name]
        type.mesh_name = params[:mesh_name]
        type.virtual_router_name = params[:virtual_router_name]
        type.spec = RouteSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module UpdateRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRouteOutput, context: context)
        type = Types::UpdateRouteOutput.new
        type.route = RouteData.build(params[:route], context: "#{context}[:route]") unless params[:route].nil?
        type
      end
    end

    module UpdateVirtualGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVirtualGatewayInput, context: context)
        type = Types::UpdateVirtualGatewayInput.new
        type.virtual_gateway_name = params[:virtual_gateway_name]
        type.mesh_name = params[:mesh_name]
        type.spec = VirtualGatewaySpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module UpdateVirtualGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVirtualGatewayOutput, context: context)
        type = Types::UpdateVirtualGatewayOutput.new
        type.virtual_gateway = VirtualGatewayData.build(params[:virtual_gateway], context: "#{context}[:virtual_gateway]") unless params[:virtual_gateway].nil?
        type
      end
    end

    module UpdateVirtualNodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVirtualNodeInput, context: context)
        type = Types::UpdateVirtualNodeInput.new
        type.virtual_node_name = params[:virtual_node_name]
        type.mesh_name = params[:mesh_name]
        type.spec = VirtualNodeSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module UpdateVirtualNodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVirtualNodeOutput, context: context)
        type = Types::UpdateVirtualNodeOutput.new
        type.virtual_node = VirtualNodeData.build(params[:virtual_node], context: "#{context}[:virtual_node]") unless params[:virtual_node].nil?
        type
      end
    end

    module UpdateVirtualRouterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVirtualRouterInput, context: context)
        type = Types::UpdateVirtualRouterInput.new
        type.virtual_router_name = params[:virtual_router_name]
        type.mesh_name = params[:mesh_name]
        type.spec = VirtualRouterSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module UpdateVirtualRouterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVirtualRouterOutput, context: context)
        type = Types::UpdateVirtualRouterOutput.new
        type.virtual_router = VirtualRouterData.build(params[:virtual_router], context: "#{context}[:virtual_router]") unless params[:virtual_router].nil?
        type
      end
    end

    module UpdateVirtualServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVirtualServiceInput, context: context)
        type = Types::UpdateVirtualServiceInput.new
        type.virtual_service_name = params[:virtual_service_name]
        type.mesh_name = params[:mesh_name]
        type.spec = VirtualServiceSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.mesh_owner = params[:mesh_owner]
        type
      end
    end

    module UpdateVirtualServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVirtualServiceOutput, context: context)
        type = Types::UpdateVirtualServiceOutput.new
        type.virtual_service = VirtualServiceData.build(params[:virtual_service], context: "#{context}[:virtual_service]") unless params[:virtual_service].nil?
        type
      end
    end

    module VirtualGatewayAccessLog
      def self.build(params, context: '')
        return params if params.is_a?(Types::VirtualGatewayAccessLog)
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayAccessLog, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :file
          Types::VirtualGatewayAccessLog::File.new(
            (VirtualGatewayFileAccessLog.build(params[:file], context: "#{context}[:file]") unless params[:file].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :file set"
        end
      end
    end

    module VirtualGatewayBackendDefaults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayBackendDefaults, context: context)
        type = Types::VirtualGatewayBackendDefaults.new
        type.client_policy = VirtualGatewayClientPolicy.build(params[:client_policy], context: "#{context}[:client_policy]") unless params[:client_policy].nil?
        type
      end
    end

    module VirtualGatewayCertificateAuthorityArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VirtualGatewayClientPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayClientPolicy, context: context)
        type = Types::VirtualGatewayClientPolicy.new
        type.tls = VirtualGatewayClientPolicyTls.build(params[:tls], context: "#{context}[:tls]") unless params[:tls].nil?
        type
      end
    end

    module VirtualGatewayClientPolicyTls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayClientPolicyTls, context: context)
        type = Types::VirtualGatewayClientPolicyTls.new
        type.enforce = params[:enforce]
        type.ports = PortSet.build(params[:ports], context: "#{context}[:ports]") unless params[:ports].nil?
        type.certificate = VirtualGatewayClientTlsCertificate.build(params[:certificate], context: "#{context}[:certificate]") unless params[:certificate].nil?
        type.validation = VirtualGatewayTlsValidationContext.build(params[:validation], context: "#{context}[:validation]") unless params[:validation].nil?
        type
      end
    end

    module VirtualGatewayClientTlsCertificate
      def self.build(params, context: '')
        return params if params.is_a?(Types::VirtualGatewayClientTlsCertificate)
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayClientTlsCertificate, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :file
          Types::VirtualGatewayClientTlsCertificate::File.new(
            (VirtualGatewayListenerTlsFileCertificate.build(params[:file], context: "#{context}[:file]") unless params[:file].nil?)
          )
        when :sds
          Types::VirtualGatewayClientTlsCertificate::Sds.new(
            (VirtualGatewayListenerTlsSdsCertificate.build(params[:sds], context: "#{context}[:sds]") unless params[:sds].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :file, :sds set"
        end
      end
    end

    module VirtualGatewayConnectionPool
      def self.build(params, context: '')
        return params if params.is_a?(Types::VirtualGatewayConnectionPool)
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayConnectionPool, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :http
          Types::VirtualGatewayConnectionPool::Http.new(
            (VirtualGatewayHttpConnectionPool.build(params[:http], context: "#{context}[:http]") unless params[:http].nil?)
          )
        when :http2
          Types::VirtualGatewayConnectionPool::Http2.new(
            (VirtualGatewayHttp2ConnectionPool.build(params[:http2], context: "#{context}[:http2]") unless params[:http2].nil?)
          )
        when :grpc
          Types::VirtualGatewayConnectionPool::Grpc.new(
            (VirtualGatewayGrpcConnectionPool.build(params[:grpc], context: "#{context}[:grpc]") unless params[:grpc].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :http, :http2, :grpc set"
        end
      end
    end

    module VirtualGatewayData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayData, context: context)
        type = Types::VirtualGatewayData.new
        type.mesh_name = params[:mesh_name]
        type.virtual_gateway_name = params[:virtual_gateway_name]
        type.spec = VirtualGatewaySpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.metadata = ResourceMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.status = VirtualGatewayStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module VirtualGatewayFileAccessLog
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayFileAccessLog, context: context)
        type = Types::VirtualGatewayFileAccessLog.new
        type.path = params[:path]
        type
      end
    end

    module VirtualGatewayGrpcConnectionPool
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayGrpcConnectionPool, context: context)
        type = Types::VirtualGatewayGrpcConnectionPool.new
        type.max_requests = params[:max_requests]
        type
      end
    end

    module VirtualGatewayHealthCheckPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayHealthCheckPolicy, context: context)
        type = Types::VirtualGatewayHealthCheckPolicy.new
        type.timeout_millis = params[:timeout_millis]
        type.interval_millis = params[:interval_millis]
        type.protocol = params[:protocol]
        type.port = params[:port]
        type.path = params[:path]
        type.healthy_threshold = params[:healthy_threshold]
        type.unhealthy_threshold = params[:unhealthy_threshold]
        type
      end
    end

    module VirtualGatewayHttp2ConnectionPool
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayHttp2ConnectionPool, context: context)
        type = Types::VirtualGatewayHttp2ConnectionPool.new
        type.max_requests = params[:max_requests]
        type
      end
    end

    module VirtualGatewayHttpConnectionPool
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayHttpConnectionPool, context: context)
        type = Types::VirtualGatewayHttpConnectionPool.new
        type.max_connections = params[:max_connections]
        type.max_pending_requests = params[:max_pending_requests]
        type
      end
    end

    module VirtualGatewayList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VirtualGatewayRef.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VirtualGatewayListener
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayListener, context: context)
        type = Types::VirtualGatewayListener.new
        type.health_check = VirtualGatewayHealthCheckPolicy.build(params[:health_check], context: "#{context}[:health_check]") unless params[:health_check].nil?
        type.port_mapping = VirtualGatewayPortMapping.build(params[:port_mapping], context: "#{context}[:port_mapping]") unless params[:port_mapping].nil?
        type.tls = VirtualGatewayListenerTls.build(params[:tls], context: "#{context}[:tls]") unless params[:tls].nil?
        type.connection_pool = VirtualGatewayConnectionPool.build(params[:connection_pool], context: "#{context}[:connection_pool]") unless params[:connection_pool].nil?
        type
      end
    end

    module VirtualGatewayListenerTls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayListenerTls, context: context)
        type = Types::VirtualGatewayListenerTls.new
        type.mode = params[:mode]
        type.validation = VirtualGatewayListenerTlsValidationContext.build(params[:validation], context: "#{context}[:validation]") unless params[:validation].nil?
        type.certificate = VirtualGatewayListenerTlsCertificate.build(params[:certificate], context: "#{context}[:certificate]") unless params[:certificate].nil?
        type
      end
    end

    module VirtualGatewayListenerTlsAcmCertificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayListenerTlsAcmCertificate, context: context)
        type = Types::VirtualGatewayListenerTlsAcmCertificate.new
        type.certificate_arn = params[:certificate_arn]
        type
      end
    end

    module VirtualGatewayListenerTlsCertificate
      def self.build(params, context: '')
        return params if params.is_a?(Types::VirtualGatewayListenerTlsCertificate)
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayListenerTlsCertificate, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :acm
          Types::VirtualGatewayListenerTlsCertificate::Acm.new(
            (VirtualGatewayListenerTlsAcmCertificate.build(params[:acm], context: "#{context}[:acm]") unless params[:acm].nil?)
          )
        when :file
          Types::VirtualGatewayListenerTlsCertificate::File.new(
            (VirtualGatewayListenerTlsFileCertificate.build(params[:file], context: "#{context}[:file]") unless params[:file].nil?)
          )
        when :sds
          Types::VirtualGatewayListenerTlsCertificate::Sds.new(
            (VirtualGatewayListenerTlsSdsCertificate.build(params[:sds], context: "#{context}[:sds]") unless params[:sds].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :acm, :file, :sds set"
        end
      end
    end

    module VirtualGatewayListenerTlsFileCertificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayListenerTlsFileCertificate, context: context)
        type = Types::VirtualGatewayListenerTlsFileCertificate.new
        type.certificate_chain = params[:certificate_chain]
        type.private_key = params[:private_key]
        type
      end
    end

    module VirtualGatewayListenerTlsSdsCertificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayListenerTlsSdsCertificate, context: context)
        type = Types::VirtualGatewayListenerTlsSdsCertificate.new
        type.secret_name = params[:secret_name]
        type
      end
    end

    module VirtualGatewayListenerTlsValidationContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayListenerTlsValidationContext, context: context)
        type = Types::VirtualGatewayListenerTlsValidationContext.new
        type.member_trust = VirtualGatewayListenerTlsValidationContextTrust.build(params[:member_trust], context: "#{context}[:member_trust]") unless params[:member_trust].nil?
        type.subject_alternative_names = SubjectAlternativeNames.build(params[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless params[:subject_alternative_names].nil?
        type
      end
    end

    module VirtualGatewayListenerTlsValidationContextTrust
      def self.build(params, context: '')
        return params if params.is_a?(Types::VirtualGatewayListenerTlsValidationContextTrust)
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayListenerTlsValidationContextTrust, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :file
          Types::VirtualGatewayListenerTlsValidationContextTrust::File.new(
            (VirtualGatewayTlsValidationContextFileTrust.build(params[:file], context: "#{context}[:file]") unless params[:file].nil?)
          )
        when :sds
          Types::VirtualGatewayListenerTlsValidationContextTrust::Sds.new(
            (VirtualGatewayTlsValidationContextSdsTrust.build(params[:sds], context: "#{context}[:sds]") unless params[:sds].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :file, :sds set"
        end
      end
    end

    module VirtualGatewayListeners
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VirtualGatewayListener.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VirtualGatewayLogging
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayLogging, context: context)
        type = Types::VirtualGatewayLogging.new
        type.access_log = VirtualGatewayAccessLog.build(params[:access_log], context: "#{context}[:access_log]") unless params[:access_log].nil?
        type
      end
    end

    module VirtualGatewayPortMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayPortMapping, context: context)
        type = Types::VirtualGatewayPortMapping.new
        type.port = params[:port]
        type.protocol = params[:protocol]
        type
      end
    end

    module VirtualGatewayRef
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayRef, context: context)
        type = Types::VirtualGatewayRef.new
        type.mesh_name = params[:mesh_name]
        type.virtual_gateway_name = params[:virtual_gateway_name]
        type.mesh_owner = params[:mesh_owner]
        type.resource_owner = params[:resource_owner]
        type.arn = params[:arn]
        type.version = params[:version]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module VirtualGatewaySpec
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewaySpec, context: context)
        type = Types::VirtualGatewaySpec.new
        type.backend_defaults = VirtualGatewayBackendDefaults.build(params[:backend_defaults], context: "#{context}[:backend_defaults]") unless params[:backend_defaults].nil?
        type.listeners = VirtualGatewayListeners.build(params[:listeners], context: "#{context}[:listeners]") unless params[:listeners].nil?
        type.logging = VirtualGatewayLogging.build(params[:logging], context: "#{context}[:logging]") unless params[:logging].nil?
        type
      end
    end

    module VirtualGatewayStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayStatus, context: context)
        type = Types::VirtualGatewayStatus.new
        type.status = params[:status]
        type
      end
    end

    module VirtualGatewayTlsValidationContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayTlsValidationContext, context: context)
        type = Types::VirtualGatewayTlsValidationContext.new
        type.member_trust = VirtualGatewayTlsValidationContextTrust.build(params[:member_trust], context: "#{context}[:member_trust]") unless params[:member_trust].nil?
        type.subject_alternative_names = SubjectAlternativeNames.build(params[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless params[:subject_alternative_names].nil?
        type
      end
    end

    module VirtualGatewayTlsValidationContextAcmTrust
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayTlsValidationContextAcmTrust, context: context)
        type = Types::VirtualGatewayTlsValidationContextAcmTrust.new
        type.certificate_authority_arns = VirtualGatewayCertificateAuthorityArns.build(params[:certificate_authority_arns], context: "#{context}[:certificate_authority_arns]") unless params[:certificate_authority_arns].nil?
        type
      end
    end

    module VirtualGatewayTlsValidationContextFileTrust
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayTlsValidationContextFileTrust, context: context)
        type = Types::VirtualGatewayTlsValidationContextFileTrust.new
        type.certificate_chain = params[:certificate_chain]
        type
      end
    end

    module VirtualGatewayTlsValidationContextSdsTrust
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayTlsValidationContextSdsTrust, context: context)
        type = Types::VirtualGatewayTlsValidationContextSdsTrust.new
        type.secret_name = params[:secret_name]
        type
      end
    end

    module VirtualGatewayTlsValidationContextTrust
      def self.build(params, context: '')
        return params if params.is_a?(Types::VirtualGatewayTlsValidationContextTrust)
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualGatewayTlsValidationContextTrust, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :acm
          Types::VirtualGatewayTlsValidationContextTrust::Acm.new(
            (VirtualGatewayTlsValidationContextAcmTrust.build(params[:acm], context: "#{context}[:acm]") unless params[:acm].nil?)
          )
        when :file
          Types::VirtualGatewayTlsValidationContextTrust::File.new(
            (VirtualGatewayTlsValidationContextFileTrust.build(params[:file], context: "#{context}[:file]") unless params[:file].nil?)
          )
        when :sds
          Types::VirtualGatewayTlsValidationContextTrust::Sds.new(
            (VirtualGatewayTlsValidationContextSdsTrust.build(params[:sds], context: "#{context}[:sds]") unless params[:sds].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :acm, :file, :sds set"
        end
      end
    end

    module VirtualNodeConnectionPool
      def self.build(params, context: '')
        return params if params.is_a?(Types::VirtualNodeConnectionPool)
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualNodeConnectionPool, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :tcp
          Types::VirtualNodeConnectionPool::Tcp.new(
            (VirtualNodeTcpConnectionPool.build(params[:tcp], context: "#{context}[:tcp]") unless params[:tcp].nil?)
          )
        when :http
          Types::VirtualNodeConnectionPool::Http.new(
            (VirtualNodeHttpConnectionPool.build(params[:http], context: "#{context}[:http]") unless params[:http].nil?)
          )
        when :http2
          Types::VirtualNodeConnectionPool::Http2.new(
            (VirtualNodeHttp2ConnectionPool.build(params[:http2], context: "#{context}[:http2]") unless params[:http2].nil?)
          )
        when :grpc
          Types::VirtualNodeConnectionPool::Grpc.new(
            (VirtualNodeGrpcConnectionPool.build(params[:grpc], context: "#{context}[:grpc]") unless params[:grpc].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :tcp, :http, :http2, :grpc set"
        end
      end
    end

    module VirtualNodeData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualNodeData, context: context)
        type = Types::VirtualNodeData.new
        type.mesh_name = params[:mesh_name]
        type.virtual_node_name = params[:virtual_node_name]
        type.spec = VirtualNodeSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.metadata = ResourceMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.status = VirtualNodeStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module VirtualNodeGrpcConnectionPool
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualNodeGrpcConnectionPool, context: context)
        type = Types::VirtualNodeGrpcConnectionPool.new
        type.max_requests = params[:max_requests]
        type
      end
    end

    module VirtualNodeHttp2ConnectionPool
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualNodeHttp2ConnectionPool, context: context)
        type = Types::VirtualNodeHttp2ConnectionPool.new
        type.max_requests = params[:max_requests]
        type
      end
    end

    module VirtualNodeHttpConnectionPool
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualNodeHttpConnectionPool, context: context)
        type = Types::VirtualNodeHttpConnectionPool.new
        type.max_connections = params[:max_connections]
        type.max_pending_requests = params[:max_pending_requests]
        type
      end
    end

    module VirtualNodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VirtualNodeRef.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VirtualNodeRef
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualNodeRef, context: context)
        type = Types::VirtualNodeRef.new
        type.mesh_name = params[:mesh_name]
        type.virtual_node_name = params[:virtual_node_name]
        type.mesh_owner = params[:mesh_owner]
        type.resource_owner = params[:resource_owner]
        type.arn = params[:arn]
        type.version = params[:version]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module VirtualNodeServiceProvider
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualNodeServiceProvider, context: context)
        type = Types::VirtualNodeServiceProvider.new
        type.virtual_node_name = params[:virtual_node_name]
        type
      end
    end

    module VirtualNodeSpec
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualNodeSpec, context: context)
        type = Types::VirtualNodeSpec.new
        type.service_discovery = ServiceDiscovery.build(params[:service_discovery], context: "#{context}[:service_discovery]") unless params[:service_discovery].nil?
        type.listeners = Listeners.build(params[:listeners], context: "#{context}[:listeners]") unless params[:listeners].nil?
        type.backends = Backends.build(params[:backends], context: "#{context}[:backends]") unless params[:backends].nil?
        type.backend_defaults = BackendDefaults.build(params[:backend_defaults], context: "#{context}[:backend_defaults]") unless params[:backend_defaults].nil?
        type.logging = Logging.build(params[:logging], context: "#{context}[:logging]") unless params[:logging].nil?
        type
      end
    end

    module VirtualNodeStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualNodeStatus, context: context)
        type = Types::VirtualNodeStatus.new
        type.status = params[:status]
        type
      end
    end

    module VirtualNodeTcpConnectionPool
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualNodeTcpConnectionPool, context: context)
        type = Types::VirtualNodeTcpConnectionPool.new
        type.max_connections = params[:max_connections]
        type
      end
    end

    module VirtualRouterData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualRouterData, context: context)
        type = Types::VirtualRouterData.new
        type.mesh_name = params[:mesh_name]
        type.virtual_router_name = params[:virtual_router_name]
        type.spec = VirtualRouterSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.metadata = ResourceMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.status = VirtualRouterStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module VirtualRouterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VirtualRouterRef.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VirtualRouterListener
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualRouterListener, context: context)
        type = Types::VirtualRouterListener.new
        type.port_mapping = PortMapping.build(params[:port_mapping], context: "#{context}[:port_mapping]") unless params[:port_mapping].nil?
        type
      end
    end

    module VirtualRouterListeners
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VirtualRouterListener.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VirtualRouterRef
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualRouterRef, context: context)
        type = Types::VirtualRouterRef.new
        type.mesh_name = params[:mesh_name]
        type.virtual_router_name = params[:virtual_router_name]
        type.mesh_owner = params[:mesh_owner]
        type.resource_owner = params[:resource_owner]
        type.arn = params[:arn]
        type.version = params[:version]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module VirtualRouterServiceProvider
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualRouterServiceProvider, context: context)
        type = Types::VirtualRouterServiceProvider.new
        type.virtual_router_name = params[:virtual_router_name]
        type
      end
    end

    module VirtualRouterSpec
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualRouterSpec, context: context)
        type = Types::VirtualRouterSpec.new
        type.listeners = VirtualRouterListeners.build(params[:listeners], context: "#{context}[:listeners]") unless params[:listeners].nil?
        type
      end
    end

    module VirtualRouterStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualRouterStatus, context: context)
        type = Types::VirtualRouterStatus.new
        type.status = params[:status]
        type
      end
    end

    module VirtualServiceBackend
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualServiceBackend, context: context)
        type = Types::VirtualServiceBackend.new
        type.virtual_service_name = params[:virtual_service_name]
        type.client_policy = ClientPolicy.build(params[:client_policy], context: "#{context}[:client_policy]") unless params[:client_policy].nil?
        type
      end
    end

    module VirtualServiceData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualServiceData, context: context)
        type = Types::VirtualServiceData.new
        type.mesh_name = params[:mesh_name]
        type.virtual_service_name = params[:virtual_service_name]
        type.spec = VirtualServiceSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.metadata = ResourceMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.status = VirtualServiceStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module VirtualServiceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VirtualServiceRef.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VirtualServiceProvider
      def self.build(params, context: '')
        return params if params.is_a?(Types::VirtualServiceProvider)
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualServiceProvider, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :virtual_node
          Types::VirtualServiceProvider::VirtualNode.new(
            (VirtualNodeServiceProvider.build(params[:virtual_node], context: "#{context}[:virtual_node]") unless params[:virtual_node].nil?)
          )
        when :virtual_router
          Types::VirtualServiceProvider::VirtualRouter.new(
            (VirtualRouterServiceProvider.build(params[:virtual_router], context: "#{context}[:virtual_router]") unless params[:virtual_router].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :virtual_node, :virtual_router set"
        end
      end
    end

    module VirtualServiceRef
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualServiceRef, context: context)
        type = Types::VirtualServiceRef.new
        type.mesh_name = params[:mesh_name]
        type.virtual_service_name = params[:virtual_service_name]
        type.mesh_owner = params[:mesh_owner]
        type.resource_owner = params[:resource_owner]
        type.arn = params[:arn]
        type.version = params[:version]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module VirtualServiceSpec
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualServiceSpec, context: context)
        type = Types::VirtualServiceSpec.new
        type.provider = VirtualServiceProvider.build(params[:provider], context: "#{context}[:provider]") unless params[:provider].nil?
        type
      end
    end

    module VirtualServiceStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualServiceStatus, context: context)
        type = Types::VirtualServiceStatus.new
        type.status = params[:status]
        type
      end
    end

    module WeightedTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WeightedTarget, context: context)
        type = Types::WeightedTarget.new
        type.virtual_node = params[:virtual_node]
        type.weight = params[:weight]
        type
      end
    end

    module WeightedTargets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WeightedTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
