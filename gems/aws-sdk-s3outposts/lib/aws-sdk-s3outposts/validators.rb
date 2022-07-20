# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::S3Outposts
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEndpointInput, context: context)
        Hearth::Validator.validate!(input[:outpost_id], ::String, context: "#{context}[:outpost_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:security_group_id], ::String, context: "#{context}[:security_group_id]")
        Hearth::Validator.validate!(input[:access_type], ::String, context: "#{context}[:access_type]")
        Hearth::Validator.validate!(input[:customer_owned_ipv4_pool], ::String, context: "#{context}[:customer_owned_ipv4_pool]")
      end
    end

    class CreateEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
      end
    end

    class DeleteEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
        Hearth::Validator.validate!(input[:outpost_id], ::String, context: "#{context}[:outpost_id]")
      end
    end

    class DeleteEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointOutput, context: context)
      end
    end

    class Endpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Endpoint, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
        Hearth::Validator.validate!(input[:outposts_id], ::String, context: "#{context}[:outposts_id]")
        Hearth::Validator.validate!(input[:cidr_block], ::String, context: "#{context}[:cidr_block]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        NetworkInterfaces.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:security_group_id], ::String, context: "#{context}[:security_group_id]")
        Hearth::Validator.validate!(input[:access_type], ::String, context: "#{context}[:access_type]")
        Hearth::Validator.validate!(input[:customer_owned_ipv4_pool], ::String, context: "#{context}[:customer_owned_ipv4_pool]")
      end
    end

    class Endpoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Endpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEndpointsOutput, context: context)
        Endpoints.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSharedEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSharedEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:outpost_id], ::String, context: "#{context}[:outpost_id]")
      end
    end

    class ListSharedEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSharedEndpointsOutput, context: context)
        Endpoints.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class NetworkInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterface, context: context)
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
      end
    end

    class NetworkInterfaces
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NetworkInterface.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
