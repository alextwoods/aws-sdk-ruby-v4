# frozen_string_literal: true

require_relative 'ini_parser'

# @api private
class AWS::SDK::Core::SharedConfig
  class << self
    # Constructs a new SharedConfig. SharedConfig is a hash of profile
    # to hash of configuration values. This will load the shared
    # credentials file, and optionally the shared configuration file, as ini
    # files which support profiles.
    #
    # By default, the shared credential file (the default path for which is
    # `~/.aws/credentials`) and the shared config file (the default path for
    # which is `~/.aws/config`) are loaded. You can specify the shared
    # credential file path with the `ENV['AWS_SHARED_CREDENTIALS_FILE']`
    # environment variable or with the `:credentials_path` option. Similarly,
    # you can specify the shared config file path with the
    # `ENV['AWS_CONFIG_FILE']`environment variable or with the `:config_path`
    # option.
    #
    # @param [String] credentials_path Path to the shared credentials
    #   file. If not specified, will check `ENV['AWS_SHARED_CREDENTIALS_FILE']`
    #   before using the default value of "#{Dir.home}/.aws/credentials".
    # @param [String] :config_path Path to the shared config file.
    #   If not specified, will check `ENV['AWS_CONFIG_FILE']` before using the
    #   default value of "#{Dir.home}/.aws/config".
    def load(credentials_path: nil, config_path: nil)
      credentials_path ||= determine_credentials_path
      parsed_credentials = {}
      if loadable?(credentials_path)
        parsed_credentials = load_file(credentials_path)
      end

      parsed_config = {}
      config_path ||= determine_config_path
      parsed_config = load_file(config_path) if loadable?(config_path)

      merge_configs(parsed_config, parsed_credentials)
    end

    private

    # @return [Boolean] Returns `true` if a credential file
    #   exists and has appropriate read permissions at {#path}.
    # @note This method does not indicate if the file found at {#path}
    #   will be parsable, only if it can be read.
    def loadable?(path)
      !path.nil? && File.exist?(path) && File.readable?(path)
    end

    def load_file(file_path)
      AWS::SDK::Core::IniParser.ini_parse(File.read(file_path))
    end

    # merge config and credentials (preferring credentials values)
    def merge_configs(parsed_config, parsed_credentials)
      merged_config = parsed_config
      parsed_credentials.each_pair do |k, v|
        merged_config[k] = merged_config.fetch(k, {}).merge(v).freeze
      end
      merged_config.freeze
    end

    def determine_credentials_path
      ENV['AWS_SHARED_CREDENTIALS_FILE'] ||
        default_shared_config_path('credentials')
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
