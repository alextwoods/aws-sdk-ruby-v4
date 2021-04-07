# frozen_string_literal: true

require 'aws-sigv4'

module Naws
  module Middleware
    # Sign requests
    class Signer
      def initialize(app, credentials:, region:)
        @app = app
        @credentials = credentials
        @region = region
      end

      def call(request:, response:, context:)
        puts "Building signer"
        signer = Aws::Sigv4::Signer.new(
                      service: 'lambda',
                      region: @region,
                      credentials: @credentials,
                      unsigned_headers: ['content-length', 'user-agent', 'x-amzn-trace-id']
        )
        signature = signer.sign_request(
              http_method: request.http_method,
              url: request.url,
              headers: request.headers,
              body: request.body
        )
        # apply signature headers
        signature.headers.each_pair { |k,v| request.headers[k] = v }

        # add request metadata with signature components for debugging
        context[:canonical_request] = signature.canonical_request
        context[:string_to_sign] = signature.string_to_sign
        @app.call(request: request, response: response, context: context)
      end
    end
  end
end
