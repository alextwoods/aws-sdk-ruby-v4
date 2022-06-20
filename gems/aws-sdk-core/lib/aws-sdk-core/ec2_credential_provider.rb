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
                    profile_config['ec2_metadata_service_endpoint'] ||
                    nil,
          endpoint_mode: ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] ||
                         profile_config['ec2_metadata_service_endpoint_mode'] ||
                         'IPv4'
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
      super()
    end

    # @return [EC2Metadata]
    attr_reader :client

    private

    def fetch
      metadata = @client.get(METADATA_PATH_BASE)
      profile_name = metadata.lines.first.strip
      creds_json = @client.get(METADATA_PATH_BASE + profile_name)

      expiration = if creds_json['Expiration']
                     Time.iso8601(creds_json['Expiration'])
                   end
      @credentials = Credentials.new(
        access_key_id: creds_json['AccessKeyId'],
        secret_access_key: creds_json['SecretAccessKey'],
        session_token: creds_json['Token'],
        expiration: expiration
      )
    end
  end
end
