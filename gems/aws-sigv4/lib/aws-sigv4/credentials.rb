# frozen_string_literal: true

module AWS::Sigv4
  # A Credentials data object that stores AWS credentials. This object may be
  # populated from various different {CredentialProvider}s.
  class Credentials
    puts "Okay, and loaded credentials...."
    # @param [String] access_key_id
    # @param [String] secret_access_key
    # @param [String] session_token (nil)
    # @param [Time] expiration (nil)
    def initialize(access_key_id:, secret_access_key:,
                   session_token: nil, expiration: nil)
      @access_key_id = access_key_id
      @secret_access_key = secret_access_key
      @session_token = session_token
      @expiration = expiration
    end

    # @return [String, nil]
    attr_reader :access_key_id

    # @return [String, nil]
    attr_reader :secret_access_key

    # @return [String, nil]
    attr_reader :session_token

    # @return [Time, nil]
    attr_reader :expiration

    # Removing the secret access key from the default inspect string.
    # @api private
    def inspect
      "#<#{self.class.name} access_key_id=#{access_key_id.inspect}>"
    end
  end
end
