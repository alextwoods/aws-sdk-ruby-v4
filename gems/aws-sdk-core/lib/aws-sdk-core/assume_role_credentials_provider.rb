# frozen_string_literal: true

module AWS::SDK::Core
  # TODO
  class AssumeRoleCredentialsProvider
    include CredentialProvider
    include RefreshingCredentialsProvider

    PROFILE = proc do |cfg|
      return unless AWS::SDK::Core.sts_loaded?

      profile_config = AWS::SDK::Core.shared_config[cfg[:profile]]

      return unless profile_config['role_arn']

      source_profile = profile_config['source_profile']
      credential_source = profile_config['credential_source']

      if source_profile && credential_source
        raise Errors::CredentialSourceConflictError,
              "Profile #{cfg[:profile]} has a source_profile, and "\
              'a credential_source. For assume role credentials, must '\
              'provide only source_profile or credential_source, not both.'
      end

      # resolve the source provider to use from
      # either source_profile or credential_source
      if source_profile
        visited_profiles = cfg[:visited_profiles] || Set.new
        source_credentials_provider = resolve_source_profile_credentials(
          source_profile, visited_profiles, cfg
        )

        unless source_credentials_provider
          raise Errors::NoSourceProfileError,
                "Profile #{cfg[:profile]} has a role_arn, and source_profile,"\
                'but the source_profile does not have credentials.'
        end
      elsif credential_source
        source_credentials_provider = resolve_credentials_source(
          credential_source, cfg
        )
        unless credential_source
          raise Errors::NoSourceCredentialsError,
                "Profile #{cfg[:profile]} could not get source credentials "\
                "from provider #{credential_source}"
        end
      else
        raise Errors::NoSourceProfileError,
              "Profile #{cfg[:profile]} has a role_arn, "\
              'but no source_profile or credential_source'
      end

      sts_config = AWS::SDK::STS::Config.new(
        region: cfg[:region],
        credentials_provider: source_credentials_provider
      )
      sts_client = AWS::SDK::STS::Client.new(sts_config)
      new(
        client: sts_client,
        role_session_name: profile_config['role_session_name'] ||
                           'default_session',
        role_arn: profile_config['role_arn'],
        duration_seconds: profile_config['duration_seconds'],
        external_id: profile_config['external_id'],
        serial_number: profile_config['mfa_serial']
      )
    end


    def self.resolve_source_profile_credentials(profile, visited_profiles, cfg)
      # must defined in method to avoid dependency issues
      profile_credential_chain = [
        AWS::SDK::Core::StaticCredentialsProvider::PROFILE,
        AWS::SDK::Core::AssumeRoleCredentialsProvider::PROFILE,
        # AWS::SDK::Core::AssumeRoleWebIdentityCredentialsProvider::PROFILE,
        AWS::SDK::Core::ProcessCredentialsProvider::PROFILE,
        # AWS::SDK::Core::SSOCredentialsProvider::PROFILE
        # TODO: Renable all once required in core.
      ]

      if visited_profiles && visited_profiles.include?(profile)
        raise Errors::SourceProfileCircularReferenceError
      end

      visited_profiles.add(profile)
      cfg = {
        profile: profile,
        visited_profiles: visited_profiles,
        region: cfg[:region]
      }

      profile_credential_chain.each do |p|
        provider = p.call(cfg)
        return provider unless p.nil?
      end
      nil
    end

    def self.resolve_credentials_source(credentials_source, cfg)
      case credentials_source
      when 'Ec2InstanceMetadata'
        EC2CredentialsProvider.new # TODO: Arguments?
      when 'EcsContainer'
        ECSCredentialsProvider.new
      when 'Environment'
        StaticCredentialsProvider.ENVIRONMENT.call(cfg)
      else
        raise Errors::InvalidCredentialSourceError,
              "Unsupported credential_source: #{credentials_source}"
      end
    end

    # @option options [required, String] :role_arn
    # @option options [required, String] :role_session_name
    # @option options [String] :policy
    # @option options [Integer] :duration_seconds
    # @option options [String] :external_id
    # @option options [String] :serial_number
    # @option options [AWS::SDK::STS::Client] :client
    # @param [Callable] :before_refresh A proc called when AWS
    #   credentials are required and need to be refreshed.
    def initialize(role_arn:, role_session_name:, policy: nil,
                   duration_seconds: nil, external_id: nil, serial_number: nil,
                   client: nil, **options)
      unless AWS::SDK::Core.sts_loaded?
        raise 'aws-sdk-sts is required to create an'\
              'AssumeRoleCredentialsProvider.'
      end
      @client = client || AWS::SDK::STS::Client.new
      @assume_role_params = {
        role_arn: role_arn,
        role_session_name: role_session_name,
        policy: policy,
        duration_seconds: duration_seconds,
        external_id: external_id,
        serial_number: serial_number
      }
      super(options)
    end

    private

    def fetch
      c = @client.assume_role(@assume_role_params).data.credentials
      @credentials = Credentials.new(
        access_key_id: c.access_key_id,
        secret_access_key: c.secret_access_key,
        session_token: c.session_token,
        expiration: c.expiration
      )
    end
  end
end
