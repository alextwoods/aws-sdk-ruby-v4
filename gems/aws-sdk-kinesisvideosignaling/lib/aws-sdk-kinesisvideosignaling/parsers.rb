# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::KinesisVideoSignaling
  module Parsers

    # Operation Parser for GetIceServerConfig
    class GetIceServerConfig
      def self.parse(http_resp)
        data = Types::GetIceServerConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.ice_server_list = (Parsers::IceServerList.parse(map['IceServerList']) unless map['IceServerList'].nil?)
        data
      end
    end

    class IceServerList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::IceServer.parse(value) unless value.nil?
        end
        data
      end
    end

    class IceServer
      def self.parse(map)
        data = Types::IceServer.new
        data.uris = (Parsers::Uris.parse(map['Uris']) unless map['Uris'].nil?)
        data.username = map['Username']
        data.password = map['Password']
        data.ttl = map['Ttl']
        return data
      end
    end

    class Uris
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for NotAuthorizedException
    class NotAuthorizedException
      def self.parse(http_resp)
        data = Types::NotAuthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for SessionExpiredException
    class SessionExpiredException
      def self.parse(http_resp)
        data = Types::SessionExpiredException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidClientException
    class InvalidClientException
      def self.parse(http_resp)
        data = Types::InvalidClientException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidArgumentException
    class InvalidArgumentException
      def self.parse(http_resp)
        data = Types::InvalidArgumentException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ClientLimitExceededException
    class ClientLimitExceededException
      def self.parse(http_resp)
        data = Types::ClientLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for SendAlexaOfferToMaster
    class SendAlexaOfferToMaster
      def self.parse(http_resp)
        data = Types::SendAlexaOfferToMasterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.answer = map['Answer']
        data
      end
    end
  end
end
