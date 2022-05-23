# frozen_string_literal: true

# TODO
class AWS::SDK::Core::EC2CredentialsProvider
  include AWS::SDK::Core::CredentialProvider

  ENVIRONMENT = proc do |cfg|
    shared_config = AWS::SDK::Core.shared_config[cfg[:profile]]

    unless ENV['AWS_EC2_METADATA_DISABLED']
      new(
        client: AWS::SDK::Core::EC2Metadata.new(
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
  METADATA_PATH_BASE = '/latest/meta-data/iam/security-credentials/'.freeze

  def initialize(options = {})
    @client = options[:client] || AWS::SDK::Core::EC2Metadata.new
  end

  # TODO -- should we be retrying failed json parsing?...
  def credentials
    metadata = @client.get(METADATA_PATH_BASE)
    profile_name = metadata.lines.first.strip
    c = @client.get(METADATA_PATH_BASE + profile_name)

    @credentials = AWS::SDK::Core::Credentials.new(
      access_key_id: c['AccessKeyId'],
      secret_access_key: c['SecretAccessKey'],
      session_token: c['Token']
    )
    @expiration = c['Expiration'] ? Time.iso8601(c['Expiration']) : nil
  end
end
