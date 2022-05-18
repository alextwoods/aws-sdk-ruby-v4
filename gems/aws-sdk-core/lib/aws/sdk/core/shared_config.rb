# frozen_string_literal: true

require_relative 'ini_parser'

module AWS
  module SDK
    module Core

      # @api private
      module SharedConfig
        # Constructs a new SharedConfig. SharedConfig is a hash of profile
        # to hash of configuration values. This will load the shared
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
        def self.load(credentials_path: nil, config_path: nil, config_enabled: true)
          credentials_path ||= determine_credentials_path
          parsed_credentials = {}
          parsed_credentials = load_file(credentials_path) if loadable?(credentials_path)

          parsed_config = {}
          if config_enabled
            config_path ||= determine_config_path
            parsed_config = load_file(config_path) if loadable?(config_path)
          end

          # merge config and credentials (preferring credentials values)
          merged_config = parsed_config
          parsed_credentials.each_pair do |k, v|
            merged_config[k] = merged_config.fetch(k, {}).merge(v).freeze
          end
          merged_config.freeze
        end

        private

        # @return [Boolean] Returns `true` if a credential file
        #   exists and has appropriate read permissions at {#path}.
        # @note This method does not indicate if the file found at {#path}
        #   will be parsable, only if it can be read.
        def self.loadable?(path)
          !path.nil? && File.exist?(path) && File.readable?(path)
        end

        def self.load_file(file_path)
          IniParser.ini_parse(File.read(file_path))
        end

        def self.determine_credentials_path
          ENV['AWS_SHARED_CREDENTIALS_FILE'] || default_shared_config_path('credentials')
        end

        def self.determine_config_path
          ENV['AWS_CONFIG_FILE'] || default_shared_config_path('config')
        end

        def self.default_shared_config_path(file)
          File.join(Dir.home, '.aws', file)
        rescue ArgumentError
          # Dir.home raises ArgumentError when ENV['home'] is not set
          nil
        end
      end
    end
  end
end
