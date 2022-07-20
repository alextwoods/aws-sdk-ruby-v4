# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeStarConnections
  module Validators

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Connection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Connection, context: context)
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:provider_type], ::String, context: "#{context}[:provider_type]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:connection_status], ::String, context: "#{context}[:connection_status]")
        Hearth::Validator.validate!(input[:host_arn], ::String, context: "#{context}[:host_arn]")
      end
    end

    class ConnectionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Connection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionInput, context: context)
        Hearth::Validator.validate!(input[:provider_type], ::String, context: "#{context}[:provider_type]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:host_arn], ::String, context: "#{context}[:host_arn]")
      end
    end

    class CreateConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionOutput, context: context)
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateHostInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHostInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:provider_type], ::String, context: "#{context}[:provider_type]")
        Hearth::Validator.validate!(input[:provider_endpoint], ::String, context: "#{context}[:provider_endpoint]")
        VpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateHostOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHostOutput, context: context)
        Hearth::Validator.validate!(input[:host_arn], ::String, context: "#{context}[:host_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DeleteConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionInput, context: context)
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
      end
    end

    class DeleteConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionOutput, context: context)
      end
    end

    class DeleteHostInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHostInput, context: context)
        Hearth::Validator.validate!(input[:host_arn], ::String, context: "#{context}[:host_arn]")
      end
    end

    class DeleteHostOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHostOutput, context: context)
      end
    end

    class GetConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectionInput, context: context)
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
      end
    end

    class GetConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectionOutput, context: context)
        Connection.validate!(input[:connection], context: "#{context}[:connection]") unless input[:connection].nil?
      end
    end

    class GetHostInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHostInput, context: context)
        Hearth::Validator.validate!(input[:host_arn], ::String, context: "#{context}[:host_arn]")
      end
    end

    class GetHostOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHostOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:provider_type], ::String, context: "#{context}[:provider_type]")
        Hearth::Validator.validate!(input[:provider_endpoint], ::String, context: "#{context}[:provider_endpoint]")
        VpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
      end
    end

    class Host
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Host, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:host_arn], ::String, context: "#{context}[:host_arn]")
        Hearth::Validator.validate!(input[:provider_type], ::String, context: "#{context}[:provider_type]")
        Hearth::Validator.validate!(input[:provider_endpoint], ::String, context: "#{context}[:provider_endpoint]")
        VpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class HostList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Host.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectionsInput, context: context)
        Hearth::Validator.validate!(input[:provider_type_filter], ::String, context: "#{context}[:provider_type_filter]")
        Hearth::Validator.validate!(input[:host_arn_filter], ::String, context: "#{context}[:host_arn_filter]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConnectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectionsOutput, context: context)
        ConnectionList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHostsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHostsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHostsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHostsOutput, context: context)
        HostList.validate!(input[:hosts], context: "#{context}[:hosts]") unless input[:hosts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
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
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubnetIds
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
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class UnsupportedOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedOperationException, context: context)
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

    class UpdateHostInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHostInput, context: context)
        Hearth::Validator.validate!(input[:host_arn], ::String, context: "#{context}[:host_arn]")
        Hearth::Validator.validate!(input[:provider_endpoint], ::String, context: "#{context}[:provider_endpoint]")
        VpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
      end
    end

    class UpdateHostOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHostOutput, context: context)
      end
    end

    class VpcConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfiguration, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:tls_certificate], ::String, context: "#{context}[:tls_certificate]")
      end
    end

  end
end
