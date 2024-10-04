# frozen_string_literal: true

module AWS::SDK::Core
  # An auto-refreshing credentials provider that loads credentials from
  # EC2 instances using IMDSv2.
  #
  #     provider = AWS::SDK::Core::InstanceCredentialsProvider.new(
  #       client: AWS::SDK::Core::EC2Metadata.new(...)
  #     )
  #     ec2_config = AWS::SDK::EC2::Config.new(credentials_provider: provider)
  #     ec2 = AWS::SDK::EC2::Client.new(ec2_config)
  #
  # If you omit the `:client` option, a new {AWS::SDK::Core::EC2Metadata} will
  # be created.
  class InstanceCredentialsProvider < Hearth::IdentityProvider
    include Hearth::RefreshingIdentityProvider

    # Path base for GET request for profile and credentials.
    # @api private
    METADATA_PATH = '/latest/meta-data/iam/security-credentials/'

    # Initializes an instance of InstanceCredentialsProvider using ENV and
    # profile values.
    def self.from_env(config)
      # TODO: add account ID support
      return if ENV['AWS_EC2_METADATA_DISABLED']

      profile = config[:profile]
      profile_config = AWS::SDK::Core.shared_config.profiles[profile]

      endpoint = ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT'] ||
                 (profile_config &&
                   profile_config['ec2_metadata_service_endpoint'])
      endpoint_mode = ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] ||
                      (profile_config &&
                        profile_config['ec2_metadata_service_endpoint_mode'])
      client = EC2Metadata.new(endpoint: endpoint, endpoint_mode: endpoint_mode)
      new(client: client)
    end

    # @param [EC2Metadata] client
    def initialize(client: nil)
      @client = client || EC2Metadata.new
      @no_refresh_until = nil
      super()
    end

    # @return [EC2Metadata]
    attr_reader :client

    private

    def refresh(_properties = {})
      if @no_refresh_until && @no_refresh_until > Time.now
        warn_expired_credentials
        return
      end
      new_creds = fetch_credentials

      if !empty_credentials?(@identity) &&
         (!new_creds['AccessKeyId'] || new_creds['AccessKeyId'].empty?)
        # credentials are already set
        # error getting new credentials
        # don't update the credentials
        @no_refresh_until = Time.now + refresh_offset
        warn_expired_credentials
      else
        update_credentials(new_creds)
      end
    end

    def update_credentials(new_creds)
      expiration = if new_creds['Expiration']
                     Time.iso8601(new_creds['Expiration'])
                   end
      @identity = Identities::Credentials.new(
        access_key_id: new_creds['AccessKeyId'],
        secret_access_key: new_creds['SecretAccessKey'],
        session_token: new_creds['Token'],
        expiration: expiration
      )
      return unless expiration && expiration < Time.now

      @no_refresh_until = Time.now + refresh_offset
      warn_expired_credentials
    end

    def fetch_credentials
      metadata = @client.get(METADATA_PATH)
      profile_name = metadata.lines.first.strip
      ::JSON.parse(
        @client.get(METADATA_PATH + profile_name)
      )
    rescue StandardError
      {}
    end

    def warn_expired_credentials
      warn('Attempting credential expiration extension due to a credential ' \
           'service availability issue. A refresh of these credentials ' \
           'will be attempted again in 5 minutes.')
    end

    def refresh_offset
      rand(300..360)
    end

    def empty_credentials?(creds)
      !creds || !creds.access_key_id || creds.access_key_id.empty?
    end
  end
end
