# frozen_string_literal: true

module AWS::SDK::Core
  module Checksums
    # MD5 Checksum Digest class
    class MD5 < Digest
      def initialize
        super(::Digest::MD5.new)
      end
    end
  end
end
