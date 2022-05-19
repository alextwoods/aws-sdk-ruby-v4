# frozen_string_literal: true

# Static credential provider
class AWS::SDK::Core::AssumeRoleWebIdentityCredentialsProvider
  include AWS::SDK::Core::CredentialProvider

  PROFILE = proc do |cfg|
    shared_config = AWS::SDK::Core.shared_config[cfg[:profile]]
    if shared_config[:web_identity_token_file] && shared_config[:role_arn]
      opts = {
        role_arn: shared_config[:role_arn],
        web_identity_token_file: shared_config[:web_identity_token_file],
        role_session_name: shared_config[:role_session_name]
      }
      opts[:region] = cfg.region if cfg.region
      new(opts)
    end
  end

  ENVIRONMENT = proc do |cfg|
    if ENV['AWS_ROLE_ARN'] && ENV['AWS_WEB_IDENTITY_TOKEN_FILE']
      opts = {
        role_arn: ENV['AWS_ROLE_ARN'],
        web_identity_token_file: ENV['AWS_WEB_IDENTITY_TOKEN_FILE'],
        role_session_name: ENV['AWS_ROLE_SESSION_NAME']
      }
      opts[:region] = cfg.region if cfg.region
      new(opts)
    end
  end

  # @param [Hash] options
  # @option options [required, String] :role_arn The IAM role
  #   to be assumed.
  # @option options [required, String] :web_identity_token_file
  #   The absolute path to the file on disk containing OIDC token.
  # @option options [String] :role_session_name The IAM session
  #   name used to distinguish session, when not provided, base64
  #   encoded UUID is generated as the session name.
  # @option options [AWS::SDK::STS::Client] :client
  def initialize(options = {})
    options[:role_session_name] ||= Base64.strict_encode64(SecureRandom.uuid)
    @client = options[:client] || AWS::SDK::STS::Client.new

    @token_file = options.delete(:web_identity_token_file)
    options.each_pair do |key, value|
      if self.class.assume_role_web_identity_options.include?(key)
        @assume_role_web_identity_params[key] = value
      elsif !CLIENT_EXCLUDE_OPTIONS.include?(key)
        client_opts[key] = value
      end
    end

    unless @assume_role_web_identity_params[:role_session_name]
      # not provided, generate encoded UUID as session name
      @assume_role_web_identity_params[:role_session_name] = Base64.strict_encode64(SecureRandom.uuid)
    end
    @client = client_opts[:client] || STS::Client.new(client_opts.merge(credentials: false))
    super
  end

  # @return [STS::Client]
  attr_reader :client

  private

  def refresh
    # read from token file everytime it refreshes
    @assume_role_web_identity_params[:web_identity_token] = _token_from_file(@token_file)

    c = @client.assume_role_with_web_identity(
      @assume_role_web_identity_params).credentials
    @credentials = Credentials.new(
      c.access_key_id,
      c.secret_access_key,
      c.session_token
    )
    @expiration = c.expiration
  end

  def _token_from_file(path)
    unless path && File.exist?(path)
      raise Aws::Errors::MissingWebIdentityTokenFile.new
    end
    File.read(path)
  end

  class << self

    # @api private
    def assume_role_web_identity_options
      @arwio ||= begin
        input = Aws::STS::Client.api.operation(:assume_role_with_web_identity).input
        Set.new(input.shape.member_names)
      end
    end
  end
end
