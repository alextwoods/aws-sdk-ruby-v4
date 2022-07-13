# frozen_string_literal: true

module AWS
  module SigV4
    # A pre-signed URL and signed headers that should be used with the request.
    class PresignedUrl
      # @api private
      def initialize(url:, headers:, metadata: {})
        @url = url
        @headers = headers
        @metadata = metadata
      end

      # @return [URI] The pre-signed request URL.
      attr_accessor :url

      # @return [Hash<String,String>] A hash of signed headers that should
      #   be used with the pre-signed request URL.
      attr_accessor :headers

      # @return [Hash] Internal data for debugging purposes.
      attr_accessor :metadata
    end
  end
end
