# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::STS
  # @!method initialize(*options)
  #   @option args [AWS::SDK::Core::CredentialProvider] :credential_provider (*AWS::SDK::Core::CREDENTIAL_PROVIDER_CHAIN)
  #     A credential provider is a class that fetches your AWS credentials. This can be an instance
  #     of any one of the following classes:
  #
  #     * `AWS::SDK::Core::StaticCredentialProvider` - Used for fetching static, non-refreshing
  #       credentials.
  #
  #     * `AWS::SDK::Core::AssumeRoleCredentialProvider` - Used when you need to assume a role.
  #
  #     * `AWS::SDK::Core::AssumeRoleWebIdentityCredentialProvider` - Used when you need to
  #       assume a role after providing credentials via the web using a token.
  #
  #     * `AWS::SDK::Core::SSOCredentialProvider` - Used for loading credentials from AWS SSO
  #       using an access token generated from `aws login`.
  #
  #     * `AWS::SDK::Core::ProcessCredentialProvider` - Used for loading credentials from a
  #       process that outputs JSON to stdout.
  #
  #     * `AWS::SDK::Core::EC2CredentialProvider` - Used for loading credentials from the instance
  #       metadata service (IMDS) on an EC2 instance.
  #
  #     * `AWS::SDK::Core::ECSCredentialProvider - Used for loading credentials from instances
  #       running in ECS.
  #
  #     * `AWS::SDK::CognitoIdentity::CredentialProvider` - Used for loading credentials
  #       from the Cognito Identity service.
  #
  #     When `:credential_provider` is not configured directly, the following
  #     locations will be searched for credentials:
  #
  #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'], and other
  #       ENV variables that influence credentials.
  #     * `~/.aws/credentials` and `~/.aws/config`
  #     * EC2/ECS instance profiles.
  #
  #     @see AWS::SDK::Core::CREDENTIAL_PROVIDER_CHAIN
  #
  #   @option args [Boolean] :disable_host_prefix (false)
  #     When `true`, does not perform host prefix injection using @endpoint's hostPrefix property.
  #
  #   @option args [String] :endpoint
  #     Endpoint of the service
  #
  #   @option args [Hearth::HTTP::Client] :http_client (Hearth::HTTP::Client.new)
  #     The HTTP Client to use for request transport.
  #
  #   @option args [Symbol] :log_level (:info)
  #     The default log level to use with the Logger.
  #
  #   @option args [Logger] :logger (Logger.new($stdout, level: cfg.log_level))
  #     The Logger instance to use for logging.
  #
  #   @option args [String] :profile (default)
  #     The AWS region to connect to. The configured `:region` is
  #     used to determine the service `:endpoint`. When not passed,
  #     a default `:region` is searched for in the following locations:
  #
  #     * `ENV['AWS_REGION']`
  #     * `~/.aws/credentials` and `~/.aws/config`
  #
  #   @option args [String] :region
  #     The AWS region to connect to. The configured `:region` is
  #     used to determine the service `:endpoint`. When not passed,
  #     a default `:region` is searched for in the following locations:
  #
  #     * `ENV['AWS_REGION']`
  #     * `~/.aws/credentials` and `~/.aws/config`
  #
  #   @option args [Hearth::Retry::Strategy] :retry_strategy (Hearth::Retry::Standard.new)
  #     Specifies which retry strategy class to use. Strategy classes
  #      may have additional options, such as max_retries and backoff strategies.
  #      Available options are:
  #      * `Retry::Standard` - A standardized set of retry rules across the AWS SDKs. This includes support for retry quotas, which limit the number of unsuccessful retries a client can make.
  #      * `Retry::Adaptive` - An experimental retry mode that includes all the functionality of `standard` mode along with automatic client side throttling.  This is a provisional mode that may change behavior in the future.
  #
  #   @option args [AWS::SigV4::Signer] :signer
  #     An instance of SigV4 signer used to sign requests.
  #
  #   @option args [Boolean] :stub_responses (false)
  #     Enable response stubbing for testing. See {Hearth::ClientStubs stub_responses}.
  #
  #   @option args [Boolean] :validate_input (true)
  #     When `true`, request parameters are validated using the modeled shapes.
  #
  # @!attribute credential_provider
  #   @return [AWS::SDK::Core::CredentialProvider]
  #
  # @!attribute disable_host_prefix
  #   @return [Boolean]
  #
  # @!attribute endpoint
  #   @return [String]
  #
  # @!attribute http_client
  #   @return [Hearth::HTTP::Client]
  #
  # @!attribute log_level
  #   @return [Symbol]
  #
  # @!attribute logger
  #   @return [Logger]
  #
  # @!attribute profile
  #   @return [String]
  #
  # @!attribute region
  #   @return [String]
  #
  # @!attribute retry_strategy
  #   @return [Hearth::Retry::Strategy]
  #
  # @!attribute signer
  #   @return [AWS::SigV4::Signer]
  #
  # @!attribute stub_responses
  #   @return [Boolean]
  #
  # @!attribute validate_input
  #   @return [Boolean]
  #
  Config = ::Struct.new(
    :credential_provider,
    :disable_host_prefix,
    :endpoint,
    :http_client,
    :log_level,
    :logger,
    :profile,
    :region,
    :retry_strategy,
    :signer,
    :stub_responses,
    :validate_input,
    keyword_init: true
  ) do
    include Hearth::Configuration

    private

    def validate!
      Hearth::Validator.validate_types!(credential_provider, AWS::SDK::Core::CredentialProvider, context: 'options[:credential_provider]')
      Hearth::Validator.validate_types!(disable_host_prefix, TrueClass, FalseClass, context: 'options[:disable_host_prefix]')
      Hearth::Validator.validate_types!(endpoint, String, context: 'options[:endpoint]')
      Hearth::Validator.validate_types!(http_client, Hearth::HTTP::Client, context: 'options[:http_client]')
      Hearth::Validator.validate_types!(log_level, Symbol, context: 'options[:log_level]')
      Hearth::Validator.validate_types!(logger, Logger, context: 'options[:logger]')
      Hearth::Validator.validate_types!(profile, String, context: 'options[:profile]')
      Hearth::Validator.validate_types!(region, String, context: 'options[:region]')
      Hearth::Validator.validate_types!(retry_strategy, Hearth::Retry::Strategy, context: 'options[:retry_strategy]')
      Hearth::Validator.validate_types!(signer, AWS::SigV4::Signer, context: 'options[:signer]')
      Hearth::Validator.validate_types!(stub_responses, TrueClass, FalseClass, context: 'options[:stub_responses]')
      Hearth::Validator.validate_types!(validate_input, TrueClass, FalseClass, context: 'options[:validate_input]')
    end

    def self.defaults
      @defaults ||= {
        credential_provider: [*AWS::SDK::Core::CREDENTIAL_PROVIDER_CHAIN],
        disable_host_prefix: [false],
        endpoint: [proc { |cfg| cfg[:stub_responses] ? 'http://localhost' : nil } ],
        http_client: [proc { |cfg| Hearth::HTTP::Client.new(logger: cfg[:logger]) }],
        log_level: [:info],
        logger: [proc { |cfg| Logger.new($stdout, level: cfg[:log_level]) } ],
        profile: [Hearth::Config::EnvProvider.new('AWS_PROFILE', type: 'String'),'default'],
        region: [Hearth::Config::EnvProvider.new('AWS_REGION', type: 'String'),AWS::SDK::Core::SharedConfigProvider.new('region', type: 'String')],
        retry_strategy: [Hearth::Retry::Standard.new],
        signer: [proc { |cfg| AWS::SigV4::Signer.new(service: 'sts', region: cfg[:region], credential_provider: cfg[:credential_provider]) }],
        stub_responses: [false],
        validate_input: [true]
      }.freeze
    end
  end
end
