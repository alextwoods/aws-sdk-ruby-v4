# frozen_string_literal: true

module AWS::SDK::Core
  # AWS Identities
  module Identities
    # AWS Credentials Identity used for Sigv4 and Sigv4a
    class Credentials < Hearth::Identities::Base
      def initialize(access_key_id:, secret_access_key:, session_token: nil,
                     account_id: nil, **kwargs)
        super(**kwargs)
        @access_key_id = access_key_id
        @secret_access_key = secret_access_key
        @session_token = session_token
        @account_id = account_id
      end

      # @return [String]
      attr_reader :access_key_id

      # @return [String]
      attr_reader :secret_access_key

      # @return [String, nil]
      attr_reader :session_token

      # @return [String, nil]
      attr_reader :account_id

      # @return [Boolean] Returns `true` if the access key id and secret
      #   access key are both set.
      def set?
        !@access_key_id.nil? && !@access_key_id.empty? &&
          !@secret_access_key.nil? && !@secret_access_key.empty?
      end

      # Removing the secret access key from the default inspect string.
      # @api private
      def inspect
        "#<#{self.class.name} access_key_id=#{@access_key_id.inspect}>"
      end
    end
  end
end
