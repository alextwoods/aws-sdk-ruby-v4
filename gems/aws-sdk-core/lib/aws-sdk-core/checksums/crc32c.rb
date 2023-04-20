# frozen_string_literal: true

module AWS::SDK::Core
  module Checksums
    # CRC32C Checksum Digest class - requires aws-crt
    class CRC32C < Digest32
      def initialize
        unless AWS::SDK::Core.crt_loaded?
          raise ArgumentError, 'Requires the `aws-crt` gem.'
        end

        super(CRC32C.digest_method)
      end

      def self.digest_method
        Aws::Crt::Checksums.method(:crc32c)
      end
    end
  end
end
