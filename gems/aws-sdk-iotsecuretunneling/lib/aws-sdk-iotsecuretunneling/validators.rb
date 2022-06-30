# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTSecureTunneling
  module Validators

    class CloseTunnelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloseTunnelInput, context: context)
        Hearth::Validator.validate!(input[:tunnel_id], ::String, context: "#{context}[:tunnel_id]")
        Hearth::Validator.validate!(input[:delete], ::TrueClass, ::FalseClass, context: "#{context}[:delete]")
      end
    end

    class CloseTunnelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloseTunnelOutput, context: context)
      end
    end

    class ConnectionState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionState, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class DescribeTunnelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTunnelInput, context: context)
        Hearth::Validator.validate!(input[:tunnel_id], ::String, context: "#{context}[:tunnel_id]")
      end
    end

    class DescribeTunnelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTunnelOutput, context: context)
        Validators::Tunnel.validate!(input[:tunnel], context: "#{context}[:tunnel]") unless input[:tunnel].nil?
      end
    end

    class DestinationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationConfig, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Validators::ServiceList.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTunnelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTunnelsInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTunnelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTunnelsOutput, context: context)
        Validators::TunnelSummaryList.validate!(input[:tunnel_summaries], context: "#{context}[:tunnel_summaries]") unless input[:tunnel_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class OpenTunnelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenTunnelInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Validators::TimeoutConfig.validate!(input[:timeout_config], context: "#{context}[:timeout_config]") unless input[:timeout_config].nil?
      end
    end

    class OpenTunnelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenTunnelOutput, context: context)
        Hearth::Validator.validate!(input[:tunnel_id], ::String, context: "#{context}[:tunnel_id]")
        Hearth::Validator.validate!(input[:tunnel_arn], ::String, context: "#{context}[:tunnel_arn]")
        Hearth::Validator.validate!(input[:source_access_token], ::String, context: "#{context}[:source_access_token]")
        Hearth::Validator.validate!(input[:destination_access_token], ::String, context: "#{context}[:destination_access_token]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RotateTunnelAccessTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RotateTunnelAccessTokenInput, context: context)
        Hearth::Validator.validate!(input[:tunnel_id], ::String, context: "#{context}[:tunnel_id]")
        Hearth::Validator.validate!(input[:client_mode], ::String, context: "#{context}[:client_mode]")
        Validators::DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
      end
    end

    class RotateTunnelAccessTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RotateTunnelAccessTokenOutput, context: context)
        Hearth::Validator.validate!(input[:tunnel_arn], ::String, context: "#{context}[:tunnel_arn]")
        Hearth::Validator.validate!(input[:source_access_token], ::String, context: "#{context}[:source_access_token]")
        Hearth::Validator.validate!(input[:destination_access_token], ::String, context: "#{context}[:destination_access_token]")
      end
    end

    class ServiceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
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
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TimeoutConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeoutConfig, context: context)
        Hearth::Validator.validate!(input[:max_lifetime_timeout_minutes], ::Integer, context: "#{context}[:max_lifetime_timeout_minutes]")
      end
    end

    class Tunnel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tunnel, context: context)
        Hearth::Validator.validate!(input[:tunnel_id], ::String, context: "#{context}[:tunnel_id]")
        Hearth::Validator.validate!(input[:tunnel_arn], ::String, context: "#{context}[:tunnel_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ConnectionState.validate!(input[:source_connection_state], context: "#{context}[:source_connection_state]") unless input[:source_connection_state].nil?
        Validators::ConnectionState.validate!(input[:destination_connection_state], context: "#{context}[:destination_connection_state]") unless input[:destination_connection_state].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Validators::TimeoutConfig.validate!(input[:timeout_config], context: "#{context}[:timeout_config]") unless input[:timeout_config].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class TunnelSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TunnelSummary, context: context)
        Hearth::Validator.validate!(input[:tunnel_id], ::String, context: "#{context}[:tunnel_id]")
        Hearth::Validator.validate!(input[:tunnel_arn], ::String, context: "#{context}[:tunnel_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class TunnelSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TunnelSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

  end
end
