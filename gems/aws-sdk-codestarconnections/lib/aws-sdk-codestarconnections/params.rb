# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CodeStarConnections
  module Params

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module Connection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Connection, context: context)
        type = Types::Connection.new
        type.connection_name = params[:connection_name]
        type.connection_arn = params[:connection_arn]
        type.provider_type = params[:provider_type]
        type.owner_account_id = params[:owner_account_id]
        type.connection_status = params[:connection_status]
        type.host_arn = params[:host_arn]
        type
      end
    end

    module ConnectionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Connection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionInput, context: context)
        type = Types::CreateConnectionInput.new
        type.provider_type = params[:provider_type]
        type.connection_name = params[:connection_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.host_arn = params[:host_arn]
        type
      end
    end

    module CreateConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionOutput, context: context)
        type = Types::CreateConnectionOutput.new
        type.connection_arn = params[:connection_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateHostInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHostInput, context: context)
        type = Types::CreateHostInput.new
        type.name = params[:name]
        type.provider_type = params[:provider_type]
        type.provider_endpoint = params[:provider_endpoint]
        type.vpc_configuration = VpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateHostOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHostOutput, context: context)
        type = Types::CreateHostOutput.new
        type.host_arn = params[:host_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DeleteConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionInput, context: context)
        type = Types::DeleteConnectionInput.new
        type.connection_arn = params[:connection_arn]
        type
      end
    end

    module DeleteConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionOutput, context: context)
        type = Types::DeleteConnectionOutput.new
        type
      end
    end

    module DeleteHostInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHostInput, context: context)
        type = Types::DeleteHostInput.new
        type.host_arn = params[:host_arn]
        type
      end
    end

    module DeleteHostOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHostOutput, context: context)
        type = Types::DeleteHostOutput.new
        type
      end
    end

    module GetConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectionInput, context: context)
        type = Types::GetConnectionInput.new
        type.connection_arn = params[:connection_arn]
        type
      end
    end

    module GetConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectionOutput, context: context)
        type = Types::GetConnectionOutput.new
        type.connection = Connection.build(params[:connection], context: "#{context}[:connection]") unless params[:connection].nil?
        type
      end
    end

    module GetHostInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHostInput, context: context)
        type = Types::GetHostInput.new
        type.host_arn = params[:host_arn]
        type
      end
    end

    module GetHostOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHostOutput, context: context)
        type = Types::GetHostOutput.new
        type.name = params[:name]
        type.status = params[:status]
        type.provider_type = params[:provider_type]
        type.provider_endpoint = params[:provider_endpoint]
        type.vpc_configuration = VpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type
      end
    end

    module Host
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Host, context: context)
        type = Types::Host.new
        type.name = params[:name]
        type.host_arn = params[:host_arn]
        type.provider_type = params[:provider_type]
        type.provider_endpoint = params[:provider_endpoint]
        type.vpc_configuration = VpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type.status = params[:status]
        type.status_message = params[:status_message]
        type
      end
    end

    module HostList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Host.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module ListConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectionsInput, context: context)
        type = Types::ListConnectionsInput.new
        type.provider_type_filter = params[:provider_type_filter]
        type.host_arn_filter = params[:host_arn_filter]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConnectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectionsOutput, context: context)
        type = Types::ListConnectionsOutput.new
        type.connections = ConnectionList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHostsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHostsInput, context: context)
        type = Types::ListHostsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHostsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHostsOutput, context: context)
        type = Types::ListHostsOutput.new
        type.hosts = HostList.build(params[:hosts], context: "#{context}[:hosts]") unless params[:hosts].nil?
        type.next_token = params[:next_token]
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

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceUnavailableException, context: context)
        type = Types::ResourceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module SecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubnetIds
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

    module UnsupportedOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedOperationException, context: context)
        type = Types::UnsupportedOperationException.new
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

    module UpdateHostInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHostInput, context: context)
        type = Types::UpdateHostInput.new
        type.host_arn = params[:host_arn]
        type.provider_endpoint = params[:provider_endpoint]
        type.vpc_configuration = VpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type
      end
    end

    module UpdateHostOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHostOutput, context: context)
        type = Types::UpdateHostOutput.new
        type
      end
    end

    module VpcConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfiguration, context: context)
        type = Types::VpcConfiguration.new
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.tls_certificate = params[:tls_certificate]
        type
      end
    end

  end
end
