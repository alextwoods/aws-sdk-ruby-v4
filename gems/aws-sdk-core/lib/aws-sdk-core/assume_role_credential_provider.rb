# frozen_string_literal: true

module AWS::SDK::Core
  # An auto-refreshing credential provider that assumes a role via
  # {AWS::SDK::STS::Client#assume_role}.
  #
  #     provider = AWS::SDK::Core::AssumeRoleCredentialProvider.new(
  #       client: AWS::SDK::STS::Client.new(...),
  #       role_arn: "linked::account::arn",
  #       role_session_name: "session-name"
  #     )
  #     ec2_config = AWS::SDK::EC2::Config.new(credential_provider: provider)
  #     ec2 = AWS::SDK::EC2::Client.new(ec2_config)
  #
  # If you omit `:client` option, a new {AWS::SDK::STS::Client} object will be
  # constructed with additional options that were provided.
  #
  # @see AWS::SDK::STS::Client#assume_role
  class AssumeRoleCredentialProvider
    include RefreshingCredentialProvider

    # Raised when a client is constructed and the specified shared
    # credentials profile does not exist.
    class NoSuchProfileError < RuntimeError; end

    # Raised when a client is constructed, where Assume Role credentials are
    # expected, and there is no source profile specified.
    class NoSourceProfileError < RuntimeError; end

    # Raised when a client is constructed with Assume Role credentials using
    # a credential_source, and that source type is unsupported.
    class InvalidCredentialSourceError < RuntimeError; end

    # Raised when a client is constructed with Assume Role credentials, but
    # the profile has both source_profile and credential_source.
    class CredentialSourceConflictError < RuntimeError; end

    # Raised when there is a circular reference in chained
    # source_profiles
    class SourceProfileCircularReferenceError < RuntimeError; end

    # Raised when a client is constructed with Assume Role credentials using
    # a credential_source, and that source doesn't provide credentials.
    class NoSourceCredentialsError < RuntimeError; end

    # Initializes an instance of AssumeRoleCredentialProvider using
    # shared config profile.
    # @api private
    PROFILE = proc do |cfg|
      next unless AWS::SDK::Core.sts_loaded?

      profile_config = AWS::SDK::Core.shared_config[cfg[:profile]]

      next unless profile_config['role_arn']

      source_profile = profile_config['source_profile']
      credential_source = profile_config['credential_source']

      if source_profile && credential_source
        raise CredentialSourceConflictError,
              "Profile #{cfg[:profile]} has a source_profile and "\
              'a credential_source. For assume role credentials, must '\
              'provide only source_profile or credential_source, not both.'
      end

      source_provider = resolve_source_provider(
        cfg, source_profile, credential_source
      )

      build_profile_provider(cfg, profile_config, source_provider)
    end

    # @option options [required, String] :role_arn
    # @option options [String] :role_session_name
    # @option options [String|Callable] :token_code If a proc
    #   is provided, it will be called and the result used
    #   when credentials are required and need to be
    #   refreshed.
    # @option options [AWS::SDK::STS::Client] :client
    #
    # Takes additional parameters for {AWS::SDK::STS::Client#assume_role}.
    #
    # @see AWS::SDK::STS::Client#assume_role
    def initialize(options)
      unless AWS::SDK::Core.sts_loaded?
        raise 'aws-sdk-sts is required to create an '\
              'AssumeRoleCredentialProvider.'
      end
      @client = options.delete(:client) || AWS::SDK::STS::Client.new
      @token_code = options.delete(:token_code)
      @assume_role_params = options
      @assume_role_params[:role_session_name] ||=
        ::Base64.strict_encode64(::SecureRandom.uuid)
      super()
    end

    private

    def fetch
      token_code = if @token_code.respond_to?(:call)
                     @token_code.call
                   else
                     @token_code
                   end
      c = @client.assume_role(
        @assume_role_params.merge(token_code: token_code)
      ).data.credentials

      @credentials = Credentials.new(
        access_key_id: c.access_key_id,
        secret_access_key: c.secret_access_key,
        session_token: c.session_token,
        expiration: c.expiration
      )
    end

    class << self
      private

      def resolve_source_profile(profile, cfg)
        visited_profiles = cfg[:visited_profiles] || Set.new

        unless AWS::SDK::Core.shared_config.key?(profile)
          raise NoSuchProfileError,
                "source_profile #{profile} does not exist."
        end

        cfg = visit_source_profile(visited_profiles, cfg, profile)

        ASSUME_ROLE_PROFILE_CREDENTIAL_PROVIDER_CHAIN.each do |p|
          provider = p.call(cfg)
          return provider unless provider.nil?
        end

        # no provider found
        raise NoSourceCredentialsError,
              "Profile #{cfg[:profile]} has a role_arn and source_profile "\
              'but the source_profile does not have credentials.'
      end

      def visit_source_profile(visited_profiles, cfg, profile)
        if visited_profiles&.include?(profile)
          raise SourceProfileCircularReferenceError,
                'Circular reference in assume role profiles'\
                ", have already visited: #{profile}"
        end

        visited_profiles.add(profile)
        {
          profile: profile,
          visited_profiles: visited_profiles,
          region: cfg[:region]
        }
      end

      def resolve_source_provider(cfg, source_profile, credential_source)
        if source_profile
          resolve_source_profile(source_profile, cfg)
        elsif credential_source
          source_provider = resolve_credentials_source(credential_source, cfg)
          unless source_provider
            raise NoSourceCredentialsError,
                  "Profile #{cfg[:profile]} could not get source credentials "\
                  "from provider #{credential_source}"
          end
          source_provider
        else
          raise NoSourceProfileError,
                "Profile #{cfg[:profile]} has a role_arn "\
                'but no source_profile or credential_source'
        end
      end

      def resolve_credentials_source(credentials_source, cfg)
        case credentials_source
        when 'Ec2InstanceMetadata'
          profile_config = AWS::SDK::Core.shared_config[cfg[:profile]]
          client = EC2Metadata.new(
            endpoint: ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT'] ||
                      profile_config['ec2_metadata_service_endpoint'],
            endpoint_mode: ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] ||
                           profile_config['ec2_metadata_service_endpoint_mode']
          )
          EC2CredentialProvider.new(client: client)
        when 'EcsContainer'
          ECSCredentialProvider.new
        when 'Environment'
          StaticCredentialProvider::ENVIRONMENT.call(cfg)
        else
          raise InvalidCredentialSourceError,
                "Unsupported credential_source: #{credentials_source}"
        end
      end

      def build_profile_provider(cfg, profile_config, source_provider)
        sts_config = AWS::SDK::STS::Config.new(
          region: cfg[:region],
          credential_provider: source_provider
        )
        sts_client = AWS::SDK::STS::Client.new(sts_config)
        new(
          client: sts_client,
          role_session_name: profile_config['role_session_name'],
          role_arn: profile_config['role_arn'],
          duration_seconds: profile_config['duration_seconds']&.to_i,
          external_id: profile_config['external_id'],
          serial_number: profile_config['mfa_serial']
        )
      end
    end
  end
end
