# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisVideoSignaling
  module Validators

    class ClientLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetIceServerConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIceServerConfigInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class GetIceServerConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIceServerConfigOutput, context: context)
        Validators::IceServerList.validate!(input[:ice_server_list], context: "#{context}[:ice_server_list]") unless input[:ice_server_list].nil?
      end
    end

    class IceServer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IceServer, context: context)
        Validators::Uris.validate!(input[:uris], context: "#{context}[:uris]") unless input[:uris].nil?
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:ttl], ::Integer, context: "#{context}[:ttl]")
      end
    end

    class IceServerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IceServer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidArgumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArgumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClientException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotAuthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotAuthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SendAlexaOfferToMasterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendAlexaOfferToMasterInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:sender_client_id], ::String, context: "#{context}[:sender_client_id]")
        Hearth::Validator.validate!(input[:message_payload], ::String, context: "#{context}[:message_payload]")
      end
    end

    class SendAlexaOfferToMasterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendAlexaOfferToMasterOutput, context: context)
        Hearth::Validator.validate!(input[:answer], ::String, context: "#{context}[:answer]")
      end
    end

    class SessionExpiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SessionExpiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Uris
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
