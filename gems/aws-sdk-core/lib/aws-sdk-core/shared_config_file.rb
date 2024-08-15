# frozen_string_literal: true

module AWS::SDK::Core
  # Represents the configuration and credentials files as a single profile file.
  # @api private
  class SharedConfigFile
    def initialize(config_profiles:, credentials_profiles:, sso_sessions:)
      merge_files!(config_profiles, credentials_profiles)
      @profiles = config_profiles.transform_values { |profile| profile.to_h }
      @sso_sessions = sso_sessions.transform_values { |sso_session| sso_session.to_h }
    end

    attr_reader :profiles, :sso_sessions

    # TODO: fill these out
    #
    # def credentials(profile_name)
    #   return nil unless @profiles.key?(profile_name)
    #
    #   properties = @profiles[profile_name].properties
    #
    #   if properties.key?('role_arn')
    #     return AssumeRoleCredentials.new(profile_name, @profiles)
    #   elsif properties.key?('aws_access_key_id')
    #     aws_access_key_id = properties['aws_access_key_id']
    #     aws_secret_access_key = properties['aws_secret_access_key']
    #     aws_session_token = properties['aws_session_token']
    #
    #     raise "'aws_secret_access_key' was not specified in profile:
    # #{profile_name}" unless aws_secret_access_key
    #
    #     if aws_session_token
    #       return SessionCredentials.new(aws_access_key_id.value,
    # aws_secret_access_key.value, aws_session_token.value)
    #     else
    #       return BasicCredentials.new(aws_access_key_id.value,
    # aws_secret_access_key.value)
    #     end
    #   else
    #     return nil
    #   end
    # end
    #
    # def region(profile_name)
    #   return nil unless @profiles.key?(profile_name)
    #
    #   region = @profiles[profile_name].properties['region']
    #
    #   return nil unless region
    #
    #   region.value
    # end

    private

    def merge_files!(config_file, credentials_file)
      credentials_file.each do |credentials_profile_name, credentials_profile|
        if config_file.key?(credentials_profile_name)
          Kernel.warn(
            "Warning: The profile '#{credentials_profile_name}' was found " \
            'in both the configuration and credentials configuration ' \
            'files. The properties will be merged, using the property in ' \
            'the credentials file if there are duplicates.'
          )

          config_file[credentials_profile_name]
            .update_properties(credentials_profile.properties)
        else
          config_file[credentials_profile_name] = credentials_profile
        end
      end
    end
  end
end
