# frozen_string_literal: true

module AWS::SDK::Core
  module Checksums
    # SHA256 Checksum Digest class
    class SHA256 < Digest
      def initialize
        super(::Digest::SHA256.new)
      end
    end
  end
end
