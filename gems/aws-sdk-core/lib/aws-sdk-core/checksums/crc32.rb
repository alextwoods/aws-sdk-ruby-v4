# frozen_string_literal: true

require 'zlib'

module AWS::SDK::Core
  module Checksums
    # CRC32 Checksum Digest class
    class CRC32 < Digest32
      def initialize
        super(Zlib.method(:crc32))
      end
    end
  end
end
