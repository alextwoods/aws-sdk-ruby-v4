# frozen_string_literal: true

module AWS::SDK::Core
  module AuthSchemes
    # SigV4 authentication scheme.
    class SigV4 < Hearth::AuthSchemes::Base
      def initialize()
        super(
          scheme_id: 'aws.auth#sigv4',
          signer: Signers::SigV4.new,
          identity_type: Identities::SigV4
        )
      end
    end
  end
end
