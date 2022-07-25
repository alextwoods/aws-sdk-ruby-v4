# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeStarConnections
  # @!method initialize(*options)
  #   @option args [Boolean] :adaptive_retry_wait_to_fill (true)
  #     Used only in `adaptive` retry mode. When true, the request will sleep until there is sufficient client side capacity to retry the request. When false, the request will raise a `CapacityNotAvailableError` and will not retry instead of sleeping.
  #
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
  #   @option args [Boolean] :http_wire_trace (false)
  #     Enable debug wire trace on http requests.
  #
  #   @option args [Symbol] :log_level (:info)
  #     Default log level to use
  #
  #   @option args [Logger] :logger ($stdout)
  #     Logger to use for output
  #
  #   @option args [Integer] :max_attempts (3)
  #     An integer representing the maximum number of attempts that will be made for a single request, including the initial attempt.
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
  #   @option args [String] :retry_mode ('standard')
  #     Specifies which retry algorithm to use. Values are:
  #      * `standard` - A standardized set of retry rules across the AWS SDKs. This includes support for retry quotas, which limit the number of unsuccessful retries a client can make.
  #      * `adaptive` - An experimental retry mode that includes all the functionality of `standard` mode along with automatic client side throttling.  This is a provisional mode that may change behavior in the future.
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
  # @!attribute adaptive_retry_wait_to_fill
  #   @return [Boolean]
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
  # @!attribute http_wire_trace
  #   @return [Boolean]
  #
  # @!attribute log_level
  #   @return [Symbol]
  #
  # @!attribute logger
  #   @return [Logger]
  #
  # @!attribute max_attempts
  #   @return [Integer]
  #
  # @!attribute profile
  #   @return [String]
  #
  # @!attribute region
  #   @return [String]
  #
  # @!attribute retry_mode
  #   @return [String]
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
    :adaptive_retry_wait_to_fill,
    :credential_provider,
    :disable_host_prefix,
    :endpoint,
    :http_wire_trace,
    :log_level,
    :logger,
    :max_attempts,
    :profile,
    :region,
    :retry_mode,
    :signer,
    :stub_responses,
    :validate_input,
    keyword_init: true
  ) do
    include Hearth::Configuration

    private

    def validate!
      Hearth::Validator.validate!(adaptive_retry_wait_to_fill, TrueClass, FalseClass, context: 'options[:adaptive_retry_wait_to_fill]')
      Hearth::Validator.validate!(credential_provider, AWS::SDK::Core::CredentialProvider, context: 'options[:credential_provider]')
      Hearth::Validator.validate!(disable_host_prefix, TrueClass, FalseClass, context: 'options[:disable_host_prefix]')
      Hearth::Validator.validate!(endpoint, String, context: 'options[:endpoint]')
      Hearth::Validator.validate!(http_wire_trace, TrueClass, FalseClass, context: 'options[:http_wire_trace]')
      Hearth::Validator.validate!(log_level, Symbol, context: 'options[:log_level]')
      Hearth::Validator.validate!(logger, Logger, context: 'options[:logger]')
      Hearth::Validator.validate!(max_attempts, Integer, context: 'options[:max_attempts]')
      Hearth::Validator.validate!(profile, String, context: 'options[:profile]')
      Hearth::Validator.validate!(region, String, context: 'options[:region]')
      Hearth::Validator.validate!(retry_mode, String, context: 'options[:retry_mode]')
      Hearth::Validator.validate!(signer, AWS::SigV4::Signer, context: 'options[:signer]')
      Hearth::Validator.validate!(stub_responses, TrueClass, FalseClass, context: 'options[:stub_responses]')
      Hearth::Validator.validate!(validate_input, TrueClass, FalseClass, context: 'options[:validate_input]')
    end

    def self.defaults
      @defaults ||= {
        adaptive_retry_wait_to_fill: [true],
        credential_provider: [*AWS::SDK::Core::CREDENTIAL_PROVIDER_CHAIN],
        disable_host_prefix: [false],
        endpoint: [proc { |cfg| cfg[:stub_responses] ? 'http://localhost' : nil } ],
        http_wire_trace: [false],
        log_level: [:info],
        logger: [proc { |cfg| Logger.new($stdout, level: cfg[:log_level]) } ],
        max_attempts: [3],
        profile: [Hearth::Config::EnvProvider.new('AWS_PROFILE', type: 'String'),'default'],
        region: [Hearth::Config::EnvProvider.new('AWS_REGION', type: 'String'),AWS::SDK::Core::SharedConfigProvider.new('region', type: 'String')],
        retry_mode: ['standard'],
        signer: [proc { |cfg| AWS::SigV4::Signer.new(service: 'codestar-connections', region: cfg[:region], credential_provider: cfg[:credential_provider]) }],
        stub_responses: [false],
        validate_input: [true]
      }.freeze
    end
  end
end
