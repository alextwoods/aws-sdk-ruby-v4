# frozen_string_literal: true

module AWS
  module SigV4
    # SigV4 Signature that should be applied to an HTTP request.
    class Signature
      # @api private
      def initialize(headers:, metadata: {})
        @headers = headers
        @metadata = metadata
      end

      # @return [Hash<String,String>] A hash of headers that should
      #   be applied to the HTTP request. Header keys are lower
      #   cased strings and may include the following:
      #
      #   * 'authorization'
      #   * 'host'
      #   * 'x-amz-date'
      #   * 'x-amz-security-token'
      #   * 'x-amz-content-sha256'
      #
      attr_accessor :headers

      # @return [Hash] Internal data for debugging purposes.
      attr_accessor :metadata
    end
  end
end
