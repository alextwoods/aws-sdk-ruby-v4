# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSO
  # @!method initialize(*options)
  #   @option args [Auth::Resolver] :auth_resolver (Auth::Resolver.new)
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
  #   @option args [Endpoint::Provider] :endpoint_provider (Endpoint::Provider.new)
  #     The endpoint provider used to resolve endpoints. Any object that responds to
  #     `#resolve_endpoint(parameters)`
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
  #   @option args [String] :region
  #     The AWS region to connect to. The configured `:region` is
  #     used to determine the service `:endpoint`. When not passed,
  #     a default `:region` is searched for in the following locations:
  #
  #     * `ENV['AWS_REGION']`
  #     * `~/.aws/credentials` and `~/.aws/config`
  #   @option args [Hearth::Retry::Strategy] :retry_strategy (Hearth::Retry::Standard.new)
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
  #   @option args [AWS::SigV4::Signer] :signer
  #     An instance of SigV4 signer used to sign requests.
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
  #   @return [Auth::Resolver]
  # @!attribute auth_schemes
  #   @return [Array<Hearth::AuthSchemes::Base>]
  # @!attribute disable_host_prefix
  #   @return [Boolean]
  # @!attribute endpoint
  #   @return [String]
  # @!attribute endpoint_provider
  #   @return [Endpoint::Provider]
  # @!attribute http_client
  #   @return [Hearth::HTTP::Client]
  # @!attribute interceptors
  #   @return [Hearth::InterceptorList]
  # @!attribute logger
  #   @return [Logger]
  # @!attribute plugins
  #   @return [Hearth::PluginList]
  # @!attribute region
  #   @return [String]
  # @!attribute retry_strategy
  #   @return [Hearth::Retry::Strategy]
  # @!attribute signer
  #   @return [AWS::SigV4::Signer]
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
    :region,
    :retry_strategy,
    :signer,
    :stub_responses,
    :use_dualstack_endpoint,
    :use_fips_endpoint,
    :validate_input,
    keyword_init: true
  ) do
    include Hearth::Configuration

    # Validates the configuration.
    def validate!
      Hearth::Validator.validate_types!(auth_resolver, Auth::Resolver, context: 'config[:auth_resolver]')
      Hearth::Validator.validate_types!(auth_schemes, Array, context: 'config[:auth_schemes]')
      Hearth::Validator.validate_types!(disable_host_prefix, TrueClass, FalseClass, context: 'config[:disable_host_prefix]')
      Hearth::Validator.validate_types!(endpoint, String, context: 'config[:endpoint]')
      Hearth::Validator.validate_types!(endpoint_provider, Endpoint::Provider, context: 'config[:endpoint_provider]')
      Hearth::Validator.validate_types!(http_client, Hearth::HTTP::Client, context: 'config[:http_client]')
      Hearth::Validator.validate_types!(interceptors, Hearth::InterceptorList, context: 'config[:interceptors]')
      Hearth::Validator.validate_types!(logger, Logger, context: 'config[:logger]')
      Hearth::Validator.validate_types!(plugins, Hearth::PluginList, context: 'config[:plugins]')
      Hearth::Validator.validate_types!(region, String, context: 'config[:region]')
      Hearth::Validator.validate_types!(retry_strategy, Hearth::Retry::Strategy, context: 'config[:retry_strategy]')
      Hearth::Validator.validate_types!(signer, AWS::SigV4::Signer, context: 'config[:signer]')
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
        region: [Hearth::Config::EnvProvider.new('AWS_REGION', type: 'String'),AWS::SDK::Core::SharedConfigProvider.new('region', type: 'String')],
        retry_strategy: [Hearth::Retry::Standard.new],
        signer: [proc { |cfg| AWS::SigV4::Signer.new(service: 'awsssoportal', region: cfg[:region], credential_provider: cfg[:credential_provider])
         }],
        stub_responses: [false],
        use_dualstack_endpoint: [Hearth::Config::EnvProvider.new('AWS_USE_DUALSTACK_ENDPOINT', type: 'Boolean'),AWS::SDK::Core::SharedConfigProvider.new('use_dualstack_endpoint', type: 'Boolean')],
        use_fips_endpoint: [Hearth::Config::EnvProvider.new('AWS_USE_FIPS_ENDPOINT', type: 'Boolean'),AWS::SDK::Core::SharedConfigProvider.new('use_fips_endpoint', type: 'Boolean')],
        validate_input: [true]
      }.freeze
    end
  end
end
