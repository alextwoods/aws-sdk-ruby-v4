# frozen_string_literal: true

require_relative 'ini_parser'

module AWS
  module SDK
    module Core
      # @api private
      class SharedConfig
        # Constructs a new SharedConfig provider object. This will load the shared
        # credentials file, and optionally the shared configuration file, as ini
        # files which support profiles.
        #
        # By default, the shared credential file (the default path for which is
        # `~/.aws/credentials`) and the shared config file (the default path for
        # which is `~/.aws/config`) are loaded. However, if you set the
        # `ENV['AWS_SDK_CONFIG_OPT_OUT']` environment variable, only the shared
        # credential file will be loaded. You can specify the shared credential
        # file path with the `ENV['AWS_SHARED_CREDENTIALS_FILE']` environment
        # variable or with the `:credentials_path` option. Similarly, you can
        # specify the shared config file path with the `ENV['AWS_CONFIG_FILE']`
        # environment variable or with the `:config_path` option.
        #
        # @param [String] credentials_path Path to the shared credentials
        #   file. If not specified, will check `ENV['AWS_SHARED_CREDENTIALS_FILE']`
        #   before using the default value of "#{Dir.home}/.aws/credentials".
        # @param [String] :config_path Path to the shared config file.
        #   If not specified, will check `ENV['AWS_CONFIG_FILE']` before using the
        #   default value of "#{Dir.home}/.aws/config".
        # @param [Boolean] config_enabled (true) If true, loads the shared config
        #   file and enables new config values outside of the old shared credential
        #   spec.
        def initialize(credentials_path: nil, config_path: nil, config_enabled: true)
          @parsed_config = nil
          @config_enabled = config_enabled
          @credentials_path = credentials_path ||
                              determine_credentials_path
          @parsed_credentials = {}
          load_credentials_file if loadable?(@credentials_path)
          return unless @config_enabled

          @config_path = config_path || determine_config_path
          load_config_file if loadable?(@config_path)
        end

        # @return [String]
        attr_reader :credentials_path

        # @return [String]
        attr_reader :config_path

        # Get a config value from from shared credential/config files.
        # Only loads a value when config_enabled is true
        # Return a value from credentials preferentially over config
        #
        # @param profile The profile to fetch values from.
        # @param key The configuration key to get a value for.
        def get_config_value(profile, key)
          value = @parsed_credentials.fetch(profile, {})[key] if @parsed_credentials
          value ||= @parsed_config.fetch(profile, {})[key] if @config_enabled && @parsed_config
          value
        end

        alias [] get_config_value

        private

        # @return [Boolean] Returns `true` if a credential file
        #   exists and has appropriate read permissions at {#path}.
        # @note This method does not indicate if the file found at {#path}
        #   will be parsable, only if it can be read.
        def loadable?(path)
          !path.nil? && File.exist?(path) && File.readable?(path)
        end

        def load_credentials_file
          @parsed_credentials = IniParser.ini_parse(
            File.read(@credentials_path)
          )
        end

        def load_config_file
          @parsed_config = IniParser.ini_parse(File.read(@config_path))
        end

        def determine_credentials_path
          ENV['AWS_SHARED_CREDENTIALS_FILE'] || default_shared_config_path('credentials')
        end

        def determine_config_path
          ENV['AWS_CONFIG_FILE'] || default_shared_config_path('config')
        end

        def default_shared_config_path(file)
          File.join(Dir.home, '.aws', file)
        rescue ArgumentError
          # Dir.home raises ArgumentError when ENV['home'] is not set
          nil
        end
      end
    end
  end
end
