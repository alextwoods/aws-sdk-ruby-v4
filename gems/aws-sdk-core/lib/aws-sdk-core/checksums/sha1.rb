# frozen_string_literal: true

module AWS::SDK::Core
  module Checksums
    # SHA1 Checksum Digest class
    class SHA1 < Digest
      def initialize
        super(::Digest::SHA1.new)
      end
    end
  end
end
