# frozen_string_literal: true

module AWS::SDK::Core
  module Signers
    # A signer that signs requests using the SigV4 Auth scheme.
    class SigV4 < Hearth::Signers::Base

      # @param signer
      def initialize(signer: AWS::SigV4::Signer.new)
        @signer = signer
        super()
      end

      attr_reader :signer
      def sign(request:, identity:, properties:)

        apply_unsigned_body(request, properties)

        signature = @signer.sign_request(request: request,
                                        credentials: identity,
                                        **properties)
        apply_signature(request, signature)
      end

      # rubocop:disable Lint/UnusedMethodArgument
      def reset(request:, properties:)
        request.headers.delete('Authorization')
        request.headers.delete('X-Amz-Date')
        request.headers.delete('x-Amz-Region-Set')
        request.headers.delete('X-Amz-Security-Token')
        request.headers.delete('X-Amz-Content-Sha256')
      end
      # rubocop:enable Lint/UnusedMethodArgument

      private

      def apply_signature(request, signature)
        signature.headers.each_pair do |key, value|
          request.headers[key] = value
        end
      end

      def apply_unsigned_body(request, properties)
        # TODO: how to get this property?
        if request.uri.scheme.eql?('https') && properties[:unsigned_body]
          request.headers['X-Amz-Content-Sha256'] ||= 'UNSIGNED-PAYLOAD'
        end
      end
    end
  end
end
