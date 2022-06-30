# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisVideoMedia
  module Stubs

    # Operation Stubber for GetMedia
    class GetMedia
      def self.default(visited=[])
        {
          content_type: 'content_type',
          payload: 'payload',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        IO.copy_stream(stub[:payload], http_resp.body)
      end
    end
  end
end
