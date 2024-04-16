# frozen_string_literal: true

module AWS::SDK::Core
  module AuthSchemes
    # SigV4 authentication scheme.
    class SigV4 < Hearth::AuthSchemes::Base
      def initialize(signer: Signers::SigV4.new)
        super(
          scheme_id: 'aws.auth#sigv4',
          signer: signer,
          identity_type: Identities::SigV4
        )
      end
    end
  end
end
