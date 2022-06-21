# frozen_string_literal: true

module AWS::SDK::Core
  # An auto-refreshing credential provider that loads credentials from
  # EC2 instances.
  #
  #     provider = AWS::SDK::Core::InstanceProfileCredentials.new(
  #       client: AWS::SDK::Core::EC2Metadata.new(...)
  #     )
  #     ec2 = Aws::EC2::Client.new(credential_provider: provider)
  #
  # If you omit the `:client` option, a new {AWS::SDK::Core::EC2Metadata} will
  # be created.
  class EC2CredentialProvider
    include CredentialProvider
    include RefreshingCredentialProvider

    ENVIRONMENT = proc do |cfg|
      profile_config = AWS::SDK::Core.shared_config[cfg[:profile]]
      unless ENV['AWS_EC2_METADATA_DISABLED']
        client = EC2Metadata.new(
          endpoint: ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT'] ||
                    profile_config['ec2_metadata_service_endpoint'],
          endpoint_mode: ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] ||
                         profile_config['ec2_metadata_service_endpoint_mode']
        )
        new(client: client)
      end
    end

    # Path base for GET request for profile and credentials.
    # @api private
    METADATA_PATH_BASE = '/latest/meta-data/iam/security-credentials/'

    # @param [EC2Metadata] client
    def initialize(client: nil)
      @client = client || EC2Metadata.new
      @no_refresh_until = nil
      super()
    end

    # @return [EC2Metadata]
    attr_reader :client

    private

    def fetch
      if @no_refresh_until && @no_refresh_until > Time.now
        warn_expired_credentials
        return
      end
      new_creds = begin
                    metadata = @client.get(METADATA_PATH_BASE)
                    profile_name = metadata.lines.first.strip
                    ::JSON.load(
                      @client.get(METADATA_PATH_BASE + profile_name)
                    )
                  rescue
                    {}
                  end
      expiration = if new_creds['Expiration']
                     Time.iso8601(new_creds['Expiration'])
                   end

      if empty_credentials?(@credentials)
        @credentials = Credentials.new(
          access_key_id: new_creds['AccessKeyId'],
          secret_access_key: new_creds['SecretAccessKey'],
          session_token: new_creds['Token'],
          expiration: expiration
        )
        if expiration && expiration < Time.now
          @no_refresh_until = Time.now + refresh_offset
          warn_expired_credentials
        end
      else
        # credentials are already set
        # update them only if the new ones are not empty
        if !new_creds['AccessKeyId'] || new_creds['AccessKeyId'].empty?
          # error getting new credentials
          @no_refresh_until = Time.now + refresh_offset
          warn_expired_credentials
        else
          @credentials = Credentials.new(
            access_key_id: new_creds['AccessKeyId'],
            secret_access_key: new_creds['SecretAccessKey'],
            session_token: new_creds['Token'],
            expiration: expiration
          )
          if expiration && expiration < Time.now
            @no_refresh_until = Time.now + refresh_offset
            warn_expired_credentials
          end
        end
      end
    end

    def warn_expired_credentials
      warn("Attempting credential expiration extension due to a credential "\
        "service availability issue. A refresh of these credentials "\
        "will be attempted again in 5 minutes.")
    end

    def refresh_offset
      rand(300..360)
    end

    def empty_credentials?(creds)
      !creds || !creds.access_key_id || creds.access_key_id.empty?
    end
  end
end
