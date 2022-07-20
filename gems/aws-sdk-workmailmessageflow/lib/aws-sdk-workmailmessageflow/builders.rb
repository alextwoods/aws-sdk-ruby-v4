# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::WorkMailMessageFlow
  module Builders

    # Operation Builder for GetRawMessageContent
    class GetRawMessageContent
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:message_id].to_s.empty?
          raise ArgumentError, "HTTP label :message_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/messages/%<messageId>s',
            messageId: Hearth::HTTP.uri_escape(input[:message_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutRawMessageContent
    class PutRawMessageContent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:message_id].to_s.empty?
          raise ArgumentError, "HTTP label :message_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/messages/%<messageId>s',
            messageId: Hearth::HTTP.uri_escape(input[:message_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['content'] = RawMessageContent.build(input[:content]) unless input[:content].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RawMessageContent
    class RawMessageContent
      def self.build(input)
        data = {}
        data['s3Reference'] = S3Reference.build(input[:s3_reference]) unless input[:s3_reference].nil?
        data
      end
    end

    # Structure Builder for S3Reference
    class S3Reference
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['objectVersion'] = input[:object_version] unless input[:object_version].nil?
        data
      end
    end
  end
end
