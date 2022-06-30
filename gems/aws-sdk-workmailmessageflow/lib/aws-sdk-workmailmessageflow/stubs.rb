# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkMailMessageFlow
  module Stubs

    # Operation Stubber for GetRawMessageContent
    class GetRawMessageContent
      def self.default(visited=[])
        {
          message_content: 'message_content',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        IO.copy_stream(stub[:message_content], http_resp.body)
      end
    end

    # Operation Stubber for PutRawMessageContent
    class PutRawMessageContent
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
