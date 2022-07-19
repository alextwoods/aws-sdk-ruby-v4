# frozen_string_literal: true

module AWS
  module SigV4
    # A pre-signed URL and signed headers that should be used with the request.
    class PresignedUrl
      # @api private
      def initialize(url:, metadata: {})
        @url = url
        @metadata = metadata
      end

      # @return [URI] The pre-signed request URL.
      attr_accessor :url

      # @return [Hash] Internal data for debugging purposes.
      attr_accessor :metadata
    end
  end
end
