# frozen_string_literal: true

module AWS::SigV4
  # Header value class for Events that require typed values.
  class HeaderValue
    def initialize(value:, type:)
      @value = value
      @type = type
    end

    # @return [Object] value
    attr_reader :value

    # @return [String] type
    attr_reader :type
  end
end
