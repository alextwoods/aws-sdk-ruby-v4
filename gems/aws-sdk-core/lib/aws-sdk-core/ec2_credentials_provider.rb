# frozen_string_literal: true

# TODO
class AWS::SDK::Core::ECS2redentialsProvider
  include AWS::SDK::Core::CredentialProvider

  # Path base for GET request for profile and credentials.
  # @api private
  METADATA_PATH_BASE = '/latest/meta-data/iam/security-credentials/'.freeze

  # @param [Hash] options
  # @option options [Integer] :retries (3) Number of times to retry
  #   when retrieving credentials.
  # @option options [String] :endpoint ('http://169.254.170.2')
  # @option options [String] :credential_path By default, the value of the
  #   AWS_CONTAINER_CREDENTIALS_RELATIVE_URI environment variable.
  # @option options [Float] :http_open_timeout (2)
  # @option options [Float] :http_read_timeout (5)
  # @option options [IO] :http_debug_output (nil) HTTP wire
  #   traces are sent to this object.  You can specify something
  #   like $stdout.
  # @option options [Numeric, Proc] :backoff By default, failures are retried
  #   with exponential back-off, i.e. `sleep(1.2 ** num_failures)`. You can
  #   pass a number of seconds to sleep between failed attempts, or
  #   a Proc that accepts the number of failures.
  def initialize(options = {})
    @retries = options[:retries] || 3
    endpoint_mode = resolve_endpoint_mode(options)
    @endpoint = resolve_endpoint(options, endpoint_mode)
    @http_open_timeout = options[:http_open_timeout] || 2
    @http_read_timeout = options[:http_read_timeout] || 5
    @http_debug_output = options[:http_debug_output]
    @backoff = backoff(options[:backoff])

    @client = AWS::SDK::Core::EC2Metadata.new
  end

  def credentials
    metadata = @client.get(METADATA_PATH_BASE)
    profile_name = metadata.lines.first.strip
    credentials = @client.get(METADATA_PATH_BASE + profile_name)
    # TODO...
  end

  private

  def resolve_endpoint_mode(options)
    value = options[:endpoint_mode]
    value ||= ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE']
    value ||= Aws.shared_config.ec2_metadata_service_endpoint_mode(
      profile: options[:profile]
    )
    value || 'IPv4'
  end

  def resolve_endpoint(options, endpoint_mode)
    value = options[:endpoint] || options[:ip_address]
    value ||= ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT']
    value ||= Aws.shared_config.ec2_metadata_service_endpoint(
      profile: options[:profile]
    )

    return value if value

    case endpoint_mode.downcase
    when 'ipv4' then 'http://169.254.169.254'
    when 'ipv6' then 'http://[fd00:ec2::254]'
    else
      raise ArgumentError,
            ':endpoint_mode is not valid, expected IPv4 or IPv6, '\
            "got: #{endpoint_mode}"
    end
  end
end
