# frozen_string_literal: true

module AWS::SDK::Core
  # A credential provider that will fetch credentials from EC2 instance
  # metadata.
  class EC2CredentialProvider
    include CredentialProvider
    include RefreshingCredentialProvider

    ENVIRONMENT = proc do |cfg|
      shared_config = AWS::SDK::Core.shared_config[cfg[:profile]]
      unless ENV['AWS_EC2_METADATA_DISABLED']
        client = EC2Metadata.new(
          endpoint: ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT'] ||
                    shared_config['ec2_metadata_service_endpoint'] ||
                    nil,
          endpoint_mode: ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] ||
                         shared_config['ec2_metadata_service_endpoint_mode'] ||
                         'IPv4'
        )
        new(client: client)
      end
    end

    # Path base for GET request for profile and credentials.
    # @api private
    METADATA_PATH_BASE = '/latest/meta-data/iam/security-credentials/'

    def initialize(client: nil, **options)
      @client = client || EC2Metadata.new
      super(options)
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
