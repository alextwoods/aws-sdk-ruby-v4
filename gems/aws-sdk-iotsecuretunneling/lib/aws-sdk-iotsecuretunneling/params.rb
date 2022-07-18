# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTSecureTunneling
  module Params

    module CloseTunnelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloseTunnelInput, context: context)
        type = Types::CloseTunnelInput.new
        type.tunnel_id = params[:tunnel_id]
        type.delete = params[:delete]
        type
      end
    end

    module CloseTunnelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloseTunnelOutput, context: context)
        type = Types::CloseTunnelOutput.new
        type
      end
    end

    module ConnectionState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionState, context: context)
        type = Types::ConnectionState.new
        type.status = params[:status]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module DescribeTunnelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTunnelInput, context: context)
        type = Types::DescribeTunnelInput.new
        type.tunnel_id = params[:tunnel_id]
        type
      end
    end

    module DescribeTunnelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTunnelOutput, context: context)
        type = Types::DescribeTunnelOutput.new
        type.tunnel = Tunnel.build(params[:tunnel], context: "#{context}[:tunnel]") unless params[:tunnel].nil?
        type
      end
    end

    module DestinationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationConfig, context: context)
        type = Types::DestinationConfig.new
        type.thing_name = params[:thing_name]
        type.services = ServiceList.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
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

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTunnelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTunnelsInput, context: context)
        type = Types::ListTunnelsInput.new
        type.thing_name = params[:thing_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTunnelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTunnelsOutput, context: context)
        type = Types::ListTunnelsOutput.new
        type.tunnel_summaries = TunnelSummaryList.build(params[:tunnel_summaries], context: "#{context}[:tunnel_summaries]") unless params[:tunnel_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module OpenTunnelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenTunnelInput, context: context)
        type = Types::OpenTunnelInput.new
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type.timeout_config = TimeoutConfig.build(params[:timeout_config], context: "#{context}[:timeout_config]") unless params[:timeout_config].nil?
        type
      end
    end

    module OpenTunnelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenTunnelOutput, context: context)
        type = Types::OpenTunnelOutput.new
        type.tunnel_id = params[:tunnel_id]
        type.tunnel_arn = params[:tunnel_arn]
        type.source_access_token = params[:source_access_token]
        type.destination_access_token = params[:destination_access_token]
        type
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

    module RotateTunnelAccessTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RotateTunnelAccessTokenInput, context: context)
        type = Types::RotateTunnelAccessTokenInput.new
        type.tunnel_id = params[:tunnel_id]
        type.client_mode = params[:client_mode]
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type
      end
    end

    module RotateTunnelAccessTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RotateTunnelAccessTokenOutput, context: context)
        type = Types::RotateTunnelAccessTokenOutput.new
        type.tunnel_arn = params[:tunnel_arn]
        type.source_access_token = params[:source_access_token]
        type.destination_access_token = params[:destination_access_token]
        type
      end
    end

    module ServiceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
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
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module TimeoutConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeoutConfig, context: context)
        type = Types::TimeoutConfig.new
        type.max_lifetime_timeout_minutes = params[:max_lifetime_timeout_minutes]
        type
      end
    end

    module Tunnel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tunnel, context: context)
        type = Types::Tunnel.new
        type.tunnel_id = params[:tunnel_id]
        type.tunnel_arn = params[:tunnel_arn]
        type.status = params[:status]
        type.source_connection_state = ConnectionState.build(params[:source_connection_state], context: "#{context}[:source_connection_state]") unless params[:source_connection_state].nil?
        type.destination_connection_state = ConnectionState.build(params[:destination_connection_state], context: "#{context}[:destination_connection_state]") unless params[:destination_connection_state].nil?
        type.description = params[:description]
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type.timeout_config = TimeoutConfig.build(params[:timeout_config], context: "#{context}[:timeout_config]") unless params[:timeout_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module TunnelSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TunnelSummary, context: context)
        type = Types::TunnelSummary.new
        type.tunnel_id = params[:tunnel_id]
        type.tunnel_arn = params[:tunnel_arn]
        type.status = params[:status]
        type.description = params[:description]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module TunnelSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TunnelSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

  end
end
