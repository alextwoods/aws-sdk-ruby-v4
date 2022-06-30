# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::KinesisVideoSignaling
  module Params

    module ClientLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientLimitExceededException, context: context)
        type = Types::ClientLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module GetIceServerConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIceServerConfigInput, context: context)
        type = Types::GetIceServerConfigInput.new
        type.channel_arn = params[:channel_arn]
        type.client_id = params[:client_id]
        type.service = params[:service]
        type.username = params[:username]
        type
      end
    end

    module GetIceServerConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIceServerConfigOutput, context: context)
        type = Types::GetIceServerConfigOutput.new
        type.ice_server_list = IceServerList.build(params[:ice_server_list], context: "#{context}[:ice_server_list]") unless params[:ice_server_list].nil?
        type
      end
    end

    module IceServer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IceServer, context: context)
        type = Types::IceServer.new
        type.uris = Uris.build(params[:uris], context: "#{context}[:uris]") unless params[:uris].nil?
        type.username = params[:username]
        type.password = params[:password]
        type.ttl = params[:ttl]
        type
      end
    end

    module IceServerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IceServer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidArgumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArgumentException, context: context)
        type = Types::InvalidArgumentException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClientException, context: context)
        type = Types::InvalidClientException.new
        type.message = params[:message]
        type
      end
    end

    module NotAuthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotAuthorizedException, context: context)
        type = Types::NotAuthorizedException.new
        type.message = params[:message]
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

    module SendAlexaOfferToMasterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendAlexaOfferToMasterInput, context: context)
        type = Types::SendAlexaOfferToMasterInput.new
        type.channel_arn = params[:channel_arn]
        type.sender_client_id = params[:sender_client_id]
        type.message_payload = params[:message_payload]
        type
      end
    end

    module SendAlexaOfferToMasterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendAlexaOfferToMasterOutput, context: context)
        type = Types::SendAlexaOfferToMasterOutput.new
        type.answer = params[:answer]
        type
      end
    end

    module SessionExpiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionExpiredException, context: context)
        type = Types::SessionExpiredException.new
        type.message = params[:message]
        type
      end
    end

    module Uris
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
