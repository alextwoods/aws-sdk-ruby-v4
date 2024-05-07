# frozen_string_literal: true

module AWS::SDK::Core
  module AuthSchemes
    # SigV4 authentication scheme.
    class SigV4 < Hearth::AuthSchemes::Base
      def initialize(signer: Signers::SigV4.new)
        super(
          scheme_id: 'aws.auth#sigv4',
          signer: signer,
          identity_type: Identities::Credentials
        )
      end
    end
  end
end

Aws::S3::Client.new(
  auth_schemes: [
    AWS::SDK::Core::AuthSchemes::SigV4.new(
      signer: AWS::SDK::Core::Signers::SigV4.new(
        signer: AWS::SigV4::Signer.new(**my_signing_properties)
      )
    )
  ]
)
