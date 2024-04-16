# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KMS
  # @!method initialize(*options)
  #   @option args [#resolve(params)] :auth_resolver (Auth::Resolver.new)
  #     A class that responds to a `resolve(auth_params)` method where `auth_params` is
  #     the {Auth::Params} struct. For a given operation_name, the method must return an
  #     ordered list of {Hearth::AuthOption} objects to be considered for authentication.
  #   @option args [Array<Hearth::AuthSchemes::Base>] :auth_schemes (Auth::SCHEMES)
  #     An ordered list of {Hearth::AuthSchemes::Base} objects that will considered when attempting to authenticate
  #     the request. The first scheme that returns an Identity from its Hearth::IdentityResolver will be used to
  #     authenticate the request.
  #   @option args [Boolean] :disable_host_prefix (false)
  #     When `true`, does not perform host prefix injection using @endpoint trait's hostPrefix property.
  #   @option args [String] :endpoint
  #     Endpoint of the service
  #   @option args [#resolve(params)] :endpoint_provider (Endpoint::Provider.new)
  #     The endpoint provider used to resolve endpoints. Any object that responds to
  #     `#resolve(parameters)`
  #   @option args [Hearth::HTTP::Client] :http_client (Hearth::HTTP::Client.new)
  #     The HTTP Client to use for request transport.
  #   @option args [Hearth::InterceptorList] :interceptors (Hearth::InterceptorList.new)
  #     A list of Interceptors to apply to the client.  Interceptors are a generic
  #     extension point that allows injecting logic at specific stages of execution
  #     within the SDK. Logic injection is done with hooks that the interceptor
  #     implements.  Hooks are either read-only or read/write. Read-only hooks allow
  #     an interceptor to read the input, transport request, transport response or
  #     output messages. Read/write hooks allow an interceptor to modify one of these
  #     messages.
  #   @option args [Logger] :logger (Logger.new(IO::NULL))
  #     The Logger instance to use for logging.
  #   @option args [Hearth::PluginList] :plugins (Hearth::PluginList.new)
  #     A list of Plugins to apply to the client. Plugins are callables that
  #     take {Config} as an argument. Plugins may modify the provided config.
  #   @option args [String] :profile (default)
  #     Used when loading credentials and configuration from the shared credentials file
  #     at HOME/.aws/credentials.  When not specified, 'default' is used.
  #   @option args [String] :region
  #     The AWS region to connect to. The configured `:region` is
  #     used to determine the service `:endpoint`. When not passed,
  #     a default `:region` is searched for in the following locations:
  #
  #     * `ENV['AWS_REGION']`
  #     * `~/.aws/credentials` and `~/.aws/config`
  #   @option args [#acquire_initial_retry_token(token_scope),#refresh_retry_token(retry_token, error_info),#record_success(retry_token)] :retry_strategy (Hearth::Retry::Standard.new)
  #     Specifies which retry strategy class to use. Strategy classes may have additional
  #     options, such as `max_retries` and backoff strategies.
  #
  #     Available options are:
  #     * `Retry::Standard` - A standardized set of retry rules across the AWS SDKs. This
  #       includes support for retry quotas, which limit the number of unsuccessful retries
  #       a client can make.
  #     * `Retry::Adaptive` - An experimental retry mode that includes all the functionality
  #       of `standard` mode along with automatic client side throttling. This is a provisional
  #       mode that may change behavior in the future.
  #   @option args [] :sigv4_identity_resolver
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
  #   @option args [Boolean] :stub_responses (false)
  #     Enable response stubbing for testing. See {Hearth::ClientStubs#stub_responses}.
  #   @option args [Boolean] :use_dualstack_endpoint
  #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
  #      will be used if available.
  #   @option args [Boolean] :use_fips_endpoint
  #     When set to `true`, fips compatible endpoints will be used if available.
  #     When a `fips` region is used, the region is normalized and this config
  #     is set to `true`.
  #   @option args [Boolean] :validate_input (true)
  #     When `true`, request parameters are validated using the modeled shapes.
  # @!attribute auth_resolver
  #   @return [#resolve(params)]
  # @!attribute auth_schemes
  #   @return [Array<Hearth::AuthSchemes::Base>]
  # @!attribute disable_host_prefix
  #   @return [Boolean]
  # @!attribute endpoint
  #   @return [String]
  # @!attribute endpoint_provider
  #   @return [#resolve(params)]
  # @!attribute http_client
  #   @return [Hearth::HTTP::Client]
  # @!attribute interceptors
  #   @return [Hearth::InterceptorList]
  # @!attribute logger
  #   @return [Logger]
  # @!attribute plugins
  #   @return [Hearth::PluginList]
  # @!attribute profile
  #   @return [String]
  # @!attribute region
  #   @return [String]
  # @!attribute retry_strategy
  #   @return [#acquire_initial_retry_token(token_scope),#refresh_retry_token(retry_token, error_info),#record_success(retry_token)]
  # @!attribute sigv4_identity_resolver
  #   @return []
  # @!attribute stub_responses
  #   @return [Boolean]
  # @!attribute use_dualstack_endpoint
  #   @return [Boolean]
  # @!attribute use_fips_endpoint
  #   @return [Boolean]
  # @!attribute validate_input
  #   @return [Boolean]
  Config = ::Struct.new(
    :auth_resolver,
    :auth_schemes,
    :disable_host_prefix,
    :endpoint,
    :endpoint_provider,
    :http_client,
    :interceptors,
    :logger,
    :plugins,
    :profile,
    :region,
    :retry_strategy,
    :sigv4_identity_resolver,
    :stub_responses,
    :use_dualstack_endpoint,
    :use_fips_endpoint,
    :validate_input,
    keyword_init: true
  ) do
    include Hearth::Configuration

    # Validates the configuration.
    def validate!
      Hearth::Validator.validate_responds_to!(auth_resolver, :resolve, context: 'config[:auth_resolver]')
      Hearth::Validator.validate_types!(auth_schemes, Array, context: 'config[:auth_schemes]')
      Hearth::Validator.validate_types!(disable_host_prefix, TrueClass, FalseClass, context: 'config[:disable_host_prefix]')
      Hearth::Validator.validate_types!(endpoint, String, context: 'config[:endpoint]')
      Hearth::Validator.validate_responds_to!(endpoint_provider, :resolve, context: 'config[:endpoint_provider]')
      Hearth::Validator.validate_types!(http_client, Hearth::HTTP::Client, context: 'config[:http_client]')
      Hearth::Validator.validate_types!(interceptors, Hearth::InterceptorList, context: 'config[:interceptors]')
      Hearth::Validator.validate_types!(logger, Logger, context: 'config[:logger]')
      Hearth::Validator.validate_types!(plugins, Hearth::PluginList, context: 'config[:plugins]')
      Hearth::Validator.validate_types!(profile, String, context: 'config[:profile]')
      Hearth::Validator.validate_types!(region, String, context: 'config[:region]')
      Hearth::Validator.validate_responds_to!(retry_strategy, :acquire_initial_retry_token, :refresh_retry_token, :record_success, context: 'config[:retry_strategy]')
      Hearth::Validator.validate_types!(stub_responses, TrueClass, FalseClass, context: 'config[:stub_responses]')
      Hearth::Validator.validate_types!(use_dualstack_endpoint, TrueClass, FalseClass, context: 'config[:use_dualstack_endpoint]')
      Hearth::Validator.validate_types!(use_fips_endpoint, TrueClass, FalseClass, context: 'config[:use_fips_endpoint]')
      Hearth::Validator.validate_types!(validate_input, TrueClass, FalseClass, context: 'config[:validate_input]')
    end

    private

    def defaults
      {
        auth_resolver: [Auth::Resolver.new],
        auth_schemes: [Auth::SCHEMES],
        disable_host_prefix: [false],
        endpoint: [proc { |cfg| cfg[:stub_responses] ? 'http://localhost' : nil }],
        endpoint_provider: [Endpoint::Provider.new],
        http_client: [proc { |cfg| Hearth::HTTP::Client.new(logger: cfg[:logger]) }],
        interceptors: [Hearth::InterceptorList.new],
        logger: [Logger.new(IO::NULL)],
        plugins: [Hearth::PluginList.new],
        profile: [Hearth::Config::EnvProvider.new('AWS_PROFILE', type: 'String'),'default'],
        region: [proc { |cfg| cfg[:stub_responses] ?  'us-stubbed-1' : nil },Hearth::Config::EnvProvider.new('AWS_REGION', type: 'String'),AWS::SDK::Core::SharedConfigProvider.new('region', type: 'String')],
        retry_strategy: [Hearth::Retry::Standard.new],
        sigv4_identity_resolver: [proc { |cfg| cfg[:stub_responses] ? Hearth::IdentityResolver.new(proc { AWS::SDK::Core::Identities::SigV4.new(access_key_id: 'stubbed-akid', secret_access_key: 'stubbed-secret') }) : nil }],
        stub_responses: [false],
        use_dualstack_endpoint: [Hearth::Config::EnvProvider.new('AWS_USE_DUALSTACK_ENDPOINT', type: 'Boolean'),AWS::SDK::Core::SharedConfigProvider.new('use_dualstack_endpoint', type: 'Boolean')],
        use_fips_endpoint: [Hearth::Config::EnvProvider.new('AWS_USE_FIPS_ENDPOINT', type: 'Boolean'),AWS::SDK::Core::SharedConfigProvider.new('use_fips_endpoint', type: 'Boolean')],
        validate_input: [true]
      }.freeze
    end
  end
end
