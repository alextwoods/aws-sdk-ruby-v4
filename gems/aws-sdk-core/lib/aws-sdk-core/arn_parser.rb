# frozen_string_literal: true

module AWS::SDK::Core
  # Module for parsing strings with an ARN format into
  # {AWS::SDK::Core::ARN} objects.
  module ARNParser
    # Raised when ARN string input doesn't follow the standard:
    # https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-arns
    class InvalidARNError < RuntimeError; end

    # Parse a string with an ARN format into an {AWS::SDK::Core::ARN} object.
    # `InvalidARNError` is raised when encountering a parsing error or the
    # ARN object contains invalid components (nil/empty).
    #
    # @param [String] arn_str
    #
    # @return [AWS::SDK::Core::ARN]
    # @see https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-arns
    def self.parse(arn_str)
      parts = arn_str.nil? ? [] : arn_str.split(':', 6)
      raise InvalidARNError if parts.size < 6

      # part[0] is "arn"
      arn = ARN.new(
        partition: parts[1],
        service: parts[2],
        region: parts[3],
        account_id: parts[4],
        resource_id: parts[5]
      )
      raise InvalidARNError unless arn.valid?

      arn
    end

    # Checks whether a String could be a ARN or not. An ARN starts with 'arn:'
    # and has at least 6 segments separated by a colon (:).
    #
    # @param [String] str
    #
    # @return [Boolean]
    def self.arn?(str)
      !str.nil? && str.start_with?('arn:') && str.scan(':').length >= 5
    end
  end
end
