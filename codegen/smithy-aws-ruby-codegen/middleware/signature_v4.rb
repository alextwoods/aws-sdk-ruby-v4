# frozen_string_literal: true

module Middleware
  # A middleware that extracts a signs a request with Signature V4.
  # @api private
  class SignatureV4
    def initialize(app, signer:)
      @app = app
      # Aws::Sigv4::Signer.new(
      #   service: cfg.sigv4_name,
      #   region: cfg.sigv4_region,
      #   credentials_provider: cfg.credentials,
      #   unsigned_headers: ['content-length', 'user-agent', 'x-amzn-trace-id']
      # )
      @signer = signer
    end

    def call(input, context)
      apply_signature(context)
      @app.call(input, context)
    end

    private

    # @api private
    def apply_signature(context)
      signer = options[:signer] || context.config.sigv4_signer
      req = context.http_request

      # in case this request is being re-signed
      req.headers.delete('Authorization')
      req.headers.delete('X-Amz-Security-Token')
      req.headers.delete('X-Amz-Date')
      req.headers.delete('x-Amz-Region-Set')

      if context.config.respond_to?(:clock_skew) &&
         context.config.clock_skew &&
         context.config.correct_clock_skew

        endpoint = context.http_request.endpoint
        skew = context.config.clock_skew.clock_correction(endpoint)
        if skew.abs > 0
          req.headers['X-Amz-Date'] = (Time.now.utc + skew).strftime("%Y%m%dT%H%M%SZ")
        end
      end

      # compute the signature
      begin
        signature = signer.sign_request(
          http_method: req.http_method,
          url: req.endpoint,
          headers: req.headers,
          body: req.body
        )
      rescue Aws::Sigv4::Errors::MissingCredentialsError
        raise Aws::Errors::MissingCredentialsError
      end

      # apply signature headers
      req.headers.update(signature.headers)

      # add request metadata with signature components for debugging
      context[:canonical_request] = signature.canonical_request
      context[:string_to_sign] = signature.string_to_sign
    end

    # @api private
    def apply_authtype(context)
      if context.operation['authtype'].eql?('v4-unsigned-body') &&
         context.http_request.endpoint.scheme.eql?('https')
        context.http_request.headers['X-Amz-Content-Sha256'] ||= 'UNSIGNED-PAYLOAD'
      end
      context
    end
  end
end

