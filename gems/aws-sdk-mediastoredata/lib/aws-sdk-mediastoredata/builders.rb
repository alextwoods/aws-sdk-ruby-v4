# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MediaStoreData
  module Builders

    # Operation Builder for DeleteObject
    class DeleteObject
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:path].to_s.empty?
          raise ArgumentError, "HTTP label :path cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Path>s',
            Path: (input[:path].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeObject
    class DescribeObject
      def self.build(http_req, input:)
        http_req.http_method = 'HEAD'
        if input[:path].to_s.empty?
          raise ArgumentError, "HTTP label :path cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Path>s',
            Path: (input[:path].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetObject
    class GetObject
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:path].to_s.empty?
          raise ArgumentError, "HTTP label :path cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Path>s',
            Path: (input[:path].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Range'] = input[:range] unless input[:range].nil? || input[:range].empty?
      end
    end

    # Operation Builder for ListItems
    class ListItems
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/')
        params = Hearth::Query::ParamList.new
        params['Path'] = input[:path].to_s unless input[:path].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutObject
    class PutObject
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:path].to_s.empty?
          raise ArgumentError, "HTTP label :path cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Path>s',
            Path: (input[:path].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.body = input[:body]
        http_req.headers['Transfer-Encoding'] = 'chunked'
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.headers['Content-Type'] = input[:content_type] unless input[:content_type].nil? || input[:content_type].empty?
        http_req.headers['Cache-Control'] = input[:cache_control] unless input[:cache_control].nil? || input[:cache_control].empty?
        http_req.headers['x-amz-storage-class'] = input[:storage_class] unless input[:storage_class].nil? || input[:storage_class].empty?
        http_req.headers['x-amz-upload-availability'] = input[:upload_availability] unless input[:upload_availability].nil? || input[:upload_availability].empty?
      end
    end
  end
end
