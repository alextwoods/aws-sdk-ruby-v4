# frozen_string_literal: true

module AWS::SDK::Core
  module Signers
    # A signer that signs requests using the SigV4 Auth scheme.
    class SigV4 < Hearth::Signers::Base
      # @param signer [AWS::SigV4::Signer] (AWS::SigV4::Signer.new) An
      #   initialized signer, allowing override of default signing parameters.
      #   To override default signing behavior, configure an
      #   auth_scheme on the client:
      #
      #     custom_signer = AWS::SDK::Core::Signers::SigV4.new(
      #       signer: AWS::SigV4::Signer.new(**my_signing_properties)
      #     )
      #     custom_sigv4_auth_scheme = AWS::SDK::Core::AuthSchemes::SigV4.new(
      #       signer: custom_signer
      #     )
      #     client = AWS::SDK::S3::Client.new(
      #       auth_schemes: [custom_sigv4_auth_scheme]
      #     )
      #
      #    Note: If you need to override resolved signing properties, you must
      #    wrap the AWS::SDK::<Service>::Auth::Resolver and modify the
      #    returned properties rather than initializing a signer with those
      #    properties - providing an initialized signer here is only for
      #    overriding signing defaults.
      def initialize(signer: AWS::SigV4::Signer.new)
        @signer = signer
        super()
      end

      attr_reader :signer

      def sign(request:, identity:, properties:)
        apply_unsigned_body(request, properties)

        if properties[:event_stream]
          request.headers['X-Amz-Content-Sha256'] =
            'STREAMING-AWS4-HMAC-SHA256-EVENTS'
        end

        signature = @signer.sign_request(
          request: request,
          credentials: identity,
          **properties
        )
        apply_signature(request, signature)
        signature.metadata[:signature]
      end

      def sign_event(message:, prior_signature:,
        identity:, properties:, event_type:, encoder:)

        encoded_payload = if event_type == :end_stream
                            '' # payload must be empty on end_stream
                          else
                            encoder.encode(message)
                          end

        headers, signature = @signer.sign_event(
          prior_signature: prior_signature,
          payload: encoded_payload,
          encoder: encoder,
          credentials: identity,
          **properties
        )

        signed_message = Hearth::EventStream::Message.new(
          headers: headers,
          payload: StringIO.new(encoded_payload)
        )

        [signed_message, signature]
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
