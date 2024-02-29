# frozen_string_literal: true

module AWS::SDK::Core
  module Errors
    # Raised when ARN string input doesn't follow the standard:
    # https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-arns
    class InvalidARNError < RuntimeError; end
  end
end
