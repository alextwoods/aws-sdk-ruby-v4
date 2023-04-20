# frozen_string_literal: true

require 'tempfile'
require 'digest'
require_relative 'checksums/digest'
require_relative 'checksums/digest32'
require_relative 'checksums/md5'
require_relative 'checksums/sha1'
require_relative 'checksums/sha256'
require_relative 'checksums/crc32'
require_relative 'checksums/crc32c'

module AWS::SDK::Core
  # A utility module for creating checksum digest objects
  # @api private
  module Checksums
    CHUNK_SIZE = 1 * 1024 * 1024 # one MB

    # @param [String] the name of the algorithm
    # @return [Digest|Digest32] a Digest object for the  checksum_algorithm
    def self.algorithm_for(checksum_algorithm)
      case checksum_algorithm.upcase
      when 'MD5' then MD5.new
      when 'SHA1' then SHA1.new
      when 'SHA256' then SHA256.new
      when 'CRC32' then CRC32.new
      when 'CRC32C' then CRC32C.new
      else
        raise ArgumentError,
              "Unsupported checksum algorithm: #{checksum_algorithm}"
      end
    end
  end
end
