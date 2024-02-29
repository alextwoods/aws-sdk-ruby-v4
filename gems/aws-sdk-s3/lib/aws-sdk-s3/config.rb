# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3
  # @!method initialize(*options)
  #   @option args [Boolean] :accelerate
  #     Enables this client to use S3 Transfer Acceleration endpoints.
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
  #   @option args [Boolean] :disable_multi_region_access_points
  #     Disables this client's usage of Multi-Region Access Points.
  #   @option args [Boolean] :disable_s3_express_session_auth
  #     Disables this client's usage of Session Auth for S3Express       buckets and reverts to using conventional SigV4 for those.
  #   @option args [String] :endpoint
  #     Endpoint of the service
  #   @option args [Endpoint::Provider] :endpoint_provider (Endpoint::Provider.new)
  #     The endpoint provider used to resolve endpoints. Any object that responds to
  #     `#resolve_endpoint(parameters)`
  #   @option args [Boolean] :force_path_style (false)
  #     When set to `true`, the bucket name is always left in the
  #     request URI and never moved to the host as a sub-domain.
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
  #   @option args [Boolean] :s3_disable_multiregion_access_points (false)
  #     When set to `false` this will option will raise errors when multi-region
  #     access point ARNs are used.  Multi-region access points can potentially
  #     result in cross region requests.
  #   @option args [Boolean] :s3_use_arn_region (true)
  #     When set to `false` this will option will raise errors when multi-region
  #     access point ARNs are used.  Multi-region access points can potentially
  #     result in cross region requests.
  #   @option args [Boolean] :stub_responses (false)
  #     Enable response stubbing for testing. See {Hearth::ClientStubs#stub_responses}.
  #   @option args [Boolean] :use_accelerate_endpoint (false)
  #     When set to `true`, accelerated bucket endpoints will be used
  #     for all object operations. You must first enable accelerate for
  #     each bucket. [Go here for more information](http://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html).
  #   @option args [Boolean] :use_arn_region
  #     Enables this client to use an ARN's region when constructing an endpoint instead of the client's configured region.
  #   @option args [Boolean] :use_dualstack_endpoint
  #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
  #      will be used if available.
  #   @option args [Boolean] :use_fips_endpoint
  #     When set to `true`, fips compatible endpoints will be used if available.
  #     When a `fips` region is used, the region is normalized and this config
  #     is set to `true`.
  #   @option args [Boolean] :validate_input (true)
  #     When `true`, request parameters are validated using the modeled shapes.
  # @!attribute accelerate
  #   @return [Boolean]
  # @!attribute auth_resolver
  #   @return [Auth::Resolver]
  # @!attribute auth_schemes
  #   @return [Array<Hearth::AuthSchemes::Base>]
  # @!attribute disable_host_prefix
  #   @return [Boolean]
  # @!attribute disable_multi_region_access_points
  #   @return [Boolean]
  # @!attribute disable_s3_express_session_auth
  #   @return [Boolean]
  # @!attribute endpoint
  #   @return [String]
  # @!attribute endpoint_provider
  #   @return [Endpoint::Provider]
  # @!attribute force_path_style
  #   @return [Boolean]
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
  #   @return [Hearth::Retry::Strategy]
  # @!attribute s3_disable_multiregion_access_points
  #   @return [Boolean]
  # @!attribute s3_use_arn_region
  #   @return [Boolean]
  # @!attribute stub_responses
  #   @return [Boolean]
  # @!attribute use_accelerate_endpoint
  #   @return [Boolean]
  # @!attribute use_arn_region
  #   @return [Boolean]
  # @!attribute use_dualstack_endpoint
  #   @return [Boolean]
  # @!attribute use_fips_endpoint
  #   @return [Boolean]
  # @!attribute validate_input
  #   @return [Boolean]
  Config = ::Struct.new(
    :accelerate,
    :auth_resolver,
    :auth_schemes,
    :disable_host_prefix,
    :disable_multi_region_access_points,
    :disable_s3_express_session_auth,
    :endpoint,
    :endpoint_provider,
    :force_path_style,
    :http_client,
    :interceptors,
    :logger,
    :plugins,
    :profile,
    :region,
    :retry_strategy,
    :s3_disable_multiregion_access_points,
    :s3_use_arn_region,
    :stub_responses,
    :use_accelerate_endpoint,
    :use_arn_region,
    :use_dualstack_endpoint,
    :use_fips_endpoint,
    :validate_input,
    keyword_init: true
  ) do
    include Hearth::Configuration

    # Validates the configuration.
    def validate!
      Hearth::Validator.validate_types!(accelerate, TrueClass, FalseClass, context: 'config[:accelerate]')
      Hearth::Validator.validate_types!(auth_resolver, Auth::Resolver, context: 'config[:auth_resolver]')
      Hearth::Validator.validate_types!(auth_schemes, Array, context: 'config[:auth_schemes]')
      Hearth::Validator.validate_types!(disable_host_prefix, TrueClass, FalseClass, context: 'config[:disable_host_prefix]')
      Hearth::Validator.validate_types!(disable_multi_region_access_points, TrueClass, FalseClass, context: 'config[:disable_multi_region_access_points]')
      Hearth::Validator.validate_types!(disable_s3_express_session_auth, TrueClass, FalseClass, context: 'config[:disable_s3_express_session_auth]')
      Hearth::Validator.validate_types!(endpoint, String, context: 'config[:endpoint]')
      Hearth::Validator.validate_types!(endpoint_provider, Endpoint::Provider, context: 'config[:endpoint_provider]')
      Hearth::Validator.validate_types!(force_path_style, TrueClass, FalseClass, context: 'config[:force_path_style]')
      Hearth::Validator.validate_types!(http_client, Hearth::HTTP::Client, context: 'config[:http_client]')
      Hearth::Validator.validate_types!(interceptors, Hearth::InterceptorList, context: 'config[:interceptors]')
      Hearth::Validator.validate_types!(logger, Logger, context: 'config[:logger]')
      Hearth::Validator.validate_types!(plugins, Hearth::PluginList, context: 'config[:plugins]')
      Hearth::Validator.validate_types!(profile, String, context: 'config[:profile]')
      Hearth::Validator.validate_types!(region, String, context: 'config[:region]')
      Hearth::Validator.validate_types!(retry_strategy, Hearth::Retry::Strategy, context: 'config[:retry_strategy]')
      Hearth::Validator.validate_types!(s3_disable_multiregion_access_points, TrueClass, FalseClass, context: 'config[:s3_disable_multiregion_access_points]')
      Hearth::Validator.validate_types!(s3_use_arn_region, TrueClass, FalseClass, context: 'config[:s3_use_arn_region]')
      Hearth::Validator.validate_types!(stub_responses, TrueClass, FalseClass, context: 'config[:stub_responses]')
      Hearth::Validator.validate_types!(use_accelerate_endpoint, TrueClass, FalseClass, context: 'config[:use_accelerate_endpoint]')
      Hearth::Validator.validate_types!(use_arn_region, TrueClass, FalseClass, context: 'config[:use_arn_region]')
      Hearth::Validator.validate_types!(use_dualstack_endpoint, TrueClass, FalseClass, context: 'config[:use_dualstack_endpoint]')
      Hearth::Validator.validate_types!(use_fips_endpoint, TrueClass, FalseClass, context: 'config[:use_fips_endpoint]')
      Hearth::Validator.validate_types!(validate_input, TrueClass, FalseClass, context: 'config[:validate_input]')
    end

    private

    def defaults
      {
        accelerate: [],
        auth_resolver: [Auth::Resolver.new],
        auth_schemes: [Auth::SCHEMES],
        disable_host_prefix: [false],
        disable_multi_region_access_points: [],
        disable_s3_express_session_auth: [],
        endpoint: [proc { |cfg| cfg[:stub_responses] ? 'http://localhost' : nil }],
        endpoint_provider: [Endpoint::Provider.new],
        force_path_style: [false],
        http_client: [proc { |cfg| Hearth::HTTP::Client.new(logger: cfg[:logger]) }],
        interceptors: [Hearth::InterceptorList.new],
        logger: [Logger.new(IO::NULL)],
        plugins: [Hearth::PluginList.new],
        profile: [Hearth::Config::EnvProvider.new('AWS_PROFILE', type: 'String'),'default'],
        region: [Hearth::Config::EnvProvider.new('AWS_REGION', type: 'String'),AWS::SDK::Core::SharedConfigProvider.new('region', type: 'String')],
        retry_strategy: [Hearth::Retry::Standard.new],
        s3_disable_multiregion_access_points: [Hearth::Config::EnvProvider.new('AWS_S3_DISABLE_MULTIREGION_ACCESS_POINTS', type: 'Boolean'),AWS::SDK::Core::SharedConfigProvider.new('s3_disable_multiregion_access_points', type: 'Boolean'),false],
        s3_use_arn_region: [Hearth::Config::EnvProvider.new('AWS_S3_USE_ARN_REGION', type: 'Boolean'),AWS::SDK::Core::SharedConfigProvider.new('s3_use_arn_region', type: 'Boolean'),true],
        stub_responses: [false],
        use_accelerate_endpoint: [false],
        use_arn_region: [],
        use_dualstack_endpoint: [Hearth::Config::EnvProvider.new('AWS_USE_DUALSTACK_ENDPOINT', type: 'Boolean'),AWS::SDK::Core::SharedConfigProvider.new('use_dualstack_endpoint', type: 'Boolean')],
        use_fips_endpoint: [Hearth::Config::EnvProvider.new('AWS_USE_FIPS_ENDPOINT', type: 'Boolean'),AWS::SDK::Core::SharedConfigProvider.new('use_fips_endpoint', type: 'Boolean')],
        validate_input: [true]
      }.freeze
    end
  end
end
