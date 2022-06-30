# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ApiGatewayManagementApi
  module Params

    module DeleteConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionInput, context: context)
        type = Types::DeleteConnectionInput.new
        type.connection_id = params[:connection_id]
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

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type
      end
    end

    module GetConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectionInput, context: context)
        type = Types::GetConnectionInput.new
        type.connection_id = params[:connection_id]
        type
      end
    end

    module GetConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectionOutput, context: context)
        type = Types::GetConnectionOutput.new
        type.connected_at = params[:connected_at]
        type.identity = Identity.build(params[:identity], context: "#{context}[:identity]") unless params[:identity].nil?
        type.last_active_at = params[:last_active_at]
        type
      end
    end

    module GoneException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GoneException, context: context)
        type = Types::GoneException.new
        type
      end
    end

    module Identity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Identity, context: context)
        type = Types::Identity.new
        type.source_ip = params[:source_ip]
        type.user_agent = params[:user_agent]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type
      end
    end

    module PayloadTooLargeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PayloadTooLargeException, context: context)
        type = Types::PayloadTooLargeException.new
        type.message = params[:message]
        type
      end
    end

    module PostToConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostToConnectionInput, context: context)
        type = Types::PostToConnectionInput.new
        type.data = params[:data]
        type.connection_id = params[:connection_id]
        type
      end
    end

    module PostToConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostToConnectionOutput, context: context)
        type = Types::PostToConnectionOutput.new
        type
      end
    end

  end
end
