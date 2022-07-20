# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3Outposts
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
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

    module CreateEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEndpointInput, context: context)
        type = Types::CreateEndpointInput.new
        type.outpost_id = params[:outpost_id]
        type.subnet_id = params[:subnet_id]
        type.security_group_id = params[:security_group_id]
        type.access_type = params[:access_type]
        type.customer_owned_ipv4_pool = params[:customer_owned_ipv4_pool]
        type
      end
    end

    module CreateEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEndpointOutput, context: context)
        type = Types::CreateEndpointOutput.new
        type.endpoint_arn = params[:endpoint_arn]
        type
      end
    end

    module DeleteEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointInput, context: context)
        type = Types::DeleteEndpointInput.new
        type.endpoint_id = params[:endpoint_id]
        type.outpost_id = params[:outpost_id]
        type
      end
    end

    module DeleteEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointOutput, context: context)
        type = Types::DeleteEndpointOutput.new
        type
      end
    end

    module Endpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Endpoint, context: context)
        type = Types::Endpoint.new
        type.endpoint_arn = params[:endpoint_arn]
        type.outposts_id = params[:outposts_id]
        type.cidr_block = params[:cidr_block]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.network_interfaces = NetworkInterfaces.build(params[:network_interfaces], context: "#{context}[:network_interfaces]") unless params[:network_interfaces].nil?
        type.vpc_id = params[:vpc_id]
        type.subnet_id = params[:subnet_id]
        type.security_group_id = params[:security_group_id]
        type.access_type = params[:access_type]
        type.customer_owned_ipv4_pool = params[:customer_owned_ipv4_pool]
        type
      end
    end

    module Endpoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Endpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ListEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEndpointsInput, context: context)
        type = Types::ListEndpointsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEndpointsOutput, context: context)
        type = Types::ListEndpointsOutput.new
        type.endpoints = Endpoints.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSharedEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSharedEndpointsInput, context: context)
        type = Types::ListSharedEndpointsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.outpost_id = params[:outpost_id]
        type
      end
    end

    module ListSharedEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSharedEndpointsOutput, context: context)
        type = Types::ListSharedEndpointsOutput.new
        type.endpoints = Endpoints.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module NetworkInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInterface, context: context)
        type = Types::NetworkInterface.new
        type.network_interface_id = params[:network_interface_id]
        type
      end
    end

    module NetworkInterfaces
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkInterface.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
