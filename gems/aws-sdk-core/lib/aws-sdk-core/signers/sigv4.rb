# frozen_string_literal: true

module AWS::SDK::Core
  module Signers
    # A signer that signs requests using the SigV4 Auth scheme.
    class SigV4 < Hearth::Signers::Base
      def sign(request:, identity:, properties:)
        # TODO: should this come from config?
        signer = AWS::SigV4::Signer.new

        # TODO: how to get this property?
        if request.uri.scheme.eql?('https') && properties[:unsigned_body]
          request.headers['X-Amz-Content-Sha256'] ||= 'UNSIGNED-PAYLOAD'
        end

        signature = signer.sign_request(
          # TODO: maybe request should be handled by sigv4 signer
          request: {
            http_method: request.http_method,
            url: request.uri, # TODO: should this be uri in sigv4 signer?
            headers: request.headers.to_h,
            body: request.body
          },
          # TODO: should sigv4 signer handle identities now?
          credentials: identity,
          **properties
        )
        signature.headers.each_pair do |key, value|
          request.headers[key] = value
        end
      end

      def reset(request:, _properties:)
        request.headers.delete('Authorization')
        request.headers.delete('X-Amz-Date')
        request.headers.delete('x-Amz-Region-Set')
        request.headers.delete('X-Amz-Security-Token')
        request.headers.delete('X-Amz-Content-Sha256')
      end
    end
  end
end
