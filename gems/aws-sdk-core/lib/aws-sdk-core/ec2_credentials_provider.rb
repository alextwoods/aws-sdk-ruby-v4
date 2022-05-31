# frozen_string_literal: true

module AWS::SDK::Core
  # TODO
  class EC2CredentialsProvider
    include CredentialProvider

    ENVIRONMENT = proc do |cfg|
      shared_config = AWS::SDK::Core.shared_config[cfg[:profile]]

      unless ENV['AWS_EC2_METADATA_DISABLED']
        new(
          client: EC2Metadata.new(
            endpoint: ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT'] ||
                      shared_config[:ec2_metadata_service_endpoint] ||
                      nil,
            endpoint_mode: ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] ||
                           shared_config[:ec2_metadata_service_endpoint_mode] ||
                           'IPv4'
          )
        )
      end
    end

    # Path base for GET request for profile and credentials.
    # @api private
    METADATA_PATH_BASE = '/latest/meta-data/iam/security-credentials/'

    def initialize(options = {})
      @client = options[:client] || EC2Metadata.new
    end

    def credentials
      metadata = @client.get(METADATA_PATH_BASE)
      profile_name = metadata.lines.first.strip
      c = @client.get(METADATA_PATH_BASE + profile_name)

      @credentials = Credentials.new(
        access_key_id: c['AccessKeyId'],
        secret_access_key: c['SecretAccessKey'],
        session_token: c['Token'],
        expiration: c['Expiration'] ? Time.iso8601(c['Expiration']) : nil
      )
    end
  end
end
