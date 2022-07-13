# frozen_string_literal: true
require 'rspec'
require 'simplecov'
SimpleCov.start do
  add_filter %r{^/spec/}
end

require 'aws-sigv4'

module AWS::SigV4
  # module SpecHelper
  #   class << self
  #
  #     def debug(msg)
  #       $stdout.puts("\n#{msg}") if ENV['AWS_SIGV4_SPEC_SUITE_DEBUG']
  #     end
  #
  #     # @param [String] request
  #     # @return [Hash]
  #     def parse_request(request)
  #       lines = request.lines.to_a
  #
  #       http_method, request_uri, _ = lines.shift.split
  #
  #       # escape the uri unless it's already encoded
  #       # this is a hack - it prevents encoding on a specific test
  #       # "get-vanilla-query-order-encoded"
  #       unless request_uri.include?('%E1')
  #         uri_path, querystring = request_uri.split('?', 2)
  #         if querystring
  #           querystring = querystring.split('&').map do |key_value|
  #             key, value = key_value.split('=')
  #             key = AWS::SigV4::Signer.uri_escape(key)
  #             value = AWS::SigV4::Signer.uri_escape(value.to_s)
  #             "#{key}=#{value}"
  #           end.join('&')
  #         end
  #         request_uri = AWS::SigV4::Signer.uri_escape_path(uri_path)
  #         request_uri += '?' + querystring if querystring
  #       end
  #
  #       # extract headers
  #       headers = Hash.new { |h,k| h[k] = [] }
  #       prev_key = nil
  #       until lines.empty?
  #         line = lines.shift
  #         if line.strip == ''
  #           break
  #         elsif line =~ /^\s+/ # multiline header value
  #           headers[prev_key][0] = "#{headers[prev_key][0]} #{line.strip}"
  #         else
  #           key, value = line.strip.split(':')
  #           headers[key] << value
  #           prev_key = key
  #         end
  #       end
  #       headers = headers.inject({}) do |h,(k,v)|
  #         h[k] = headers[k].join(',')
  #         h
  #       end
  #
  #       {
  #         http_method: http_method,
  #         url: "https://#{headers['Host']}#{request_uri}",
  #         headers: headers,
  #         body: lines.join,
  #       }
  #     end
  #   end
  # end

  module SpecHelper2
    class << self

      def debug(msg)
        $stdout.puts("\n#{msg}") if ENV['AWS_SIGV4_SPEC_SUITE_DEBUG']
      end

      # @param [String] request
      # @return [Hash]
      def parse_request(request, uri_escape: true)
        lines = request.lines.to_a

        req_def = lines.shift
        http_method, request_uri = req_def.split(' ', 2)
        request_uri = request_uri.gsub(" HTTP/1.1\n", '')

        # escape the uri
        uri_path, querystring = request_uri.split('?', 2)
        if querystring
          querystring = querystring.split('&').map do |key_value|
            key, value = key_value.split('=')
            if uri_escape
              key = AWS::SigV4::Signer.uri_escape(key) # unless key.include? '%E1'
              value = AWS::SigV4::Signer.uri_escape(value.to_s)
            end
            "#{key}=#{value}"
          end.join('&')
        end

        request_uri = AWS::SigV4::Signer.uri_escape_path(uri_path)
        request_uri += '?' + querystring if querystring

        # extract headers
        headers = Hash.new { |h,k| h[k] = [] }
        prev_key = nil
        until lines.empty?
          line = lines.shift
          if line.strip == ''
            break
          elsif line =~ /^\s+/ # multiline header value
            headers[prev_key][0] = "#{headers[prev_key][0]} #{line.strip}"
          else
            key, value = line.strip.split(':')
            headers[key] << value
            prev_key = key
          end
        end
        headers = headers.inject({}) do |h,(k,v)|
          h[k] = headers[k].join(',')
          h
        end

        {
          http_method: http_method,
          url: "https://#{headers['Host']}#{request_uri}",
          headers: headers,
          body: lines.join,
        }
      end

      def split_query_to_params(query)
        params = { }
        query.split('&').each do |p|
          k,v = p.split('=')
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

      def downcase_headers(headers)
        (headers || {}).transform_keys(&:downcase)
      end
    end
  end
end
