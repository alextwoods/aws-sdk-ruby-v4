# frozen_string_literal: true

module AWS::SDK::Core::CredentialProvider
  # @return [Credentials]
  attr_reader :credentials

  private

  def sts_loaded?
    begin
      require 'aws-sdk-sts'
      true
    rescue LoadError
      false
    end
  end

  def sso_loaded?
    begin
      require 'aws-sdk-sts'
      true
    rescue LoadError
      false
    end
  end
end
