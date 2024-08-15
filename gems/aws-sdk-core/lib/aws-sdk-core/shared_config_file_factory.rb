# frozen_string_literal: true

module AWS::SDK::Core
  # Link up the profile file parser, standardizer, and the profile file
  # classes. This class is responsible for creating a profile file object
  # from the config and credentials files. The profile file is a hash of
  # profile names to profile objects.
  # @api private
  class SharedConfigFileFactory
    def create(config_file_path: nil, credentials_file_path: nil)
      parsed_config_file = SharedConfigFileParser.new(
        config_file(config_file_path)
      ).parse
      parsed_credentials_file = SharedConfigFileParser.new(
        credentials_file(credentials_file_path)
      ).parse

      config_profiles, sso_sessions = SharedConfigFileStandardizer.new(
        parsed_config_file,
        :config
      ).standardize
      credentials_profiles = SharedConfigFileStandardizer.new(
        parsed_credentials_file,
        :credentials
      ).standardize

      SharedConfigFile.new(
        config_profiles: config_profiles,
        credentials_profiles: credentials_profiles,
        sso_sessions: sso_sessions
      )
    end

    private

    def config_file(path)
      load_file(
        path,
        'AWS_CONFIG_FILE',
        File.join(Dir.home, '.aws', 'config')
      )
    end

    def credentials_file(path)
      load_file(
        path,
        'AWS_SHARED_CREDENTIALS_FILE',
        File.join(Dir.home, '.aws', 'credentials')
      )
    end

    def load_file(path, env_location, default_location)
      file_location = path || ENV[env_location] || default_location

      # Resolve ~ without using File.expand_path to avoid prepending
      # the current working directory.
      if file_location =~ %r{^~(/|#{Regexp.quote(File::SEPARATOR)}).*$}
        file_location = user_home_directory + file_location[1..]
      end

      configuration_file = Pathname.new(file_location)
      return '' unless configuration_file.readable?

      configuration_file.read
    end
  end
end
