# frozen_string_literal: true

module AWS::SDK::Core
  # @api private
  class SharedConfig
    class << self
      # Constructs a new SharedConfig. SharedConfig is a hash of profile
      # to hash of configuration values. This will load the shared
      # configuration file, and optionally the shared credentials file, as ini
      # files which support profiles.
      #
      # By default, the shared configuration file (the default path for which is
      # `~/.aws/config`) and the shared credentials file (the default path for
      # which is `~/.aws/credentials`) are loaded. You can specify the shared
      # configuration file path with the `ENV['AWS_CONFIG_FILE']` environment
      # variable or with the `:config_path` option. Similarly, you can specify
      # the shared credentials file path with the
      # `ENV['AWS_SHARED_CREDENTIALS_FILE']`environment variable or with the
      # `:credentials_path` option.
      #
      # @param [String] :config_path Path to the shared config file.
      #   If not specified, will check `ENV['AWS_CONFIG_FILE']` before using the
      #   default value of "#{Dir.home}/.aws/config".
      # @param [String] credentials_path Path to the shared credentials file.
      #   If not specified, will check `ENV['AWS_SHARED_CREDENTIALS_FILE']`
      #   before using the default value of "#{Dir.home}/.aws/credentials".
      def load(credentials_path: nil, config_path: nil)
        factory = SharedConfigFileFactory.new
        config_path = nil unless loadable?(config_path)
        credentials_path = nil unless loadable?(credentials_path)

        factory.create(
          config_file_path: config_path,
          credentials_file_path: credentials_path
        )
      end

      # Return an sso_session from shared config.
      # Raises errors if the the session cannot be found or is invalid.
      #
      # @param cfg [Hash] - Shared config
      # @param profile [String] - the profile this sso session is referenced in.
      # @param sso_session_name [String] - name of the sso_session
      def sso_session(cfg, profile, sso_session_name)
        sso_session = cfg[sso_session_name]

        unless sso_session
          raise ArgumentError,
                "sso-session #{sso_session_name} must be defined in the " \
                "config file. Referenced by profile #{profile}"
        end

        unless sso_session['sso_region']
          raise ArgumentError,
                "sso-session #{sso_session_name} missing required " \
                'parameter: sso_region'
        end

        sso_session
      end

      private

      # @return [Boolean] Returns `true` if a credential file
      #   exists and has appropriate read permissions at {#path}.
      # @note This method does not indicate if the file found at {#path}
      #   will be parsable, only if it can be read.
      def loadable?(path)
        !path.nil? && File.exist?(path) && File.readable?(path)
      end
    end
  end
end
