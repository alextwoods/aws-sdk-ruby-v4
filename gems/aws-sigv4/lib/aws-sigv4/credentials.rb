# frozen_string_literal: true

module AWS::SigV4
  # An AWS Credentials identity data object that stores AWS credentials
  # used for Sigv4 and Sigv4a.
  class Credentials
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

    # @return [Boolean] Returns `true` if the access key id and secret
    #   access key are both set.
    def set?
      !@access_key_id.nil? && !@access_key_id.empty? &&
        !@secret_access_key.nil? && !@secret_access_key.empty?
    end

    # Removing the secret access key from the default inspect string.
    # @api private
    def inspect
      "#<#{self.class.name} access_key_id=#{access_key_id.inspect}>"
    end
  end
end
