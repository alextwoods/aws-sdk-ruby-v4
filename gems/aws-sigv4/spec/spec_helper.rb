# frozen_string_literal: true

require 'rspec'
require 'simplecov'
SimpleCov.start do
  add_filter %r{^/spec/}
end

require 'aws-sigv4'

module AWS::SigV4
  module SpecHelper
    class << self
      def debug(msg)
        $stdout.puts("\n#{msg}") if ENV['AWS_SIGV4_SPEC_SUITE_DEBUG']
      end

      # Parses a request.txt file from the spec suite.
      # @param [String] request
      # @return [Hash]
      def parse_request(request)
        lines = request.lines.to_a

        req_def = lines.shift
        http_method, request_uri = req_def.split(' ', 2)
        request_uri = request_uri.gsub(" HTTP/1.1\n", '')

        # escape the uri
        uri_path, querystring = request_uri.split('?', 2)
        if querystring
          querystring = querystring.split('&').map do |key_value|
            key, value = key_value.split('=')
            key = CGI.escape(CGI.unescape(key))
            value = CGI.escape(CGI.unescape(value.to_s))
            "#{key}=#{value}"
          end.join('&')
        end

        request_uri = AWS::SigV4::Signer.uri_escape_path(uri_path)
        request_uri += "?#{querystring}" if querystring

        # extract headers
        headers = Hash.new { |h, k| h[k] = [] }
        prev_key = nil
        until lines.empty?
          line = lines.shift
          break if line.strip == ''

          if line =~ /^\s+/ # multiline header value
            headers[prev_key][0] = "#{headers[prev_key][0]} #{line.strip}"
          else
            key, value = line.strip.split(':')
            headers[key] << value
            prev_key = key
          end
        end
        headers = headers.each_with_object({}) do |(k, _v), h|
          h[k] = headers[k].join(',')
        end

        {
          http_method: http_method,
          url: "https://#{headers['Host']}#{request_uri}",
          headers: headers,
          body: lines.join
        }
      end

      # @param [String] query URI query string
      # @return [Hash]
      def split_query_to_params(query)
        params = {}
        query.split('&').each do |p|
          k, v = p.split('=')
          if params.key? k
            if params[k].is_a?(Array)
              params[k] << v
            else
              params[k] = [params[k], v]
            end
          else
            params[k] = v
          end
        end
        params
      end

      # @return [Hash]
      def downcase_headers(headers)
        (headers || {}).transform_keys(&:downcase)
      end
    end
  end
end

# For mocking aws-crt objects, define namespace and classes.
unless defined?(Aws::Crt::Auth) && defined?(Aws::Crt::Http)
  module Aws
    module Crt
      module Auth
        class SigningConfig
          def initialize(_options = {})
            nil
          end
        end

        class Signable
          def initialize(_request)
            nil
          end
        end

        class Signer
          def sign_request(_config, _signable); end
        end

        class StaticCredentialsProvider
          def initialize(_akid, _secret, _token)
            nil
          end
        end
      end

      module Http
        class Message
          def initialize(_method, _url, _headers)
            nil
          end
        end
      end
    end
  end
end
