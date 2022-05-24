# frozen_string_literal: true

module AWS::SDK::Core
  # TODO
  module CredentialProvider
    # @return [Credentials]
    attr_reader :credentials

    private

    def sts_loaded?
      require 'aws-sdk-sts'
      true
    rescue LoadError
      false
    end

    def sso_loaded?
      require 'aws-sdk-sts'
      true
    rescue LoadError
      false
    end
  end
end
