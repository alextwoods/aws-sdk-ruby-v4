# frozen_string_literal: true

# A Credentials data object that stores AWS credentials. This object may be
# populated from various different Credential Providers.
class AWS::SDK::Core::Credentials
  # @param [String] access_key_id
  # @param [String] secret_access_key
  # @param [String] session_token (nil)
  def initialize(access_key_id, secret_access_key, session_token = nil)
    @access_key_id = access_key_id
    @secret_access_key = secret_access_key
    @session_token = session_token
  end

  # @return [String, nil]
  attr_reader :access_key_id

  # @return [String, nil]
  attr_reader :secret_access_key

  # @return [String, nil]
  attr_reader :session_token

  # Removing the secret access key from the default inspect string.
  # @api private
  def inspect
    "#<#{self.class.name} access_key_id=#{access_key_id.inspect}>"
  end
end
