# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::KinesisVideoMedia
  module Parsers

    # Operation Parser for GetMedia
    class GetMedia
      def self.parse(http_resp)
        data = Types::GetMediaOutput.new
        data.content_type = http_resp.headers['Content-Type']
        data.payload = http_resp.body
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

    # Error Parser for ConnectionLimitExceededException
    class ConnectionLimitExceededException
      def self.parse(http_resp)
        data = Types::ConnectionLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
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

    # Error Parser for InvalidEndpointException
    class InvalidEndpointException
      def self.parse(http_resp)
        data = Types::InvalidEndpointException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
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

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end
  end
end
