# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkMailMessageFlow
  module Parsers

    # Operation Parser for GetRawMessageContent
    class GetRawMessageContent
      def self.parse(http_resp)
        data = Types::GetRawMessageContentOutput.new
        data.message_content = http_resp.body
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for PutRawMessageContent
    class PutRawMessageContent
      def self.parse(http_resp)
        data = Types::PutRawMessageContentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for MessageRejected
    class MessageRejected
      def self.parse(http_resp)
        data = Types::MessageRejected.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for MessageFrozen
    class MessageFrozen
      def self.parse(http_resp)
        data = Types::MessageFrozen.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidContentLocation
    class InvalidContentLocation
      def self.parse(http_resp)
        data = Types::InvalidContentLocation.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end
  end
end
