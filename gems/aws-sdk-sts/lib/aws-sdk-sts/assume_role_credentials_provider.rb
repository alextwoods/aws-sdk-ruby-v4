# frozen_string_literal: true

module AWS::SDK::STS
  # An auto-refreshing credentials provider that assumes a role via
  # {AWS::SDK::STS::Client#assume_role}.
  #
  #     provider = AWS::SDK::STS::AssumeRoleCredentialsProvider.new(
  #       client: AWS::SDK::STS::Client.new(...),
  #       role_arn: "linked::account::arn",
  #       role_session_name: "session-name"
  #     )
  #     ec2 = AWS::SDK::EC2::Client.new(credentials_provider: provider)
  #
  # If you omit `:client` option, a new {AWS::SDK::STS::Client} object will be
  # constructed with additional options that were provided.
  #
  # @see AWS::SDK::STS::Client#assume_role
  class AssumeRoleCredentialsProvider < Hearth::IdentityProvider
    include Hearth::RefreshingIdentityProvider

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

    # Initializes an instance of AssumeRoleCredentialsProvider using a profile.
    def self.from_profile(config, options = {})
      profile = options[:profile] || config[:profile]
      profile_config = AWS::SDK::Core.shared_config.profiles[profile]
      return unless profile_config && profile_config['role_arn']

      source_provider = resolve_source_provider(
        config,
        options,
        profile,
        profile_config
      )
      profile = options[:profile] || config[:profile] # may have changed
      build_profile_provider(profile, profile_config, source_provider)
    end

    # Initializes an instance of AssumeRoleCredentialsProvider.
    # @option options [String] :role_arn
    # @option options [String|Callable] :token_code If a proc
    #   is provided, it will be called and the result used
    #   when credentials are required and need to be
    #   refreshed.
    # @option options [String] :role_session_name (Base64 UUID)
    # @option options [AWS::SDK::STS::Client] :client (Client.new)
    #
    # Takes additional parameters for {AWS::SDK::STS::Client#assume_role}.
    #
    # @see AWS::SDK::STS::Client#assume_role
    def initialize(options)
      @client = options.delete(:client) || Client.new
      @token_code = options.delete(:token_code)
      @assume_role_params = options
      @assume_role_params[:role_session_name] ||=
        ::Base64.strict_encode64(::SecureRandom.uuid)
      super()
    end

    private

    def refresh(_properties = {})
      token_code =
        if @token_code.respond_to?(:call)
          @token_code.call
        else
          @token_code
        end
      c = @client.assume_role(
        @assume_role_params.merge(token_code: token_code)
      ).data.credentials
      @identity = AWS::SDK::Core::Identities::Credentials.new(
        access_key_id: c.access_key_id,
        secret_access_key: c.secret_access_key,
        session_token: c.session_token,
        expiration: c.expiration
      )
    end

    class << self
      private

      def resolve_source_provider(config, options, profile, profile_config)
        source_profile = profile_config['source_profile']
        credential_source = profile_config['credential_source']

        if source_profile && credential_source
          raise CredentialSourceConflictError,
                "Profile #{profile} has a source_profile and " \
                'a credential_source. For assume role credentials, it must ' \
                'provide only source_profile or credential_source, not both.'
        elsif source_profile
          resolve_source_profile(config, options, source_profile)
        elsif credential_source
          resolve_credentials_source(
            config,
            profile,
            profile_config,
            credential_source
          )
        else
          raise NoSourceProfileError,
                "Profile #{profile} has a role_arn " \
                'but no source_profile or credential_source'
        end
      end

      def resolve_source_profile(config, options, source_profile)
        visited_profiles = options[:visited_profiles] || Set.new
        unless AWS::SDK::Core.shared_config.profiles.key?(source_profile)
          raise NoSuchProfileError,
                "source_profile #{source_profile} does not exist."
        end

        options = visit_source_profile(visited_profiles, source_profile)
        chain = [
          AWS::SDK::Core::StaticCredentialsProvider.method(:from_profile),
          AssumeRoleCredentialsProvider.method(:from_profile),
          AssumeRoleWebIdentityCredentialsProvider.method(:from_profile),
          AWS::SDK::Core::ProcessCredentialsProvider.method(:from_profile)
        ]
        if defined?(AWS::SDK::SSO) && defined?(AWS::SDK::SSO::TokenProvider)
          chain << AWS::SDK::SSO::TokenProvider.method(:from_profile)
        end

        chain.each do |p|
          provider = p.call(config, options)
          return provider unless provider.nil?
        end

        raise NoSourceCredentialsError,
              "Profile #{source_profile} has a role_arn and source_profile " \
              'but the source_profile does not have credentials.'
      end

      def visit_source_profile(visited_profiles, source_profile)
        if visited_profiles.include?(source_profile)
          raise SourceProfileCircularReferenceError,
                'Circular reference in assume role profiles' \
                ", have already visited: #{source_profile}"
        end

        visited_profiles.add(source_profile)
        {
          profile: source_profile,
          visited_profiles: visited_profiles
        }
      end

      def resolve_credentials_source(config, profile, profile_config, credential_source)
        case credential_source
        when 'Ec2InstanceMetadata'
          client = build_ec2_metadata_client(profile_config)
          AWS::SDK::Core::InstanceCredentialsProvider.new(client: client)
        when 'EcsContainer'
          AWS::SDK::Core::ContainerCredentialsProvider.new
        when 'Environment'
          AWS::SDK::Core::StaticCredentialsProvider.from_env(config)
        when nil
          raise NoSourceCredentialsError,
                "Profile #{profile} could not get source credentials " \
                "from provider #{credential_source}"
        else
          raise InvalidCredentialSourceError,
                "Unsupported credential_source: #{credential_source}"
        end
      end

      def build_ec2_metadata_client(profile_config)
        endpoint = ENV.fetch(
          'AWS_EC2_METADATA_SERVICE_ENDPOINT',
          profile_config['ec2_metadata_service_endpoint']
        )
        endpoint_mode = ENV.fetch(
          'AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE',
          profile_config['ec2_metadata_service_endpoint_mode']
        )
        AWS::SDK::Core::EC2Metadata.new(
          endpoint: endpoint,
          endpoint_mode: endpoint_mode
        )
      end

      def build_profile_provider(profile, profile_config, source_provider)
        sts_client = Client.new(
          profile: profile,
          credentials_provider: source_provider
        )
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
