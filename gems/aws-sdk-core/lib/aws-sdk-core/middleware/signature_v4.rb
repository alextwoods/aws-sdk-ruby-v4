# frozen_string_literal: true

module AWS::SDK::Core
  module Middleware
    # A middleware that extracts a signs a request with Signature V4.
    # @api private
    class SignatureV4
      def initialize(app, signer:, unsigned_body: false)
        @app = app
        @signer = signer
        @unsigned_body = unsigned_body
      end

      def call(input, context)
        request = context.request

        reset_request(request)
        apply_authtype(request)

        # compute the signature
        signature = compute_signature(request, context)

        # apply signature headers
        request.headers.update(signature.headers)

        output = @app.call(input, context)
        output.metadata[:sigv4_signature] = signature

        output
      end

      private

      # TODO: retry middleware should have a deep copy of the request instead.
      # This method can be deleted once refactored.
      # Do this in case this request is being re-signed
      def reset_request(request)
        request.headers.delete('Authorization')
        request.headers.delete('X-Amz-Security-Token')
        request.headers.delete('X-Amz-Date')
        request.headers.delete('x-Amz-Region-Set')
      end

      def apply_authtype(request)
        return unless @unsigned_body && request.url.scheme.eql?('https')

        request.headers['X-Amz-Content-Sha256'] ||= 'UNSIGNED-PAYLOAD'
      end

      def compute_signature(request, context)
        @signer.sign_request(
          http_method: request.http_method,
          url: request.url,
          headers: request.headers.to_h,
          body: request.body,
          **context[:signer_params]
        )
      end
    end
  end
end
