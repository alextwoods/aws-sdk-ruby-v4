# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApiGatewayManagementApi
  module Parsers

    # Operation Parser for DeleteConnection
    class DeleteConnection
      def self.parse(http_resp)
        data = Types::DeleteConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for GoneException
    class GoneException
      def self.parse(http_resp)
        data = Types::GoneException.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetConnection
    class GetConnection
      def self.parse(http_resp)
        data = Types::GetConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connected_at = Time.parse(map['connectedAt']) if map['connectedAt']
        data.identity = (Identity.parse(map['identity']) unless map['identity'].nil?)
        data.last_active_at = Time.parse(map['lastActiveAt']) if map['lastActiveAt']
        data
      end
    end

    class Identity
      def self.parse(map)
        data = Types::Identity.new
        data.source_ip = map['sourceIp']
        data.user_agent = map['userAgent']
        return data
      end
    end

    # Operation Parser for PostToConnection
    class PostToConnection
      def self.parse(http_resp)
        data = Types::PostToConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for PayloadTooLargeException
    class PayloadTooLargeException
      def self.parse(http_resp)
        data = Types::PayloadTooLargeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end
  end
end
