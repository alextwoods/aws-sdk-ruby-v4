# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Cloudfront
  # An API client for Cloudfront2020_05_31
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon CloudFront</fullname>
  # 		       <p>This is the <i>Amazon CloudFront API Reference</i>. This guide
  #             is for developers who need detailed information about
  # 			CloudFront API actions, data types, and errors. For detailed information about CloudFront features, see the <i>Amazon CloudFront Developer Guide</i>.</p>
  #
  class Client
    include Seahorse::ClientStubs

    @middleware = Seahorse::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @overload initialize(options)
    # @param [Hash] options
    # @option options [string] :endpoint
    #   Endpoint of the service
    #
    # @option options [bool] :http_wire_trace (false)
    #   Enable debug wire trace on http requests.
    #
    # @option options [symbol] :log_level (:info)
    #   Default log level to use
    #
    # @option options [Logger] :logger (stdout)
    #   Logger to use for output
    #
    # @option options [MiddlewareBuilder] :middleware
    #   Additional Middleware to be applied for every operation
    #
    # @option options [Bool] :stub_responses (false)
    #   Enable response stubbing. See documentation for {#stub_responses}
    #
    # @option options [Boolean] :validate_input (true)
    #   When `true`, request parameters are validated using the modeled shapes.
    #
    def initialize(options = {})
      @endpoint = options[:endpoint]
      @http_wire_trace = options.fetch(:http_wire_trace, false)
      @log_level = options.fetch(:log_level, :info)
      @logger = options.fetch(:logger, Logger.new($stdout, level: @log_level))
      @middleware = Seahorse::MiddlewareBuilder.new(options[:middleware])
      @stub_responses = options.fetch(:stub_responses, false)
      @stubs = Seahorse::Stubbing::Stubs.new
      @validate_input = options.fetch(:validate_input, true)

    end

    # <p>Associates an alias (also known as a CNAME or an alternate domain name) with a CloudFront
    # 			distribution.</p>
    # 		       <p>With this operation you can move an alias that’s already in use on a CloudFront distribution
    # 			to a different distribution in one step. This prevents the downtime that could occur if
    # 			you first remove the alias from one distribution and then separately add the alias to
    # 			another distribution.</p>
    # 		       <p>To use this operation to associate an alias with a distribution, you provide the alias
    # 			and the ID of the target distribution for the alias. For more information, including how
    # 			to set up the target distribution, prerequisites that you must complete, and other
    # 			restrictions, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move">Moving an alternate domain name to a different distribution</a>
    # 			in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateAliasInput}.
    #
    # @option params [String] :target_distribution_id
    #   <p>The ID of the distribution that you’re associating the alias with.</p>
    #
    # @option params [String] :alias
    #   <p>The alias (also known as a CNAME) to add to the target distribution.</p>
    #
    # @return [Types::AssociateAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_alias(
    #     target_distribution_id: 'TargetDistributionId', # required
    #     alias: 'Alias' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::AssociateAliasOutput
    #
    def associate_alias(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::AssociateAliasInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::AssociateAliasInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::AssociateAlias
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::IllegalUpdate, Errors::NoSuchDistribution, Errors::InvalidArgument, Errors::TooManyDistributionCNAMEs]),
        data_parser: Parsers::AssociateAlias
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::AssociateAlias,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :associate_alias
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Creates a cache policy.</p>
    # 		       <p>After you create a cache policy, you can attach it to one or more cache behaviors. When it’s
    # 			attached to a cache behavior, the cache policy determines the following:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>The values that CloudFront includes in the <i>cache key</i>. These values can
    # 					include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to
    # 					find an object in its cache that it can return to the viewer.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The default, minimum, and maximum time to live (TTL) values that you want objects to stay
    # 					in the CloudFront cache.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>The headers, cookies, and query strings that are included in the cache key are automatically
    # 			included in requests that CloudFront sends to the origin. CloudFront sends a request when it can’t
    # 			find an object in its cache that matches the request’s cache key. If you want to send
    # 			values to the origin but <i>not</i> include them in the cache key, use
    # 			<code>OriginRequestPolicy</code>.</p>
    # 		       <p>For more information about cache policies, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html">Controlling the cache key</a> in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCachePolicyInput}.
    #
    # @option params [CachePolicyConfig] :cache_policy_config
    #   <p>A cache policy configuration.</p>
    #
    # @return [Types::CreateCachePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cache_policy(
    #     cache_policy_config: {
    #       comment: 'Comment',
    #       member_name: 'Name', # required
    #       default_ttl: 1,
    #       max_ttl: 1,
    #       min_ttl: 1, # required
    #       parameters_in_cache_key_and_forwarded_to_origin: {
    #         enable_accept_encoding_gzip: false, # required
    #         enable_accept_encoding_brotli: false,
    #         headers_config: {
    #           header_behavior: 'none', # required - accepts none, whitelist
    #           headers: {
    #             quantity: 1, # required
    #             items: [
    #               'member'
    #             ]
    #           }
    #         }, # required
    #         cookies_config: {
    #           cookie_behavior: 'none', # required - accepts none, whitelist, allExcept, all
    #           cookies: {
    #             quantity: 1, # required
    #             items: [
    #               'member'
    #             ]
    #           }
    #         }, # required
    #         query_strings_config: {
    #           query_string_behavior: 'none', # required - accepts none, whitelist, allExcept, all
    #           query_strings: {
    #             quantity: 1, # required
    #             items: [
    #               'member'
    #             ]
    #           }
    #         } # required
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateCachePolicyOutput
    #   resp.cache_policy #=> Types::CachePolicy
    #   resp.cache_policy.id #=> String
    #   resp.cache_policy.last_modified_time #=> Time
    #   resp.cache_policy.cache_policy_config #=> Types::CachePolicyConfig
    #   resp.cache_policy.cache_policy_config.comment #=> String
    #   resp.cache_policy.cache_policy_config.member_name #=> String
    #   resp.cache_policy.cache_policy_config.default_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.max_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.min_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin #=> Types::ParametersInCacheKeyAndForwardedToOrigin
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_gzip #=> Boolean
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_brotli #=> Boolean
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config #=> Types::CachePolicyHeadersConfig
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.header_behavior #=> String, one of none, whitelist
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers #=> Types::Headers
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items #=> Array<String>
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items[0] #=> String
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config #=> Types::CachePolicyCookiesConfig
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookie_behavior #=> String, one of none, whitelist, allExcept, all
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies #=> Types::CookieNames
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items #=> Array<String>
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items[0] #=> String
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config #=> Types::CachePolicyQueryStringsConfig
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_string_behavior #=> String, one of none, whitelist, allExcept, all
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings #=> Types::QueryStringNames
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items #=> Array<String>
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items[0] #=> String
    #   resp.location #=> String
    #   resp.e_tag #=> String
    #
    def create_cache_policy(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreateCachePolicyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreateCachePolicyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreateCachePolicy
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::AccessDenied, Errors::TooManyCookiesInCachePolicy, Errors::TooManyHeadersInCachePolicy, Errors::InconsistentQuantities, Errors::TooManyCachePolicies, Errors::TooManyQueryStringsInCachePolicy, Errors::CachePolicyAlreadyExists, Errors::InvalidArgument]),
        data_parser: Parsers::CreateCachePolicy
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateCachePolicy,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_cache_policy
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Creates a new origin access identity. If you're using Amazon S3 for your origin, you can
    # 			use an origin access identity to require users to access your content using a CloudFront URL instead
    # 			of the Amazon S3 URL. For more information about how to use origin access identities, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the
    # 				<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCloudFrontOriginAccessIdentityInput}.
    #
    # @option params [CloudFrontOriginAccessIdentityConfig] :cloud_front_origin_access_identity_config
    #   <p>The current configuration information for the identity.</p>
    #
    # @return [Types::CreateCloudFrontOriginAccessIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cloud_front_origin_access_identity(
    #     cloud_front_origin_access_identity_config: {
    #       caller_reference: 'CallerReference', # required
    #       comment: 'Comment' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateCloudFrontOriginAccessIdentityOutput
    #   resp.cloud_front_origin_access_identity #=> Types::CloudFrontOriginAccessIdentity
    #   resp.cloud_front_origin_access_identity.id #=> String
    #   resp.cloud_front_origin_access_identity.s3_canonical_user_id #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config #=> Types::CloudFrontOriginAccessIdentityConfig
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.caller_reference #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.comment #=> String
    #   resp.location #=> String
    #   resp.e_tag #=> String
    #
    def create_cloud_front_origin_access_identity(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreateCloudFrontOriginAccessIdentityInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreateCloudFrontOriginAccessIdentityInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreateCloudFrontOriginAccessIdentity
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::MissingBody, Errors::CloudFrontOriginAccessIdentityAlreadyExists, Errors::InconsistentQuantities, Errors::InvalidArgument, Errors::TooManyCloudFrontOriginAccessIdentities]),
        data_parser: Parsers::CreateCloudFrontOriginAccessIdentity
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateCloudFrontOriginAccessIdentity,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_cloud_front_origin_access_identity
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Creates a new web distribution. You create a CloudFront distribution to tell CloudFront where you
    # 			want content to be delivered from, and the details about how to track and manage content delivery. Send a <code>POST</code> request to the
    # 			<code>/<i>CloudFront API version</i>/distribution</code>/<code>distribution ID</code> resource.</p>
    # 		       <important>
    #             <p>When you update a distribution, there are more required fields than when you create a distribution.
    # 			When you update your distribution by using
    # 			<a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html">UpdateDistribution</a>,
    # 			follow the steps included
    # 			in the documentation to get the current configuration
    # 			and then make your updates. This helps to make sure that you include all of the required fields. To view a summary,
    # 			see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html">Required
    # 				Fields for Create Distribution and Update Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::CreateDistributionInput}.
    #
    # @option params [DistributionConfig] :distribution_config
    #   <p>The distribution's configuration information.</p>
    #
    # @return [Types::CreateDistributionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_distribution(
    #     distribution_config: {
    #       caller_reference: 'CallerReference', # required
    #       aliases: {
    #         quantity: 1, # required
    #         items: [
    #           'member'
    #         ]
    #       },
    #       default_root_object: 'DefaultRootObject',
    #       origins: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             id: 'Id', # required
    #             domain_name: 'DomainName', # required
    #             origin_path: 'OriginPath',
    #             custom_headers: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   header_name: 'HeaderName', # required
    #                   header_value: 'HeaderValue' # required
    #                 }
    #               ]
    #             },
    #             s3_origin_config: {
    #               origin_access_identity: 'OriginAccessIdentity' # required
    #             },
    #             custom_origin_config: {
    #               http_port: 1, # required
    #               https_port: 1, # required
    #               origin_protocol_policy: 'http-only', # required - accepts http-only, match-viewer, https-only
    #               origin_ssl_protocols: {
    #                 quantity: 1, # required
    #                 items: [
    #                   'SSLv3' # accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #                 ] # required
    #               },
    #               origin_read_timeout: 1,
    #               origin_keepalive_timeout: 1
    #             },
    #             connection_attempts: 1,
    #             connection_timeout: 1,
    #             origin_shield: {
    #               enabled: false, # required
    #               origin_shield_region: 'OriginShieldRegion'
    #             }
    #           }
    #         ] # required
    #       }, # required
    #       origin_groups: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             id: 'Id', # required
    #             failover_criteria: {
    #               status_codes: {
    #                 quantity: 1, # required
    #                 items: [
    #                   1
    #                 ] # required
    #               } # required
    #             }, # required
    #             members: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   origin_id: 'OriginId' # required
    #                 }
    #               ] # required
    #             } # required
    #           }
    #         ]
    #       },
    #       default_cache_behavior: {
    #         target_origin_id: 'TargetOriginId', # required
    #         trusted_signers: {
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         },
    #         trusted_key_groups: {
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         },
    #         viewer_protocol_policy: 'allow-all', # required - accepts allow-all, https-only, redirect-to-https
    #         allowed_methods: {
    #           quantity: 1, # required
    #           items: [
    #             'GET' # accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #           ], # required
    #           cached_methods: {
    #             quantity: 1, # required
    #           }
    #         },
    #         smooth_streaming: false,
    #         compress: false,
    #         lambda_function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               lambda_function_arn: 'LambdaFunctionARN', # required
    #               event_type: 'viewer-request', # required - accepts viewer-request, viewer-response, origin-request, origin-response
    #               include_body: false
    #             }
    #           ]
    #         },
    #         function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               function_arn: 'FunctionARN', # required
    #               event_type: 'viewer-request' # required - accepts viewer-request, viewer-response, origin-request, origin-response
    #             }
    #           ]
    #         },
    #         field_level_encryption_id: 'FieldLevelEncryptionId',
    #         realtime_log_config_arn: 'RealtimeLogConfigArn',
    #         cache_policy_id: 'CachePolicyId',
    #         origin_request_policy_id: 'OriginRequestPolicyId',
    #         response_headers_policy_id: 'ResponseHeadersPolicyId',
    #         forwarded_values: {
    #           query_string: false, # required
    #           cookies: {
    #             forward: 'none', # required - accepts none, whitelist, all
    #             whitelisted_names: {
    #               quantity: 1, # required
    #               items: [
    #                 'member'
    #               ]
    #             }
    #           }, # required
    #           headers: {
    #             quantity: 1, # required
    #             items: [
    #               'member'
    #             ]
    #           },
    #           query_string_cache_keys: {
    #             quantity: 1, # required
    #             items: [
    #               'member'
    #             ]
    #           }
    #         },
    #         min_ttl: 1,
    #         default_ttl: 1,
    #         max_ttl: 1
    #       }, # required
    #       cache_behaviors: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             path_pattern: 'PathPattern', # required
    #             target_origin_id: 'TargetOriginId', # required
    #             viewer_protocol_policy: 'allow-all', # required - accepts allow-all, https-only, redirect-to-https
    #             smooth_streaming: false,
    #             compress: false,
    #             field_level_encryption_id: 'FieldLevelEncryptionId',
    #             realtime_log_config_arn: 'RealtimeLogConfigArn',
    #             cache_policy_id: 'CachePolicyId',
    #             origin_request_policy_id: 'OriginRequestPolicyId',
    #             response_headers_policy_id: 'ResponseHeadersPolicyId',
    #             min_ttl: 1,
    #             default_ttl: 1,
    #             max_ttl: 1
    #           }
    #         ]
    #       },
    #       custom_error_responses: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             error_code: 1, # required
    #             response_page_path: 'ResponsePagePath',
    #             response_code: 'ResponseCode',
    #             error_caching_min_ttl: 1
    #           }
    #         ]
    #       },
    #       comment: 'Comment', # required
    #       logging: {
    #         enabled: false, # required
    #         include_cookies: false, # required
    #         bucket: 'Bucket', # required
    #         prefix: 'Prefix' # required
    #       },
    #       price_class: 'PriceClass_100', # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #       enabled: false, # required
    #       viewer_certificate: {
    #         cloud_front_default_certificate: false,
    #         iam_certificate_id: 'IAMCertificateId',
    #         acm_certificate_arn: 'ACMCertificateArn',
    #         ssl_support_method: 'sni-only', # accepts sni-only, vip, static-ip
    #         minimum_protocol_version: 'SSLv3', # accepts SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018, TLSv1.2_2019, TLSv1.2_2021
    #         certificate: 'Certificate',
    #         certificate_source: 'cloudfront' # accepts cloudfront, iam, acm
    #       },
    #       restrictions: {
    #         geo_restriction: {
    #           restriction_type: 'blacklist', # required - accepts blacklist, whitelist, none
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         } # required
    #       },
    #       web_acl_id: 'WebACLId',
    #       http_version: 'http1.1', # accepts http1.1, http2
    #       is_ipv6_enabled: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateDistributionOutput
    #   resp.distribution #=> Types::Distribution
    #   resp.distribution.id #=> String
    #   resp.distribution.arn #=> String
    #   resp.distribution.status #=> String
    #   resp.distribution.last_modified_time #=> Time
    #   resp.distribution.in_progress_invalidation_batches #=> Integer
    #   resp.distribution.domain_name #=> String
    #   resp.distribution.active_trusted_signers #=> Types::ActiveTrustedSigners
    #   resp.distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.distribution.active_trusted_signers.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items #=> Array<Signer>
    #   resp.distribution.active_trusted_signers.items[0] #=> Types::Signer
    #   resp.distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids #=> Types::KeyPairIds
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array<String>
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.active_trusted_key_groups #=> Types::ActiveTrustedKeyGroups
    #   resp.distribution.active_trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.active_trusted_key_groups.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items #=> Array<KGKeyPairIds>
    #   resp.distribution.active_trusted_key_groups.items[0] #=> Types::KGKeyPairIds
    #   resp.distribution.active_trusted_key_groups.items[0].key_group_id #=> String
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids #=> Types::KeyPairIds
    #   resp.distribution.distribution_config #=> Types::DistributionConfig
    #   resp.distribution.distribution_config.caller_reference #=> String
    #   resp.distribution.distribution_config.aliases #=> Types::Aliases
    #   resp.distribution.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution.distribution_config.aliases.items #=> Array<String>
    #   resp.distribution.distribution_config.aliases.items[0] #=> String
    #   resp.distribution.distribution_config.default_root_object #=> String
    #   resp.distribution.distribution_config.origins #=> Types::Origins
    #   resp.distribution.distribution_config.origins.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items #=> Array<Origin>
    #   resp.distribution.distribution_config.origins.items[0] #=> Types::Origin
    #   resp.distribution.distribution_config.origins.items[0].id #=> String
    #   resp.distribution.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers #=> Types::CustomHeaders
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items #=> Array<OriginCustomHeader>
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0] #=> Types::OriginCustomHeader
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config #=> Types::S3OriginConfig
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config #=> Types::CustomOriginConfig
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of http-only, match-viewer, https-only
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols #=> Types::OriginSslProtocols
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array<String>
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_attempts #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].origin_shield #=> Types::OriginShield
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution.distribution_config.origin_groups #=> Types::OriginGroups
    #   resp.distribution.distribution_config.origin_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items #=> Array<OriginGroup>
    #   resp.distribution.distribution_config.origin_groups.items[0] #=> Types::OriginGroup
    #   resp.distribution.distribution_config.origin_groups.items[0].id #=> String
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria #=> Types::OriginGroupFailoverCriteria
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes #=> Types::StatusCodes
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items #=> Array<Integer>
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members #=> Types::OriginGroupMembers
    #   resp.distribution.distribution_config.origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items #=> Array<OriginGroupMember>
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items[0] #=> Types::OriginGroupMember
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior #=> Types::DefaultCacheBehavior
    #   resp.distribution.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers #=> Types::TrustedSigners
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods #=> Types::AllowedMethods
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods #=> Types::CachedMethods
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array<LambdaFunctionAssociation>
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0] #=> Types::LambdaFunctionAssociation
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations #=> Types::FunctionAssociations
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items #=> Array<FunctionAssociation>
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0] #=> Types::FunctionAssociation
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values #=> Types::ForwardedValues
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies #=> Types::CookiePreference
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of none, whitelist, all
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names #=> Types::CookieNames
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers #=> Types::Headers
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys #=> Types::QueryStringCacheKeys
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors #=> Types::CacheBehaviors
    #   resp.distribution.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items #=> Array<CacheBehavior>
    #   resp.distribution.distribution_config.cache_behaviors.items[0] #=> Types::CacheBehavior
    #   resp.distribution.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers #=> Types::TrustedSigners
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods #=> Types::AllowedMethods
    #   resp.distribution.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations #=> Types::FunctionAssociations
    #   resp.distribution.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values #=> Types::ForwardedValues
    #   resp.distribution.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses #=> Types::CustomErrorResponses
    #   resp.distribution.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items #=> Array<CustomErrorResponse>
    #   resp.distribution.distribution_config.custom_error_responses.items[0] #=> Types::CustomErrorResponse
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution.distribution_config.comment #=> String
    #   resp.distribution.distribution_config.logging #=> Types::LoggingConfig
    #   resp.distribution.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution.distribution_config.logging.bucket #=> String
    #   resp.distribution.distribution_config.logging.prefix #=> String
    #   resp.distribution.distribution_config.price_class #=> String, one of PriceClass_100, PriceClass_200, PriceClass_All
    #   resp.distribution.distribution_config.enabled #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate #=> Types::ViewerCertificate
    #   resp.distribution.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution.distribution_config.viewer_certificate.ssl_support_method #=> String, one of sni-only, vip, static-ip
    #   resp.distribution.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018, TLSv1.2_2019, TLSv1.2_2021
    #   resp.distribution.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution.distribution_config.viewer_certificate.certificate_source #=> String, one of cloudfront, iam, acm
    #   resp.distribution.distribution_config.restrictions #=> Types::Restrictions
    #   resp.distribution.distribution_config.restrictions.geo_restriction #=> Types::GeoRestriction
    #   resp.distribution.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of blacklist, whitelist, none
    #   resp.distribution.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items #=> Array<String>
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution.distribution_config.web_acl_id #=> String
    #   resp.distribution.distribution_config.http_version #=> String, one of http1.1, http2
    #   resp.distribution.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.distribution.alias_icp_recordals #=> Array<AliasICPRecordal>
    #   resp.distribution.alias_icp_recordals[0] #=> Types::AliasICPRecordal
    #   resp.distribution.alias_icp_recordals[0].cname #=> String
    #   resp.distribution.alias_icp_recordals[0].icp_recordal_status #=> String, one of APPROVED, SUSPENDED, PENDING
    #   resp.location #=> String
    #   resp.e_tag #=> String
    #
    def create_distribution(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreateDistributionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreateDistributionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreateDistribution
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::TooManyDistributionsAssociatedToOriginRequestPolicy, Errors::InvalidRelativePath, Errors::TooManyQueryStringParameters, Errors::TooManyLambdaFunctionAssociations, Errors::InconsistentQuantities, Errors::InvalidWebACLId, Errors::InvalidTTLOrder, Errors::TooManyDistributions, Errors::TooManyDistributionsWithFunctionAssociations, Errors::TooManyHeadersInForwardedValues, Errors::TooManyDistributionsAssociatedToFieldLevelEncryptionConfig, Errors::InvalidOriginAccessIdentity, Errors::DistributionAlreadyExists, Errors::RealtimeLogConfigOwnerMismatch, Errors::TooManyCacheBehaviors, Errors::NoSuchOrigin, Errors::TooManyDistributionsAssociatedToCachePolicy, Errors::InvalidViewerCertificate, Errors::InvalidFunctionAssociation, Errors::NoSuchResponseHeadersPolicy, Errors::InvalidDefaultRootObject, Errors::NoSuchCachePolicy, Errors::InvalidProtocolSettings, Errors::InvalidMinimumProtocolVersion, Errors::InvalidLambdaFunctionAssociation, Errors::InvalidResponseCode, Errors::NoSuchOriginRequestPolicy, Errors::NoSuchFieldLevelEncryptionConfig, Errors::InvalidHeadersForS3Origin, Errors::TrustedSignerDoesNotExist, Errors::TooManyCookieNamesInWhiteList, Errors::TooManyDistributionsAssociatedToKeyGroup, Errors::AccessDenied, Errors::TooManyOrigins, Errors::TooManyTrustedSigners, Errors::TooManyDistributionsWithSingleFunctionARN, Errors::MissingBody, Errors::InvalidGeoRestrictionParameter, Errors::NoSuchRealtimeLogConfig, Errors::InvalidOriginReadTimeout, Errors::TooManyCertificates, Errors::InvalidLocationCode, Errors::InvalidQueryStringParameters, Errors::CNAMEAlreadyExists, Errors::IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior, Errors::InvalidArgument, Errors::TooManyDistributionCNAMEs, Errors::InvalidErrorCode, Errors::TooManyKeyGroupsAssociatedToDistribution, Errors::TooManyDistributionsWithLambdaAssociations, Errors::TooManyOriginCustomHeaders, Errors::TrustedKeyGroupDoesNotExist, Errors::InvalidOriginKeepaliveTimeout, Errors::InvalidForwardCookies, Errors::InvalidOrigin, Errors::TooManyDistributionsAssociatedToResponseHeadersPolicy, Errors::TooManyOriginGroupsPerDistribution, Errors::InvalidRequiredProtocol, Errors::TooManyFunctionAssociations]),
        data_parser: Parsers::CreateDistribution
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateDistribution,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_distribution
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Create a new distribution with tags.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDistributionWithTagsInput}.
    #
    # @option params [DistributionConfigWithTags] :distribution_config_with_tags
    #   <p>The distribution's configuration information. </p>
    #
    # @return [Types::CreateDistributionWithTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_distribution_with_tags(
    #     distribution_config_with_tags: {
    #       distribution_config: {
    #         caller_reference: 'CallerReference', # required
    #         aliases: {
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         },
    #         default_root_object: 'DefaultRootObject',
    #         origins: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               id: 'Id', # required
    #               domain_name: 'DomainName', # required
    #               origin_path: 'OriginPath',
    #               custom_headers: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     header_name: 'HeaderName', # required
    #                     header_value: 'HeaderValue' # required
    #                   }
    #                 ]
    #               },
    #               s3_origin_config: {
    #                 origin_access_identity: 'OriginAccessIdentity' # required
    #               },
    #               custom_origin_config: {
    #                 http_port: 1, # required
    #                 https_port: 1, # required
    #                 origin_protocol_policy: 'http-only', # required - accepts http-only, match-viewer, https-only
    #                 origin_ssl_protocols: {
    #                   quantity: 1, # required
    #                   items: [
    #                     'SSLv3' # accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #                   ] # required
    #                 },
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1
    #               },
    #               connection_attempts: 1,
    #               connection_timeout: 1,
    #               origin_shield: {
    #                 enabled: false, # required
    #                 origin_shield_region: 'OriginShieldRegion'
    #               }
    #             }
    #           ] # required
    #         }, # required
    #         origin_groups: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               id: 'Id', # required
    #               failover_criteria: {
    #                 status_codes: {
    #                   quantity: 1, # required
    #                   items: [
    #                     1
    #                   ] # required
    #                 } # required
    #               }, # required
    #               members: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     origin_id: 'OriginId' # required
    #                   }
    #                 ] # required
    #               } # required
    #             }
    #           ]
    #         },
    #         default_cache_behavior: {
    #           target_origin_id: 'TargetOriginId', # required
    #           trusted_signers: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: [
    #               'member'
    #             ]
    #           },
    #           trusted_key_groups: {
    #             enabled: false, # required
    #             quantity: 1, # required
    #             items: [
    #               'member'
    #             ]
    #           },
    #           viewer_protocol_policy: 'allow-all', # required - accepts allow-all, https-only, redirect-to-https
    #           allowed_methods: {
    #             quantity: 1, # required
    #             items: [
    #               'GET' # accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #             ], # required
    #             cached_methods: {
    #               quantity: 1, # required
    #             }
    #           },
    #           smooth_streaming: false,
    #           compress: false,
    #           lambda_function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 lambda_function_arn: 'LambdaFunctionARN', # required
    #                 event_type: 'viewer-request', # required - accepts viewer-request, viewer-response, origin-request, origin-response
    #                 include_body: false
    #               }
    #             ]
    #           },
    #           function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 function_arn: 'FunctionARN', # required
    #                 event_type: 'viewer-request' # required - accepts viewer-request, viewer-response, origin-request, origin-response
    #               }
    #             ]
    #           },
    #           field_level_encryption_id: 'FieldLevelEncryptionId',
    #           realtime_log_config_arn: 'RealtimeLogConfigArn',
    #           cache_policy_id: 'CachePolicyId',
    #           origin_request_policy_id: 'OriginRequestPolicyId',
    #           response_headers_policy_id: 'ResponseHeadersPolicyId',
    #           forwarded_values: {
    #             query_string: false, # required
    #             cookies: {
    #               forward: 'none', # required - accepts none, whitelist, all
    #               whitelisted_names: {
    #                 quantity: 1, # required
    #                 items: [
    #                   'member'
    #                 ]
    #               }
    #             }, # required
    #             headers: {
    #               quantity: 1, # required
    #               items: [
    #                 'member'
    #               ]
    #             },
    #             query_string_cache_keys: {
    #               quantity: 1, # required
    #               items: [
    #                 'member'
    #               ]
    #             }
    #           },
    #           min_ttl: 1,
    #           default_ttl: 1,
    #           max_ttl: 1
    #         }, # required
    #         cache_behaviors: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               path_pattern: 'PathPattern', # required
    #               target_origin_id: 'TargetOriginId', # required
    #               viewer_protocol_policy: 'allow-all', # required - accepts allow-all, https-only, redirect-to-https
    #               smooth_streaming: false,
    #               compress: false,
    #               field_level_encryption_id: 'FieldLevelEncryptionId',
    #               realtime_log_config_arn: 'RealtimeLogConfigArn',
    #               cache_policy_id: 'CachePolicyId',
    #               origin_request_policy_id: 'OriginRequestPolicyId',
    #               response_headers_policy_id: 'ResponseHeadersPolicyId',
    #               min_ttl: 1,
    #               default_ttl: 1,
    #               max_ttl: 1
    #             }
    #           ]
    #         },
    #         custom_error_responses: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               error_code: 1, # required
    #               response_page_path: 'ResponsePagePath',
    #               response_code: 'ResponseCode',
    #               error_caching_min_ttl: 1
    #             }
    #           ]
    #         },
    #         comment: 'Comment', # required
    #         logging: {
    #           enabled: false, # required
    #           include_cookies: false, # required
    #           bucket: 'Bucket', # required
    #           prefix: 'Prefix' # required
    #         },
    #         price_class: 'PriceClass_100', # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #         enabled: false, # required
    #         viewer_certificate: {
    #           cloud_front_default_certificate: false,
    #           iam_certificate_id: 'IAMCertificateId',
    #           acm_certificate_arn: 'ACMCertificateArn',
    #           ssl_support_method: 'sni-only', # accepts sni-only, vip, static-ip
    #           minimum_protocol_version: 'SSLv3', # accepts SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018, TLSv1.2_2019, TLSv1.2_2021
    #           certificate: 'Certificate',
    #           certificate_source: 'cloudfront' # accepts cloudfront, iam, acm
    #         },
    #         restrictions: {
    #           geo_restriction: {
    #             restriction_type: 'blacklist', # required - accepts blacklist, whitelist, none
    #             quantity: 1, # required
    #             items: [
    #               'member'
    #             ]
    #           } # required
    #         },
    #         web_acl_id: 'WebACLId',
    #         http_version: 'http1.1', # accepts http1.1, http2
    #         is_ipv6_enabled: false
    #       }, # required
    #       tags: {
    #         items: [
    #           {
    #             key: 'Key', # required
    #             value: 'Value'
    #           }
    #         ]
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateDistributionWithTagsOutput
    #   resp.distribution #=> Types::Distribution
    #   resp.distribution.id #=> String
    #   resp.distribution.arn #=> String
    #   resp.distribution.status #=> String
    #   resp.distribution.last_modified_time #=> Time
    #   resp.distribution.in_progress_invalidation_batches #=> Integer
    #   resp.distribution.domain_name #=> String
    #   resp.distribution.active_trusted_signers #=> Types::ActiveTrustedSigners
    #   resp.distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.distribution.active_trusted_signers.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items #=> Array<Signer>
    #   resp.distribution.active_trusted_signers.items[0] #=> Types::Signer
    #   resp.distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids #=> Types::KeyPairIds
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array<String>
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.active_trusted_key_groups #=> Types::ActiveTrustedKeyGroups
    #   resp.distribution.active_trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.active_trusted_key_groups.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items #=> Array<KGKeyPairIds>
    #   resp.distribution.active_trusted_key_groups.items[0] #=> Types::KGKeyPairIds
    #   resp.distribution.active_trusted_key_groups.items[0].key_group_id #=> String
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids #=> Types::KeyPairIds
    #   resp.distribution.distribution_config #=> Types::DistributionConfig
    #   resp.distribution.distribution_config.caller_reference #=> String
    #   resp.distribution.distribution_config.aliases #=> Types::Aliases
    #   resp.distribution.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution.distribution_config.aliases.items #=> Array<String>
    #   resp.distribution.distribution_config.aliases.items[0] #=> String
    #   resp.distribution.distribution_config.default_root_object #=> String
    #   resp.distribution.distribution_config.origins #=> Types::Origins
    #   resp.distribution.distribution_config.origins.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items #=> Array<Origin>
    #   resp.distribution.distribution_config.origins.items[0] #=> Types::Origin
    #   resp.distribution.distribution_config.origins.items[0].id #=> String
    #   resp.distribution.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers #=> Types::CustomHeaders
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items #=> Array<OriginCustomHeader>
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0] #=> Types::OriginCustomHeader
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config #=> Types::S3OriginConfig
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config #=> Types::CustomOriginConfig
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of http-only, match-viewer, https-only
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols #=> Types::OriginSslProtocols
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array<String>
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_attempts #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].origin_shield #=> Types::OriginShield
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution.distribution_config.origin_groups #=> Types::OriginGroups
    #   resp.distribution.distribution_config.origin_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items #=> Array<OriginGroup>
    #   resp.distribution.distribution_config.origin_groups.items[0] #=> Types::OriginGroup
    #   resp.distribution.distribution_config.origin_groups.items[0].id #=> String
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria #=> Types::OriginGroupFailoverCriteria
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes #=> Types::StatusCodes
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items #=> Array<Integer>
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members #=> Types::OriginGroupMembers
    #   resp.distribution.distribution_config.origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items #=> Array<OriginGroupMember>
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items[0] #=> Types::OriginGroupMember
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior #=> Types::DefaultCacheBehavior
    #   resp.distribution.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers #=> Types::TrustedSigners
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods #=> Types::AllowedMethods
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods #=> Types::CachedMethods
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array<LambdaFunctionAssociation>
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0] #=> Types::LambdaFunctionAssociation
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations #=> Types::FunctionAssociations
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items #=> Array<FunctionAssociation>
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0] #=> Types::FunctionAssociation
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values #=> Types::ForwardedValues
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies #=> Types::CookiePreference
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of none, whitelist, all
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names #=> Types::CookieNames
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers #=> Types::Headers
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys #=> Types::QueryStringCacheKeys
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors #=> Types::CacheBehaviors
    #   resp.distribution.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items #=> Array<CacheBehavior>
    #   resp.distribution.distribution_config.cache_behaviors.items[0] #=> Types::CacheBehavior
    #   resp.distribution.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers #=> Types::TrustedSigners
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods #=> Types::AllowedMethods
    #   resp.distribution.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations #=> Types::FunctionAssociations
    #   resp.distribution.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values #=> Types::ForwardedValues
    #   resp.distribution.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses #=> Types::CustomErrorResponses
    #   resp.distribution.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items #=> Array<CustomErrorResponse>
    #   resp.distribution.distribution_config.custom_error_responses.items[0] #=> Types::CustomErrorResponse
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution.distribution_config.comment #=> String
    #   resp.distribution.distribution_config.logging #=> Types::LoggingConfig
    #   resp.distribution.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution.distribution_config.logging.bucket #=> String
    #   resp.distribution.distribution_config.logging.prefix #=> String
    #   resp.distribution.distribution_config.price_class #=> String, one of PriceClass_100, PriceClass_200, PriceClass_All
    #   resp.distribution.distribution_config.enabled #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate #=> Types::ViewerCertificate
    #   resp.distribution.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution.distribution_config.viewer_certificate.ssl_support_method #=> String, one of sni-only, vip, static-ip
    #   resp.distribution.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018, TLSv1.2_2019, TLSv1.2_2021
    #   resp.distribution.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution.distribution_config.viewer_certificate.certificate_source #=> String, one of cloudfront, iam, acm
    #   resp.distribution.distribution_config.restrictions #=> Types::Restrictions
    #   resp.distribution.distribution_config.restrictions.geo_restriction #=> Types::GeoRestriction
    #   resp.distribution.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of blacklist, whitelist, none
    #   resp.distribution.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items #=> Array<String>
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution.distribution_config.web_acl_id #=> String
    #   resp.distribution.distribution_config.http_version #=> String, one of http1.1, http2
    #   resp.distribution.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.distribution.alias_icp_recordals #=> Array<AliasICPRecordal>
    #   resp.distribution.alias_icp_recordals[0] #=> Types::AliasICPRecordal
    #   resp.distribution.alias_icp_recordals[0].cname #=> String
    #   resp.distribution.alias_icp_recordals[0].icp_recordal_status #=> String, one of APPROVED, SUSPENDED, PENDING
    #   resp.location #=> String
    #   resp.e_tag #=> String
    #
    def create_distribution_with_tags(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreateDistributionWithTagsInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreateDistributionWithTagsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreateDistributionWithTags
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::TooManyDistributionsAssociatedToOriginRequestPolicy, Errors::InvalidRelativePath, Errors::TooManyQueryStringParameters, Errors::TooManyLambdaFunctionAssociations, Errors::InconsistentQuantities, Errors::InvalidTagging, Errors::InvalidWebACLId, Errors::InvalidTTLOrder, Errors::TooManyDistributions, Errors::TooManyDistributionsWithFunctionAssociations, Errors::TooManyHeadersInForwardedValues, Errors::TooManyDistributionsAssociatedToFieldLevelEncryptionConfig, Errors::InvalidOriginAccessIdentity, Errors::DistributionAlreadyExists, Errors::RealtimeLogConfigOwnerMismatch, Errors::TooManyCacheBehaviors, Errors::NoSuchOrigin, Errors::TooManyDistributionsAssociatedToCachePolicy, Errors::InvalidViewerCertificate, Errors::InvalidFunctionAssociation, Errors::NoSuchResponseHeadersPolicy, Errors::InvalidDefaultRootObject, Errors::NoSuchCachePolicy, Errors::InvalidProtocolSettings, Errors::InvalidMinimumProtocolVersion, Errors::InvalidLambdaFunctionAssociation, Errors::InvalidResponseCode, Errors::NoSuchOriginRequestPolicy, Errors::NoSuchFieldLevelEncryptionConfig, Errors::InvalidHeadersForS3Origin, Errors::TrustedSignerDoesNotExist, Errors::TooManyCookieNamesInWhiteList, Errors::TooManyDistributionsAssociatedToKeyGroup, Errors::AccessDenied, Errors::TooManyOrigins, Errors::TooManyTrustedSigners, Errors::TooManyDistributionsWithSingleFunctionARN, Errors::MissingBody, Errors::InvalidGeoRestrictionParameter, Errors::NoSuchRealtimeLogConfig, Errors::InvalidOriginReadTimeout, Errors::TooManyCertificates, Errors::InvalidLocationCode, Errors::InvalidQueryStringParameters, Errors::CNAMEAlreadyExists, Errors::IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior, Errors::InvalidArgument, Errors::TooManyDistributionCNAMEs, Errors::InvalidErrorCode, Errors::TooManyKeyGroupsAssociatedToDistribution, Errors::TooManyDistributionsWithLambdaAssociations, Errors::TooManyOriginCustomHeaders, Errors::TrustedKeyGroupDoesNotExist, Errors::InvalidOriginKeepaliveTimeout, Errors::InvalidForwardCookies, Errors::InvalidOrigin, Errors::TooManyDistributionsAssociatedToResponseHeadersPolicy, Errors::TooManyOriginGroupsPerDistribution, Errors::InvalidRequiredProtocol, Errors::TooManyFunctionAssociations]),
        data_parser: Parsers::CreateDistributionWithTags
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateDistributionWithTags,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_distribution_with_tags
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Create a new field-level encryption configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFieldLevelEncryptionConfigInput}.
    #
    # @option params [FieldLevelEncryptionConfig] :field_level_encryption_config
    #   <p>The request to create a new field-level encryption configuration.</p>
    #
    # @return [Types::CreateFieldLevelEncryptionConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_field_level_encryption_config(
    #     field_level_encryption_config: {
    #       caller_reference: 'CallerReference', # required
    #       comment: 'Comment',
    #       query_arg_profile_config: {
    #         forward_when_query_arg_profile_is_unknown: false, # required
    #         query_arg_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               query_arg: 'QueryArg', # required
    #               profile_id: 'ProfileId' # required
    #             }
    #           ]
    #         }
    #       },
    #       content_type_profile_config: {
    #         forward_when_content_type_is_unknown: false, # required
    #         content_type_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               format: 'URLEncoded', # required - accepts URLEncoded
    #               profile_id: 'ProfileId',
    #               content_type: 'ContentType' # required
    #             }
    #           ]
    #         }
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateFieldLevelEncryptionConfigOutput
    #   resp.field_level_encryption #=> Types::FieldLevelEncryption
    #   resp.field_level_encryption.id #=> String
    #   resp.field_level_encryption.last_modified_time #=> Time
    #   resp.field_level_encryption.field_level_encryption_config #=> Types::FieldLevelEncryptionConfig
    #   resp.field_level_encryption.field_level_encryption_config.caller_reference #=> String
    #   resp.field_level_encryption.field_level_encryption_config.comment #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config #=> Types::QueryArgProfileConfig
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.forward_when_query_arg_profile_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles #=> Types::QueryArgProfiles
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items #=> Array<QueryArgProfile>
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0] #=> Types::QueryArgProfile
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].query_arg #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config #=> Types::ContentTypeProfileConfig
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.forward_when_content_type_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles #=> Types::ContentTypeProfiles
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items #=> Array<ContentTypeProfile>
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0] #=> Types::ContentTypeProfile
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].format #=> String, one of URLEncoded
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].content_type #=> String
    #   resp.location #=> String
    #   resp.e_tag #=> String
    #
    def create_field_level_encryption_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreateFieldLevelEncryptionConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreateFieldLevelEncryptionConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreateFieldLevelEncryptionConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::QueryArgProfileEmpty, Errors::FieldLevelEncryptionConfigAlreadyExists, Errors::TooManyFieldLevelEncryptionContentTypeProfiles, Errors::InconsistentQuantities, Errors::NoSuchFieldLevelEncryptionProfile, Errors::TooManyFieldLevelEncryptionConfigs, Errors::InvalidArgument, Errors::TooManyFieldLevelEncryptionQueryArgProfiles]),
        data_parser: Parsers::CreateFieldLevelEncryptionConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateFieldLevelEncryptionConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_field_level_encryption_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Create a field-level encryption profile.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFieldLevelEncryptionProfileInput}.
    #
    # @option params [FieldLevelEncryptionProfileConfig] :field_level_encryption_profile_config
    #   <p>The request to create a field-level encryption profile.</p>
    #
    # @return [Types::CreateFieldLevelEncryptionProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_field_level_encryption_profile(
    #     field_level_encryption_profile_config: {
    #       member_name: 'Name', # required
    #       caller_reference: 'CallerReference', # required
    #       comment: 'Comment',
    #       encryption_entities: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             public_key_id: 'PublicKeyId', # required
    #             provider_id: 'ProviderId', # required
    #             field_patterns: {
    #               quantity: 1, # required
    #               items: [
    #                 'member'
    #               ]
    #             } # required
    #           }
    #         ]
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateFieldLevelEncryptionProfileOutput
    #   resp.field_level_encryption_profile #=> Types::FieldLevelEncryptionProfile
    #   resp.field_level_encryption_profile.id #=> String
    #   resp.field_level_encryption_profile.last_modified_time #=> Time
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config #=> Types::FieldLevelEncryptionProfileConfig
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.member_name #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.caller_reference #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.comment #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities #=> Types::EncryptionEntities
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items #=> Array<EncryptionEntity>
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0] #=> Types::EncryptionEntity
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].public_key_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].provider_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns #=> Types::FieldPatterns
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items #=> Array<String>
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items[0] #=> String
    #   resp.location #=> String
    #   resp.e_tag #=> String
    #
    def create_field_level_encryption_profile(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreateFieldLevelEncryptionProfileInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreateFieldLevelEncryptionProfileInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreateFieldLevelEncryptionProfile
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::FieldLevelEncryptionProfileAlreadyExists, Errors::TooManyFieldLevelEncryptionFieldPatterns, Errors::NoSuchPublicKey, Errors::InconsistentQuantities, Errors::InvalidArgument, Errors::TooManyFieldLevelEncryptionEncryptionEntities, Errors::TooManyFieldLevelEncryptionProfiles, Errors::FieldLevelEncryptionProfileSizeExceeded]),
        data_parser: Parsers::CreateFieldLevelEncryptionProfile
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateFieldLevelEncryptionProfile,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_field_level_encryption_profile
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Creates a CloudFront function.</p>
    # 		       <p>To create a function, you provide the function code and some configuration information
    # 			about the function. The response contains an Amazon Resource Name (ARN) that uniquely
    # 			identifies the function.</p>
    # 		       <p>When you create a function, it’s in the <code>DEVELOPMENT</code> stage. In this stage, you
    # 			can test the function with <code>TestFunction</code>, and update it with
    # 			<code>UpdateFunction</code>.</p>
    # 		       <p>When you’re ready to use your function with a CloudFront distribution, use
    # 			<code>PublishFunction</code> to copy the function from the <code>DEVELOPMENT</code>
    # 			stage to <code>LIVE</code>. When it’s live, you can attach the function to a
    # 			distribution’s cache behavior, using the function’s ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFunctionInput}.
    #
    # @option params [String] :member_name
    #   <p>A name to identify the function.</p>
    #
    # @option params [FunctionConfig] :function_config
    #   <p>Configuration information about the function, including an optional comment and the
    #   			function’s runtime.</p>
    #
    # @option params [String] :function_code
    #   <p>The function code. For more information about writing a CloudFront function, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html">Writing function
    #   			code for CloudFront Functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @return [Types::CreateFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function(
    #     member_name: 'Name', # required
    #     function_config: {
    #       comment: 'Comment', # required
    #       runtime: 'cloudfront-js-1.0' # required - accepts cloudfront-js-1.0
    #     }, # required
    #     function_code: 'FunctionCode' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateFunctionOutput
    #   resp.function_summary #=> Types::FunctionSummary
    #   resp.function_summary.member_name #=> String
    #   resp.function_summary.status #=> String
    #   resp.function_summary.function_config #=> Types::FunctionConfig
    #   resp.function_summary.function_config.comment #=> String
    #   resp.function_summary.function_config.runtime #=> String, one of cloudfront-js-1.0
    #   resp.function_summary.function_metadata #=> Types::FunctionMetadata
    #   resp.function_summary.function_metadata.function_arn #=> String
    #   resp.function_summary.function_metadata.stage #=> String, one of DEVELOPMENT, LIVE
    #   resp.function_summary.function_metadata.created_time #=> Time
    #   resp.function_summary.function_metadata.last_modified_time #=> Time
    #   resp.location #=> String
    #   resp.e_tag #=> String
    #
    def create_function(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreateFunctionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreateFunctionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreateFunction
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::UnsupportedOperation, Errors::TooManyFunctions, Errors::FunctionAlreadyExists, Errors::InvalidArgument, Errors::FunctionSizeLimitExceeded]),
        data_parser: Parsers::CreateFunction
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateFunction,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_function
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Create a new invalidation. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateInvalidationInput}.
    #
    # @option params [String] :distribution_id
    #   <p>The distribution's id.</p>
    #
    # @option params [InvalidationBatch] :invalidation_batch
    #   <p>The batch information for the invalidation.</p>
    #
    # @return [Types::CreateInvalidationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_invalidation(
    #     distribution_id: 'DistributionId', # required
    #     invalidation_batch: {
    #       paths: {
    #         quantity: 1, # required
    #         items: [
    #           'member'
    #         ]
    #       }, # required
    #       caller_reference: 'CallerReference' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateInvalidationOutput
    #   resp.location #=> String
    #   resp.invalidation #=> Types::Invalidation
    #   resp.invalidation.id #=> String
    #   resp.invalidation.status #=> String
    #   resp.invalidation.create_time #=> Time
    #   resp.invalidation.invalidation_batch #=> Types::InvalidationBatch
    #   resp.invalidation.invalidation_batch.paths #=> Types::Paths
    #   resp.invalidation.invalidation_batch.paths.quantity #=> Integer
    #   resp.invalidation.invalidation_batch.paths.items #=> Array<String>
    #   resp.invalidation.invalidation_batch.paths.items[0] #=> String
    #   resp.invalidation.invalidation_batch.caller_reference #=> String
    #
    def create_invalidation(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreateInvalidationInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreateInvalidationInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreateInvalidation
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::AccessDenied, Errors::MissingBody, Errors::TooManyInvalidationsInProgress, Errors::InconsistentQuantities, Errors::NoSuchDistribution, Errors::InvalidArgument, Errors::BatchTooLarge]),
        data_parser: Parsers::CreateInvalidation
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateInvalidation,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_invalidation
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Creates a key group that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">CloudFront signed URLs and signed cookies</a>.</p>
    # 		       <p>To create a key group, you must specify at least one public key for the key group. After you
    # 			create a key group, you can reference it from one or more cache behaviors. When you
    # 			reference a key group in a cache behavior, CloudFront requires signed URLs or signed cookies
    # 			for all requests that match the cache behavior. The URLs or cookies must be signed with
    # 			a private key whose corresponding public key is in the key group. The signed URL or
    # 			cookie contains information about which public key CloudFront should use to verify the
    # 			signature. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateKeyGroupInput}.
    #
    # @option params [KeyGroupConfig] :key_group_config
    #   <p>A key group configuration.</p>
    #
    # @return [Types::CreateKeyGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_key_group(
    #     key_group_config: {
    #       member_name: 'Name', # required
    #       items: [
    #         'member'
    #       ], # required
    #       comment: 'Comment'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateKeyGroupOutput
    #   resp.key_group #=> Types::KeyGroup
    #   resp.key_group.id #=> String
    #   resp.key_group.last_modified_time #=> Time
    #   resp.key_group.key_group_config #=> Types::KeyGroupConfig
    #   resp.key_group.key_group_config.member_name #=> String
    #   resp.key_group.key_group_config.items #=> Array<String>
    #   resp.key_group.key_group_config.items[0] #=> String
    #   resp.key_group.key_group_config.comment #=> String
    #   resp.location #=> String
    #   resp.e_tag #=> String
    #
    def create_key_group(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreateKeyGroupInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreateKeyGroupInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreateKeyGroup
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::KeyGroupAlreadyExists, Errors::TooManyKeyGroups, Errors::TooManyPublicKeysInKeyGroup, Errors::InvalidArgument]),
        data_parser: Parsers::CreateKeyGroup
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateKeyGroup,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_key_group
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Enables additional CloudWatch metrics for the specified CloudFront distribution. The
    # 			additional metrics incur an additional cost.</p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/viewing-cloudfront-metrics.html#monitoring-console.distributions-additional">Viewing additional CloudFront distribution metrics</a> in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMonitoringSubscriptionInput}.
    #
    # @option params [String] :distribution_id
    #   <p>The ID of the distribution that you are enabling metrics for.</p>
    #
    # @option params [MonitoringSubscription] :monitoring_subscription
    #   <p>A monitoring subscription. This structure contains information about whether additional
    #   			CloudWatch metrics are enabled for a given CloudFront distribution.</p>
    #
    # @return [Types::CreateMonitoringSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_monitoring_subscription(
    #     distribution_id: 'DistributionId', # required
    #     monitoring_subscription: {
    #       realtime_metrics_subscription_config: {
    #         realtime_metrics_subscription_status: 'Enabled' # required - accepts Enabled, Disabled
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateMonitoringSubscriptionOutput
    #   resp.monitoring_subscription #=> Types::MonitoringSubscription
    #   resp.monitoring_subscription.realtime_metrics_subscription_config #=> Types::RealtimeMetricsSubscriptionConfig
    #   resp.monitoring_subscription.realtime_metrics_subscription_config.realtime_metrics_subscription_status #=> String, one of Enabled, Disabled
    #
    def create_monitoring_subscription(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreateMonitoringSubscriptionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreateMonitoringSubscriptionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreateMonitoringSubscription
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::UnsupportedOperation, Errors::NoSuchDistribution]),
        data_parser: Parsers::CreateMonitoringSubscription
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateMonitoringSubscription,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_monitoring_subscription
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Creates an origin request policy.</p>
    # 		       <p>After you create an origin request policy, you can attach it to one or more cache behaviors.
    # 			When it’s attached to a cache behavior, the origin request policy determines the values
    # 			that CloudFront includes in requests that it sends to the origin. Each request that CloudFront sends
    # 			to the origin includes the following:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>The request body and the URL path (without the domain name) from the viewer
    # 					request.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The headers that CloudFront automatically includes in every origin request, including
    # 					<code>Host</code>, <code>User-Agent</code>, and <code>X-Amz-Cf-Id</code>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>All HTTP headers, cookies, and URL query strings that are specified in the cache policy or
    # 					the origin request policy. These can include items from the viewer request and,
    # 					in the case of headers, additional ones that are added by CloudFront.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>CloudFront sends a request when it can’t find a valid object in its cache that matches the
    # 			request. If you want to send values to the origin and also include them in the cache
    # 			key, use <code>CachePolicy</code>.</p>
    # 		       <p>For more information about origin request policies, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html">Controlling origin requests</a> in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateOriginRequestPolicyInput}.
    #
    # @option params [OriginRequestPolicyConfig] :origin_request_policy_config
    #   <p>An origin request policy configuration.</p>
    #
    # @return [Types::CreateOriginRequestPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_origin_request_policy(
    #     origin_request_policy_config: {
    #       comment: 'Comment',
    #       member_name: 'Name', # required
    #       headers_config: {
    #         header_behavior: 'none', # required - accepts none, whitelist, allViewer, allViewerAndWhitelistCloudFront
    #         headers: {
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         }
    #       }, # required
    #       cookies_config: {
    #         cookie_behavior: 'none', # required - accepts none, whitelist, all
    #         cookies: {
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         }
    #       }, # required
    #       query_strings_config: {
    #         query_string_behavior: 'none', # required - accepts none, whitelist, all
    #         query_strings: {
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         }
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateOriginRequestPolicyOutput
    #   resp.origin_request_policy #=> Types::OriginRequestPolicy
    #   resp.origin_request_policy.id #=> String
    #   resp.origin_request_policy.last_modified_time #=> Time
    #   resp.origin_request_policy.origin_request_policy_config #=> Types::OriginRequestPolicyConfig
    #   resp.origin_request_policy.origin_request_policy_config.comment #=> String
    #   resp.origin_request_policy.origin_request_policy_config.member_name #=> String
    #   resp.origin_request_policy.origin_request_policy_config.headers_config #=> Types::OriginRequestPolicyHeadersConfig
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.header_behavior #=> String, one of none, whitelist, allViewer, allViewerAndWhitelistCloudFront
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers #=> Types::Headers
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.items #=> Array<String>
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.items[0] #=> String
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config #=> Types::OriginRequestPolicyCookiesConfig
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookie_behavior #=> String, one of none, whitelist, all
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies #=> Types::CookieNames
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.items #=> Array<String>
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.items[0] #=> String
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config #=> Types::OriginRequestPolicyQueryStringsConfig
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_string_behavior #=> String, one of none, whitelist, all
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings #=> Types::QueryStringNames
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items #=> Array<String>
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items[0] #=> String
    #   resp.location #=> String
    #   resp.e_tag #=> String
    #
    def create_origin_request_policy(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreateOriginRequestPolicyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreateOriginRequestPolicyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreateOriginRequestPolicy
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::AccessDenied, Errors::TooManyHeadersInOriginRequestPolicy, Errors::TooManyOriginRequestPolicies, Errors::TooManyQueryStringsInOriginRequestPolicy, Errors::InconsistentQuantities, Errors::OriginRequestPolicyAlreadyExists, Errors::InvalidArgument, Errors::TooManyCookiesInOriginRequestPolicy]),
        data_parser: Parsers::CreateOriginRequestPolicy
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateOriginRequestPolicy,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_origin_request_policy
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Uploads a public key to CloudFront that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">signed URLs and signed cookies</a>, or with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html">field-level encryption</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePublicKeyInput}.
    #
    # @option params [PublicKeyConfig] :public_key_config
    #   <p>A CloudFront public key configuration.</p>
    #
    # @return [Types::CreatePublicKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_public_key(
    #     public_key_config: {
    #       caller_reference: 'CallerReference', # required
    #       member_name: 'Name', # required
    #       encoded_key: 'EncodedKey', # required
    #       comment: 'Comment'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreatePublicKeyOutput
    #   resp.public_key #=> Types::PublicKey
    #   resp.public_key.id #=> String
    #   resp.public_key.created_time #=> Time
    #   resp.public_key.public_key_config #=> Types::PublicKeyConfig
    #   resp.public_key.public_key_config.caller_reference #=> String
    #   resp.public_key.public_key_config.member_name #=> String
    #   resp.public_key.public_key_config.encoded_key #=> String
    #   resp.public_key.public_key_config.comment #=> String
    #   resp.location #=> String
    #   resp.e_tag #=> String
    #
    def create_public_key(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreatePublicKeyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreatePublicKeyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreatePublicKey
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::InvalidArgument, Errors::TooManyPublicKeys, Errors::PublicKeyAlreadyExists]),
        data_parser: Parsers::CreatePublicKey
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreatePublicKey,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_public_key
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Creates a real-time log configuration.</p>
    # 		       <p>After you create a real-time log configuration, you can attach it to one or more cache
    # 			behaviors to send real-time log data to the specified Amazon Kinesis data stream.</p>
    # 		       <p>For more information about real-time log configurations, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html">Real-time logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRealtimeLogConfigInput}.
    #
    # @option params [Array<EndPoint>] :end_points
    #   <p>Contains information about the Amazon Kinesis data stream where you are sending real-time
    #   			log data.</p>
    #
    # @option params [Array<String>] :fields
    #   <p>A list of fields to include in each real-time log record.</p>
    #   		       <p>For more information about fields, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields">Real-time log configuration fields</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @option params [String] :member_name
    #   <p>A unique name to identify this real-time log configuration.</p>
    #
    # @option params [Integer] :sampling_rate
    #   <p>The sampling rate for this real-time log configuration. The sampling rate determines the
    #   			percentage of viewer requests that are represented in the real-time log data. You must
    #   			provide an integer between 1 and 100, inclusive.</p>
    #
    # @return [Types::CreateRealtimeLogConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_realtime_log_config(
    #     end_points: [
    #       {
    #         stream_type: 'StreamType', # required
    #         kinesis_stream_config: {
    #           role_arn: 'RoleARN', # required
    #           stream_arn: 'StreamARN' # required
    #         }
    #       }
    #     ], # required
    #     fields: [
    #       'member'
    #     ], # required
    #     member_name: 'Name', # required
    #     sampling_rate: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateRealtimeLogConfigOutput
    #   resp.realtime_log_config #=> Types::RealtimeLogConfig
    #   resp.realtime_log_config.arn #=> String
    #   resp.realtime_log_config.member_name #=> String
    #   resp.realtime_log_config.sampling_rate #=> Integer
    #   resp.realtime_log_config.end_points #=> Array<EndPoint>
    #   resp.realtime_log_config.end_points[0] #=> Types::EndPoint
    #   resp.realtime_log_config.end_points[0].stream_type #=> String
    #   resp.realtime_log_config.end_points[0].kinesis_stream_config #=> Types::KinesisStreamConfig
    #   resp.realtime_log_config.end_points[0].kinesis_stream_config.role_arn #=> String
    #   resp.realtime_log_config.end_points[0].kinesis_stream_config.stream_arn #=> String
    #   resp.realtime_log_config.fields #=> Array<String>
    #   resp.realtime_log_config.fields[0] #=> String
    #
    def create_realtime_log_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreateRealtimeLogConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreateRealtimeLogConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreateRealtimeLogConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::AccessDenied, Errors::InvalidArgument, Errors::TooManyRealtimeLogConfigs, Errors::RealtimeLogConfigAlreadyExists]),
        data_parser: Parsers::CreateRealtimeLogConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateRealtimeLogConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_realtime_log_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Creates a response headers policy.</p>
    # 		       <p>A response headers policy contains information about a set of HTTP response headers
    # 			and their values. To create a response headers policy, you provide some metadata about
    # 			the policy, and a set of configurations that specify the response headers.</p>
    # 		       <p>After you create a response headers policy, you can use its ID to attach it to one or more
    # 			cache behaviors in a CloudFront distribution. When it’s attached to a cache behavior, CloudFront
    # 			adds the headers in the policy to HTTP responses that it sends for requests that match
    # 			the cache behavior.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateResponseHeadersPolicyInput}.
    #
    # @option params [ResponseHeadersPolicyConfig] :response_headers_policy_config
    #   <p>Contains metadata about the response headers policy, and a set of configurations that
    #   			specify the response headers.</p>
    #
    # @return [Types::CreateResponseHeadersPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_response_headers_policy(
    #     response_headers_policy_config: {
    #       comment: 'Comment',
    #       member_name: 'Name', # required
    #       cors_config: {
    #         access_control_allow_origins: {
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ] # required
    #         }, # required
    #         access_control_allow_headers: {
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ] # required
    #         }, # required
    #         access_control_allow_methods: {
    #           quantity: 1, # required
    #           items: [
    #             'GET' # accepts GET, POST, OPTIONS, PUT, DELETE, PATCH, HEAD, ALL
    #           ] # required
    #         }, # required
    #         access_control_allow_credentials: false, # required
    #         access_control_expose_headers: {
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         },
    #         access_control_max_age_sec: 1,
    #         origin_override: false # required
    #       },
    #       security_headers_config: {
    #         xss_protection: {
    #           override: false, # required
    #           protection: false, # required
    #           mode_block: false,
    #           report_uri: 'ReportUri'
    #         },
    #         frame_options: {
    #           override: false, # required
    #           frame_option: 'DENY' # required - accepts DENY, SAMEORIGIN
    #         },
    #         referrer_policy: {
    #           override: false, # required
    #           referrer_policy: 'no-referrer' # required - accepts no-referrer, no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
    #         },
    #         content_security_policy: {
    #           override: false, # required
    #           content_security_policy: 'ContentSecurityPolicy' # required
    #         },
    #         content_type_options: {
    #           override: false # required
    #         },
    #         strict_transport_security: {
    #           override: false, # required
    #           include_subdomains: false,
    #           preload: false,
    #           access_control_max_age_sec: 1 # required
    #         }
    #       },
    #       custom_headers_config: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             header: 'Header', # required
    #             value: 'Value', # required
    #             override: false # required
    #           }
    #         ]
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateResponseHeadersPolicyOutput
    #   resp.response_headers_policy #=> Types::ResponseHeadersPolicy
    #   resp.response_headers_policy.id #=> String
    #   resp.response_headers_policy.last_modified_time #=> Time
    #   resp.response_headers_policy.response_headers_policy_config #=> Types::ResponseHeadersPolicyConfig
    #   resp.response_headers_policy.response_headers_policy_config.comment #=> String
    #   resp.response_headers_policy.response_headers_policy_config.member_name #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config #=> Types::ResponseHeadersPolicyCorsConfig
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins #=> Types::ResponseHeadersPolicyAccessControlAllowOrigins
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items #=> Array<String>
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers #=> Types::ResponseHeadersPolicyAccessControlAllowHeaders
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items #=> Array<String>
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods #=> Types::ResponseHeadersPolicyAccessControlAllowMethods
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items #=> Array<String>
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items[0] #=> String, one of GET, POST, OPTIONS, PUT, DELETE, PATCH, HEAD, ALL
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_credentials #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers #=> Types::ResponseHeadersPolicyAccessControlExposeHeaders
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items #=> Array<String>
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.origin_override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config #=> Types::ResponseHeadersPolicySecurityHeadersConfig
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection #=> Types::ResponseHeadersPolicyXSSProtection
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.protection #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.mode_block #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.report_uri #=> String
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.frame_options #=> Types::ResponseHeadersPolicyFrameOptions
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.frame_option #=> String, one of DENY, SAMEORIGIN
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy #=> Types::ResponseHeadersPolicyReferrerPolicy
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.referrer_policy #=> String, one of no-referrer, no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy #=> Types::ResponseHeadersPolicyContentSecurityPolicy
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.content_security_policy #=> String
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_type_options #=> Types::ResponseHeadersPolicyContentTypeOptions
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_type_options.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security #=> Types::ResponseHeadersPolicyStrictTransportSecurity
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.include_subdomains #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.preload #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config #=> Types::ResponseHeadersPolicyCustomHeadersConfig
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items #=> Array<ResponseHeadersPolicyCustomHeader>
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0] #=> Types::ResponseHeadersPolicyCustomHeader
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].header #=> String
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].value #=> String
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].override #=> Boolean
    #   resp.location #=> String
    #   resp.e_tag #=> String
    #
    def create_response_headers_policy(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreateResponseHeadersPolicyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreateResponseHeadersPolicyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreateResponseHeadersPolicy
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::AccessDenied, Errors::TooManyCustomHeadersInResponseHeadersPolicy, Errors::InconsistentQuantities, Errors::TooManyResponseHeadersPolicies, Errors::InvalidArgument, Errors::ResponseHeadersPolicyAlreadyExists]),
        data_parser: Parsers::CreateResponseHeadersPolicy
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateResponseHeadersPolicy,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_response_headers_policy
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>This API is deprecated.
    #             Amazon CloudFront is deprecating real-time messaging protocol (RTMP) distributions on December 31, 2020.
    #             For more information, <a href="http://forums.aws.amazon.com/ann.jspa?annID=7356">read the announcement</a> on the Amazon CloudFront discussion forum.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStreamingDistributionInput}.
    #
    # @option params [StreamingDistributionConfig] :streaming_distribution_config
    #   <p>The streaming distribution's configuration information.</p>
    #
    # @return [Types::CreateStreamingDistributionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_distribution(
    #     streaming_distribution_config: {
    #       caller_reference: 'CallerReference', # required
    #       s3_origin: {
    #         domain_name: 'DomainName', # required
    #         origin_access_identity: 'OriginAccessIdentity' # required
    #       }, # required
    #       aliases: {
    #         quantity: 1, # required
    #         items: [
    #           'member'
    #         ]
    #       },
    #       comment: 'Comment', # required
    #       logging: {
    #         enabled: false, # required
    #         bucket: 'Bucket', # required
    #         prefix: 'Prefix' # required
    #       },
    #       trusted_signers: {
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           'member'
    #         ]
    #       }, # required
    #       price_class: 'PriceClass_100', # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #       enabled: false # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateStreamingDistributionOutput
    #   resp.streaming_distribution #=> Types::StreamingDistribution
    #   resp.streaming_distribution.id #=> String
    #   resp.streaming_distribution.arn #=> String
    #   resp.streaming_distribution.status #=> String
    #   resp.streaming_distribution.last_modified_time #=> Time
    #   resp.streaming_distribution.domain_name #=> String
    #   resp.streaming_distribution.active_trusted_signers #=> Types::ActiveTrustedSigners
    #   resp.streaming_distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.active_trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items #=> Array<Signer>
    #   resp.streaming_distribution.active_trusted_signers.items[0] #=> Types::Signer
    #   resp.streaming_distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids #=> Types::KeyPairIds
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array<String>
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config #=> Types::StreamingDistributionConfig
    #   resp.streaming_distribution.streaming_distribution_config.caller_reference #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin #=> Types::S3Origin
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.domain_name #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution.streaming_distribution_config.aliases #=> Types::Aliases
    #   resp.streaming_distribution.streaming_distribution_config.aliases.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items #=> Array<String>
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.comment #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging #=> Types::StreamingLoggingConfig
    #   resp.streaming_distribution.streaming_distribution_config.logging.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.logging.bucket #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.prefix #=> String
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers #=> Types::TrustedSigners
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items #=> Array<String>
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.price_class #=> String, one of PriceClass_100, PriceClass_200, PriceClass_All
    #   resp.streaming_distribution.streaming_distribution_config.enabled #=> Boolean
    #   resp.location #=> String
    #   resp.e_tag #=> String
    #
    def create_streaming_distribution(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreateStreamingDistributionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreateStreamingDistributionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreateStreamingDistribution
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::MissingBody, Errors::TooManyStreamingDistributions, Errors::InconsistentQuantities, Errors::TrustedSignerDoesNotExist, Errors::CNAMEAlreadyExists, Errors::InvalidArgument, Errors::AccessDenied, Errors::TooManyTrustedSigners, Errors::StreamingDistributionAlreadyExists, Errors::InvalidOriginAccessIdentity, Errors::InvalidOrigin, Errors::TooManyStreamingDistributionCNAMEs]),
        data_parser: Parsers::CreateStreamingDistribution
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateStreamingDistribution,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_streaming_distribution
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>This API is deprecated.
    #             Amazon CloudFront is deprecating real-time messaging protocol (RTMP) distributions on December 31, 2020.
    #             For more information, <a href="http://forums.aws.amazon.com/ann.jspa?annID=7356">read the announcement</a> on the Amazon CloudFront discussion forum.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStreamingDistributionWithTagsInput}.
    #
    # @option params [StreamingDistributionConfigWithTags] :streaming_distribution_config_with_tags
    #   <p> The streaming distribution's configuration information. </p>
    #
    # @return [Types::CreateStreamingDistributionWithTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_distribution_with_tags(
    #     streaming_distribution_config_with_tags: {
    #       streaming_distribution_config: {
    #         caller_reference: 'CallerReference', # required
    #         s3_origin: {
    #           domain_name: 'DomainName', # required
    #           origin_access_identity: 'OriginAccessIdentity' # required
    #         }, # required
    #         aliases: {
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         },
    #         comment: 'Comment', # required
    #         logging: {
    #           enabled: false, # required
    #           bucket: 'Bucket', # required
    #           prefix: 'Prefix' # required
    #         },
    #         trusted_signers: {
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         }, # required
    #         price_class: 'PriceClass_100', # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #         enabled: false # required
    #       }, # required
    #       tags: {
    #         items: [
    #           {
    #             key: 'Key', # required
    #             value: 'Value'
    #           }
    #         ]
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateStreamingDistributionWithTagsOutput
    #   resp.streaming_distribution #=> Types::StreamingDistribution
    #   resp.streaming_distribution.id #=> String
    #   resp.streaming_distribution.arn #=> String
    #   resp.streaming_distribution.status #=> String
    #   resp.streaming_distribution.last_modified_time #=> Time
    #   resp.streaming_distribution.domain_name #=> String
    #   resp.streaming_distribution.active_trusted_signers #=> Types::ActiveTrustedSigners
    #   resp.streaming_distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.active_trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items #=> Array<Signer>
    #   resp.streaming_distribution.active_trusted_signers.items[0] #=> Types::Signer
    #   resp.streaming_distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids #=> Types::KeyPairIds
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array<String>
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config #=> Types::StreamingDistributionConfig
    #   resp.streaming_distribution.streaming_distribution_config.caller_reference #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin #=> Types::S3Origin
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.domain_name #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution.streaming_distribution_config.aliases #=> Types::Aliases
    #   resp.streaming_distribution.streaming_distribution_config.aliases.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items #=> Array<String>
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.comment #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging #=> Types::StreamingLoggingConfig
    #   resp.streaming_distribution.streaming_distribution_config.logging.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.logging.bucket #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.prefix #=> String
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers #=> Types::TrustedSigners
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items #=> Array<String>
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.price_class #=> String, one of PriceClass_100, PriceClass_200, PriceClass_All
    #   resp.streaming_distribution.streaming_distribution_config.enabled #=> Boolean
    #   resp.location #=> String
    #   resp.e_tag #=> String
    #
    def create_streaming_distribution_with_tags(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::CreateStreamingDistributionWithTagsInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::CreateStreamingDistributionWithTagsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::CreateStreamingDistributionWithTags
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::MissingBody, Errors::TooManyStreamingDistributions, Errors::InconsistentQuantities, Errors::InvalidTagging, Errors::TrustedSignerDoesNotExist, Errors::CNAMEAlreadyExists, Errors::InvalidArgument, Errors::AccessDenied, Errors::TooManyTrustedSigners, Errors::StreamingDistributionAlreadyExists, Errors::InvalidOriginAccessIdentity, Errors::InvalidOrigin, Errors::TooManyStreamingDistributionCNAMEs]),
        data_parser: Parsers::CreateStreamingDistributionWithTags
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateStreamingDistributionWithTags,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_streaming_distribution_with_tags
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Deletes a cache policy.</p>
    # 		       <p>You cannot delete a cache policy if it’s attached to a cache behavior. First update your
    # 			distributions to remove the cache policy from all cache behaviors, then delete the cache
    # 			policy.</p>
    # 		       <p>To delete a cache policy, you must provide the policy’s identifier and version. To get these
    # 			values, you can use <code>ListCachePolicies</code> or
    # 			<code>GetCachePolicy</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCachePolicyInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier for the cache policy that you are deleting. To get the
    #   			identifier, you can use <code>ListCachePolicies</code>.</p>
    #
    # @option params [String] :if_match
    #   <p>The version of the cache policy that you are deleting. The version is the cache
    #   			policy’s <code>ETag</code> value, which you can get using
    #   			<code>ListCachePolicies</code>, <code>GetCachePolicy</code>, or
    #   			<code>GetCachePolicyConfig</code>.</p>
    #
    # @return [Types::DeleteCachePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cache_policy(
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteCachePolicyOutput
    #
    def delete_cache_policy(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::DeleteCachePolicyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::DeleteCachePolicyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::DeleteCachePolicy
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::AccessDenied, Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::IllegalDelete, Errors::NoSuchCachePolicy, Errors::CachePolicyInUse]),
        data_parser: Parsers::DeleteCachePolicy
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteCachePolicy,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_cache_policy
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Delete an origin access identity. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCloudFrontOriginAccessIdentityInput}.
    #
    # @option params [String] :id
    #   <p>The origin access identity's ID.</p>
    #
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header you received from a previous <code>GET</code>
    #   			or <code>PUT</code> request. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    # @return [Types::DeleteCloudFrontOriginAccessIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cloud_front_origin_access_identity(
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteCloudFrontOriginAccessIdentityOutput
    #
    def delete_cloud_front_origin_access_identity(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::DeleteCloudFrontOriginAccessIdentityInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::DeleteCloudFrontOriginAccessIdentityInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::DeleteCloudFrontOriginAccessIdentity
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::AccessDenied, Errors::CloudFrontOriginAccessIdentityInUse, Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::NoSuchCloudFrontOriginAccessIdentity]),
        data_parser: Parsers::DeleteCloudFrontOriginAccessIdentity
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteCloudFrontOriginAccessIdentity,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_cloud_front_origin_access_identity
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Delete a distribution. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDistributionInput}.
    #
    # @option params [String] :id
    #   <p>The distribution ID. </p>
    #
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when you disabled the
    #   			distribution. For example: <code>E2QWRUHAPOMQZL</code>. </p>
    #
    # @return [Types::DeleteDistributionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_distribution(
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteDistributionOutput
    #
    def delete_distribution(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::DeleteDistributionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::DeleteDistributionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::DeleteDistribution
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::AccessDenied, Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::NoSuchDistribution, Errors::DistributionNotDisabled]),
        data_parser: Parsers::DeleteDistribution
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteDistribution,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_distribution
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Remove a field-level encryption configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFieldLevelEncryptionConfigInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the configuration you want to delete from CloudFront.</p>
    #
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the
    #   			configuration identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    # @return [Types::DeleteFieldLevelEncryptionConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_field_level_encryption_config(
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteFieldLevelEncryptionConfigOutput
    #
    def delete_field_level_encryption_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::DeleteFieldLevelEncryptionConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::DeleteFieldLevelEncryptionConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::DeleteFieldLevelEncryptionConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::AccessDenied, Errors::FieldLevelEncryptionConfigInUse, Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::NoSuchFieldLevelEncryptionConfig]),
        data_parser: Parsers::DeleteFieldLevelEncryptionConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteFieldLevelEncryptionConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_field_level_encryption_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Remove a field-level encryption profile.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFieldLevelEncryptionProfileInput}.
    #
    # @option params [String] :id
    #   <p>Request the ID of the profile you want to delete from CloudFront.</p>
    #
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the
    #   			profile to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    # @return [Types::DeleteFieldLevelEncryptionProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_field_level_encryption_profile(
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteFieldLevelEncryptionProfileOutput
    #
    def delete_field_level_encryption_profile(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::DeleteFieldLevelEncryptionProfileInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::DeleteFieldLevelEncryptionProfileInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::DeleteFieldLevelEncryptionProfile
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::AccessDenied, Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::FieldLevelEncryptionProfileInUse, Errors::NoSuchFieldLevelEncryptionProfile]),
        data_parser: Parsers::DeleteFieldLevelEncryptionProfile
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteFieldLevelEncryptionProfile,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_field_level_encryption_profile
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Deletes a CloudFront function.</p>
    # 		       <p>You cannot delete a function if it’s associated with a cache behavior. First, update your
    # 			distributions to remove the function association from all cache behaviors, then delete
    # 			the function.</p>
    # 		       <p>To delete a function, you must provide the function’s name and version
    # 			(<code>ETag</code> value). To get these values, you can use <code>ListFunctions</code>
    # 			and <code>DescribeFunction</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFunctionInput}.
    #
    # @option params [String] :member_name
    #   <p>The name of the function that you are deleting.</p>
    #
    # @option params [String] :if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are deleting, which
    #   			you can get using <code>DescribeFunction</code>.</p>
    #
    # @return [Types::DeleteFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function(
    #     member_name: 'Name', # required
    #     if_match: 'IfMatch' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteFunctionOutput
    #
    def delete_function(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::DeleteFunctionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::DeleteFunctionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::DeleteFunction
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::PreconditionFailed, Errors::UnsupportedOperation, Errors::InvalidIfMatchVersion, Errors::NoSuchFunctionExists, Errors::FunctionInUse]),
        data_parser: Parsers::DeleteFunction
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteFunction,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_function
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Deletes a key group.</p>
    # 		       <p>You cannot delete a key group that is referenced in a cache behavior. First update
    # 			your distributions to remove the key group from all cache behaviors, then delete the key
    # 			group.</p>
    # 		       <p>To delete a key group, you must provide the key group’s identifier and version. To get
    # 			these values, use <code>ListKeyGroups</code> followed by <code>GetKeyGroup</code> or
    # 			<code>GetKeyGroupConfig</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteKeyGroupInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the key group that you are deleting. To get the identifier, use
    #   			<code>ListKeyGroups</code>.</p>
    #
    # @option params [String] :if_match
    #   <p>The version of the key group that you are deleting. The version is the key group’s
    #   			<code>ETag</code> value. To get the <code>ETag</code>, use <code>GetKeyGroup</code> or
    #   			<code>GetKeyGroupConfig</code>.</p>
    #
    # @return [Types::DeleteKeyGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_key_group(
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteKeyGroupOutput
    #
    def delete_key_group(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::DeleteKeyGroupInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::DeleteKeyGroupInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::DeleteKeyGroup
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::NoSuchResource, Errors::ResourceInUse]),
        data_parser: Parsers::DeleteKeyGroup
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteKeyGroup,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_key_group
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Disables additional CloudWatch metrics for the specified CloudFront distribution.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMonitoringSubscriptionInput}.
    #
    # @option params [String] :distribution_id
    #   <p>The ID of the distribution that you are disabling metrics for.</p>
    #
    # @return [Types::DeleteMonitoringSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_monitoring_subscription(
    #     distribution_id: 'DistributionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteMonitoringSubscriptionOutput
    #
    def delete_monitoring_subscription(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::DeleteMonitoringSubscriptionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::DeleteMonitoringSubscriptionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::DeleteMonitoringSubscription
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::UnsupportedOperation, Errors::NoSuchDistribution]),
        data_parser: Parsers::DeleteMonitoringSubscription
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteMonitoringSubscription,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_monitoring_subscription
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Deletes an origin request policy.</p>
    # 		       <p>You cannot delete an origin request policy if it’s attached to any cache behaviors. First
    # 			update your distributions to remove the origin request policy from all cache behaviors,
    # 			then delete the origin request policy.</p>
    # 		       <p>To delete an origin request policy, you must provide the policy’s identifier and version. To
    # 			get the identifier, you can use <code>ListOriginRequestPolicies</code> or
    # 			<code>GetOriginRequestPolicy</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteOriginRequestPolicyInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier for the origin request policy that you are deleting. To get the
    #   			identifier, you can use <code>ListOriginRequestPolicies</code>.</p>
    #
    # @option params [String] :if_match
    #   <p>The version of the origin request policy that you are deleting. The version is the origin
    #   			request policy’s <code>ETag</code> value, which you can get using
    #   			<code>ListOriginRequestPolicies</code>, <code>GetOriginRequestPolicy</code>, or
    #   			<code>GetOriginRequestPolicyConfig</code>.</p>
    #
    # @return [Types::DeleteOriginRequestPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_origin_request_policy(
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteOriginRequestPolicyOutput
    #
    def delete_origin_request_policy(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::DeleteOriginRequestPolicyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::DeleteOriginRequestPolicyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::DeleteOriginRequestPolicy
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::AccessDenied, Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::OriginRequestPolicyInUse, Errors::IllegalDelete, Errors::NoSuchOriginRequestPolicy]),
        data_parser: Parsers::DeleteOriginRequestPolicy
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteOriginRequestPolicy,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_origin_request_policy
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Remove a public key you previously added to CloudFront.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePublicKeyInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the public key you want to remove from CloudFront.</p>
    #
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the
    #   			public key identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    # @return [Types::DeletePublicKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_public_key(
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeletePublicKeyOutput
    #
    def delete_public_key(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::DeletePublicKeyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::DeletePublicKeyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::DeletePublicKey
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::AccessDenied, Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::NoSuchPublicKey, Errors::PublicKeyInUse]),
        data_parser: Parsers::DeletePublicKey
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeletePublicKey,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_public_key
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Deletes a real-time log configuration.</p>
    # 		       <p>You cannot delete a real-time log configuration if it’s attached to a cache behavior.
    # 			First update your distributions to remove the real-time log configuration from all cache
    # 			behaviors, then delete the real-time log configuration.</p>
    # 		       <p>To delete a real-time log configuration, you can provide the configuration’s name or its
    # 			Amazon Resource Name (ARN). You must provide at least one. If you provide both, CloudFront
    # 			uses the name to identify the real-time log configuration to delete.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRealtimeLogConfigInput}.
    #
    # @option params [String] :member_name
    #   <p>The name of the real-time log configuration to delete.</p>
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration to delete.</p>
    #
    # @return [Types::DeleteRealtimeLogConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_realtime_log_config(
    #     member_name: 'Name',
    #     arn: 'ARN'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteRealtimeLogConfigOutput
    #
    def delete_realtime_log_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::DeleteRealtimeLogConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::DeleteRealtimeLogConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::DeleteRealtimeLogConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::AccessDenied, Errors::NoSuchRealtimeLogConfig, Errors::RealtimeLogConfigInUse, Errors::InvalidArgument]),
        data_parser: Parsers::DeleteRealtimeLogConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteRealtimeLogConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_realtime_log_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Deletes a response headers policy.</p>
    # 		       <p>You cannot delete a response headers policy if it’s attached to a cache behavior.
    # 			First update your distributions to remove the response headers policy from all cache
    # 			behaviors, then delete the response headers policy.</p>
    # 		       <p>To delete a response headers policy, you must provide the policy’s identifier and
    # 			version. To get these values, you can use <code>ListResponseHeadersPolicies</code> or
    # 				<code>GetResponseHeadersPolicy</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResponseHeadersPolicyInput}.
    #
    # @option params [String] :id
    #   <p>The identifier for the response headers policy that you are deleting.</p>
    #   		       <p>To get the identifier, you can use <code>ListResponseHeadersPolicies</code>.</p>
    #
    # @option params [String] :if_match
    #   <p>The version of the response headers policy that you are deleting.</p>
    #   		       <p>The version is the response headers policy’s <code>ETag</code> value, which you can
    #   			get using <code>ListResponseHeadersPolicies</code>,
    #   				<code>GetResponseHeadersPolicy</code>, or
    #   				<code>GetResponseHeadersPolicyConfig</code>.</p>
    #
    # @return [Types::DeleteResponseHeadersPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_response_headers_policy(
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteResponseHeadersPolicyOutput
    #
    def delete_response_headers_policy(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::DeleteResponseHeadersPolicyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::DeleteResponseHeadersPolicyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::DeleteResponseHeadersPolicy
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::AccessDenied, Errors::ResponseHeadersPolicyInUse, Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::IllegalDelete, Errors::NoSuchResponseHeadersPolicy]),
        data_parser: Parsers::DeleteResponseHeadersPolicy
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteResponseHeadersPolicy,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_response_headers_policy
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Delete a streaming distribution. To delete an RTMP distribution using the CloudFront API,
    # 			perform the following steps.</p>
    #
    # 		       <p>
    #             <b>To delete an RTMP distribution using the CloudFront
    # 			API</b>:</p>
    # 		       <ol>
    #             <li>
    # 				           <p>Disable the RTMP distribution.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Submit a <code>GET Streaming Distribution Config</code> request to get the current
    # 					configuration and the <code>Etag</code> header for the distribution. </p>
    # 			         </li>
    #             <li>
    # 				           <p>Update the XML document that was returned in the response to your <code>GET
    # 						Streaming Distribution Config</code> request to change the value of <code>Enabled</code>
    # 					to <code>false</code>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Submit a <code>PUT Streaming Distribution Config</code> request to update the
    # 					configuration for your distribution. In the request body, include the XML document that
    # 					you updated in Step 3. Then set the value of the HTTP <code>If-Match</code> header to the
    # 					value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET
    # 						Streaming Distribution Config</code> request in Step 2.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Review the response to the <code>PUT Streaming Distribution Config</code> request
    # 					to confirm that the distribution was successfully disabled.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Submit a <code>GET Streaming Distribution Config</code> request to confirm that
    # 					your changes have propagated. When propagation is complete, the value of
    # 						<code>Status</code> is <code>Deployed</code>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Submit a <code>DELETE Streaming Distribution</code> request. Set the value of the
    # 					HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront
    # 					returned when you submitted the <code>GET Streaming Distribution Config</code> request in
    # 					Step 2.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Review the response to your <code>DELETE Streaming Distribution</code> request to
    # 					confirm that the distribution was successfully deleted.</p>
    # 			         </li>
    #          </ol>
    # 		       <p>For information about deleting a distribution using the CloudFront console, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html">Deleting a Distribution</a> in the
    # 				<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStreamingDistributionInput}.
    #
    # @option params [String] :id
    #   <p>The distribution ID. </p>
    #
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when you disabled the
    #   			streaming distribution. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    # @return [Types::DeleteStreamingDistributionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_streaming_distribution(
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteStreamingDistributionOutput
    #
    def delete_streaming_distribution(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::DeleteStreamingDistributionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::DeleteStreamingDistributionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::DeleteStreamingDistribution
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::AccessDenied, Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::StreamingDistributionNotDisabled, Errors::NoSuchStreamingDistribution]),
        data_parser: Parsers::DeleteStreamingDistribution
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteStreamingDistribution,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_streaming_distribution
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets configuration information and metadata about a CloudFront function, but not the function’s
    # 			code. To get a function’s code, use <code>GetFunction</code>.</p>
    # 		       <p>To get configuration information and metadata about a function, you must provide the
    # 			function’s name and stage. To get these values, you can use
    # 			<code>ListFunctions</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFunctionInput}.
    #
    # @option params [String] :member_name
    #   <p>The name of the function that you are getting information about.</p>
    #
    # @option params [String] :stage
    #   <p>The function’s stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>
    #
    # @return [Types::DescribeFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_function(
    #     member_name: 'Name', # required
    #     stage: 'DEVELOPMENT' # accepts DEVELOPMENT, LIVE
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DescribeFunctionOutput
    #   resp.function_summary #=> Types::FunctionSummary
    #   resp.function_summary.member_name #=> String
    #   resp.function_summary.status #=> String
    #   resp.function_summary.function_config #=> Types::FunctionConfig
    #   resp.function_summary.function_config.comment #=> String
    #   resp.function_summary.function_config.runtime #=> String, one of cloudfront-js-1.0
    #   resp.function_summary.function_metadata #=> Types::FunctionMetadata
    #   resp.function_summary.function_metadata.function_arn #=> String
    #   resp.function_summary.function_metadata.stage #=> String, one of DEVELOPMENT, LIVE
    #   resp.function_summary.function_metadata.created_time #=> Time
    #   resp.function_summary.function_metadata.last_modified_time #=> Time
    #   resp.e_tag #=> String
    #
    def describe_function(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::DescribeFunctionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::DescribeFunctionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::DescribeFunction
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::UnsupportedOperation, Errors::NoSuchFunctionExists]),
        data_parser: Parsers::DescribeFunction
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DescribeFunction,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :describe_function
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a cache policy, including the following metadata:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>The policy’s identifier.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The date and time when the policy was last modified.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>To get a cache policy, you must provide the policy’s identifier. If the cache policy is
    # 			attached to a distribution’s cache behavior, you can get the policy’s identifier using
    # 			<code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is
    # 			not attached to a cache behavior, you can get the identifier using
    # 			<code>ListCachePolicies</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCachePolicyInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier for the cache policy. If the cache policy is attached to a
    #   			distribution’s cache behavior, you can get the policy’s identifier using
    #   			<code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is
    #   			not attached to a cache behavior, you can get the identifier using
    #   			<code>ListCachePolicies</code>.</p>
    #
    # @return [Types::GetCachePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cache_policy(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetCachePolicyOutput
    #   resp.cache_policy #=> Types::CachePolicy
    #   resp.cache_policy.id #=> String
    #   resp.cache_policy.last_modified_time #=> Time
    #   resp.cache_policy.cache_policy_config #=> Types::CachePolicyConfig
    #   resp.cache_policy.cache_policy_config.comment #=> String
    #   resp.cache_policy.cache_policy_config.member_name #=> String
    #   resp.cache_policy.cache_policy_config.default_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.max_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.min_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin #=> Types::ParametersInCacheKeyAndForwardedToOrigin
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_gzip #=> Boolean
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_brotli #=> Boolean
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config #=> Types::CachePolicyHeadersConfig
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.header_behavior #=> String, one of none, whitelist
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers #=> Types::Headers
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items #=> Array<String>
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items[0] #=> String
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config #=> Types::CachePolicyCookiesConfig
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookie_behavior #=> String, one of none, whitelist, allExcept, all
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies #=> Types::CookieNames
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items #=> Array<String>
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items[0] #=> String
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config #=> Types::CachePolicyQueryStringsConfig
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_string_behavior #=> String, one of none, whitelist, allExcept, all
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings #=> Types::QueryStringNames
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items #=> Array<String>
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items[0] #=> String
    #   resp.e_tag #=> String
    #
    def get_cache_policy(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetCachePolicyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetCachePolicyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetCachePolicy
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchCachePolicy]),
        data_parser: Parsers::GetCachePolicy
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetCachePolicy,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_cache_policy
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a cache policy configuration.</p>
    # 		       <p>To get a cache policy configuration, you must provide the policy’s identifier. If the cache
    # 			policy is attached to a distribution’s cache behavior, you can get the policy’s
    # 			identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the
    # 			cache policy is not attached to a cache behavior, you can get the identifier using
    # 			<code>ListCachePolicies</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCachePolicyConfigInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier for the cache policy. If the cache policy is attached to a
    #   			distribution’s cache behavior, you can get the policy’s identifier using
    #   			<code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is
    #   			not attached to a cache behavior, you can get the identifier using
    #   			<code>ListCachePolicies</code>.</p>
    #
    # @return [Types::GetCachePolicyConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cache_policy_config(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetCachePolicyConfigOutput
    #   resp.cache_policy_config #=> Types::CachePolicyConfig
    #   resp.cache_policy_config.comment #=> String
    #   resp.cache_policy_config.member_name #=> String
    #   resp.cache_policy_config.default_ttl #=> Integer
    #   resp.cache_policy_config.max_ttl #=> Integer
    #   resp.cache_policy_config.min_ttl #=> Integer
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin #=> Types::ParametersInCacheKeyAndForwardedToOrigin
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_gzip #=> Boolean
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_brotli #=> Boolean
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config #=> Types::CachePolicyHeadersConfig
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.header_behavior #=> String, one of none, whitelist
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers #=> Types::Headers
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.quantity #=> Integer
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items #=> Array<String>
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items[0] #=> String
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config #=> Types::CachePolicyCookiesConfig
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookie_behavior #=> String, one of none, whitelist, allExcept, all
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies #=> Types::CookieNames
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.quantity #=> Integer
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items #=> Array<String>
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items[0] #=> String
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config #=> Types::CachePolicyQueryStringsConfig
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_string_behavior #=> String, one of none, whitelist, allExcept, all
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings #=> Types::QueryStringNames
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.quantity #=> Integer
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items #=> Array<String>
    #   resp.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items[0] #=> String
    #   resp.e_tag #=> String
    #
    def get_cache_policy_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetCachePolicyConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetCachePolicyConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetCachePolicyConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchCachePolicy]),
        data_parser: Parsers::GetCachePolicyConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetCachePolicyConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_cache_policy_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Get the information about an origin access identity. </p>
    #
    # @param [Hash] params
    #   See {Types::GetCloudFrontOriginAccessIdentityInput}.
    #
    # @option params [String] :id
    #   <p>The identity's ID.</p>
    #
    # @return [Types::GetCloudFrontOriginAccessIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_front_origin_access_identity(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetCloudFrontOriginAccessIdentityOutput
    #   resp.cloud_front_origin_access_identity #=> Types::CloudFrontOriginAccessIdentity
    #   resp.cloud_front_origin_access_identity.id #=> String
    #   resp.cloud_front_origin_access_identity.s3_canonical_user_id #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config #=> Types::CloudFrontOriginAccessIdentityConfig
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.caller_reference #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.comment #=> String
    #   resp.e_tag #=> String
    #
    def get_cloud_front_origin_access_identity(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetCloudFrontOriginAccessIdentityInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetCloudFrontOriginAccessIdentityInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetCloudFrontOriginAccessIdentity
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchCloudFrontOriginAccessIdentity]),
        data_parser: Parsers::GetCloudFrontOriginAccessIdentity
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetCloudFrontOriginAccessIdentity,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_cloud_front_origin_access_identity
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Get the configuration information about an origin access identity. </p>
    #
    # @param [Hash] params
    #   See {Types::GetCloudFrontOriginAccessIdentityConfigInput}.
    #
    # @option params [String] :id
    #   <p>The identity's ID. </p>
    #
    # @return [Types::GetCloudFrontOriginAccessIdentityConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_front_origin_access_identity_config(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetCloudFrontOriginAccessIdentityConfigOutput
    #   resp.cloud_front_origin_access_identity_config #=> Types::CloudFrontOriginAccessIdentityConfig
    #   resp.cloud_front_origin_access_identity_config.caller_reference #=> String
    #   resp.cloud_front_origin_access_identity_config.comment #=> String
    #   resp.e_tag #=> String
    #
    def get_cloud_front_origin_access_identity_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetCloudFrontOriginAccessIdentityConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetCloudFrontOriginAccessIdentityConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetCloudFrontOriginAccessIdentityConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchCloudFrontOriginAccessIdentity]),
        data_parser: Parsers::GetCloudFrontOriginAccessIdentityConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetCloudFrontOriginAccessIdentityConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_cloud_front_origin_access_identity_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Get the information about a distribution.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDistributionInput}.
    #
    # @option params [String] :id
    #   <p>The distribution's ID. If the ID is empty, an empty distribution configuration is returned.</p>
    #
    # @return [Types::GetDistributionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_distribution(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetDistributionOutput
    #   resp.distribution #=> Types::Distribution
    #   resp.distribution.id #=> String
    #   resp.distribution.arn #=> String
    #   resp.distribution.status #=> String
    #   resp.distribution.last_modified_time #=> Time
    #   resp.distribution.in_progress_invalidation_batches #=> Integer
    #   resp.distribution.domain_name #=> String
    #   resp.distribution.active_trusted_signers #=> Types::ActiveTrustedSigners
    #   resp.distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.distribution.active_trusted_signers.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items #=> Array<Signer>
    #   resp.distribution.active_trusted_signers.items[0] #=> Types::Signer
    #   resp.distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids #=> Types::KeyPairIds
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array<String>
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.active_trusted_key_groups #=> Types::ActiveTrustedKeyGroups
    #   resp.distribution.active_trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.active_trusted_key_groups.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items #=> Array<KGKeyPairIds>
    #   resp.distribution.active_trusted_key_groups.items[0] #=> Types::KGKeyPairIds
    #   resp.distribution.active_trusted_key_groups.items[0].key_group_id #=> String
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids #=> Types::KeyPairIds
    #   resp.distribution.distribution_config #=> Types::DistributionConfig
    #   resp.distribution.distribution_config.caller_reference #=> String
    #   resp.distribution.distribution_config.aliases #=> Types::Aliases
    #   resp.distribution.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution.distribution_config.aliases.items #=> Array<String>
    #   resp.distribution.distribution_config.aliases.items[0] #=> String
    #   resp.distribution.distribution_config.default_root_object #=> String
    #   resp.distribution.distribution_config.origins #=> Types::Origins
    #   resp.distribution.distribution_config.origins.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items #=> Array<Origin>
    #   resp.distribution.distribution_config.origins.items[0] #=> Types::Origin
    #   resp.distribution.distribution_config.origins.items[0].id #=> String
    #   resp.distribution.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers #=> Types::CustomHeaders
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items #=> Array<OriginCustomHeader>
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0] #=> Types::OriginCustomHeader
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config #=> Types::S3OriginConfig
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config #=> Types::CustomOriginConfig
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of http-only, match-viewer, https-only
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols #=> Types::OriginSslProtocols
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array<String>
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_attempts #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].origin_shield #=> Types::OriginShield
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution.distribution_config.origin_groups #=> Types::OriginGroups
    #   resp.distribution.distribution_config.origin_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items #=> Array<OriginGroup>
    #   resp.distribution.distribution_config.origin_groups.items[0] #=> Types::OriginGroup
    #   resp.distribution.distribution_config.origin_groups.items[0].id #=> String
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria #=> Types::OriginGroupFailoverCriteria
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes #=> Types::StatusCodes
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items #=> Array<Integer>
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members #=> Types::OriginGroupMembers
    #   resp.distribution.distribution_config.origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items #=> Array<OriginGroupMember>
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items[0] #=> Types::OriginGroupMember
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior #=> Types::DefaultCacheBehavior
    #   resp.distribution.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers #=> Types::TrustedSigners
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods #=> Types::AllowedMethods
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods #=> Types::CachedMethods
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array<LambdaFunctionAssociation>
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0] #=> Types::LambdaFunctionAssociation
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations #=> Types::FunctionAssociations
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items #=> Array<FunctionAssociation>
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0] #=> Types::FunctionAssociation
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values #=> Types::ForwardedValues
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies #=> Types::CookiePreference
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of none, whitelist, all
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names #=> Types::CookieNames
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers #=> Types::Headers
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys #=> Types::QueryStringCacheKeys
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors #=> Types::CacheBehaviors
    #   resp.distribution.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items #=> Array<CacheBehavior>
    #   resp.distribution.distribution_config.cache_behaviors.items[0] #=> Types::CacheBehavior
    #   resp.distribution.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers #=> Types::TrustedSigners
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods #=> Types::AllowedMethods
    #   resp.distribution.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations #=> Types::FunctionAssociations
    #   resp.distribution.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values #=> Types::ForwardedValues
    #   resp.distribution.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses #=> Types::CustomErrorResponses
    #   resp.distribution.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items #=> Array<CustomErrorResponse>
    #   resp.distribution.distribution_config.custom_error_responses.items[0] #=> Types::CustomErrorResponse
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution.distribution_config.comment #=> String
    #   resp.distribution.distribution_config.logging #=> Types::LoggingConfig
    #   resp.distribution.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution.distribution_config.logging.bucket #=> String
    #   resp.distribution.distribution_config.logging.prefix #=> String
    #   resp.distribution.distribution_config.price_class #=> String, one of PriceClass_100, PriceClass_200, PriceClass_All
    #   resp.distribution.distribution_config.enabled #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate #=> Types::ViewerCertificate
    #   resp.distribution.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution.distribution_config.viewer_certificate.ssl_support_method #=> String, one of sni-only, vip, static-ip
    #   resp.distribution.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018, TLSv1.2_2019, TLSv1.2_2021
    #   resp.distribution.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution.distribution_config.viewer_certificate.certificate_source #=> String, one of cloudfront, iam, acm
    #   resp.distribution.distribution_config.restrictions #=> Types::Restrictions
    #   resp.distribution.distribution_config.restrictions.geo_restriction #=> Types::GeoRestriction
    #   resp.distribution.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of blacklist, whitelist, none
    #   resp.distribution.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items #=> Array<String>
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution.distribution_config.web_acl_id #=> String
    #   resp.distribution.distribution_config.http_version #=> String, one of http1.1, http2
    #   resp.distribution.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.distribution.alias_icp_recordals #=> Array<AliasICPRecordal>
    #   resp.distribution.alias_icp_recordals[0] #=> Types::AliasICPRecordal
    #   resp.distribution.alias_icp_recordals[0].cname #=> String
    #   resp.distribution.alias_icp_recordals[0].icp_recordal_status #=> String, one of APPROVED, SUSPENDED, PENDING
    #   resp.e_tag #=> String
    #
    def get_distribution(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetDistributionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetDistributionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetDistribution
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchDistribution]),
        data_parser: Parsers::GetDistribution
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetDistribution,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_distribution
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Get the configuration information about a distribution. </p>
    #
    # @param [Hash] params
    #   See {Types::GetDistributionConfigInput}.
    #
    # @option params [String] :id
    #   <p>The distribution's ID. If the ID is empty, an empty distribution configuration is returned.</p>
    #
    # @return [Types::GetDistributionConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_distribution_config(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetDistributionConfigOutput
    #   resp.distribution_config #=> Types::DistributionConfig
    #   resp.distribution_config.caller_reference #=> String
    #   resp.distribution_config.aliases #=> Types::Aliases
    #   resp.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution_config.aliases.items #=> Array<String>
    #   resp.distribution_config.aliases.items[0] #=> String
    #   resp.distribution_config.default_root_object #=> String
    #   resp.distribution_config.origins #=> Types::Origins
    #   resp.distribution_config.origins.quantity #=> Integer
    #   resp.distribution_config.origins.items #=> Array<Origin>
    #   resp.distribution_config.origins.items[0] #=> Types::Origin
    #   resp.distribution_config.origins.items[0].id #=> String
    #   resp.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution_config.origins.items[0].custom_headers #=> Types::CustomHeaders
    #   resp.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution_config.origins.items[0].custom_headers.items #=> Array<OriginCustomHeader>
    #   resp.distribution_config.origins.items[0].custom_headers.items[0] #=> Types::OriginCustomHeader
    #   resp.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution_config.origins.items[0].s3_origin_config #=> Types::S3OriginConfig
    #   resp.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution_config.origins.items[0].custom_origin_config #=> Types::CustomOriginConfig
    #   resp.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of http-only, match-viewer, https-only
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols #=> Types::OriginSslProtocols
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array<String>
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution_config.origins.items[0].connection_attempts #=> Integer
    #   resp.distribution_config.origins.items[0].connection_timeout #=> Integer
    #   resp.distribution_config.origins.items[0].origin_shield #=> Types::OriginShield
    #   resp.distribution_config.origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution_config.origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution_config.origin_groups #=> Types::OriginGroups
    #   resp.distribution_config.origin_groups.quantity #=> Integer
    #   resp.distribution_config.origin_groups.items #=> Array<OriginGroup>
    #   resp.distribution_config.origin_groups.items[0] #=> Types::OriginGroup
    #   resp.distribution_config.origin_groups.items[0].id #=> String
    #   resp.distribution_config.origin_groups.items[0].failover_criteria #=> Types::OriginGroupFailoverCriteria
    #   resp.distribution_config.origin_groups.items[0].failover_criteria.status_codes #=> Types::StatusCodes
    #   resp.distribution_config.origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items #=> Array<Integer>
    #   resp.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution_config.origin_groups.items[0].members #=> Types::OriginGroupMembers
    #   resp.distribution_config.origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution_config.origin_groups.items[0].members.items #=> Array<OriginGroupMember>
    #   resp.distribution_config.origin_groups.items[0].members.items[0] #=> Types::OriginGroupMember
    #   resp.distribution_config.origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution_config.default_cache_behavior #=> Types::DefaultCacheBehavior
    #   resp.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution_config.default_cache_behavior.trusted_signers #=> Types::TrustedSigners
    #   resp.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.trusted_signers.items #=> Array<String>
    #   resp.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution_config.default_cache_behavior.trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution_config.default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution_config.default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.trusted_key_groups.items #=> Array<String>
    #   resp.distribution_config.default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution_config.default_cache_behavior.allowed_methods #=> Types::AllowedMethods
    #   resp.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.allowed_methods.items #=> Array<String>
    #   resp.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #   resp.distribution_config.default_cache_behavior.allowed_methods.cached_methods #=> Types::CachedMethods
    #   resp.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array<String>
    #   resp.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array<LambdaFunctionAssociation>
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.items[0] #=> Types::LambdaFunctionAssociation
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_config.default_cache_behavior.function_associations #=> Types::FunctionAssociations
    #   resp.distribution_config.default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.function_associations.items #=> Array<FunctionAssociation>
    #   resp.distribution_config.default_cache_behavior.function_associations.items[0] #=> Types::FunctionAssociation
    #   resp.distribution_config.default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution_config.default_cache_behavior.function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution_config.default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution_config.default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution_config.default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution_config.default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution_config.default_cache_behavior.forwarded_values #=> Types::ForwardedValues
    #   resp.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution_config.default_cache_behavior.forwarded_values.cookies #=> Types::CookiePreference
    #   resp.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of none, whitelist, all
    #   resp.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names #=> Types::CookieNames
    #   resp.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array<String>
    #   resp.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_config.default_cache_behavior.forwarded_values.headers #=> Types::Headers
    #   resp.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array<String>
    #   resp.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys #=> Types::QueryStringCacheKeys
    #   resp.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array<String>
    #   resp.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution_config.cache_behaviors #=> Types::CacheBehaviors
    #   resp.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution_config.cache_behaviors.items #=> Array<CacheBehavior>
    #   resp.distribution_config.cache_behaviors.items[0] #=> Types::CacheBehavior
    #   resp.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution_config.cache_behaviors.items[0].trusted_signers #=> Types::TrustedSigners
    #   resp.distribution_config.cache_behaviors.items[0].trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution_config.cache_behaviors.items[0].allowed_methods #=> Types::AllowedMethods
    #   resp.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution_config.cache_behaviors.items[0].lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution_config.cache_behaviors.items[0].function_associations #=> Types::FunctionAssociations
    #   resp.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution_config.cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution_config.cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution_config.cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution_config.cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution_config.cache_behaviors.items[0].forwarded_values #=> Types::ForwardedValues
    #   resp.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution_config.custom_error_responses #=> Types::CustomErrorResponses
    #   resp.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution_config.custom_error_responses.items #=> Array<CustomErrorResponse>
    #   resp.distribution_config.custom_error_responses.items[0] #=> Types::CustomErrorResponse
    #   resp.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution_config.comment #=> String
    #   resp.distribution_config.logging #=> Types::LoggingConfig
    #   resp.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution_config.logging.bucket #=> String
    #   resp.distribution_config.logging.prefix #=> String
    #   resp.distribution_config.price_class #=> String, one of PriceClass_100, PriceClass_200, PriceClass_All
    #   resp.distribution_config.enabled #=> Boolean
    #   resp.distribution_config.viewer_certificate #=> Types::ViewerCertificate
    #   resp.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution_config.viewer_certificate.ssl_support_method #=> String, one of sni-only, vip, static-ip
    #   resp.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018, TLSv1.2_2019, TLSv1.2_2021
    #   resp.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution_config.viewer_certificate.certificate_source #=> String, one of cloudfront, iam, acm
    #   resp.distribution_config.restrictions #=> Types::Restrictions
    #   resp.distribution_config.restrictions.geo_restriction #=> Types::GeoRestriction
    #   resp.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of blacklist, whitelist, none
    #   resp.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution_config.restrictions.geo_restriction.items #=> Array<String>
    #   resp.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution_config.web_acl_id #=> String
    #   resp.distribution_config.http_version #=> String, one of http1.1, http2
    #   resp.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.e_tag #=> String
    #
    def get_distribution_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetDistributionConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetDistributionConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetDistributionConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchDistribution]),
        data_parser: Parsers::GetDistributionConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetDistributionConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_distribution_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Get the field-level encryption configuration information.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFieldLevelEncryptionInput}.
    #
    # @option params [String] :id
    #   <p>Request the ID for the field-level encryption configuration information.</p>
    #
    # @return [Types::GetFieldLevelEncryptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_field_level_encryption(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetFieldLevelEncryptionOutput
    #   resp.field_level_encryption #=> Types::FieldLevelEncryption
    #   resp.field_level_encryption.id #=> String
    #   resp.field_level_encryption.last_modified_time #=> Time
    #   resp.field_level_encryption.field_level_encryption_config #=> Types::FieldLevelEncryptionConfig
    #   resp.field_level_encryption.field_level_encryption_config.caller_reference #=> String
    #   resp.field_level_encryption.field_level_encryption_config.comment #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config #=> Types::QueryArgProfileConfig
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.forward_when_query_arg_profile_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles #=> Types::QueryArgProfiles
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items #=> Array<QueryArgProfile>
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0] #=> Types::QueryArgProfile
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].query_arg #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config #=> Types::ContentTypeProfileConfig
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.forward_when_content_type_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles #=> Types::ContentTypeProfiles
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items #=> Array<ContentTypeProfile>
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0] #=> Types::ContentTypeProfile
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].format #=> String, one of URLEncoded
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].content_type #=> String
    #   resp.e_tag #=> String
    #
    def get_field_level_encryption(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetFieldLevelEncryptionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetFieldLevelEncryptionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetFieldLevelEncryption
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchFieldLevelEncryptionConfig]),
        data_parser: Parsers::GetFieldLevelEncryption
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetFieldLevelEncryption,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_field_level_encryption
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Get the field-level encryption configuration information.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFieldLevelEncryptionConfigInput}.
    #
    # @option params [String] :id
    #   <p>Request the ID for the field-level encryption configuration information.</p>
    #
    # @return [Types::GetFieldLevelEncryptionConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_field_level_encryption_config(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetFieldLevelEncryptionConfigOutput
    #   resp.field_level_encryption_config #=> Types::FieldLevelEncryptionConfig
    #   resp.field_level_encryption_config.caller_reference #=> String
    #   resp.field_level_encryption_config.comment #=> String
    #   resp.field_level_encryption_config.query_arg_profile_config #=> Types::QueryArgProfileConfig
    #   resp.field_level_encryption_config.query_arg_profile_config.forward_when_query_arg_profile_is_unknown #=> Boolean
    #   resp.field_level_encryption_config.query_arg_profile_config.query_arg_profiles #=> Types::QueryArgProfiles
    #   resp.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.quantity #=> Integer
    #   resp.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items #=> Array<QueryArgProfile>
    #   resp.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0] #=> Types::QueryArgProfile
    #   resp.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].query_arg #=> String
    #   resp.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption_config.content_type_profile_config #=> Types::ContentTypeProfileConfig
    #   resp.field_level_encryption_config.content_type_profile_config.forward_when_content_type_is_unknown #=> Boolean
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles #=> Types::ContentTypeProfiles
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.quantity #=> Integer
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.items #=> Array<ContentTypeProfile>
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0] #=> Types::ContentTypeProfile
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].format #=> String, one of URLEncoded
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].content_type #=> String
    #   resp.e_tag #=> String
    #
    def get_field_level_encryption_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetFieldLevelEncryptionConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetFieldLevelEncryptionConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetFieldLevelEncryptionConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchFieldLevelEncryptionConfig]),
        data_parser: Parsers::GetFieldLevelEncryptionConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetFieldLevelEncryptionConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_field_level_encryption_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Get the field-level encryption profile information.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFieldLevelEncryptionProfileInput}.
    #
    # @option params [String] :id
    #   <p>Get the ID for the field-level encryption profile information.</p>
    #
    # @return [Types::GetFieldLevelEncryptionProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_field_level_encryption_profile(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetFieldLevelEncryptionProfileOutput
    #   resp.field_level_encryption_profile #=> Types::FieldLevelEncryptionProfile
    #   resp.field_level_encryption_profile.id #=> String
    #   resp.field_level_encryption_profile.last_modified_time #=> Time
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config #=> Types::FieldLevelEncryptionProfileConfig
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.member_name #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.caller_reference #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.comment #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities #=> Types::EncryptionEntities
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items #=> Array<EncryptionEntity>
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0] #=> Types::EncryptionEntity
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].public_key_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].provider_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns #=> Types::FieldPatterns
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items #=> Array<String>
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items[0] #=> String
    #   resp.e_tag #=> String
    #
    def get_field_level_encryption_profile(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetFieldLevelEncryptionProfileInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetFieldLevelEncryptionProfileInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetFieldLevelEncryptionProfile
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchFieldLevelEncryptionProfile]),
        data_parser: Parsers::GetFieldLevelEncryptionProfile
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetFieldLevelEncryptionProfile,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_field_level_encryption_profile
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Get the field-level encryption profile configuration information.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFieldLevelEncryptionProfileConfigInput}.
    #
    # @option params [String] :id
    #   <p>Get the ID for the field-level encryption profile configuration information.</p>
    #
    # @return [Types::GetFieldLevelEncryptionProfileConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_field_level_encryption_profile_config(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetFieldLevelEncryptionProfileConfigOutput
    #   resp.field_level_encryption_profile_config #=> Types::FieldLevelEncryptionProfileConfig
    #   resp.field_level_encryption_profile_config.member_name #=> String
    #   resp.field_level_encryption_profile_config.caller_reference #=> String
    #   resp.field_level_encryption_profile_config.comment #=> String
    #   resp.field_level_encryption_profile_config.encryption_entities #=> Types::EncryptionEntities
    #   resp.field_level_encryption_profile_config.encryption_entities.quantity #=> Integer
    #   resp.field_level_encryption_profile_config.encryption_entities.items #=> Array<EncryptionEntity>
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0] #=> Types::EncryptionEntity
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].public_key_id #=> String
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].provider_id #=> String
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns #=> Types::FieldPatterns
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.quantity #=> Integer
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items #=> Array<String>
    #   resp.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items[0] #=> String
    #   resp.e_tag #=> String
    #
    def get_field_level_encryption_profile_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetFieldLevelEncryptionProfileConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetFieldLevelEncryptionProfileConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetFieldLevelEncryptionProfileConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchFieldLevelEncryptionProfile]),
        data_parser: Parsers::GetFieldLevelEncryptionProfileConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetFieldLevelEncryptionProfileConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_field_level_encryption_profile_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets the code of a CloudFront function. To get configuration information and metadata about
    # 			a function, use <code>DescribeFunction</code>.</p>
    # 		       <p>To get a function’s code, you must provide the function’s name and stage. To get these
    # 			values, you can use <code>ListFunctions</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFunctionInput}.
    #
    # @option params [String] :member_name
    #   <p>The name of the function whose code you are getting.</p>
    #
    # @option params [String] :stage
    #   <p>The function’s stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>
    #
    # @return [Types::GetFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function(
    #     member_name: 'Name', # required
    #     stage: 'DEVELOPMENT' # accepts DEVELOPMENT, LIVE
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetFunctionOutput
    #   resp.function_code #=> String
    #   resp.e_tag #=> String
    #   resp.content_type #=> String
    #
    def get_function(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetFunctionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetFunctionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetFunction
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::UnsupportedOperation, Errors::NoSuchFunctionExists]),
        data_parser: Parsers::GetFunction
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetFunction,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_function
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Get the information about an invalidation. </p>
    #
    # @param [Hash] params
    #   See {Types::GetInvalidationInput}.
    #
    # @option params [String] :distribution_id
    #   <p>The distribution's ID.</p>
    #
    # @option params [String] :id
    #   <p>The identifier for the invalidation request, for example,
    #   			<code>IDFDVBD632BHDS5</code>.</p>
    #
    # @return [Types::GetInvalidationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_invalidation(
    #     distribution_id: 'DistributionId', # required
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetInvalidationOutput
    #   resp.invalidation #=> Types::Invalidation
    #   resp.invalidation.id #=> String
    #   resp.invalidation.status #=> String
    #   resp.invalidation.create_time #=> Time
    #   resp.invalidation.invalidation_batch #=> Types::InvalidationBatch
    #   resp.invalidation.invalidation_batch.paths #=> Types::Paths
    #   resp.invalidation.invalidation_batch.paths.quantity #=> Integer
    #   resp.invalidation.invalidation_batch.paths.items #=> Array<String>
    #   resp.invalidation.invalidation_batch.paths.items[0] #=> String
    #   resp.invalidation.invalidation_batch.caller_reference #=> String
    #
    def get_invalidation(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetInvalidationInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetInvalidationInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetInvalidation
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchInvalidation, Errors::NoSuchDistribution]),
        data_parser: Parsers::GetInvalidation
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetInvalidation,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_invalidation
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a key group, including the date and time when the key group was last modified.</p>
    # 		       <p>To get a key group, you must provide the key group’s identifier. If the key group is
    # 			referenced in a distribution’s cache behavior, you can get the key group’s identifier
    # 			using <code>ListDistributions</code> or <code>GetDistribution</code>. If the key group
    # 			is not referenced in a cache behavior, you can get the identifier using
    # 			<code>ListKeyGroups</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetKeyGroupInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the key group that you are getting. To get the identifier, use
    #   			<code>ListKeyGroups</code>.</p>
    #
    # @return [Types::GetKeyGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_key_group(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetKeyGroupOutput
    #   resp.key_group #=> Types::KeyGroup
    #   resp.key_group.id #=> String
    #   resp.key_group.last_modified_time #=> Time
    #   resp.key_group.key_group_config #=> Types::KeyGroupConfig
    #   resp.key_group.key_group_config.member_name #=> String
    #   resp.key_group.key_group_config.items #=> Array<String>
    #   resp.key_group.key_group_config.items[0] #=> String
    #   resp.key_group.key_group_config.comment #=> String
    #   resp.e_tag #=> String
    #
    def get_key_group(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetKeyGroupInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetKeyGroupInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetKeyGroup
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::NoSuchResource]),
        data_parser: Parsers::GetKeyGroup
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetKeyGroup,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_key_group
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a key group configuration.</p>
    # 		       <p>To get a key group configuration, you must provide the key group’s identifier. If the
    # 			key group is referenced in a distribution’s cache behavior, you can get the key group’s
    # 			identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the
    # 			key group is not referenced in a cache behavior, you can get the identifier using
    # 			<code>ListKeyGroups</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetKeyGroupConfigInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the key group whose configuration you are getting. To get the
    #   			identifier, use <code>ListKeyGroups</code>.</p>
    #
    # @return [Types::GetKeyGroupConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_key_group_config(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetKeyGroupConfigOutput
    #   resp.key_group_config #=> Types::KeyGroupConfig
    #   resp.key_group_config.member_name #=> String
    #   resp.key_group_config.items #=> Array<String>
    #   resp.key_group_config.items[0] #=> String
    #   resp.key_group_config.comment #=> String
    #   resp.e_tag #=> String
    #
    def get_key_group_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetKeyGroupConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetKeyGroupConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetKeyGroupConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::NoSuchResource]),
        data_parser: Parsers::GetKeyGroupConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetKeyGroupConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_key_group_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets information about whether additional CloudWatch metrics are enabled for the specified
    # 			CloudFront distribution.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMonitoringSubscriptionInput}.
    #
    # @option params [String] :distribution_id
    #   <p>The ID of the distribution that you are getting metrics information for.</p>
    #
    # @return [Types::GetMonitoringSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_monitoring_subscription(
    #     distribution_id: 'DistributionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetMonitoringSubscriptionOutput
    #   resp.monitoring_subscription #=> Types::MonitoringSubscription
    #   resp.monitoring_subscription.realtime_metrics_subscription_config #=> Types::RealtimeMetricsSubscriptionConfig
    #   resp.monitoring_subscription.realtime_metrics_subscription_config.realtime_metrics_subscription_status #=> String, one of Enabled, Disabled
    #
    def get_monitoring_subscription(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetMonitoringSubscriptionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetMonitoringSubscriptionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetMonitoringSubscription
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::UnsupportedOperation, Errors::NoSuchDistribution]),
        data_parser: Parsers::GetMonitoringSubscription
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetMonitoringSubscription,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_monitoring_subscription
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets an origin request policy, including the following metadata:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>The policy’s identifier.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The date and time when the policy was last modified.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>To get an origin request policy, you must provide the policy’s identifier. If the origin
    # 			request policy is attached to a distribution’s cache behavior, you can get the policy’s
    # 			identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the
    # 			origin request policy is not attached to a cache behavior, you can get the identifier
    # 			using <code>ListOriginRequestPolicies</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOriginRequestPolicyInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier for the origin request policy. If the origin request policy is
    #   			attached to a distribution’s cache behavior, you can get the policy’s identifier using
    #   			<code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request
    #   			policy is not attached to a cache behavior, you can get the identifier using
    #   			<code>ListOriginRequestPolicies</code>.</p>
    #
    # @return [Types::GetOriginRequestPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_origin_request_policy(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetOriginRequestPolicyOutput
    #   resp.origin_request_policy #=> Types::OriginRequestPolicy
    #   resp.origin_request_policy.id #=> String
    #   resp.origin_request_policy.last_modified_time #=> Time
    #   resp.origin_request_policy.origin_request_policy_config #=> Types::OriginRequestPolicyConfig
    #   resp.origin_request_policy.origin_request_policy_config.comment #=> String
    #   resp.origin_request_policy.origin_request_policy_config.member_name #=> String
    #   resp.origin_request_policy.origin_request_policy_config.headers_config #=> Types::OriginRequestPolicyHeadersConfig
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.header_behavior #=> String, one of none, whitelist, allViewer, allViewerAndWhitelistCloudFront
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers #=> Types::Headers
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.items #=> Array<String>
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.items[0] #=> String
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config #=> Types::OriginRequestPolicyCookiesConfig
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookie_behavior #=> String, one of none, whitelist, all
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies #=> Types::CookieNames
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.items #=> Array<String>
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.items[0] #=> String
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config #=> Types::OriginRequestPolicyQueryStringsConfig
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_string_behavior #=> String, one of none, whitelist, all
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings #=> Types::QueryStringNames
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items #=> Array<String>
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items[0] #=> String
    #   resp.e_tag #=> String
    #
    def get_origin_request_policy(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetOriginRequestPolicyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetOriginRequestPolicyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetOriginRequestPolicy
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchOriginRequestPolicy]),
        data_parser: Parsers::GetOriginRequestPolicy
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetOriginRequestPolicy,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_origin_request_policy
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets an origin request policy configuration.</p>
    # 		       <p>To get an origin request policy configuration, you must provide the policy’s identifier. If
    # 			the origin request policy is attached to a distribution’s cache behavior, you can get
    # 			the policy’s identifier using <code>ListDistributions</code> or
    # 			<code>GetDistribution</code>. If the origin request policy is not attached to a cache
    # 			behavior, you can get the identifier using
    # 			<code>ListOriginRequestPolicies</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOriginRequestPolicyConfigInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier for the origin request policy. If the origin request policy is
    #   			attached to a distribution’s cache behavior, you can get the policy’s identifier using
    #   			<code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request
    #   			policy is not attached to a cache behavior, you can get the identifier using
    #   			<code>ListOriginRequestPolicies</code>.</p>
    #
    # @return [Types::GetOriginRequestPolicyConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_origin_request_policy_config(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetOriginRequestPolicyConfigOutput
    #   resp.origin_request_policy_config #=> Types::OriginRequestPolicyConfig
    #   resp.origin_request_policy_config.comment #=> String
    #   resp.origin_request_policy_config.member_name #=> String
    #   resp.origin_request_policy_config.headers_config #=> Types::OriginRequestPolicyHeadersConfig
    #   resp.origin_request_policy_config.headers_config.header_behavior #=> String, one of none, whitelist, allViewer, allViewerAndWhitelistCloudFront
    #   resp.origin_request_policy_config.headers_config.headers #=> Types::Headers
    #   resp.origin_request_policy_config.headers_config.headers.quantity #=> Integer
    #   resp.origin_request_policy_config.headers_config.headers.items #=> Array<String>
    #   resp.origin_request_policy_config.headers_config.headers.items[0] #=> String
    #   resp.origin_request_policy_config.cookies_config #=> Types::OriginRequestPolicyCookiesConfig
    #   resp.origin_request_policy_config.cookies_config.cookie_behavior #=> String, one of none, whitelist, all
    #   resp.origin_request_policy_config.cookies_config.cookies #=> Types::CookieNames
    #   resp.origin_request_policy_config.cookies_config.cookies.quantity #=> Integer
    #   resp.origin_request_policy_config.cookies_config.cookies.items #=> Array<String>
    #   resp.origin_request_policy_config.cookies_config.cookies.items[0] #=> String
    #   resp.origin_request_policy_config.query_strings_config #=> Types::OriginRequestPolicyQueryStringsConfig
    #   resp.origin_request_policy_config.query_strings_config.query_string_behavior #=> String, one of none, whitelist, all
    #   resp.origin_request_policy_config.query_strings_config.query_strings #=> Types::QueryStringNames
    #   resp.origin_request_policy_config.query_strings_config.query_strings.quantity #=> Integer
    #   resp.origin_request_policy_config.query_strings_config.query_strings.items #=> Array<String>
    #   resp.origin_request_policy_config.query_strings_config.query_strings.items[0] #=> String
    #   resp.e_tag #=> String
    #
    def get_origin_request_policy_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetOriginRequestPolicyConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetOriginRequestPolicyConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetOriginRequestPolicyConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchOriginRequestPolicy]),
        data_parser: Parsers::GetOriginRequestPolicyConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetOriginRequestPolicyConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_origin_request_policy_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a public key.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPublicKeyInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the public key you are getting.</p>
    #
    # @return [Types::GetPublicKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_public_key(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetPublicKeyOutput
    #   resp.public_key #=> Types::PublicKey
    #   resp.public_key.id #=> String
    #   resp.public_key.created_time #=> Time
    #   resp.public_key.public_key_config #=> Types::PublicKeyConfig
    #   resp.public_key.public_key_config.caller_reference #=> String
    #   resp.public_key.public_key_config.member_name #=> String
    #   resp.public_key.public_key_config.encoded_key #=> String
    #   resp.public_key.public_key_config.comment #=> String
    #   resp.e_tag #=> String
    #
    def get_public_key(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetPublicKeyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetPublicKeyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetPublicKey
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchPublicKey]),
        data_parser: Parsers::GetPublicKey
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetPublicKey,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_public_key
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a public key configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPublicKeyConfigInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the public key whose configuration you are getting.</p>
    #
    # @return [Types::GetPublicKeyConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_public_key_config(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetPublicKeyConfigOutput
    #   resp.public_key_config #=> Types::PublicKeyConfig
    #   resp.public_key_config.caller_reference #=> String
    #   resp.public_key_config.member_name #=> String
    #   resp.public_key_config.encoded_key #=> String
    #   resp.public_key_config.comment #=> String
    #   resp.e_tag #=> String
    #
    def get_public_key_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetPublicKeyConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetPublicKeyConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetPublicKeyConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchPublicKey]),
        data_parser: Parsers::GetPublicKeyConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetPublicKeyConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_public_key_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a real-time log configuration.</p>
    # 		       <p>To get a real-time log configuration, you can provide the configuration’s name or its Amazon
    # 			Resource Name (ARN). You must provide at least one. If you provide both, CloudFront uses the
    # 			name to identify the real-time log configuration to get.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRealtimeLogConfigInput}.
    #
    # @option params [String] :member_name
    #   <p>The name of the real-time log configuration to get.</p>
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration to get.</p>
    #
    # @return [Types::GetRealtimeLogConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_realtime_log_config(
    #     member_name: 'Name',
    #     arn: 'ARN'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetRealtimeLogConfigOutput
    #   resp.realtime_log_config #=> Types::RealtimeLogConfig
    #   resp.realtime_log_config.arn #=> String
    #   resp.realtime_log_config.member_name #=> String
    #   resp.realtime_log_config.sampling_rate #=> Integer
    #   resp.realtime_log_config.end_points #=> Array<EndPoint>
    #   resp.realtime_log_config.end_points[0] #=> Types::EndPoint
    #   resp.realtime_log_config.end_points[0].stream_type #=> String
    #   resp.realtime_log_config.end_points[0].kinesis_stream_config #=> Types::KinesisStreamConfig
    #   resp.realtime_log_config.end_points[0].kinesis_stream_config.role_arn #=> String
    #   resp.realtime_log_config.end_points[0].kinesis_stream_config.stream_arn #=> String
    #   resp.realtime_log_config.fields #=> Array<String>
    #   resp.realtime_log_config.fields[0] #=> String
    #
    def get_realtime_log_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetRealtimeLogConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetRealtimeLogConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetRealtimeLogConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchRealtimeLogConfig, Errors::InvalidArgument]),
        data_parser: Parsers::GetRealtimeLogConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetRealtimeLogConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_realtime_log_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a response headers policy, including metadata (the policy’s identifier and the date and
    # 			time when the policy was last modified).</p>
    # 		       <p>To get a response headers policy, you must provide the policy’s identifier. If the
    # 			response headers policy is attached to a distribution’s cache behavior, you can get the
    # 			policy’s identifier using <code>ListDistributions</code> or
    # 			<code>GetDistribution</code>. If the response headers policy is not attached to a cache
    # 			behavior, you can get the identifier using
    # 			<code>ListResponseHeadersPolicies</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResponseHeadersPolicyInput}.
    #
    # @option params [String] :id
    #   <p>The identifier for the response headers policy.</p>
    #   		       <p>If the response headers policy is attached to a distribution’s cache behavior, you can
    #   			get the policy’s identifier using <code>ListDistributions</code> or
    #   				<code>GetDistribution</code>. If the response headers policy is not attached to a
    #   			cache behavior, you can get the identifier using
    #   				<code>ListResponseHeadersPolicies</code>.</p>
    #
    # @return [Types::GetResponseHeadersPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_response_headers_policy(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetResponseHeadersPolicyOutput
    #   resp.response_headers_policy #=> Types::ResponseHeadersPolicy
    #   resp.response_headers_policy.id #=> String
    #   resp.response_headers_policy.last_modified_time #=> Time
    #   resp.response_headers_policy.response_headers_policy_config #=> Types::ResponseHeadersPolicyConfig
    #   resp.response_headers_policy.response_headers_policy_config.comment #=> String
    #   resp.response_headers_policy.response_headers_policy_config.member_name #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config #=> Types::ResponseHeadersPolicyCorsConfig
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins #=> Types::ResponseHeadersPolicyAccessControlAllowOrigins
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items #=> Array<String>
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers #=> Types::ResponseHeadersPolicyAccessControlAllowHeaders
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items #=> Array<String>
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods #=> Types::ResponseHeadersPolicyAccessControlAllowMethods
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items #=> Array<String>
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items[0] #=> String, one of GET, POST, OPTIONS, PUT, DELETE, PATCH, HEAD, ALL
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_credentials #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers #=> Types::ResponseHeadersPolicyAccessControlExposeHeaders
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items #=> Array<String>
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.origin_override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config #=> Types::ResponseHeadersPolicySecurityHeadersConfig
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection #=> Types::ResponseHeadersPolicyXSSProtection
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.protection #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.mode_block #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.report_uri #=> String
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.frame_options #=> Types::ResponseHeadersPolicyFrameOptions
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.frame_option #=> String, one of DENY, SAMEORIGIN
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy #=> Types::ResponseHeadersPolicyReferrerPolicy
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.referrer_policy #=> String, one of no-referrer, no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy #=> Types::ResponseHeadersPolicyContentSecurityPolicy
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.content_security_policy #=> String
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_type_options #=> Types::ResponseHeadersPolicyContentTypeOptions
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_type_options.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security #=> Types::ResponseHeadersPolicyStrictTransportSecurity
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.include_subdomains #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.preload #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config #=> Types::ResponseHeadersPolicyCustomHeadersConfig
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items #=> Array<ResponseHeadersPolicyCustomHeader>
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0] #=> Types::ResponseHeadersPolicyCustomHeader
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].header #=> String
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].value #=> String
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].override #=> Boolean
    #   resp.e_tag #=> String
    #
    def get_response_headers_policy(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetResponseHeadersPolicyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetResponseHeadersPolicyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetResponseHeadersPolicy
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchResponseHeadersPolicy]),
        data_parser: Parsers::GetResponseHeadersPolicy
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetResponseHeadersPolicy,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_response_headers_policy
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a response headers policy configuration.</p>
    # 		       <p>To get a response headers policy configuration, you must provide the policy’s
    # 			identifier. If the response headers policy is attached to a distribution’s cache
    # 			behavior, you can get the policy’s identifier using <code>ListDistributions</code> or
    # 			<code>GetDistribution</code>. If the response headers policy is not attached to a
    # 			cache behavior, you can get the identifier using
    # 			<code>ListResponseHeadersPolicies</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResponseHeadersPolicyConfigInput}.
    #
    # @option params [String] :id
    #   <p>The identifier for the response headers policy.</p>
    #   		       <p>If the response headers policy is attached to a distribution’s cache behavior, you can
    #   			get the policy’s identifier using <code>ListDistributions</code> or
    #   				<code>GetDistribution</code>. If the response headers policy is not attached to a
    #   			cache behavior, you can get the identifier using
    #   				<code>ListResponseHeadersPolicies</code>.</p>
    #
    # @return [Types::GetResponseHeadersPolicyConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_response_headers_policy_config(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetResponseHeadersPolicyConfigOutput
    #   resp.response_headers_policy_config #=> Types::ResponseHeadersPolicyConfig
    #   resp.response_headers_policy_config.comment #=> String
    #   resp.response_headers_policy_config.member_name #=> String
    #   resp.response_headers_policy_config.cors_config #=> Types::ResponseHeadersPolicyCorsConfig
    #   resp.response_headers_policy_config.cors_config.access_control_allow_origins #=> Types::ResponseHeadersPolicyAccessControlAllowOrigins
    #   resp.response_headers_policy_config.cors_config.access_control_allow_origins.quantity #=> Integer
    #   resp.response_headers_policy_config.cors_config.access_control_allow_origins.items #=> Array<String>
    #   resp.response_headers_policy_config.cors_config.access_control_allow_origins.items[0] #=> String
    #   resp.response_headers_policy_config.cors_config.access_control_allow_headers #=> Types::ResponseHeadersPolicyAccessControlAllowHeaders
    #   resp.response_headers_policy_config.cors_config.access_control_allow_headers.quantity #=> Integer
    #   resp.response_headers_policy_config.cors_config.access_control_allow_headers.items #=> Array<String>
    #   resp.response_headers_policy_config.cors_config.access_control_allow_headers.items[0] #=> String
    #   resp.response_headers_policy_config.cors_config.access_control_allow_methods #=> Types::ResponseHeadersPolicyAccessControlAllowMethods
    #   resp.response_headers_policy_config.cors_config.access_control_allow_methods.quantity #=> Integer
    #   resp.response_headers_policy_config.cors_config.access_control_allow_methods.items #=> Array<String>
    #   resp.response_headers_policy_config.cors_config.access_control_allow_methods.items[0] #=> String, one of GET, POST, OPTIONS, PUT, DELETE, PATCH, HEAD, ALL
    #   resp.response_headers_policy_config.cors_config.access_control_allow_credentials #=> Boolean
    #   resp.response_headers_policy_config.cors_config.access_control_expose_headers #=> Types::ResponseHeadersPolicyAccessControlExposeHeaders
    #   resp.response_headers_policy_config.cors_config.access_control_expose_headers.quantity #=> Integer
    #   resp.response_headers_policy_config.cors_config.access_control_expose_headers.items #=> Array<String>
    #   resp.response_headers_policy_config.cors_config.access_control_expose_headers.items[0] #=> String
    #   resp.response_headers_policy_config.cors_config.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy_config.cors_config.origin_override #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config #=> Types::ResponseHeadersPolicySecurityHeadersConfig
    #   resp.response_headers_policy_config.security_headers_config.xss_protection #=> Types::ResponseHeadersPolicyXSSProtection
    #   resp.response_headers_policy_config.security_headers_config.xss_protection.override #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.xss_protection.protection #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.xss_protection.mode_block #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.xss_protection.report_uri #=> String
    #   resp.response_headers_policy_config.security_headers_config.frame_options #=> Types::ResponseHeadersPolicyFrameOptions
    #   resp.response_headers_policy_config.security_headers_config.frame_options.override #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.frame_options.frame_option #=> String, one of DENY, SAMEORIGIN
    #   resp.response_headers_policy_config.security_headers_config.referrer_policy #=> Types::ResponseHeadersPolicyReferrerPolicy
    #   resp.response_headers_policy_config.security_headers_config.referrer_policy.override #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.referrer_policy.referrer_policy #=> String, one of no-referrer, no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
    #   resp.response_headers_policy_config.security_headers_config.content_security_policy #=> Types::ResponseHeadersPolicyContentSecurityPolicy
    #   resp.response_headers_policy_config.security_headers_config.content_security_policy.override #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.content_security_policy.content_security_policy #=> String
    #   resp.response_headers_policy_config.security_headers_config.content_type_options #=> Types::ResponseHeadersPolicyContentTypeOptions
    #   resp.response_headers_policy_config.security_headers_config.content_type_options.override #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.strict_transport_security #=> Types::ResponseHeadersPolicyStrictTransportSecurity
    #   resp.response_headers_policy_config.security_headers_config.strict_transport_security.override #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.strict_transport_security.include_subdomains #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.strict_transport_security.preload #=> Boolean
    #   resp.response_headers_policy_config.security_headers_config.strict_transport_security.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy_config.custom_headers_config #=> Types::ResponseHeadersPolicyCustomHeadersConfig
    #   resp.response_headers_policy_config.custom_headers_config.quantity #=> Integer
    #   resp.response_headers_policy_config.custom_headers_config.items #=> Array<ResponseHeadersPolicyCustomHeader>
    #   resp.response_headers_policy_config.custom_headers_config.items[0] #=> Types::ResponseHeadersPolicyCustomHeader
    #   resp.response_headers_policy_config.custom_headers_config.items[0].header #=> String
    #   resp.response_headers_policy_config.custom_headers_config.items[0].value #=> String
    #   resp.response_headers_policy_config.custom_headers_config.items[0].override #=> Boolean
    #   resp.e_tag #=> String
    #
    def get_response_headers_policy_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetResponseHeadersPolicyConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetResponseHeadersPolicyConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetResponseHeadersPolicyConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchResponseHeadersPolicy]),
        data_parser: Parsers::GetResponseHeadersPolicyConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetResponseHeadersPolicyConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_response_headers_policy_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets information about a specified RTMP distribution, including the distribution configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStreamingDistributionInput}.
    #
    # @option params [String] :id
    #   <p>The streaming distribution's ID.</p>
    #
    # @return [Types::GetStreamingDistributionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_distribution(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetStreamingDistributionOutput
    #   resp.streaming_distribution #=> Types::StreamingDistribution
    #   resp.streaming_distribution.id #=> String
    #   resp.streaming_distribution.arn #=> String
    #   resp.streaming_distribution.status #=> String
    #   resp.streaming_distribution.last_modified_time #=> Time
    #   resp.streaming_distribution.domain_name #=> String
    #   resp.streaming_distribution.active_trusted_signers #=> Types::ActiveTrustedSigners
    #   resp.streaming_distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.active_trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items #=> Array<Signer>
    #   resp.streaming_distribution.active_trusted_signers.items[0] #=> Types::Signer
    #   resp.streaming_distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids #=> Types::KeyPairIds
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array<String>
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config #=> Types::StreamingDistributionConfig
    #   resp.streaming_distribution.streaming_distribution_config.caller_reference #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin #=> Types::S3Origin
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.domain_name #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution.streaming_distribution_config.aliases #=> Types::Aliases
    #   resp.streaming_distribution.streaming_distribution_config.aliases.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items #=> Array<String>
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.comment #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging #=> Types::StreamingLoggingConfig
    #   resp.streaming_distribution.streaming_distribution_config.logging.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.logging.bucket #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.prefix #=> String
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers #=> Types::TrustedSigners
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items #=> Array<String>
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.price_class #=> String, one of PriceClass_100, PriceClass_200, PriceClass_All
    #   resp.streaming_distribution.streaming_distribution_config.enabled #=> Boolean
    #   resp.e_tag #=> String
    #
    def get_streaming_distribution(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetStreamingDistributionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetStreamingDistributionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetStreamingDistribution
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchStreamingDistribution]),
        data_parser: Parsers::GetStreamingDistribution
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetStreamingDistribution,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_streaming_distribution
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Get the configuration information about a streaming distribution. </p>
    #
    # @param [Hash] params
    #   See {Types::GetStreamingDistributionConfigInput}.
    #
    # @option params [String] :id
    #   <p>The streaming distribution's ID.</p>
    #
    # @return [Types::GetStreamingDistributionConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_distribution_config(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetStreamingDistributionConfigOutput
    #   resp.streaming_distribution_config #=> Types::StreamingDistributionConfig
    #   resp.streaming_distribution_config.caller_reference #=> String
    #   resp.streaming_distribution_config.s3_origin #=> Types::S3Origin
    #   resp.streaming_distribution_config.s3_origin.domain_name #=> String
    #   resp.streaming_distribution_config.s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution_config.aliases #=> Types::Aliases
    #   resp.streaming_distribution_config.aliases.quantity #=> Integer
    #   resp.streaming_distribution_config.aliases.items #=> Array<String>
    #   resp.streaming_distribution_config.aliases.items[0] #=> String
    #   resp.streaming_distribution_config.comment #=> String
    #   resp.streaming_distribution_config.logging #=> Types::StreamingLoggingConfig
    #   resp.streaming_distribution_config.logging.enabled #=> Boolean
    #   resp.streaming_distribution_config.logging.bucket #=> String
    #   resp.streaming_distribution_config.logging.prefix #=> String
    #   resp.streaming_distribution_config.trusted_signers #=> Types::TrustedSigners
    #   resp.streaming_distribution_config.trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution_config.trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution_config.trusted_signers.items #=> Array<String>
    #   resp.streaming_distribution_config.trusted_signers.items[0] #=> String
    #   resp.streaming_distribution_config.price_class #=> String, one of PriceClass_100, PriceClass_200, PriceClass_All
    #   resp.streaming_distribution_config.enabled #=> Boolean
    #   resp.e_tag #=> String
    #
    def get_streaming_distribution_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::GetStreamingDistributionConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::GetStreamingDistributionConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::GetStreamingDistributionConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchStreamingDistribution]),
        data_parser: Parsers::GetStreamingDistributionConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetStreamingDistributionConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_streaming_distribution_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a list of cache policies.</p>
    # 		       <p>You can optionally apply a filter to return only the managed policies created by Amazon Web Services, or
    # 			only the custom policies created in your Amazon Web Services account.</p>
    # 		       <p>You can optionally specify the maximum number of items to receive in the response. If
    # 			the total number of items in the list exceeds the maximum that you specify, or the
    # 			default maximum, the response is paginated. To get the next page of items, send a
    # 			subsequent request that specifies the <code>NextMarker</code> value from the current
    # 			response as the <code>Marker</code> value in the subsequent request.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCachePoliciesInput}.
    #
    # @option params [String] :type
    #   <p>A filter to return only the specified kinds of cache policies. Valid values
    #   			are:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>managed</code> – Returns only the managed policies created by Amazon Web Services.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>custom</code> – Returns only the custom policies created in your Amazon Web Services account.</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			cache policies. The response includes cache policies in the list that occur after the
    #   			marker. To get the next page of the list, set this field’s value to the value of
    #   			<code>NextMarker</code> from the current page’s response.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of cache policies that you want in the response.</p>
    #
    # @return [Types::ListCachePoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cache_policies(
    #     type: 'managed', # accepts managed, custom
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListCachePoliciesOutput
    #   resp.cache_policy_list #=> Types::CachePolicyList
    #   resp.cache_policy_list.next_marker #=> String
    #   resp.cache_policy_list.max_items #=> Integer
    #   resp.cache_policy_list.quantity #=> Integer
    #   resp.cache_policy_list.items #=> Array<CachePolicySummary>
    #   resp.cache_policy_list.items[0] #=> Types::CachePolicySummary
    #   resp.cache_policy_list.items[0].type #=> String, one of managed, custom
    #   resp.cache_policy_list.items[0].cache_policy #=> Types::CachePolicy
    #   resp.cache_policy_list.items[0].cache_policy.id #=> String
    #   resp.cache_policy_list.items[0].cache_policy.last_modified_time #=> Time
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config #=> Types::CachePolicyConfig
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.comment #=> String
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.member_name #=> String
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.default_ttl #=> Integer
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.max_ttl #=> Integer
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.min_ttl #=> Integer
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin #=> Types::ParametersInCacheKeyAndForwardedToOrigin
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_gzip #=> Boolean
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_brotli #=> Boolean
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config #=> Types::CachePolicyHeadersConfig
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.header_behavior #=> String, one of none, whitelist
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers #=> Types::Headers
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.quantity #=> Integer
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items #=> Array<String>
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items[0] #=> String
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config #=> Types::CachePolicyCookiesConfig
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookie_behavior #=> String, one of none, whitelist, allExcept, all
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies #=> Types::CookieNames
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.quantity #=> Integer
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items #=> Array<String>
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items[0] #=> String
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config #=> Types::CachePolicyQueryStringsConfig
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_string_behavior #=> String, one of none, whitelist, allExcept, all
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings #=> Types::QueryStringNames
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.quantity #=> Integer
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items #=> Array<String>
    #   resp.cache_policy_list.items[0].cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items[0] #=> String
    #
    def list_cache_policies(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListCachePoliciesInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListCachePoliciesInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListCachePolicies
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchCachePolicy, Errors::InvalidArgument]),
        data_parser: Parsers::ListCachePolicies
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListCachePolicies,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_cache_policies
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Lists origin access identities.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCloudFrontOriginAccessIdentitiesInput}.
    #
    # @option params [String] :marker
    #   <p>Use this when paginating results to indicate where to begin in your list of origin
    #   			access identities. The results include identities in the list that occur after the marker. To
    #   			get the next page of results, set the <code>Marker</code> to the value of the
    #   				<code>NextMarker</code> from the current page's response (which is also the ID of the last
    #   			identity on that page).</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of origin access identities you want in the response body.
    #   		</p>
    #
    # @return [Types::ListCloudFrontOriginAccessIdentitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cloud_front_origin_access_identities(
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListCloudFrontOriginAccessIdentitiesOutput
    #   resp.cloud_front_origin_access_identity_list #=> Types::CloudFrontOriginAccessIdentityList
    #   resp.cloud_front_origin_access_identity_list.marker #=> String
    #   resp.cloud_front_origin_access_identity_list.next_marker #=> String
    #   resp.cloud_front_origin_access_identity_list.max_items #=> Integer
    #   resp.cloud_front_origin_access_identity_list.is_truncated #=> Boolean
    #   resp.cloud_front_origin_access_identity_list.quantity #=> Integer
    #   resp.cloud_front_origin_access_identity_list.items #=> Array<CloudFrontOriginAccessIdentitySummary>
    #   resp.cloud_front_origin_access_identity_list.items[0] #=> Types::CloudFrontOriginAccessIdentitySummary
    #   resp.cloud_front_origin_access_identity_list.items[0].id #=> String
    #   resp.cloud_front_origin_access_identity_list.items[0].s3_canonical_user_id #=> String
    #   resp.cloud_front_origin_access_identity_list.items[0].comment #=> String
    #
    def list_cloud_front_origin_access_identities(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListCloudFrontOriginAccessIdentitiesInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListCloudFrontOriginAccessIdentitiesInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListCloudFrontOriginAccessIdentities
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::InvalidArgument]),
        data_parser: Parsers::ListCloudFrontOriginAccessIdentities
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListCloudFrontOriginAccessIdentities,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_cloud_front_origin_access_identities
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a list of aliases (also called CNAMEs or alternate domain names) that conflict or
    # 			overlap with the provided alias, and the associated CloudFront distributions and Amazon Web Services
    # 			accounts for each conflicting alias. In the returned list, the distribution and account
    # 			IDs are partially hidden, which allows you to identify the distributions and accounts
    # 			that you own, but helps to protect the information of ones that you don’t own.</p>
    # 		       <p>Use this operation to find aliases that are in use in CloudFront that conflict or overlap
    # 			with the provided alias. For example, if you provide <code>www.example.com</code> as
    # 			input, the returned list can include <code>www.example.com</code> and the overlapping
    # 			wildcard alternate domain name (<code>*.example.com</code>), if they exist. If you
    # 			provide <code>*.example.com</code> as input, the returned list can include
    # 			<code>*.example.com</code> and any alternate domain names covered by that wildcard (for
    # 			example, <code>www.example.com</code>, <code>test.example.com</code>,
    # 			<code>dev.example.com</code>, and so on), if they exist.</p>
    # 		       <p>To list conflicting aliases, you provide the alias to search and the ID of a distribution in
    # 			your account that has an attached SSL/TLS certificate that includes the provided alias.
    # 			For more information, including how to set up the distribution and certificate, see
    # 			<a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move">Moving an alternate domain name to a different distribution</a>
    # 			in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # 		       <p>You can optionally specify the maximum number of items to receive in the response. If
    # 			the total number of items in the list exceeds the maximum that you specify, or the
    # 			default maximum, the response is paginated. To get the next page of items, send a
    # 			subsequent request that specifies the <code>NextMarker</code> value from the current
    # 			response as the <code>Marker</code> value in the subsequent request.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConflictingAliasesInput}.
    #
    # @option params [String] :distribution_id
    #   <p>The ID of a distribution in your account that has an attached SSL/TLS certificate that
    #   			includes the provided alias.</p>
    #
    # @option params [String] :alias
    #   <p>The alias (also called a CNAME) to search for conflicting aliases.</p>
    #
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in the list of
    #   			conflicting aliases. The response includes conflicting aliases in the list that occur
    #   			after the marker. To get the next page of the list, set this field’s value to the value
    #   			of <code>NextMarker</code> from the current page’s response.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of conflicting aliases that you want in the response.</p>
    #
    # @return [Types::ListConflictingAliasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_conflicting_aliases(
    #     distribution_id: 'DistributionId', # required
    #     alias: 'Alias', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListConflictingAliasesOutput
    #   resp.conflicting_aliases_list #=> Types::ConflictingAliasesList
    #   resp.conflicting_aliases_list.next_marker #=> String
    #   resp.conflicting_aliases_list.max_items #=> Integer
    #   resp.conflicting_aliases_list.quantity #=> Integer
    #   resp.conflicting_aliases_list.items #=> Array<ConflictingAlias>
    #   resp.conflicting_aliases_list.items[0] #=> Types::ConflictingAlias
    #   resp.conflicting_aliases_list.items[0].alias #=> String
    #   resp.conflicting_aliases_list.items[0].distribution_id #=> String
    #   resp.conflicting_aliases_list.items[0].account_id #=> String
    #
    def list_conflicting_aliases(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListConflictingAliasesInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListConflictingAliasesInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListConflictingAliases
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::NoSuchDistribution, Errors::InvalidArgument]),
        data_parser: Parsers::ListConflictingAliases
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListConflictingAliases,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_conflicting_aliases
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>List CloudFront distributions.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDistributionsInput}.
    #
    # @option params [String] :marker
    #   <p>Use this when paginating results to indicate where to begin in your list of
    #   			distributions. The results include distributions in the list that occur after the marker. To
    #   			get the next page of results, set the <code>Marker</code> to the value of the
    #   				<code>NextMarker</code> from the current page's response (which is also the ID of the last
    #   			distribution on that page).</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of distributions you want in the response body.</p>
    #
    # @return [Types::ListDistributionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions(
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListDistributionsOutput
    #   resp.distribution_list #=> Types::DistributionList
    #   resp.distribution_list.marker #=> String
    #   resp.distribution_list.next_marker #=> String
    #   resp.distribution_list.max_items #=> Integer
    #   resp.distribution_list.is_truncated #=> Boolean
    #   resp.distribution_list.quantity #=> Integer
    #   resp.distribution_list.items #=> Array<DistributionSummary>
    #   resp.distribution_list.items[0] #=> Types::DistributionSummary
    #   resp.distribution_list.items[0].id #=> String
    #   resp.distribution_list.items[0].arn #=> String
    #   resp.distribution_list.items[0].status #=> String
    #   resp.distribution_list.items[0].last_modified_time #=> Time
    #   resp.distribution_list.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].aliases #=> Types::Aliases
    #   resp.distribution_list.items[0].aliases.quantity #=> Integer
    #   resp.distribution_list.items[0].aliases.items #=> Array<String>
    #   resp.distribution_list.items[0].aliases.items[0] #=> String
    #   resp.distribution_list.items[0].origins #=> Types::Origins
    #   resp.distribution_list.items[0].origins.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items #=> Array<Origin>
    #   resp.distribution_list.items[0].origins.items[0] #=> Types::Origin
    #   resp.distribution_list.items[0].origins.items[0].id #=> String
    #   resp.distribution_list.items[0].origins.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].origin_path #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers #=> Types::CustomHeaders
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items #=> Array<OriginCustomHeader>
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0] #=> Types::OriginCustomHeader
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution_list.items[0].origins.items[0].s3_origin_config #=> Types::S3OriginConfig
    #   resp.distribution_list.items[0].origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config #=> Types::CustomOriginConfig
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of http-only, match-viewer, https-only
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols #=> Types::OriginSslProtocols
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array<String>
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].connection_attempts #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].connection_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].origin_shield #=> Types::OriginShield
    #   resp.distribution_list.items[0].origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution_list.items[0].origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution_list.items[0].origin_groups #=> Types::OriginGroups
    #   resp.distribution_list.items[0].origin_groups.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items #=> Array<OriginGroup>
    #   resp.distribution_list.items[0].origin_groups.items[0] #=> Types::OriginGroup
    #   resp.distribution_list.items[0].origin_groups.items[0].id #=> String
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria #=> Types::OriginGroupFailoverCriteria
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes #=> Types::StatusCodes
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.items #=> Array<Integer>
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].members #=> Types::OriginGroupMembers
    #   resp.distribution_list.items[0].origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].members.items #=> Array<OriginGroupMember>
    #   resp.distribution_list.items[0].origin_groups.items[0].members.items[0] #=> Types::OriginGroupMember
    #   resp.distribution_list.items[0].origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior #=> Types::DefaultCacheBehavior
    #   resp.distribution_list.items[0].default_cache_behavior.target_origin_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers #=> Types::TrustedSigners
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods #=> Types::AllowedMethods
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items[0] #=> String, one of GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods #=> Types::CachedMethods
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.compress #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items #=> Array<LambdaFunctionAssociation>
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0] #=> Types::LambdaFunctionAssociation
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations #=> Types::FunctionAssociations
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items #=> Array<FunctionAssociation>
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items[0] #=> Types::FunctionAssociation
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution_list.items[0].default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values #=> Types::ForwardedValues
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies #=> Types::CookiePreference
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.forward #=> String, one of none, whitelist, all
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names #=> Types::CookieNames
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers #=> Types::Headers
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys #=> Types::QueryStringCacheKeys
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors #=> Types::CacheBehaviors
    #   resp.distribution_list.items[0].cache_behaviors.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items #=> Array<CacheBehavior>
    #   resp.distribution_list.items[0].cache_behaviors.items[0] #=> Types::CacheBehavior
    #   resp.distribution_list.items[0].cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers #=> Types::TrustedSigners
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution_list.items[0].cache_behaviors.items[0].viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods #=> Types::AllowedMethods
    #   resp.distribution_list.items[0].cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution_list.items[0].cache_behaviors.items[0].function_associations #=> Types::FunctionAssociations
    #   resp.distribution_list.items[0].cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values #=> Types::ForwardedValues
    #   resp.distribution_list.items[0].cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses #=> Types::CustomErrorResponses
    #   resp.distribution_list.items[0].custom_error_responses.quantity #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items #=> Array<CustomErrorResponse>
    #   resp.distribution_list.items[0].custom_error_responses.items[0] #=> Types::CustomErrorResponse
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_code #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution_list.items[0].comment #=> String
    #   resp.distribution_list.items[0].price_class #=> String, one of PriceClass_100, PriceClass_200, PriceClass_All
    #   resp.distribution_list.items[0].enabled #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate #=> Types::ViewerCertificate
    #   resp.distribution_list.items[0].viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution_list.items[0].viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution_list.items[0].viewer_certificate.ssl_support_method #=> String, one of sni-only, vip, static-ip
    #   resp.distribution_list.items[0].viewer_certificate.minimum_protocol_version #=> String, one of SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018, TLSv1.2_2019, TLSv1.2_2021
    #   resp.distribution_list.items[0].viewer_certificate.certificate #=> String
    #   resp.distribution_list.items[0].viewer_certificate.certificate_source #=> String, one of cloudfront, iam, acm
    #   resp.distribution_list.items[0].restrictions #=> Types::Restrictions
    #   resp.distribution_list.items[0].restrictions.geo_restriction #=> Types::GeoRestriction
    #   resp.distribution_list.items[0].restrictions.geo_restriction.restriction_type #=> String, one of blacklist, whitelist, none
    #   resp.distribution_list.items[0].restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items #=> Array<String>
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution_list.items[0].web_acl_id #=> String
    #   resp.distribution_list.items[0].http_version #=> String, one of http1.1, http2
    #   resp.distribution_list.items[0].is_ipv6_enabled #=> Boolean
    #   resp.distribution_list.items[0].alias_icp_recordals #=> Array<AliasICPRecordal>
    #   resp.distribution_list.items[0].alias_icp_recordals[0] #=> Types::AliasICPRecordal
    #   resp.distribution_list.items[0].alias_icp_recordals[0].cname #=> String
    #   resp.distribution_list.items[0].alias_icp_recordals[0].icp_recordal_status #=> String, one of APPROVED, SUSPENDED, PENDING
    #
    def list_distributions(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListDistributionsInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListDistributionsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListDistributions
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::InvalidArgument]),
        data_parser: Parsers::ListDistributions
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListDistributions,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_distributions
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a list of distribution IDs for distributions that have a cache behavior that’s
    # 			associated with the specified cache policy.</p>
    # 		       <p>You can optionally specify the maximum number of items to receive in the response. If
    # 			the total number of items in the list exceeds the maximum that you specify, or the
    # 			default maximum, the response is paginated. To get the next page of items, send a
    # 			subsequent request that specifies the <code>NextMarker</code> value from the current
    # 			response as the <code>Marker</code> value in the subsequent request.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDistributionsByCachePolicyIdInput}.
    #
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			distribution IDs. The response includes distribution IDs in the list that occur after
    #   			the marker. To get the next page of the list, set this field’s value to the value of
    #   			<code>NextMarker</code> from the current page’s response.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of distribution IDs that you want in the response.</p>
    #
    # @option params [String] :cache_policy_id
    #   <p>The ID of the cache policy whose associated distribution IDs you want to list.</p>
    #
    # @return [Types::ListDistributionsByCachePolicyIdOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions_by_cache_policy_id(
    #     marker: 'Marker',
    #     max_items: 1,
    #     cache_policy_id: 'CachePolicyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListDistributionsByCachePolicyIdOutput
    #   resp.distribution_id_list #=> Types::DistributionIdList
    #   resp.distribution_id_list.marker #=> String
    #   resp.distribution_id_list.next_marker #=> String
    #   resp.distribution_id_list.max_items #=> Integer
    #   resp.distribution_id_list.is_truncated #=> Boolean
    #   resp.distribution_id_list.quantity #=> Integer
    #   resp.distribution_id_list.items #=> Array<String>
    #   resp.distribution_id_list.items[0] #=> String
    #
    def list_distributions_by_cache_policy_id(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListDistributionsByCachePolicyIdInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListDistributionsByCachePolicyIdInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListDistributionsByCachePolicyId
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchCachePolicy, Errors::InvalidArgument]),
        data_parser: Parsers::ListDistributionsByCachePolicyId
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListDistributionsByCachePolicyId,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_distributions_by_cache_policy_id
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a list of distribution IDs for distributions that have a cache behavior that references
    # 			the specified key group.</p>
    # 		       <p>You can optionally specify the maximum number of items to receive in the response. If
    # 			the total number of items in the list exceeds the maximum that you specify, or the
    # 			default maximum, the response is paginated. To get the next page of items, send a
    # 			subsequent request that specifies the <code>NextMarker</code> value from the current
    # 			response as the <code>Marker</code> value in the subsequent request.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDistributionsByKeyGroupInput}.
    #
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			distribution IDs. The response includes distribution IDs in the list that occur after
    #   			the marker. To get the next page of the list, set this field’s value to the value of
    #   			<code>NextMarker</code> from the current page’s response.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of distribution IDs that you want in the response.</p>
    #
    # @option params [String] :key_group_id
    #   <p>The ID of the key group whose associated distribution IDs you are listing.</p>
    #
    # @return [Types::ListDistributionsByKeyGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions_by_key_group(
    #     marker: 'Marker',
    #     max_items: 1,
    #     key_group_id: 'KeyGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListDistributionsByKeyGroupOutput
    #   resp.distribution_id_list #=> Types::DistributionIdList
    #   resp.distribution_id_list.marker #=> String
    #   resp.distribution_id_list.next_marker #=> String
    #   resp.distribution_id_list.max_items #=> Integer
    #   resp.distribution_id_list.is_truncated #=> Boolean
    #   resp.distribution_id_list.quantity #=> Integer
    #   resp.distribution_id_list.items #=> Array<String>
    #   resp.distribution_id_list.items[0] #=> String
    #
    def list_distributions_by_key_group(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListDistributionsByKeyGroupInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListDistributionsByKeyGroupInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListDistributionsByKeyGroup
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::NoSuchResource, Errors::InvalidArgument]),
        data_parser: Parsers::ListDistributionsByKeyGroup
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListDistributionsByKeyGroup,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_distributions_by_key_group
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a list of distribution IDs for distributions that have a cache behavior that’s
    # 			associated with the specified origin request policy.</p>
    # 		       <p>You can optionally specify the maximum number of items to receive in the response. If
    # 			the total number of items in the list exceeds the maximum that you specify, or the
    # 			default maximum, the response is paginated. To get the next page of items, send a
    # 			subsequent request that specifies the <code>NextMarker</code> value from the current
    # 			response as the <code>Marker</code> value in the subsequent request.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDistributionsByOriginRequestPolicyIdInput}.
    #
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			distribution IDs. The response includes distribution IDs in the list that occur after
    #   			the marker. To get the next page of the list, set this field’s value to the value of
    #   			<code>NextMarker</code> from the current page’s response.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of distribution IDs that you want in the response.</p>
    #
    # @option params [String] :origin_request_policy_id
    #   <p>The ID of the origin request policy whose associated distribution IDs you want to
    #   			list.</p>
    #
    # @return [Types::ListDistributionsByOriginRequestPolicyIdOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions_by_origin_request_policy_id(
    #     marker: 'Marker',
    #     max_items: 1,
    #     origin_request_policy_id: 'OriginRequestPolicyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListDistributionsByOriginRequestPolicyIdOutput
    #   resp.distribution_id_list #=> Types::DistributionIdList
    #   resp.distribution_id_list.marker #=> String
    #   resp.distribution_id_list.next_marker #=> String
    #   resp.distribution_id_list.max_items #=> Integer
    #   resp.distribution_id_list.is_truncated #=> Boolean
    #   resp.distribution_id_list.quantity #=> Integer
    #   resp.distribution_id_list.items #=> Array<String>
    #   resp.distribution_id_list.items[0] #=> String
    #
    def list_distributions_by_origin_request_policy_id(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListDistributionsByOriginRequestPolicyIdInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListDistributionsByOriginRequestPolicyIdInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListDistributionsByOriginRequestPolicyId
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::InvalidArgument, Errors::NoSuchOriginRequestPolicy]),
        data_parser: Parsers::ListDistributionsByOriginRequestPolicyId
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListDistributionsByOriginRequestPolicyId,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_distributions_by_origin_request_policy_id
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a list of distributions that have a cache behavior that’s associated with the specified
    # 			real-time log configuration.</p>
    # 		       <p>You can specify the real-time log configuration by its name or its Amazon Resource Name
    # 			(ARN). You must provide at least one. If you provide both, CloudFront uses the name to
    # 			identify the real-time log configuration to list distributions for.</p>
    # 		       <p>You can optionally specify the maximum number of items to receive in the response. If
    # 			the total number of items in the list exceeds the maximum that you specify, or the
    # 			default maximum, the response is paginated. To get the next page of items, send a
    # 			subsequent request that specifies the <code>NextMarker</code> value from the current
    # 			response as the <code>Marker</code> value in the subsequent request. </p>
    #
    # @param [Hash] params
    #   See {Types::ListDistributionsByRealtimeLogConfigInput}.
    #
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			distributions. The response includes distributions in the list that occur after the
    #   			marker. To get the next page of the list, set this field’s value to the value of
    #   			<code>NextMarker</code> from the current page’s response.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of distributions that you want in the response.</p>
    #
    # @option params [String] :realtime_log_config_name
    #   <p>The name of the real-time log configuration whose associated distributions you want to
    #   			list.</p>
    #
    # @option params [String] :realtime_log_config_arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration whose associated
    #   			distributions you want to list.</p>
    #
    # @return [Types::ListDistributionsByRealtimeLogConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions_by_realtime_log_config(
    #     marker: 'Marker',
    #     max_items: 1,
    #     realtime_log_config_name: 'RealtimeLogConfigName',
    #     realtime_log_config_arn: 'RealtimeLogConfigArn'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListDistributionsByRealtimeLogConfigOutput
    #   resp.distribution_list #=> Types::DistributionList
    #   resp.distribution_list.marker #=> String
    #   resp.distribution_list.next_marker #=> String
    #   resp.distribution_list.max_items #=> Integer
    #   resp.distribution_list.is_truncated #=> Boolean
    #   resp.distribution_list.quantity #=> Integer
    #   resp.distribution_list.items #=> Array<DistributionSummary>
    #   resp.distribution_list.items[0] #=> Types::DistributionSummary
    #   resp.distribution_list.items[0].id #=> String
    #   resp.distribution_list.items[0].arn #=> String
    #   resp.distribution_list.items[0].status #=> String
    #   resp.distribution_list.items[0].last_modified_time #=> Time
    #   resp.distribution_list.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].aliases #=> Types::Aliases
    #   resp.distribution_list.items[0].aliases.quantity #=> Integer
    #   resp.distribution_list.items[0].aliases.items #=> Array<String>
    #   resp.distribution_list.items[0].aliases.items[0] #=> String
    #   resp.distribution_list.items[0].origins #=> Types::Origins
    #   resp.distribution_list.items[0].origins.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items #=> Array<Origin>
    #   resp.distribution_list.items[0].origins.items[0] #=> Types::Origin
    #   resp.distribution_list.items[0].origins.items[0].id #=> String
    #   resp.distribution_list.items[0].origins.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].origin_path #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers #=> Types::CustomHeaders
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items #=> Array<OriginCustomHeader>
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0] #=> Types::OriginCustomHeader
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution_list.items[0].origins.items[0].s3_origin_config #=> Types::S3OriginConfig
    #   resp.distribution_list.items[0].origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config #=> Types::CustomOriginConfig
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of http-only, match-viewer, https-only
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols #=> Types::OriginSslProtocols
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array<String>
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].connection_attempts #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].connection_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].origin_shield #=> Types::OriginShield
    #   resp.distribution_list.items[0].origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution_list.items[0].origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution_list.items[0].origin_groups #=> Types::OriginGroups
    #   resp.distribution_list.items[0].origin_groups.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items #=> Array<OriginGroup>
    #   resp.distribution_list.items[0].origin_groups.items[0] #=> Types::OriginGroup
    #   resp.distribution_list.items[0].origin_groups.items[0].id #=> String
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria #=> Types::OriginGroupFailoverCriteria
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes #=> Types::StatusCodes
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.items #=> Array<Integer>
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].members #=> Types::OriginGroupMembers
    #   resp.distribution_list.items[0].origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].members.items #=> Array<OriginGroupMember>
    #   resp.distribution_list.items[0].origin_groups.items[0].members.items[0] #=> Types::OriginGroupMember
    #   resp.distribution_list.items[0].origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior #=> Types::DefaultCacheBehavior
    #   resp.distribution_list.items[0].default_cache_behavior.target_origin_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers #=> Types::TrustedSigners
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods #=> Types::AllowedMethods
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items[0] #=> String, one of GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods #=> Types::CachedMethods
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.compress #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items #=> Array<LambdaFunctionAssociation>
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0] #=> Types::LambdaFunctionAssociation
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations #=> Types::FunctionAssociations
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items #=> Array<FunctionAssociation>
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items[0] #=> Types::FunctionAssociation
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution_list.items[0].default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values #=> Types::ForwardedValues
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies #=> Types::CookiePreference
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.forward #=> String, one of none, whitelist, all
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names #=> Types::CookieNames
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers #=> Types::Headers
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys #=> Types::QueryStringCacheKeys
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors #=> Types::CacheBehaviors
    #   resp.distribution_list.items[0].cache_behaviors.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items #=> Array<CacheBehavior>
    #   resp.distribution_list.items[0].cache_behaviors.items[0] #=> Types::CacheBehavior
    #   resp.distribution_list.items[0].cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers #=> Types::TrustedSigners
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution_list.items[0].cache_behaviors.items[0].viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods #=> Types::AllowedMethods
    #   resp.distribution_list.items[0].cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution_list.items[0].cache_behaviors.items[0].function_associations #=> Types::FunctionAssociations
    #   resp.distribution_list.items[0].cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values #=> Types::ForwardedValues
    #   resp.distribution_list.items[0].cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses #=> Types::CustomErrorResponses
    #   resp.distribution_list.items[0].custom_error_responses.quantity #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items #=> Array<CustomErrorResponse>
    #   resp.distribution_list.items[0].custom_error_responses.items[0] #=> Types::CustomErrorResponse
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_code #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution_list.items[0].comment #=> String
    #   resp.distribution_list.items[0].price_class #=> String, one of PriceClass_100, PriceClass_200, PriceClass_All
    #   resp.distribution_list.items[0].enabled #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate #=> Types::ViewerCertificate
    #   resp.distribution_list.items[0].viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution_list.items[0].viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution_list.items[0].viewer_certificate.ssl_support_method #=> String, one of sni-only, vip, static-ip
    #   resp.distribution_list.items[0].viewer_certificate.minimum_protocol_version #=> String, one of SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018, TLSv1.2_2019, TLSv1.2_2021
    #   resp.distribution_list.items[0].viewer_certificate.certificate #=> String
    #   resp.distribution_list.items[0].viewer_certificate.certificate_source #=> String, one of cloudfront, iam, acm
    #   resp.distribution_list.items[0].restrictions #=> Types::Restrictions
    #   resp.distribution_list.items[0].restrictions.geo_restriction #=> Types::GeoRestriction
    #   resp.distribution_list.items[0].restrictions.geo_restriction.restriction_type #=> String, one of blacklist, whitelist, none
    #   resp.distribution_list.items[0].restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items #=> Array<String>
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution_list.items[0].web_acl_id #=> String
    #   resp.distribution_list.items[0].http_version #=> String, one of http1.1, http2
    #   resp.distribution_list.items[0].is_ipv6_enabled #=> Boolean
    #   resp.distribution_list.items[0].alias_icp_recordals #=> Array<AliasICPRecordal>
    #   resp.distribution_list.items[0].alias_icp_recordals[0] #=> Types::AliasICPRecordal
    #   resp.distribution_list.items[0].alias_icp_recordals[0].cname #=> String
    #   resp.distribution_list.items[0].alias_icp_recordals[0].icp_recordal_status #=> String, one of APPROVED, SUSPENDED, PENDING
    #
    def list_distributions_by_realtime_log_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListDistributionsByRealtimeLogConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListDistributionsByRealtimeLogConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListDistributionsByRealtimeLogConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::InvalidArgument]),
        data_parser: Parsers::ListDistributionsByRealtimeLogConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListDistributionsByRealtimeLogConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_distributions_by_realtime_log_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a list of distribution IDs for distributions that have a cache behavior that’s
    # 			associated with the specified response headers policy.</p>
    # 		       <p>You can optionally specify the maximum number of items to receive in the response. If
    # 			the total number of items in the list exceeds the maximum that you specify, or the
    # 			default maximum, the response is paginated. To get the next page of items, send a
    # 			subsequent request that specifies the <code>NextMarker</code> value from the current
    # 			response as the <code>Marker</code> value in the subsequent request.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDistributionsByResponseHeadersPolicyIdInput}.
    #
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			distribution IDs. The response includes distribution IDs in the list that occur after
    #   			the marker. To get the next page of the list, set this field’s value to the value of
    #   				<code>NextMarker</code> from the current page’s response.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of distribution IDs that you want to get in the response.</p>
    #
    # @option params [String] :response_headers_policy_id
    #   <p>The ID of the response headers policy whose associated distribution IDs you want to
    #   			list.</p>
    #
    # @return [Types::ListDistributionsByResponseHeadersPolicyIdOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions_by_response_headers_policy_id(
    #     marker: 'Marker',
    #     max_items: 1,
    #     response_headers_policy_id: 'ResponseHeadersPolicyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListDistributionsByResponseHeadersPolicyIdOutput
    #   resp.distribution_id_list #=> Types::DistributionIdList
    #   resp.distribution_id_list.marker #=> String
    #   resp.distribution_id_list.next_marker #=> String
    #   resp.distribution_id_list.max_items #=> Integer
    #   resp.distribution_id_list.is_truncated #=> Boolean
    #   resp.distribution_id_list.quantity #=> Integer
    #   resp.distribution_id_list.items #=> Array<String>
    #   resp.distribution_id_list.items[0] #=> String
    #
    def list_distributions_by_response_headers_policy_id(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListDistributionsByResponseHeadersPolicyIdInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListDistributionsByResponseHeadersPolicyIdInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListDistributionsByResponseHeadersPolicyId
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchResponseHeadersPolicy, Errors::InvalidArgument]),
        data_parser: Parsers::ListDistributionsByResponseHeadersPolicyId
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListDistributionsByResponseHeadersPolicyId,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_distributions_by_response_headers_policy_id
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>List the distributions that are associated with a specified WAF web ACL.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDistributionsByWebACLIdInput}.
    #
    # @option params [String] :marker
    #   <p>Use <code>Marker</code> and <code>MaxItems</code> to control pagination of results. If
    #   			you have more than <code>MaxItems</code> distributions that satisfy the request, the response
    #   			includes a <code>NextMarker</code> element. To get the next page of results, submit another
    #   			request. For the value of <code>Marker</code>, specify the value of <code>NextMarker</code>
    #   			from the last response. (For the first request, omit <code>Marker</code>.) </p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of distributions that you want CloudFront to return in the response body.
    #   			The maximum and default values are both 100.</p>
    #
    # @option params [String] :web_acl_id
    #   <p>The ID of the WAF web ACL that you want to list the associated distributions.
    #   			If you specify "null" for the ID, the request returns a list of the distributions that aren't
    #   			associated with a web ACL.</p>
    #
    # @return [Types::ListDistributionsByWebACLIdOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributions_by_web_acl_id(
    #     marker: 'Marker',
    #     max_items: 1,
    #     web_acl_id: 'WebACLId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListDistributionsByWebACLIdOutput
    #   resp.distribution_list #=> Types::DistributionList
    #   resp.distribution_list.marker #=> String
    #   resp.distribution_list.next_marker #=> String
    #   resp.distribution_list.max_items #=> Integer
    #   resp.distribution_list.is_truncated #=> Boolean
    #   resp.distribution_list.quantity #=> Integer
    #   resp.distribution_list.items #=> Array<DistributionSummary>
    #   resp.distribution_list.items[0] #=> Types::DistributionSummary
    #   resp.distribution_list.items[0].id #=> String
    #   resp.distribution_list.items[0].arn #=> String
    #   resp.distribution_list.items[0].status #=> String
    #   resp.distribution_list.items[0].last_modified_time #=> Time
    #   resp.distribution_list.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].aliases #=> Types::Aliases
    #   resp.distribution_list.items[0].aliases.quantity #=> Integer
    #   resp.distribution_list.items[0].aliases.items #=> Array<String>
    #   resp.distribution_list.items[0].aliases.items[0] #=> String
    #   resp.distribution_list.items[0].origins #=> Types::Origins
    #   resp.distribution_list.items[0].origins.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items #=> Array<Origin>
    #   resp.distribution_list.items[0].origins.items[0] #=> Types::Origin
    #   resp.distribution_list.items[0].origins.items[0].id #=> String
    #   resp.distribution_list.items[0].origins.items[0].domain_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].origin_path #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers #=> Types::CustomHeaders
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items #=> Array<OriginCustomHeader>
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0] #=> Types::OriginCustomHeader
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution_list.items[0].origins.items[0].s3_origin_config #=> Types::S3OriginConfig
    #   resp.distribution_list.items[0].origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config #=> Types::CustomOriginConfig
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of http-only, match-viewer, https-only
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols #=> Types::OriginSslProtocols
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array<String>
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].connection_attempts #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].connection_timeout #=> Integer
    #   resp.distribution_list.items[0].origins.items[0].origin_shield #=> Types::OriginShield
    #   resp.distribution_list.items[0].origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution_list.items[0].origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution_list.items[0].origin_groups #=> Types::OriginGroups
    #   resp.distribution_list.items[0].origin_groups.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items #=> Array<OriginGroup>
    #   resp.distribution_list.items[0].origin_groups.items[0] #=> Types::OriginGroup
    #   resp.distribution_list.items[0].origin_groups.items[0].id #=> String
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria #=> Types::OriginGroupFailoverCriteria
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes #=> Types::StatusCodes
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.items #=> Array<Integer>
    #   resp.distribution_list.items[0].origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].members #=> Types::OriginGroupMembers
    #   resp.distribution_list.items[0].origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution_list.items[0].origin_groups.items[0].members.items #=> Array<OriginGroupMember>
    #   resp.distribution_list.items[0].origin_groups.items[0].members.items[0] #=> Types::OriginGroupMember
    #   resp.distribution_list.items[0].origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior #=> Types::DefaultCacheBehavior
    #   resp.distribution_list.items[0].default_cache_behavior.target_origin_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers #=> Types::TrustedSigners
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods #=> Types::AllowedMethods
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.items[0] #=> String, one of GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods #=> Types::CachedMethods
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.allowed_methods.cached_methods.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.compress #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items #=> Array<LambdaFunctionAssociation>
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0] #=> Types::LambdaFunctionAssociation
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution_list.items[0].default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations #=> Types::FunctionAssociations
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items #=> Array<FunctionAssociation>
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items[0] #=> Types::FunctionAssociation
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution_list.items[0].default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values #=> Types::ForwardedValues
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies #=> Types::CookiePreference
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.forward #=> String, one of none, whitelist, all
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names #=> Types::CookieNames
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers #=> Types::Headers
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys #=> Types::QueryStringCacheKeys
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array<String>
    #   resp.distribution_list.items[0].default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution_list.items[0].default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution_list.items[0].default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors #=> Types::CacheBehaviors
    #   resp.distribution_list.items[0].cache_behaviors.quantity #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items #=> Array<CacheBehavior>
    #   resp.distribution_list.items[0].cache_behaviors.items[0] #=> Types::CacheBehavior
    #   resp.distribution_list.items[0].cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_signers #=> Types::TrustedSigners
    #   resp.distribution_list.items[0].cache_behaviors.items[0].trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution_list.items[0].cache_behaviors.items[0].viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution_list.items[0].cache_behaviors.items[0].allowed_methods #=> Types::AllowedMethods
    #   resp.distribution_list.items[0].cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution_list.items[0].cache_behaviors.items[0].lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution_list.items[0].cache_behaviors.items[0].function_associations #=> Types::FunctionAssociations
    #   resp.distribution_list.items[0].cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution_list.items[0].cache_behaviors.items[0].forwarded_values #=> Types::ForwardedValues
    #   resp.distribution_list.items[0].cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution_list.items[0].cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses #=> Types::CustomErrorResponses
    #   resp.distribution_list.items[0].custom_error_responses.quantity #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items #=> Array<CustomErrorResponse>
    #   resp.distribution_list.items[0].custom_error_responses.items[0] #=> Types::CustomErrorResponse
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].response_code #=> String
    #   resp.distribution_list.items[0].custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution_list.items[0].comment #=> String
    #   resp.distribution_list.items[0].price_class #=> String, one of PriceClass_100, PriceClass_200, PriceClass_All
    #   resp.distribution_list.items[0].enabled #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate #=> Types::ViewerCertificate
    #   resp.distribution_list.items[0].viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution_list.items[0].viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution_list.items[0].viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution_list.items[0].viewer_certificate.ssl_support_method #=> String, one of sni-only, vip, static-ip
    #   resp.distribution_list.items[0].viewer_certificate.minimum_protocol_version #=> String, one of SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018, TLSv1.2_2019, TLSv1.2_2021
    #   resp.distribution_list.items[0].viewer_certificate.certificate #=> String
    #   resp.distribution_list.items[0].viewer_certificate.certificate_source #=> String, one of cloudfront, iam, acm
    #   resp.distribution_list.items[0].restrictions #=> Types::Restrictions
    #   resp.distribution_list.items[0].restrictions.geo_restriction #=> Types::GeoRestriction
    #   resp.distribution_list.items[0].restrictions.geo_restriction.restriction_type #=> String, one of blacklist, whitelist, none
    #   resp.distribution_list.items[0].restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items #=> Array<String>
    #   resp.distribution_list.items[0].restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution_list.items[0].web_acl_id #=> String
    #   resp.distribution_list.items[0].http_version #=> String, one of http1.1, http2
    #   resp.distribution_list.items[0].is_ipv6_enabled #=> Boolean
    #   resp.distribution_list.items[0].alias_icp_recordals #=> Array<AliasICPRecordal>
    #   resp.distribution_list.items[0].alias_icp_recordals[0] #=> Types::AliasICPRecordal
    #   resp.distribution_list.items[0].alias_icp_recordals[0].cname #=> String
    #   resp.distribution_list.items[0].alias_icp_recordals[0].icp_recordal_status #=> String, one of APPROVED, SUSPENDED, PENDING
    #
    def list_distributions_by_web_acl_id(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListDistributionsByWebACLIdInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListDistributionsByWebACLIdInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListDistributionsByWebACLId
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::InvalidWebACLId, Errors::InvalidArgument]),
        data_parser: Parsers::ListDistributionsByWebACLId
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListDistributionsByWebACLId,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_distributions_by_web_acl_id
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>List all field-level encryption configurations that have been created in CloudFront for this account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFieldLevelEncryptionConfigsInput}.
    #
    # @option params [String] :marker
    #   <p>Use this when paginating results to indicate where to begin in your list of configurations. The results include configurations in the list that
    #   			occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the
    #   			<code>NextMarker</code> from the current page's response (which is also the ID of the last configuration on that page). </p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of field-level encryption configurations you want in the response body. </p>
    #
    # @return [Types::ListFieldLevelEncryptionConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_field_level_encryption_configs(
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListFieldLevelEncryptionConfigsOutput
    #   resp.field_level_encryption_list #=> Types::FieldLevelEncryptionList
    #   resp.field_level_encryption_list.next_marker #=> String
    #   resp.field_level_encryption_list.max_items #=> Integer
    #   resp.field_level_encryption_list.quantity #=> Integer
    #   resp.field_level_encryption_list.items #=> Array<FieldLevelEncryptionSummary>
    #   resp.field_level_encryption_list.items[0] #=> Types::FieldLevelEncryptionSummary
    #   resp.field_level_encryption_list.items[0].id #=> String
    #   resp.field_level_encryption_list.items[0].last_modified_time #=> Time
    #   resp.field_level_encryption_list.items[0].comment #=> String
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config #=> Types::QueryArgProfileConfig
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.forward_when_query_arg_profile_is_unknown #=> Boolean
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.query_arg_profiles #=> Types::QueryArgProfiles
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.query_arg_profiles.quantity #=> Integer
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.query_arg_profiles.items #=> Array<QueryArgProfile>
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.query_arg_profiles.items[0] #=> Types::QueryArgProfile
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.query_arg_profiles.items[0].query_arg #=> String
    #   resp.field_level_encryption_list.items[0].query_arg_profile_config.query_arg_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption_list.items[0].content_type_profile_config #=> Types::ContentTypeProfileConfig
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.forward_when_content_type_is_unknown #=> Boolean
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles #=> Types::ContentTypeProfiles
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.quantity #=> Integer
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.items #=> Array<ContentTypeProfile>
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.items[0] #=> Types::ContentTypeProfile
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.items[0].format #=> String, one of URLEncoded
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption_list.items[0].content_type_profile_config.content_type_profiles.items[0].content_type #=> String
    #
    def list_field_level_encryption_configs(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListFieldLevelEncryptionConfigsInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListFieldLevelEncryptionConfigsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListFieldLevelEncryptionConfigs
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::InvalidArgument]),
        data_parser: Parsers::ListFieldLevelEncryptionConfigs
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListFieldLevelEncryptionConfigs,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_field_level_encryption_configs
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Request a list of field-level encryption profiles that have been created in CloudFront for this account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFieldLevelEncryptionProfilesInput}.
    #
    # @option params [String] :marker
    #   <p>Use this when paginating results to indicate where to begin in your list of profiles. The results include profiles in the list that
    #   			occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the
    #   			<code>NextMarker</code> from the current page's response (which is also the ID of the last profile on that page). </p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of field-level encryption profiles you want in the response body. </p>
    #
    # @return [Types::ListFieldLevelEncryptionProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_field_level_encryption_profiles(
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListFieldLevelEncryptionProfilesOutput
    #   resp.field_level_encryption_profile_list #=> Types::FieldLevelEncryptionProfileList
    #   resp.field_level_encryption_profile_list.next_marker #=> String
    #   resp.field_level_encryption_profile_list.max_items #=> Integer
    #   resp.field_level_encryption_profile_list.quantity #=> Integer
    #   resp.field_level_encryption_profile_list.items #=> Array<FieldLevelEncryptionProfileSummary>
    #   resp.field_level_encryption_profile_list.items[0] #=> Types::FieldLevelEncryptionProfileSummary
    #   resp.field_level_encryption_profile_list.items[0].id #=> String
    #   resp.field_level_encryption_profile_list.items[0].last_modified_time #=> Time
    #   resp.field_level_encryption_profile_list.items[0].member_name #=> String
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities #=> Types::EncryptionEntities
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.quantity #=> Integer
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items #=> Array<EncryptionEntity>
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0] #=> Types::EncryptionEntity
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].public_key_id #=> String
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].provider_id #=> String
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].field_patterns #=> Types::FieldPatterns
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].field_patterns.quantity #=> Integer
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].field_patterns.items #=> Array<String>
    #   resp.field_level_encryption_profile_list.items[0].encryption_entities.items[0].field_patterns.items[0] #=> String
    #   resp.field_level_encryption_profile_list.items[0].comment #=> String
    #
    def list_field_level_encryption_profiles(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListFieldLevelEncryptionProfilesInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListFieldLevelEncryptionProfilesInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListFieldLevelEncryptionProfiles
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::InvalidArgument]),
        data_parser: Parsers::ListFieldLevelEncryptionProfiles
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListFieldLevelEncryptionProfiles,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_field_level_encryption_profiles
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a list of all CloudFront functions in your Amazon Web Services account.</p>
    # 		       <p>You can optionally apply a filter to return only the functions that are in the
    # 			specified stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>
    # 		       <p>You can optionally specify the maximum number of items to receive in the response. If
    # 			the total number of items in the list exceeds the maximum that you specify, or the
    # 			default maximum, the response is paginated. To get the next page of items, send a
    # 			subsequent request that specifies the <code>NextMarker</code> value from the current
    # 			response as the <code>Marker</code> value in the subsequent request.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFunctionsInput}.
    #
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			functions. The response includes functions in the list that occur after the marker. To
    #   			get the next page of the list, set this field’s value to the value of
    #   			<code>NextMarker</code> from the current page’s response.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of functions that you want in the response.</p>
    #
    # @option params [String] :stage
    #   <p>An optional filter to return only the functions that are in the specified stage,
    #   			either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>
    #
    # @return [Types::ListFunctionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_functions(
    #     marker: 'Marker',
    #     max_items: 1,
    #     stage: 'DEVELOPMENT' # accepts DEVELOPMENT, LIVE
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListFunctionsOutput
    #   resp.function_list #=> Types::FunctionList
    #   resp.function_list.next_marker #=> String
    #   resp.function_list.max_items #=> Integer
    #   resp.function_list.quantity #=> Integer
    #   resp.function_list.items #=> Array<FunctionSummary>
    #   resp.function_list.items[0] #=> Types::FunctionSummary
    #   resp.function_list.items[0].member_name #=> String
    #   resp.function_list.items[0].status #=> String
    #   resp.function_list.items[0].function_config #=> Types::FunctionConfig
    #   resp.function_list.items[0].function_config.comment #=> String
    #   resp.function_list.items[0].function_config.runtime #=> String, one of cloudfront-js-1.0
    #   resp.function_list.items[0].function_metadata #=> Types::FunctionMetadata
    #   resp.function_list.items[0].function_metadata.function_arn #=> String
    #   resp.function_list.items[0].function_metadata.stage #=> String, one of DEVELOPMENT, LIVE
    #   resp.function_list.items[0].function_metadata.created_time #=> Time
    #   resp.function_list.items[0].function_metadata.last_modified_time #=> Time
    #
    def list_functions(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListFunctionsInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListFunctionsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListFunctions
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::UnsupportedOperation, Errors::InvalidArgument]),
        data_parser: Parsers::ListFunctions
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListFunctions,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_functions
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Lists invalidation batches. </p>
    #
    # @param [Hash] params
    #   See {Types::ListInvalidationsInput}.
    #
    # @option params [String] :distribution_id
    #   <p>The distribution's ID.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter when paginating results to indicate where to begin in your list of
    #   			invalidation batches. Because the results are returned in decreasing order from most recent to
    #   			oldest, the most recent results are on the first page, the second page will contain earlier
    #   			results, and so on. To get the next page of results, set <code>Marker</code> to the value of
    #   			the <code>NextMarker</code> from the current page's response. This value is the same as the ID
    #   			of the last invalidation batch on that page. </p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of invalidation batches that you want in the response
    #   			body.</p>
    #
    # @return [Types::ListInvalidationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invalidations(
    #     distribution_id: 'DistributionId', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListInvalidationsOutput
    #   resp.invalidation_list #=> Types::InvalidationList
    #   resp.invalidation_list.marker #=> String
    #   resp.invalidation_list.next_marker #=> String
    #   resp.invalidation_list.max_items #=> Integer
    #   resp.invalidation_list.is_truncated #=> Boolean
    #   resp.invalidation_list.quantity #=> Integer
    #   resp.invalidation_list.items #=> Array<InvalidationSummary>
    #   resp.invalidation_list.items[0] #=> Types::InvalidationSummary
    #   resp.invalidation_list.items[0].id #=> String
    #   resp.invalidation_list.items[0].create_time #=> Time
    #   resp.invalidation_list.items[0].status #=> String
    #
    def list_invalidations(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListInvalidationsInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListInvalidationsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListInvalidations
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchDistribution, Errors::InvalidArgument]),
        data_parser: Parsers::ListInvalidations
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListInvalidations,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_invalidations
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a list of key groups.</p>
    # 		       <p>You can optionally specify the maximum number of items to receive in the response. If
    # 			the total number of items in the list exceeds the maximum that you specify, or the
    # 			default maximum, the response is paginated. To get the next page of items, send a
    # 			subsequent request that specifies the <code>NextMarker</code> value from the current
    # 			response as the <code>Marker</code> value in the subsequent request.</p>
    #
    # @param [Hash] params
    #   See {Types::ListKeyGroupsInput}.
    #
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of key
    #   			groups. The response includes key groups in the list that occur after the marker. To get
    #   			the next page of the list, set this field’s value to the value of
    #   			<code>NextMarker</code> from the current page’s response.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of key groups that you want in the response.</p>
    #
    # @return [Types::ListKeyGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_key_groups(
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListKeyGroupsOutput
    #   resp.key_group_list #=> Types::KeyGroupList
    #   resp.key_group_list.next_marker #=> String
    #   resp.key_group_list.max_items #=> Integer
    #   resp.key_group_list.quantity #=> Integer
    #   resp.key_group_list.items #=> Array<KeyGroupSummary>
    #   resp.key_group_list.items[0] #=> Types::KeyGroupSummary
    #   resp.key_group_list.items[0].key_group #=> Types::KeyGroup
    #   resp.key_group_list.items[0].key_group.id #=> String
    #   resp.key_group_list.items[0].key_group.last_modified_time #=> Time
    #   resp.key_group_list.items[0].key_group.key_group_config #=> Types::KeyGroupConfig
    #   resp.key_group_list.items[0].key_group.key_group_config.member_name #=> String
    #   resp.key_group_list.items[0].key_group.key_group_config.items #=> Array<String>
    #   resp.key_group_list.items[0].key_group.key_group_config.items[0] #=> String
    #   resp.key_group_list.items[0].key_group.key_group_config.comment #=> String
    #
    def list_key_groups(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListKeyGroupsInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListKeyGroupsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListKeyGroups
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::InvalidArgument]),
        data_parser: Parsers::ListKeyGroups
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListKeyGroups,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_key_groups
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a list of origin request policies.</p>
    # 		       <p>You can optionally apply a filter to return only the managed policies created by Amazon Web Services, or
    # 			only the custom policies created in your Amazon Web Services account.</p>
    # 		       <p>You can optionally specify the maximum number of items to receive in the response. If
    # 			the total number of items in the list exceeds the maximum that you specify, or the
    # 			default maximum, the response is paginated. To get the next page of items, send a
    # 			subsequent request that specifies the <code>NextMarker</code> value from the current
    # 			response as the <code>Marker</code> value in the subsequent request.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOriginRequestPoliciesInput}.
    #
    # @option params [String] :type
    #   <p>A filter to return only the specified kinds of origin request policies. Valid values
    #   			are:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>managed</code> – Returns only the managed policies created by Amazon Web Services.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>custom</code> – Returns only the custom policies created in your Amazon Web Services account.</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			origin request policies. The response includes origin request policies in the list that
    #   			occur after the marker. To get the next page of the list, set this field’s value to the
    #   			value of <code>NextMarker</code> from the current page’s response.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of origin request policies that you want in the response.</p>
    #
    # @return [Types::ListOriginRequestPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_origin_request_policies(
    #     type: 'managed', # accepts managed, custom
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListOriginRequestPoliciesOutput
    #   resp.origin_request_policy_list #=> Types::OriginRequestPolicyList
    #   resp.origin_request_policy_list.next_marker #=> String
    #   resp.origin_request_policy_list.max_items #=> Integer
    #   resp.origin_request_policy_list.quantity #=> Integer
    #   resp.origin_request_policy_list.items #=> Array<OriginRequestPolicySummary>
    #   resp.origin_request_policy_list.items[0] #=> Types::OriginRequestPolicySummary
    #   resp.origin_request_policy_list.items[0].type #=> String, one of managed, custom
    #   resp.origin_request_policy_list.items[0].origin_request_policy #=> Types::OriginRequestPolicy
    #   resp.origin_request_policy_list.items[0].origin_request_policy.id #=> String
    #   resp.origin_request_policy_list.items[0].origin_request_policy.last_modified_time #=> Time
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config #=> Types::OriginRequestPolicyConfig
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.comment #=> String
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.member_name #=> String
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.headers_config #=> Types::OriginRequestPolicyHeadersConfig
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.headers_config.header_behavior #=> String, one of none, whitelist, allViewer, allViewerAndWhitelistCloudFront
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.headers_config.headers #=> Types::Headers
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.headers_config.headers.quantity #=> Integer
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.headers_config.headers.items #=> Array<String>
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.headers_config.headers.items[0] #=> String
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.cookies_config #=> Types::OriginRequestPolicyCookiesConfig
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.cookies_config.cookie_behavior #=> String, one of none, whitelist, all
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.cookies_config.cookies #=> Types::CookieNames
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.cookies_config.cookies.quantity #=> Integer
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.cookies_config.cookies.items #=> Array<String>
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.cookies_config.cookies.items[0] #=> String
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.query_strings_config #=> Types::OriginRequestPolicyQueryStringsConfig
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.query_strings_config.query_string_behavior #=> String, one of none, whitelist, all
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.query_strings_config.query_strings #=> Types::QueryStringNames
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.quantity #=> Integer
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items #=> Array<String>
    #   resp.origin_request_policy_list.items[0].origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items[0] #=> String
    #
    def list_origin_request_policies(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListOriginRequestPoliciesInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListOriginRequestPoliciesInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListOriginRequestPolicies
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::InvalidArgument, Errors::NoSuchOriginRequestPolicy]),
        data_parser: Parsers::ListOriginRequestPolicies
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListOriginRequestPolicies,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_origin_request_policies
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>List all public keys that have been added to CloudFront for this account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPublicKeysInput}.
    #
    # @option params [String] :marker
    #   <p>Use this when paginating results to indicate where to begin in your list of public keys. The results include public keys in the list that
    #   			occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the
    #   			<code>NextMarker</code> from the current page's response (which is also the ID of the last public key on that page). </p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of public keys you want in the response body. </p>
    #
    # @return [Types::ListPublicKeysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_public_keys(
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListPublicKeysOutput
    #   resp.public_key_list #=> Types::PublicKeyList
    #   resp.public_key_list.next_marker #=> String
    #   resp.public_key_list.max_items #=> Integer
    #   resp.public_key_list.quantity #=> Integer
    #   resp.public_key_list.items #=> Array<PublicKeySummary>
    #   resp.public_key_list.items[0] #=> Types::PublicKeySummary
    #   resp.public_key_list.items[0].id #=> String
    #   resp.public_key_list.items[0].member_name #=> String
    #   resp.public_key_list.items[0].created_time #=> Time
    #   resp.public_key_list.items[0].encoded_key #=> String
    #   resp.public_key_list.items[0].comment #=> String
    #
    def list_public_keys(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListPublicKeysInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListPublicKeysInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListPublicKeys
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::InvalidArgument]),
        data_parser: Parsers::ListPublicKeys
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListPublicKeys,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_public_keys
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a list of real-time log configurations.</p>
    # 		       <p>You can optionally specify the maximum number of items to receive in the response. If
    # 			the total number of items in the list exceeds the maximum that you specify, or the
    # 			default maximum, the response is paginated. To get the next page of items, send a
    # 			subsequent request that specifies the <code>NextMarker</code> value from the current
    # 			response as the <code>Marker</code> value in the subsequent request. </p>
    #
    # @param [Hash] params
    #   See {Types::ListRealtimeLogConfigsInput}.
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of real-time log configurations that you want in the response.</p>
    #
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of real-time
    #   			log configurations. The response includes real-time log configurations in the list that
    #   			occur after the marker. To get the next page of the list, set this field’s value to the
    #   			value of <code>NextMarker</code> from the current page’s response.</p>
    #
    # @return [Types::ListRealtimeLogConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_realtime_log_configs(
    #     max_items: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListRealtimeLogConfigsOutput
    #   resp.realtime_log_configs #=> Types::RealtimeLogConfigs
    #   resp.realtime_log_configs.max_items #=> Integer
    #   resp.realtime_log_configs.items #=> Array<RealtimeLogConfig>
    #   resp.realtime_log_configs.items[0] #=> Types::RealtimeLogConfig
    #   resp.realtime_log_configs.items[0].arn #=> String
    #   resp.realtime_log_configs.items[0].member_name #=> String
    #   resp.realtime_log_configs.items[0].sampling_rate #=> Integer
    #   resp.realtime_log_configs.items[0].end_points #=> Array<EndPoint>
    #   resp.realtime_log_configs.items[0].end_points[0] #=> Types::EndPoint
    #   resp.realtime_log_configs.items[0].end_points[0].stream_type #=> String
    #   resp.realtime_log_configs.items[0].end_points[0].kinesis_stream_config #=> Types::KinesisStreamConfig
    #   resp.realtime_log_configs.items[0].end_points[0].kinesis_stream_config.role_arn #=> String
    #   resp.realtime_log_configs.items[0].end_points[0].kinesis_stream_config.stream_arn #=> String
    #   resp.realtime_log_configs.items[0].fields #=> Array<String>
    #   resp.realtime_log_configs.items[0].fields[0] #=> String
    #   resp.realtime_log_configs.is_truncated #=> Boolean
    #   resp.realtime_log_configs.marker #=> String
    #   resp.realtime_log_configs.next_marker #=> String
    #
    def list_realtime_log_configs(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListRealtimeLogConfigsInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListRealtimeLogConfigsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListRealtimeLogConfigs
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchRealtimeLogConfig, Errors::InvalidArgument]),
        data_parser: Parsers::ListRealtimeLogConfigs
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListRealtimeLogConfigs,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_realtime_log_configs
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Gets a list of response headers policies.</p>
    # 		       <p>You can optionally apply a filter to get only the managed policies created by Amazon Web Services,
    # 			or only the custom policies created in your Amazon Web Services account.</p>
    # 		       <p>You can optionally specify the maximum number of items to receive in the response. If
    # 			the total number of items in the list exceeds the maximum that you specify, or the
    # 			default maximum, the response is paginated. To get the next page of items, send a
    # 			subsequent request that specifies the <code>NextMarker</code> value from the current
    # 			response as the <code>Marker</code> value in the subsequent request.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResponseHeadersPoliciesInput}.
    #
    # @option params [String] :type
    #   <p>A filter to get only the specified kind of response headers policies. Valid values
    #   			are:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>managed</code> – Gets only the managed policies created by Amazon Web Services.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>custom</code> – Gets only the custom policies created in your
    #   					Amazon Web Services account.</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [String] :marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of response
    #   			headers policies. The response includes response headers policies in the list that occur
    #   			after the marker. To get the next page of the list, set this field’s value to the value
    #   			of <code>NextMarker</code> from the current page’s response. </p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of response headers policies that you want to get in the response.</p>
    #
    # @return [Types::ListResponseHeadersPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_response_headers_policies(
    #     type: 'managed', # accepts managed, custom
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListResponseHeadersPoliciesOutput
    #   resp.response_headers_policy_list #=> Types::ResponseHeadersPolicyList
    #   resp.response_headers_policy_list.next_marker #=> String
    #   resp.response_headers_policy_list.max_items #=> Integer
    #   resp.response_headers_policy_list.quantity #=> Integer
    #   resp.response_headers_policy_list.items #=> Array<ResponseHeadersPolicySummary>
    #   resp.response_headers_policy_list.items[0] #=> Types::ResponseHeadersPolicySummary
    #   resp.response_headers_policy_list.items[0].type #=> String, one of managed, custom
    #   resp.response_headers_policy_list.items[0].response_headers_policy #=> Types::ResponseHeadersPolicy
    #   resp.response_headers_policy_list.items[0].response_headers_policy.id #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.last_modified_time #=> Time
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config #=> Types::ResponseHeadersPolicyConfig
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.comment #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.member_name #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config #=> Types::ResponseHeadersPolicyCorsConfig
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins #=> Types::ResponseHeadersPolicyAccessControlAllowOrigins
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.quantity #=> Integer
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items #=> Array<String>
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items[0] #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers #=> Types::ResponseHeadersPolicyAccessControlAllowHeaders
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.quantity #=> Integer
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items #=> Array<String>
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items[0] #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods #=> Types::ResponseHeadersPolicyAccessControlAllowMethods
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.quantity #=> Integer
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items #=> Array<String>
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items[0] #=> String, one of GET, POST, OPTIONS, PUT, DELETE, PATCH, HEAD, ALL
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_credentials #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers #=> Types::ResponseHeadersPolicyAccessControlExposeHeaders
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.quantity #=> Integer
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items #=> Array<String>
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items[0] #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.cors_config.origin_override #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config #=> Types::ResponseHeadersPolicySecurityHeadersConfig
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection #=> Types::ResponseHeadersPolicyXSSProtection
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.override #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.protection #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.mode_block #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.report_uri #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.frame_options #=> Types::ResponseHeadersPolicyFrameOptions
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.override #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.frame_option #=> String, one of DENY, SAMEORIGIN
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy #=> Types::ResponseHeadersPolicyReferrerPolicy
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.override #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.referrer_policy #=> String, one of no-referrer, no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy #=> Types::ResponseHeadersPolicyContentSecurityPolicy
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.override #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.content_security_policy #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.content_type_options #=> Types::ResponseHeadersPolicyContentTypeOptions
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.content_type_options.override #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security #=> Types::ResponseHeadersPolicyStrictTransportSecurity
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.override #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.include_subdomains #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.preload #=> Boolean
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.custom_headers_config #=> Types::ResponseHeadersPolicyCustomHeadersConfig
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.custom_headers_config.quantity #=> Integer
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.custom_headers_config.items #=> Array<ResponseHeadersPolicyCustomHeader>
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.custom_headers_config.items[0] #=> Types::ResponseHeadersPolicyCustomHeader
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].header #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].value #=> String
    #   resp.response_headers_policy_list.items[0].response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].override #=> Boolean
    #
    def list_response_headers_policies(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListResponseHeadersPoliciesInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListResponseHeadersPoliciesInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListResponseHeadersPolicies
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchResponseHeadersPolicy, Errors::InvalidArgument]),
        data_parser: Parsers::ListResponseHeadersPolicies
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListResponseHeadersPolicies,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_response_headers_policies
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>List streaming distributions. </p>
    #
    # @param [Hash] params
    #   See {Types::ListStreamingDistributionsInput}.
    #
    # @option params [String] :marker
    #   <p>The value that you provided for the <code>Marker</code> request parameter.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The value that you provided for the <code>MaxItems</code> request parameter.</p>
    #
    # @return [Types::ListStreamingDistributionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streaming_distributions(
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListStreamingDistributionsOutput
    #   resp.streaming_distribution_list #=> Types::StreamingDistributionList
    #   resp.streaming_distribution_list.marker #=> String
    #   resp.streaming_distribution_list.next_marker #=> String
    #   resp.streaming_distribution_list.max_items #=> Integer
    #   resp.streaming_distribution_list.is_truncated #=> Boolean
    #   resp.streaming_distribution_list.quantity #=> Integer
    #   resp.streaming_distribution_list.items #=> Array<StreamingDistributionSummary>
    #   resp.streaming_distribution_list.items[0] #=> Types::StreamingDistributionSummary
    #   resp.streaming_distribution_list.items[0].id #=> String
    #   resp.streaming_distribution_list.items[0].arn #=> String
    #   resp.streaming_distribution_list.items[0].status #=> String
    #   resp.streaming_distribution_list.items[0].last_modified_time #=> Time
    #   resp.streaming_distribution_list.items[0].domain_name #=> String
    #   resp.streaming_distribution_list.items[0].s3_origin #=> Types::S3Origin
    #   resp.streaming_distribution_list.items[0].s3_origin.domain_name #=> String
    #   resp.streaming_distribution_list.items[0].s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution_list.items[0].aliases #=> Types::Aliases
    #   resp.streaming_distribution_list.items[0].aliases.quantity #=> Integer
    #   resp.streaming_distribution_list.items[0].aliases.items #=> Array<String>
    #   resp.streaming_distribution_list.items[0].aliases.items[0] #=> String
    #   resp.streaming_distribution_list.items[0].trusted_signers #=> Types::TrustedSigners
    #   resp.streaming_distribution_list.items[0].trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution_list.items[0].trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution_list.items[0].trusted_signers.items #=> Array<String>
    #   resp.streaming_distribution_list.items[0].trusted_signers.items[0] #=> String
    #   resp.streaming_distribution_list.items[0].comment #=> String
    #   resp.streaming_distribution_list.items[0].price_class #=> String, one of PriceClass_100, PriceClass_200, PriceClass_All
    #   resp.streaming_distribution_list.items[0].enabled #=> Boolean
    #
    def list_streaming_distributions(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListStreamingDistributionsInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListStreamingDistributionsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListStreamingDistributions
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::InvalidArgument]),
        data_parser: Parsers::ListStreamingDistributions
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListStreamingDistributions,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_streaming_distributions
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>List tags for a CloudFront resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource
    #   <p> An ARN of a CloudFront resource.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource: 'Resource' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListTagsForResourceOutput
    #   resp.tags #=> Types::Tags
    #   resp.tags.items #=> Array<Tag>
    #   resp.tags.items[0] #=> Types::Tag
    #   resp.tags.items[0].key #=> String
    #   resp.tags.items[0].value #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::InvalidTagging, Errors::NoSuchResource, Errors::InvalidArgument]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Publishes a CloudFront function by copying the function code from the <code>DEVELOPMENT</code>
    # 			stage to <code>LIVE</code>. This automatically updates all cache behaviors that are
    # 			using this function to use the newly published copy in the <code>LIVE</code>
    # 			stage.</p>
    # 		       <p>When a function is published to the <code>LIVE</code> stage, you can attach the function to
    # 			a distribution’s cache behavior, using the function’s Amazon Resource Name (ARN).</p>
    # 		       <p>To publish a function, you must provide the function’s name and version (<code>ETag</code>
    # 			value). To get these values, you can use <code>ListFunctions</code> and
    # 			<code>DescribeFunction</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::PublishFunctionInput}.
    #
    # @option params [String] :member_name
    #   <p>The name of the function that you are publishing.</p>
    #
    # @option params [String] :if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are publishing, which
    #   			you can get using <code>DescribeFunction</code>.</p>
    #
    # @return [Types::PublishFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_function(
    #     member_name: 'Name', # required
    #     if_match: 'IfMatch' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::PublishFunctionOutput
    #   resp.function_summary #=> Types::FunctionSummary
    #   resp.function_summary.member_name #=> String
    #   resp.function_summary.status #=> String
    #   resp.function_summary.function_config #=> Types::FunctionConfig
    #   resp.function_summary.function_config.comment #=> String
    #   resp.function_summary.function_config.runtime #=> String, one of cloudfront-js-1.0
    #   resp.function_summary.function_metadata #=> Types::FunctionMetadata
    #   resp.function_summary.function_metadata.function_arn #=> String
    #   resp.function_summary.function_metadata.stage #=> String, one of DEVELOPMENT, LIVE
    #   resp.function_summary.function_metadata.created_time #=> Time
    #   resp.function_summary.function_metadata.last_modified_time #=> Time
    #
    def publish_function(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::PublishFunctionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::PublishFunctionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::PublishFunction
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::PreconditionFailed, Errors::UnsupportedOperation, Errors::InvalidIfMatchVersion, Errors::NoSuchFunctionExists, Errors::InvalidArgument]),
        data_parser: Parsers::PublishFunction
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::PublishFunction,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :publish_function
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Add tags to a CloudFront resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource
    #   <p> An ARN of a CloudFront resource.</p>
    #
    # @option params [Tags] :tags
    #   <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource: 'Resource', # required
    #     tags: {
    #       items: [
    #         {
    #           key: 'Key', # required
    #           value: 'Value'
    #         }
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::AccessDenied, Errors::InvalidTagging, Errors::NoSuchResource, Errors::InvalidArgument]),
        data_parser: Parsers::TagResource
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Tests a CloudFront function.</p>
    # 		       <p>To test a function, you provide an <i>event object</i> that represents an HTTP
    # 			request or response that your CloudFront distribution could receive in production. CloudFront runs
    # 			the function, passing it the event object that you provided, and returns the function’s
    # 			result (the modified event object) in the response. The response also contains function
    # 			logs and error messages, if any exist. For more information about testing functions, see
    # 			<a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function">Testing functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # 		       <p>To test a function, you provide the function’s name and version (<code>ETag</code> value)
    # 			along with the event object. To get the function’s name and version, you can use
    # 			<code>ListFunctions</code> and <code>DescribeFunction</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::TestFunctionInput}.
    #
    # @option params [String] :member_name
    #   <p>The name of the function that you are testing.</p>
    #
    # @option params [String] :if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are testing, which
    #   			you can get using <code>DescribeFunction</code>.</p>
    #
    # @option params [String] :stage
    #   <p>The stage of the function that you are testing, either <code>DEVELOPMENT</code> or
    #   			<code>LIVE</code>.</p>
    #
    # @option params [String] :event_object
    #   <p>The event object to test the function with. For more information about the structure of the
    #   			event object, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function">Testing functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @return [Types::TestFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_function(
    #     member_name: 'Name', # required
    #     if_match: 'IfMatch', # required
    #     stage: 'DEVELOPMENT', # accepts DEVELOPMENT, LIVE
    #     event_object: 'EventObject' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::TestFunctionOutput
    #   resp.test_result #=> Types::TestResult
    #   resp.test_result.function_summary #=> Types::FunctionSummary
    #   resp.test_result.function_summary.member_name #=> String
    #   resp.test_result.function_summary.status #=> String
    #   resp.test_result.function_summary.function_config #=> Types::FunctionConfig
    #   resp.test_result.function_summary.function_config.comment #=> String
    #   resp.test_result.function_summary.function_config.runtime #=> String, one of cloudfront-js-1.0
    #   resp.test_result.function_summary.function_metadata #=> Types::FunctionMetadata
    #   resp.test_result.function_summary.function_metadata.function_arn #=> String
    #   resp.test_result.function_summary.function_metadata.stage #=> String, one of DEVELOPMENT, LIVE
    #   resp.test_result.function_summary.function_metadata.created_time #=> Time
    #   resp.test_result.function_summary.function_metadata.last_modified_time #=> Time
    #   resp.test_result.compute_utilization #=> String
    #   resp.test_result.function_execution_logs #=> Array<String>
    #   resp.test_result.function_execution_logs[0] #=> String
    #   resp.test_result.function_error_message #=> String
    #   resp.test_result.function_output #=> String
    #
    def test_function(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::TestFunctionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::TestFunctionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::TestFunction
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::TestFunctionFailed, Errors::UnsupportedOperation, Errors::InvalidIfMatchVersion, Errors::NoSuchFunctionExists, Errors::InvalidArgument]),
        data_parser: Parsers::TestFunction
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::TestFunction,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :test_function
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Remove tags from a CloudFront resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource
    #   <p> An ARN of a CloudFront resource.</p>
    #
    # @option params [TagKeys] :tag_keys
    #   <p> A complex type that contains zero or more <code>Tag</code> key elements.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource: 'Resource', # required
    #     tag_keys: {
    #       items: [
    #         'member'
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::AccessDenied, Errors::InvalidTagging, Errors::NoSuchResource, Errors::InvalidArgument]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Updates a cache policy configuration.</p>
    # 		       <p>When you update a cache policy configuration, all the fields are updated with the
    # 			values provided in the request. You cannot update some fields independent of others. To
    # 			update a cache policy configuration:</p>
    # 		       <ol>
    #             <li>
    # 				           <p>Use <code>GetCachePolicyConfig</code> to get the current configuration.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Locally modify the fields in the cache policy configuration that you want to
    # 					update.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Call <code>UpdateCachePolicy</code> by providing the entire cache policy
    # 					configuration, including the fields that you modified and those that you
    # 					didn’t.</p>
    # 			         </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::UpdateCachePolicyInput}.
    #
    # @option params [CachePolicyConfig] :cache_policy_config
    #   <p>A cache policy configuration.</p>
    #
    # @option params [String] :id
    #   <p>The unique identifier for the cache policy that you are updating. The identifier is returned
    #   			in a cache behavior’s <code>CachePolicyId</code> field in the response to
    #   			<code>GetDistributionConfig</code>.</p>
    #
    # @option params [String] :if_match
    #   <p>The version of the cache policy that you are updating. The version is returned in the cache
    #   			policy’s <code>ETag</code> field in the response to
    #   			<code>GetCachePolicyConfig</code>.</p>
    #
    # @return [Types::UpdateCachePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cache_policy(
    #     cache_policy_config: {
    #       comment: 'Comment',
    #       member_name: 'Name', # required
    #       default_ttl: 1,
    #       max_ttl: 1,
    #       min_ttl: 1, # required
    #       parameters_in_cache_key_and_forwarded_to_origin: {
    #         enable_accept_encoding_gzip: false, # required
    #         enable_accept_encoding_brotli: false,
    #         headers_config: {
    #           header_behavior: 'none', # required - accepts none, whitelist
    #           headers: {
    #             quantity: 1, # required
    #             items: [
    #               'member'
    #             ]
    #           }
    #         }, # required
    #         cookies_config: {
    #           cookie_behavior: 'none', # required - accepts none, whitelist, allExcept, all
    #           cookies: {
    #             quantity: 1, # required
    #             items: [
    #               'member'
    #             ]
    #           }
    #         }, # required
    #         query_strings_config: {
    #           query_string_behavior: 'none', # required - accepts none, whitelist, allExcept, all
    #           query_strings: {
    #             quantity: 1, # required
    #             items: [
    #               'member'
    #             ]
    #           }
    #         } # required
    #       }
    #     }, # required
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateCachePolicyOutput
    #   resp.cache_policy #=> Types::CachePolicy
    #   resp.cache_policy.id #=> String
    #   resp.cache_policy.last_modified_time #=> Time
    #   resp.cache_policy.cache_policy_config #=> Types::CachePolicyConfig
    #   resp.cache_policy.cache_policy_config.comment #=> String
    #   resp.cache_policy.cache_policy_config.member_name #=> String
    #   resp.cache_policy.cache_policy_config.default_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.max_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.min_ttl #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin #=> Types::ParametersInCacheKeyAndForwardedToOrigin
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_gzip #=> Boolean
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.enable_accept_encoding_brotli #=> Boolean
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config #=> Types::CachePolicyHeadersConfig
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.header_behavior #=> String, one of none, whitelist
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers #=> Types::Headers
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items #=> Array<String>
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers.items[0] #=> String
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config #=> Types::CachePolicyCookiesConfig
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookie_behavior #=> String, one of none, whitelist, allExcept, all
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies #=> Types::CookieNames
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items #=> Array<String>
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies.items[0] #=> String
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config #=> Types::CachePolicyQueryStringsConfig
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_string_behavior #=> String, one of none, whitelist, allExcept, all
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings #=> Types::QueryStringNames
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.quantity #=> Integer
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items #=> Array<String>
    #   resp.cache_policy.cache_policy_config.parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings.items[0] #=> String
    #   resp.e_tag #=> String
    #
    def update_cache_policy(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::UpdateCachePolicyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::UpdateCachePolicyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::UpdateCachePolicy
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::TooManyCookiesInCachePolicy, Errors::IllegalUpdate, Errors::TooManyHeadersInCachePolicy, Errors::InconsistentQuantities, Errors::NoSuchCachePolicy, Errors::TooManyQueryStringsInCachePolicy, Errors::CachePolicyAlreadyExists, Errors::InvalidArgument]),
        data_parser: Parsers::UpdateCachePolicy
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateCachePolicy,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_cache_policy
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Update an origin access identity. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCloudFrontOriginAccessIdentityInput}.
    #
    # @option params [CloudFrontOriginAccessIdentityConfig] :cloud_front_origin_access_identity_config
    #   <p>The identity's configuration information.</p>
    #
    # @option params [String] :id
    #   <p>The identity's id.</p>
    #
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the
    #   			identity's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    # @return [Types::UpdateCloudFrontOriginAccessIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cloud_front_origin_access_identity(
    #     cloud_front_origin_access_identity_config: {
    #       caller_reference: 'CallerReference', # required
    #       comment: 'Comment' # required
    #     }, # required
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateCloudFrontOriginAccessIdentityOutput
    #   resp.cloud_front_origin_access_identity #=> Types::CloudFrontOriginAccessIdentity
    #   resp.cloud_front_origin_access_identity.id #=> String
    #   resp.cloud_front_origin_access_identity.s3_canonical_user_id #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config #=> Types::CloudFrontOriginAccessIdentityConfig
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.caller_reference #=> String
    #   resp.cloud_front_origin_access_identity.cloud_front_origin_access_identity_config.comment #=> String
    #   resp.e_tag #=> String
    #
    def update_cloud_front_origin_access_identity(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::UpdateCloudFrontOriginAccessIdentityInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::UpdateCloudFrontOriginAccessIdentityInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::UpdateCloudFrontOriginAccessIdentity
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::MissingBody, Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::IllegalUpdate, Errors::NoSuchCloudFrontOriginAccessIdentity, Errors::InconsistentQuantities, Errors::InvalidArgument]),
        data_parser: Parsers::UpdateCloudFrontOriginAccessIdentity
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateCloudFrontOriginAccessIdentity,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_cloud_front_origin_access_identity
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Updates the configuration for a web distribution. </p>
    # 		       <important>
    #             <p>When you update a distribution, there are more required fields than when you create a distribution.
    # 			When you update your distribution by using this API action, follow the steps here to get the current configuration
    # 			and then make your updates, to make sure that you include all of the required fields. To view a summary,
    # 			see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html">Required
    # 				Fields for Create Distribution and Update Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #          </important>
    # 		       <p>The update process includes getting the current distribution configuration, updating the XML document that is
    # 			returned to make your changes, and then submitting an <code>UpdateDistribution</code> request to make the updates.</p>
    # 		       <p>For information about updating a distribution using the CloudFront console instead, see
    # 			<a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-creating-console.html">Creating a
    # 				Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # 		
    # 		       <p>
    #             <b>To update a web distribution using the CloudFront API</b>
    #          </p>
    # 		       <ol>
    #             <li>
    #                <p>Submit a
    # 				<a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistributionConfig.html">GetDistributionConfig</a>
    # 				request to get the current configuration and an <code>Etag</code> header
    # 				for the distribution.</p>
    # 				           <note>
    #                   <p>If you update the distribution again, you must get a new <code>Etag</code> header.</p>
    #                </note>
    # 			         </li>
    #             <li>
    #                <p>Update the XML document that was returned in the response to your <code>GetDistributionConfig</code> request to include
    # 				your changes. </p>
    # 				           <important>
    # 					             <p>When you edit the XML file, be aware of the following:</p>
    # 					             <ul>
    #                      <li>
    #                         <p>You must strip out the ETag parameter that is returned.</p>
    #                      </li>
    #                      <li>
    #                         <p>Additional fields are required when you update a distribution. There may be fields included in the
    # 							XML file for features that you haven't configured for your distribution. This is expected and required to
    # 							successfully update the distribution.</p>
    #                      </li>
    #                      <li>
    #                         <p>You can't change the value of <code>CallerReference</code>. If you try to change this value, CloudFront returns an
    # 							<code>IllegalUpdate</code> error. </p>
    #                      </li>
    #                      <li>
    #                         <p>The new configuration replaces the existing configuration; the values that you specify in an
    # 							<code>UpdateDistribution</code> request are not merged into your existing configuration. When you add, delete, or
    # 							replace values in an element that allows multiple values (for example, <code>CNAME</code>), you must specify all of the
    # 							values that you want to appear in the updated distribution. In addition,
    # 							you must update the corresponding <code>Quantity</code> element.</p>
    #                      </li>
    #                   </ul>
    #                </important>
    # 			         </li>
    #             <li>
    #                <p>Submit an <code>UpdateDistribution</code> request to update the configuration for your distribution:</p>
    # 				           <ul>
    #                   <li>
    #                      <p>In the request body, include the XML document that you updated in Step 2. The request body must include an
    # 						XML document with a <code>DistributionConfig</code> element.</p>
    #                   </li>
    #                   <li>
    #                      <p>Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned
    # 						when you submitted the <code>GetDistributionConfig</code> request in Step 1.</p>
    #                   </li>
    #                </ul>
    # 			         </li>
    #             <li>
    #                <p>Review the response to the <code>UpdateDistribution</code> request to confirm that the configuration was
    # 				successfully updated.</p>
    #             </li>
    #             <li>
    #                <p>Optional: Submit a
    # 				<a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html">GetDistribution</a>
    # 				request to confirm that your changes have propagated.
    # 				When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p>
    # 			         </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::UpdateDistributionInput}.
    #
    # @option params [DistributionConfig] :distribution_config
    #   <p>The distribution's configuration information.</p>
    #
    # @option params [String] :id
    #   <p>The distribution's id.</p>
    #
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the
    #   			distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    # @return [Types::UpdateDistributionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_distribution(
    #     distribution_config: {
    #       caller_reference: 'CallerReference', # required
    #       aliases: {
    #         quantity: 1, # required
    #         items: [
    #           'member'
    #         ]
    #       },
    #       default_root_object: 'DefaultRootObject',
    #       origins: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             id: 'Id', # required
    #             domain_name: 'DomainName', # required
    #             origin_path: 'OriginPath',
    #             custom_headers: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   header_name: 'HeaderName', # required
    #                   header_value: 'HeaderValue' # required
    #                 }
    #               ]
    #             },
    #             s3_origin_config: {
    #               origin_access_identity: 'OriginAccessIdentity' # required
    #             },
    #             custom_origin_config: {
    #               http_port: 1, # required
    #               https_port: 1, # required
    #               origin_protocol_policy: 'http-only', # required - accepts http-only, match-viewer, https-only
    #               origin_ssl_protocols: {
    #                 quantity: 1, # required
    #                 items: [
    #                   'SSLv3' # accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #                 ] # required
    #               },
    #               origin_read_timeout: 1,
    #               origin_keepalive_timeout: 1
    #             },
    #             connection_attempts: 1,
    #             connection_timeout: 1,
    #             origin_shield: {
    #               enabled: false, # required
    #               origin_shield_region: 'OriginShieldRegion'
    #             }
    #           }
    #         ] # required
    #       }, # required
    #       origin_groups: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             id: 'Id', # required
    #             failover_criteria: {
    #               status_codes: {
    #                 quantity: 1, # required
    #                 items: [
    #                   1
    #                 ] # required
    #               } # required
    #             }, # required
    #             members: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   origin_id: 'OriginId' # required
    #                 }
    #               ] # required
    #             } # required
    #           }
    #         ]
    #       },
    #       default_cache_behavior: {
    #         target_origin_id: 'TargetOriginId', # required
    #         trusted_signers: {
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         },
    #         trusted_key_groups: {
    #           enabled: false, # required
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         },
    #         viewer_protocol_policy: 'allow-all', # required - accepts allow-all, https-only, redirect-to-https
    #         allowed_methods: {
    #           quantity: 1, # required
    #           items: [
    #             'GET' # accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #           ], # required
    #           cached_methods: {
    #             quantity: 1, # required
    #           }
    #         },
    #         smooth_streaming: false,
    #         compress: false,
    #         lambda_function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               lambda_function_arn: 'LambdaFunctionARN', # required
    #               event_type: 'viewer-request', # required - accepts viewer-request, viewer-response, origin-request, origin-response
    #               include_body: false
    #             }
    #           ]
    #         },
    #         function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               function_arn: 'FunctionARN', # required
    #               event_type: 'viewer-request' # required - accepts viewer-request, viewer-response, origin-request, origin-response
    #             }
    #           ]
    #         },
    #         field_level_encryption_id: 'FieldLevelEncryptionId',
    #         realtime_log_config_arn: 'RealtimeLogConfigArn',
    #         cache_policy_id: 'CachePolicyId',
    #         origin_request_policy_id: 'OriginRequestPolicyId',
    #         response_headers_policy_id: 'ResponseHeadersPolicyId',
    #         forwarded_values: {
    #           query_string: false, # required
    #           cookies: {
    #             forward: 'none', # required - accepts none, whitelist, all
    #             whitelisted_names: {
    #               quantity: 1, # required
    #               items: [
    #                 'member'
    #               ]
    #             }
    #           }, # required
    #           headers: {
    #             quantity: 1, # required
    #             items: [
    #               'member'
    #             ]
    #           },
    #           query_string_cache_keys: {
    #             quantity: 1, # required
    #             items: [
    #               'member'
    #             ]
    #           }
    #         },
    #         min_ttl: 1,
    #         default_ttl: 1,
    #         max_ttl: 1
    #       }, # required
    #       cache_behaviors: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             path_pattern: 'PathPattern', # required
    #             target_origin_id: 'TargetOriginId', # required
    #             viewer_protocol_policy: 'allow-all', # required - accepts allow-all, https-only, redirect-to-https
    #             smooth_streaming: false,
    #             compress: false,
    #             field_level_encryption_id: 'FieldLevelEncryptionId',
    #             realtime_log_config_arn: 'RealtimeLogConfigArn',
    #             cache_policy_id: 'CachePolicyId',
    #             origin_request_policy_id: 'OriginRequestPolicyId',
    #             response_headers_policy_id: 'ResponseHeadersPolicyId',
    #             min_ttl: 1,
    #             default_ttl: 1,
    #             max_ttl: 1
    #           }
    #         ]
    #       },
    #       custom_error_responses: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             error_code: 1, # required
    #             response_page_path: 'ResponsePagePath',
    #             response_code: 'ResponseCode',
    #             error_caching_min_ttl: 1
    #           }
    #         ]
    #       },
    #       comment: 'Comment', # required
    #       logging: {
    #         enabled: false, # required
    #         include_cookies: false, # required
    #         bucket: 'Bucket', # required
    #         prefix: 'Prefix' # required
    #       },
    #       price_class: 'PriceClass_100', # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #       enabled: false, # required
    #       viewer_certificate: {
    #         cloud_front_default_certificate: false,
    #         iam_certificate_id: 'IAMCertificateId',
    #         acm_certificate_arn: 'ACMCertificateArn',
    #         ssl_support_method: 'sni-only', # accepts sni-only, vip, static-ip
    #         minimum_protocol_version: 'SSLv3', # accepts SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018, TLSv1.2_2019, TLSv1.2_2021
    #         certificate: 'Certificate',
    #         certificate_source: 'cloudfront' # accepts cloudfront, iam, acm
    #       },
    #       restrictions: {
    #         geo_restriction: {
    #           restriction_type: 'blacklist', # required - accepts blacklist, whitelist, none
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         } # required
    #       },
    #       web_acl_id: 'WebACLId',
    #       http_version: 'http1.1', # accepts http1.1, http2
    #       is_ipv6_enabled: false
    #     }, # required
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateDistributionOutput
    #   resp.distribution #=> Types::Distribution
    #   resp.distribution.id #=> String
    #   resp.distribution.arn #=> String
    #   resp.distribution.status #=> String
    #   resp.distribution.last_modified_time #=> Time
    #   resp.distribution.in_progress_invalidation_batches #=> Integer
    #   resp.distribution.domain_name #=> String
    #   resp.distribution.active_trusted_signers #=> Types::ActiveTrustedSigners
    #   resp.distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.distribution.active_trusted_signers.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items #=> Array<Signer>
    #   resp.distribution.active_trusted_signers.items[0] #=> Types::Signer
    #   resp.distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids #=> Types::KeyPairIds
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array<String>
    #   resp.distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.distribution.active_trusted_key_groups #=> Types::ActiveTrustedKeyGroups
    #   resp.distribution.active_trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.active_trusted_key_groups.quantity #=> Integer
    #   resp.distribution.active_trusted_key_groups.items #=> Array<KGKeyPairIds>
    #   resp.distribution.active_trusted_key_groups.items[0] #=> Types::KGKeyPairIds
    #   resp.distribution.active_trusted_key_groups.items[0].key_group_id #=> String
    #   resp.distribution.active_trusted_key_groups.items[0].key_pair_ids #=> Types::KeyPairIds
    #   resp.distribution.distribution_config #=> Types::DistributionConfig
    #   resp.distribution.distribution_config.caller_reference #=> String
    #   resp.distribution.distribution_config.aliases #=> Types::Aliases
    #   resp.distribution.distribution_config.aliases.quantity #=> Integer
    #   resp.distribution.distribution_config.aliases.items #=> Array<String>
    #   resp.distribution.distribution_config.aliases.items[0] #=> String
    #   resp.distribution.distribution_config.default_root_object #=> String
    #   resp.distribution.distribution_config.origins #=> Types::Origins
    #   resp.distribution.distribution_config.origins.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items #=> Array<Origin>
    #   resp.distribution.distribution_config.origins.items[0] #=> Types::Origin
    #   resp.distribution.distribution_config.origins.items[0].id #=> String
    #   resp.distribution.distribution_config.origins.items[0].domain_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].origin_path #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers #=> Types::CustomHeaders
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items #=> Array<OriginCustomHeader>
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0] #=> Types::OriginCustomHeader
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_name #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_headers.items[0].header_value #=> String
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config #=> Types::S3OriginConfig
    #   resp.distribution.distribution_config.origins.items[0].s3_origin_config.origin_access_identity #=> String
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config #=> Types::CustomOriginConfig
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.http_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.https_port #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_protocol_policy #=> String, one of http-only, match-viewer, https-only
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols #=> Types::OriginSslProtocols
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.quantity #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items #=> Array<String>
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_ssl_protocols.items[0] #=> String, one of SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_read_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].custom_origin_config.origin_keepalive_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_attempts #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].connection_timeout #=> Integer
    #   resp.distribution.distribution_config.origins.items[0].origin_shield #=> Types::OriginShield
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.enabled #=> Boolean
    #   resp.distribution.distribution_config.origins.items[0].origin_shield.origin_shield_region #=> String
    #   resp.distribution.distribution_config.origin_groups #=> Types::OriginGroups
    #   resp.distribution.distribution_config.origin_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items #=> Array<OriginGroup>
    #   resp.distribution.distribution_config.origin_groups.items[0] #=> Types::OriginGroup
    #   resp.distribution.distribution_config.origin_groups.items[0].id #=> String
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria #=> Types::OriginGroupFailoverCriteria
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes #=> Types::StatusCodes
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items #=> Array<Integer>
    #   resp.distribution.distribution_config.origin_groups.items[0].failover_criteria.status_codes.items[0] #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members #=> Types::OriginGroupMembers
    #   resp.distribution.distribution_config.origin_groups.items[0].members.quantity #=> Integer
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items #=> Array<OriginGroupMember>
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items[0] #=> Types::OriginGroupMember
    #   resp.distribution.distribution_config.origin_groups.items[0].members.items[0].origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior #=> Types::DefaultCacheBehavior
    #   resp.distribution.distribution_config.default_cache_behavior.target_origin_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers #=> Types::TrustedSigners
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_signers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.enabled #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.trusted_key_groups.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods #=> Types::AllowedMethods
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.items[0] #=> String, one of GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods #=> Types::CachedMethods
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.allowed_methods.cached_methods.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.compress #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items #=> Array<LambdaFunctionAssociation>
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0] #=> Types::LambdaFunctionAssociation
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].lambda_function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution.distribution_config.default_cache_behavior.lambda_function_associations.items[0].include_body #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations #=> Types::FunctionAssociations
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items #=> Array<FunctionAssociation>
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0] #=> Types::FunctionAssociation
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].function_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.function_associations.items[0].event_type #=> String, one of viewer-request, viewer-response, origin-request, origin-response
    #   resp.distribution.distribution_config.default_cache_behavior.field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.cache_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values #=> Types::ForwardedValues
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string #=> Boolean
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies #=> Types::CookiePreference
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.forward #=> String, one of none, whitelist, all
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names #=> Types::CookieNames
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.cookies.whitelisted_names.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers #=> Types::Headers
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.headers.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys #=> Types::QueryStringCacheKeys
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.quantity #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items #=> Array<String>
    #   resp.distribution.distribution_config.default_cache_behavior.forwarded_values.query_string_cache_keys.items[0] #=> String
    #   resp.distribution.distribution_config.default_cache_behavior.min_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.default_ttl #=> Integer
    #   resp.distribution.distribution_config.default_cache_behavior.max_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors #=> Types::CacheBehaviors
    #   resp.distribution.distribution_config.cache_behaviors.quantity #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items #=> Array<CacheBehavior>
    #   resp.distribution.distribution_config.cache_behaviors.items[0] #=> Types::CacheBehavior
    #   resp.distribution.distribution_config.cache_behaviors.items[0].path_pattern #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].target_origin_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_signers #=> Types::TrustedSigners
    #   resp.distribution.distribution_config.cache_behaviors.items[0].trusted_key_groups #=> Types::TrustedKeyGroups
    #   resp.distribution.distribution_config.cache_behaviors.items[0].viewer_protocol_policy #=> String, one of allow-all, https-only, redirect-to-https
    #   resp.distribution.distribution_config.cache_behaviors.items[0].allowed_methods #=> Types::AllowedMethods
    #   resp.distribution.distribution_config.cache_behaviors.items[0].smooth_streaming #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].compress #=> Boolean
    #   resp.distribution.distribution_config.cache_behaviors.items[0].lambda_function_associations #=> Types::LambdaFunctionAssociations
    #   resp.distribution.distribution_config.cache_behaviors.items[0].function_associations #=> Types::FunctionAssociations
    #   resp.distribution.distribution_config.cache_behaviors.items[0].field_level_encryption_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].realtime_log_config_arn #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].cache_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].origin_request_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].response_headers_policy_id #=> String
    #   resp.distribution.distribution_config.cache_behaviors.items[0].forwarded_values #=> Types::ForwardedValues
    #   resp.distribution.distribution_config.cache_behaviors.items[0].min_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].default_ttl #=> Integer
    #   resp.distribution.distribution_config.cache_behaviors.items[0].max_ttl #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses #=> Types::CustomErrorResponses
    #   resp.distribution.distribution_config.custom_error_responses.quantity #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items #=> Array<CustomErrorResponse>
    #   resp.distribution.distribution_config.custom_error_responses.items[0] #=> Types::CustomErrorResponse
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_code #=> Integer
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_page_path #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].response_code #=> String
    #   resp.distribution.distribution_config.custom_error_responses.items[0].error_caching_min_ttl #=> Integer
    #   resp.distribution.distribution_config.comment #=> String
    #   resp.distribution.distribution_config.logging #=> Types::LoggingConfig
    #   resp.distribution.distribution_config.logging.enabled #=> Boolean
    #   resp.distribution.distribution_config.logging.include_cookies #=> Boolean
    #   resp.distribution.distribution_config.logging.bucket #=> String
    #   resp.distribution.distribution_config.logging.prefix #=> String
    #   resp.distribution.distribution_config.price_class #=> String, one of PriceClass_100, PriceClass_200, PriceClass_All
    #   resp.distribution.distribution_config.enabled #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate #=> Types::ViewerCertificate
    #   resp.distribution.distribution_config.viewer_certificate.cloud_front_default_certificate #=> Boolean
    #   resp.distribution.distribution_config.viewer_certificate.iam_certificate_id #=> String
    #   resp.distribution.distribution_config.viewer_certificate.acm_certificate_arn #=> String
    #   resp.distribution.distribution_config.viewer_certificate.ssl_support_method #=> String, one of sni-only, vip, static-ip
    #   resp.distribution.distribution_config.viewer_certificate.minimum_protocol_version #=> String, one of SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018, TLSv1.2_2019, TLSv1.2_2021
    #   resp.distribution.distribution_config.viewer_certificate.certificate #=> String
    #   resp.distribution.distribution_config.viewer_certificate.certificate_source #=> String, one of cloudfront, iam, acm
    #   resp.distribution.distribution_config.restrictions #=> Types::Restrictions
    #   resp.distribution.distribution_config.restrictions.geo_restriction #=> Types::GeoRestriction
    #   resp.distribution.distribution_config.restrictions.geo_restriction.restriction_type #=> String, one of blacklist, whitelist, none
    #   resp.distribution.distribution_config.restrictions.geo_restriction.quantity #=> Integer
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items #=> Array<String>
    #   resp.distribution.distribution_config.restrictions.geo_restriction.items[0] #=> String
    #   resp.distribution.distribution_config.web_acl_id #=> String
    #   resp.distribution.distribution_config.http_version #=> String, one of http1.1, http2
    #   resp.distribution.distribution_config.is_ipv6_enabled #=> Boolean
    #   resp.distribution.alias_icp_recordals #=> Array<AliasICPRecordal>
    #   resp.distribution.alias_icp_recordals[0] #=> Types::AliasICPRecordal
    #   resp.distribution.alias_icp_recordals[0].cname #=> String
    #   resp.distribution.alias_icp_recordals[0].icp_recordal_status #=> String, one of APPROVED, SUSPENDED, PENDING
    #   resp.e_tag #=> String
    #
    def update_distribution(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::UpdateDistributionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::UpdateDistributionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::UpdateDistribution
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::TooManyDistributionsAssociatedToOriginRequestPolicy, Errors::InvalidRelativePath, Errors::TooManyQueryStringParameters, Errors::TooManyLambdaFunctionAssociations, Errors::InconsistentQuantities, Errors::InvalidWebACLId, Errors::InvalidTTLOrder, Errors::TooManyDistributionsWithFunctionAssociations, Errors::TooManyHeadersInForwardedValues, Errors::InvalidIfMatchVersion, Errors::TooManyDistributionsAssociatedToFieldLevelEncryptionConfig, Errors::NoSuchDistribution, Errors::InvalidOriginAccessIdentity, Errors::PreconditionFailed, Errors::RealtimeLogConfigOwnerMismatch, Errors::TooManyCacheBehaviors, Errors::NoSuchOrigin, Errors::TooManyDistributionsAssociatedToCachePolicy, Errors::InvalidViewerCertificate, Errors::InvalidFunctionAssociation, Errors::NoSuchResponseHeadersPolicy, Errors::InvalidDefaultRootObject, Errors::NoSuchCachePolicy, Errors::InvalidMinimumProtocolVersion, Errors::InvalidLambdaFunctionAssociation, Errors::InvalidResponseCode, Errors::NoSuchOriginRequestPolicy, Errors::NoSuchFieldLevelEncryptionConfig, Errors::InvalidHeadersForS3Origin, Errors::TrustedSignerDoesNotExist, Errors::TooManyCookieNamesInWhiteList, Errors::TooManyDistributionsAssociatedToKeyGroup, Errors::AccessDenied, Errors::TooManyOrigins, Errors::TooManyTrustedSigners, Errors::TooManyDistributionsWithSingleFunctionARN, Errors::MissingBody, Errors::InvalidGeoRestrictionParameter, Errors::IllegalUpdate, Errors::NoSuchRealtimeLogConfig, Errors::InvalidOriginReadTimeout, Errors::TooManyCertificates, Errors::InvalidLocationCode, Errors::InvalidQueryStringParameters, Errors::CNAMEAlreadyExists, Errors::IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior, Errors::InvalidArgument, Errors::TooManyDistributionCNAMEs, Errors::InvalidErrorCode, Errors::TooManyKeyGroupsAssociatedToDistribution, Errors::TooManyDistributionsWithLambdaAssociations, Errors::TooManyOriginCustomHeaders, Errors::TrustedKeyGroupDoesNotExist, Errors::InvalidOriginKeepaliveTimeout, Errors::InvalidForwardCookies, Errors::TooManyDistributionsAssociatedToResponseHeadersPolicy, Errors::TooManyOriginGroupsPerDistribution, Errors::InvalidRequiredProtocol, Errors::TooManyFunctionAssociations]),
        data_parser: Parsers::UpdateDistribution
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateDistribution,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_distribution
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Update a field-level encryption configuration. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFieldLevelEncryptionConfigInput}.
    #
    # @option params [FieldLevelEncryptionConfig] :field_level_encryption_config
    #   <p>Request to update a field-level encryption configuration. </p>
    #
    # @option params [String] :id
    #   <p>The ID of the configuration you want to update.</p>
    #
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the configuration identity to update.
    #   			For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    # @return [Types::UpdateFieldLevelEncryptionConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_field_level_encryption_config(
    #     field_level_encryption_config: {
    #       caller_reference: 'CallerReference', # required
    #       comment: 'Comment',
    #       query_arg_profile_config: {
    #         forward_when_query_arg_profile_is_unknown: false, # required
    #         query_arg_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               query_arg: 'QueryArg', # required
    #               profile_id: 'ProfileId' # required
    #             }
    #           ]
    #         }
    #       },
    #       content_type_profile_config: {
    #         forward_when_content_type_is_unknown: false, # required
    #         content_type_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               format: 'URLEncoded', # required - accepts URLEncoded
    #               profile_id: 'ProfileId',
    #               content_type: 'ContentType' # required
    #             }
    #           ]
    #         }
    #       }
    #     }, # required
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateFieldLevelEncryptionConfigOutput
    #   resp.field_level_encryption #=> Types::FieldLevelEncryption
    #   resp.field_level_encryption.id #=> String
    #   resp.field_level_encryption.last_modified_time #=> Time
    #   resp.field_level_encryption.field_level_encryption_config #=> Types::FieldLevelEncryptionConfig
    #   resp.field_level_encryption.field_level_encryption_config.caller_reference #=> String
    #   resp.field_level_encryption.field_level_encryption_config.comment #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config #=> Types::QueryArgProfileConfig
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.forward_when_query_arg_profile_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles #=> Types::QueryArgProfiles
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items #=> Array<QueryArgProfile>
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0] #=> Types::QueryArgProfile
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].query_arg #=> String
    #   resp.field_level_encryption.field_level_encryption_config.query_arg_profile_config.query_arg_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config #=> Types::ContentTypeProfileConfig
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.forward_when_content_type_is_unknown #=> Boolean
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles #=> Types::ContentTypeProfiles
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.quantity #=> Integer
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items #=> Array<ContentTypeProfile>
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0] #=> Types::ContentTypeProfile
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].format #=> String, one of URLEncoded
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].profile_id #=> String
    #   resp.field_level_encryption.field_level_encryption_config.content_type_profile_config.content_type_profiles.items[0].content_type #=> String
    #   resp.e_tag #=> String
    #
    def update_field_level_encryption_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::UpdateFieldLevelEncryptionConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::UpdateFieldLevelEncryptionConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::UpdateFieldLevelEncryptionConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::QueryArgProfileEmpty, Errors::IllegalUpdate, Errors::TooManyFieldLevelEncryptionContentTypeProfiles, Errors::InconsistentQuantities, Errors::NoSuchFieldLevelEncryptionProfile, Errors::InvalidArgument, Errors::TooManyFieldLevelEncryptionQueryArgProfiles, Errors::NoSuchFieldLevelEncryptionConfig]),
        data_parser: Parsers::UpdateFieldLevelEncryptionConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateFieldLevelEncryptionConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_field_level_encryption_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Update a field-level encryption profile. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFieldLevelEncryptionProfileInput}.
    #
    # @option params [FieldLevelEncryptionProfileConfig] :field_level_encryption_profile_config
    #   <p>Request to update a field-level encryption profile. </p>
    #
    # @option params [String] :id
    #   <p>The ID of the field-level encryption profile request. </p>
    #
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the profile identity to update.
    #   			For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    # @return [Types::UpdateFieldLevelEncryptionProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_field_level_encryption_profile(
    #     field_level_encryption_profile_config: {
    #       member_name: 'Name', # required
    #       caller_reference: 'CallerReference', # required
    #       comment: 'Comment',
    #       encryption_entities: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             public_key_id: 'PublicKeyId', # required
    #             provider_id: 'ProviderId', # required
    #             field_patterns: {
    #               quantity: 1, # required
    #               items: [
    #                 'member'
    #               ]
    #             } # required
    #           }
    #         ]
    #       } # required
    #     }, # required
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateFieldLevelEncryptionProfileOutput
    #   resp.field_level_encryption_profile #=> Types::FieldLevelEncryptionProfile
    #   resp.field_level_encryption_profile.id #=> String
    #   resp.field_level_encryption_profile.last_modified_time #=> Time
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config #=> Types::FieldLevelEncryptionProfileConfig
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.member_name #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.caller_reference #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.comment #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities #=> Types::EncryptionEntities
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items #=> Array<EncryptionEntity>
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0] #=> Types::EncryptionEntity
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].public_key_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].provider_id #=> String
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns #=> Types::FieldPatterns
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.quantity #=> Integer
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items #=> Array<String>
    #   resp.field_level_encryption_profile.field_level_encryption_profile_config.encryption_entities.items[0].field_patterns.items[0] #=> String
    #   resp.e_tag #=> String
    #
    def update_field_level_encryption_profile(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::UpdateFieldLevelEncryptionProfileInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::UpdateFieldLevelEncryptionProfileInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::UpdateFieldLevelEncryptionProfile
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::PreconditionFailed, Errors::IllegalUpdate, Errors::InconsistentQuantities, Errors::NoSuchFieldLevelEncryptionProfile, Errors::InvalidArgument, Errors::TooManyFieldLevelEncryptionEncryptionEntities, Errors::FieldLevelEncryptionProfileSizeExceeded, Errors::AccessDenied, Errors::FieldLevelEncryptionProfileAlreadyExists, Errors::TooManyFieldLevelEncryptionFieldPatterns, Errors::InvalidIfMatchVersion, Errors::NoSuchPublicKey]),
        data_parser: Parsers::UpdateFieldLevelEncryptionProfile
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateFieldLevelEncryptionProfile,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_field_level_encryption_profile
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Updates a CloudFront function.</p>
    # 		       <p>You can update a function’s code or the comment that describes the function. You
    # 			cannot update a function’s name.</p>
    # 		       <p>To update a function, you provide the function’s name and version (<code>ETag</code> value)
    # 			along with the updated function code. To get the name and version, you can use
    # 			<code>ListFunctions</code> and <code>DescribeFunction</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFunctionInput}.
    #
    # @option params [String] :member_name
    #   <p>The name of the function that you are updating.</p>
    #
    # @option params [String] :if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are updating, which
    #   			you can get using <code>DescribeFunction</code>.</p>
    #
    # @option params [FunctionConfig] :function_config
    #   <p>Configuration information about the function.</p>
    #
    # @option params [String] :function_code
    #   <p>The function code. For more information about writing a CloudFront function, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html">Writing function
    #   			code for CloudFront Functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @return [Types::UpdateFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function(
    #     member_name: 'Name', # required
    #     if_match: 'IfMatch', # required
    #     function_config: {
    #       comment: 'Comment', # required
    #       runtime: 'cloudfront-js-1.0' # required - accepts cloudfront-js-1.0
    #     }, # required
    #     function_code: 'FunctionCode' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateFunctionOutput
    #   resp.function_summary #=> Types::FunctionSummary
    #   resp.function_summary.member_name #=> String
    #   resp.function_summary.status #=> String
    #   resp.function_summary.function_config #=> Types::FunctionConfig
    #   resp.function_summary.function_config.comment #=> String
    #   resp.function_summary.function_config.runtime #=> String, one of cloudfront-js-1.0
    #   resp.function_summary.function_metadata #=> Types::FunctionMetadata
    #   resp.function_summary.function_metadata.function_arn #=> String
    #   resp.function_summary.function_metadata.stage #=> String, one of DEVELOPMENT, LIVE
    #   resp.function_summary.function_metadata.created_time #=> Time
    #   resp.function_summary.function_metadata.last_modified_time #=> Time
    #   resp.e_tag #=> String
    #
    def update_function(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::UpdateFunctionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::UpdateFunctionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::UpdateFunction
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::PreconditionFailed, Errors::UnsupportedOperation, Errors::InvalidIfMatchVersion, Errors::NoSuchFunctionExists, Errors::InvalidArgument, Errors::FunctionSizeLimitExceeded]),
        data_parser: Parsers::UpdateFunction
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateFunction,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_function
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Updates a key group.</p>
    # 		       <p>When you update a key group, all the fields are updated with the values provided in
    # 			the request. You cannot update some fields independent of others. To update a key
    # 			group:</p>
    # 		       <ol>
    #             <li>
    # 				           <p>Get the current key group with <code>GetKeyGroup</code> or
    # 					<code>GetKeyGroupConfig</code>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Locally modify the fields in the key group that you want to update. For
    # 					example, add or remove public key IDs.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Call <code>UpdateKeyGroup</code> with the entire key group object, including
    # 					the fields that you modified and those that you didn’t.</p>
    # 			         </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::UpdateKeyGroupInput}.
    #
    # @option params [KeyGroupConfig] :key_group_config
    #   <p>The key group configuration.</p>
    #
    # @option params [String] :id
    #   <p>The identifier of the key group that you are updating.</p>
    #
    # @option params [String] :if_match
    #   <p>The version of the key group that you are updating. The version is the key group’s
    #   			<code>ETag</code> value.</p>
    #
    # @return [Types::UpdateKeyGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_key_group(
    #     key_group_config: {
    #       member_name: 'Name', # required
    #       items: [
    #         'member'
    #       ], # required
    #       comment: 'Comment'
    #     }, # required
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateKeyGroupOutput
    #   resp.key_group #=> Types::KeyGroup
    #   resp.key_group.id #=> String
    #   resp.key_group.last_modified_time #=> Time
    #   resp.key_group.key_group_config #=> Types::KeyGroupConfig
    #   resp.key_group.key_group_config.member_name #=> String
    #   resp.key_group.key_group_config.items #=> Array<String>
    #   resp.key_group.key_group_config.items[0] #=> String
    #   resp.key_group.key_group_config.comment #=> String
    #   resp.e_tag #=> String
    #
    def update_key_group(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::UpdateKeyGroupInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::UpdateKeyGroupInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::UpdateKeyGroup
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::KeyGroupAlreadyExists, Errors::NoSuchResource, Errors::TooManyPublicKeysInKeyGroup, Errors::InvalidArgument]),
        data_parser: Parsers::UpdateKeyGroup
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateKeyGroup,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_key_group
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Updates an origin request policy configuration.</p>
    # 		       <p>When you update an origin request policy configuration, all the fields are updated
    # 			with the values provided in the request. You cannot update some fields independent of
    # 			others. To update an origin request policy configuration:</p>
    # 		       <ol>
    #             <li>
    # 				           <p>Use <code>GetOriginRequestPolicyConfig</code> to get the current configuration.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Locally modify the fields in the origin request policy configuration that you
    # 					want to update.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Call <code>UpdateOriginRequestPolicy</code> by providing the entire origin
    # 					request policy configuration, including the fields that you modified and those
    # 					that you didn’t.</p>
    # 			         </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::UpdateOriginRequestPolicyInput}.
    #
    # @option params [OriginRequestPolicyConfig] :origin_request_policy_config
    #   <p>An origin request policy configuration.</p>
    #
    # @option params [String] :id
    #   <p>The unique identifier for the origin request policy that you are updating. The identifier is
    #   			returned in a cache behavior’s <code>OriginRequestPolicyId</code> field in the response
    #   			to <code>GetDistributionConfig</code>.</p>
    #
    # @option params [String] :if_match
    #   <p>The version of the origin request policy that you are updating. The version is returned in
    #   			the origin request policy’s <code>ETag</code> field in the response to
    #   			<code>GetOriginRequestPolicyConfig</code>.</p>
    #
    # @return [Types::UpdateOriginRequestPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_origin_request_policy(
    #     origin_request_policy_config: {
    #       comment: 'Comment',
    #       member_name: 'Name', # required
    #       headers_config: {
    #         header_behavior: 'none', # required - accepts none, whitelist, allViewer, allViewerAndWhitelistCloudFront
    #         headers: {
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         }
    #       }, # required
    #       cookies_config: {
    #         cookie_behavior: 'none', # required - accepts none, whitelist, all
    #         cookies: {
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         }
    #       }, # required
    #       query_strings_config: {
    #         query_string_behavior: 'none', # required - accepts none, whitelist, all
    #         query_strings: {
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         }
    #       } # required
    #     }, # required
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateOriginRequestPolicyOutput
    #   resp.origin_request_policy #=> Types::OriginRequestPolicy
    #   resp.origin_request_policy.id #=> String
    #   resp.origin_request_policy.last_modified_time #=> Time
    #   resp.origin_request_policy.origin_request_policy_config #=> Types::OriginRequestPolicyConfig
    #   resp.origin_request_policy.origin_request_policy_config.comment #=> String
    #   resp.origin_request_policy.origin_request_policy_config.member_name #=> String
    #   resp.origin_request_policy.origin_request_policy_config.headers_config #=> Types::OriginRequestPolicyHeadersConfig
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.header_behavior #=> String, one of none, whitelist, allViewer, allViewerAndWhitelistCloudFront
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers #=> Types::Headers
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.items #=> Array<String>
    #   resp.origin_request_policy.origin_request_policy_config.headers_config.headers.items[0] #=> String
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config #=> Types::OriginRequestPolicyCookiesConfig
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookie_behavior #=> String, one of none, whitelist, all
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies #=> Types::CookieNames
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.items #=> Array<String>
    #   resp.origin_request_policy.origin_request_policy_config.cookies_config.cookies.items[0] #=> String
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config #=> Types::OriginRequestPolicyQueryStringsConfig
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_string_behavior #=> String, one of none, whitelist, all
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings #=> Types::QueryStringNames
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.quantity #=> Integer
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items #=> Array<String>
    #   resp.origin_request_policy.origin_request_policy_config.query_strings_config.query_strings.items[0] #=> String
    #   resp.e_tag #=> String
    #
    def update_origin_request_policy(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::UpdateOriginRequestPolicyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::UpdateOriginRequestPolicyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::UpdateOriginRequestPolicy
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::TooManyHeadersInOriginRequestPolicy, Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::IllegalUpdate, Errors::TooManyQueryStringsInOriginRequestPolicy, Errors::InconsistentQuantities, Errors::OriginRequestPolicyAlreadyExists, Errors::InvalidArgument, Errors::NoSuchOriginRequestPolicy, Errors::TooManyCookiesInOriginRequestPolicy]),
        data_parser: Parsers::UpdateOriginRequestPolicy
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateOriginRequestPolicy,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_origin_request_policy
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Update public key information. Note that the only value you can change is the comment.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePublicKeyInput}.
    #
    # @option params [PublicKeyConfig] :public_key_config
    #   <p>A public key configuration.</p>
    #
    # @option params [String] :id
    #   <p>The identifier of the public key that you are updating.</p>
    #
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the public key to update.
    #   			For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    # @return [Types::UpdatePublicKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_public_key(
    #     public_key_config: {
    #       caller_reference: 'CallerReference', # required
    #       member_name: 'Name', # required
    #       encoded_key: 'EncodedKey', # required
    #       comment: 'Comment'
    #     }, # required
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdatePublicKeyOutput
    #   resp.public_key #=> Types::PublicKey
    #   resp.public_key.id #=> String
    #   resp.public_key.created_time #=> Time
    #   resp.public_key.public_key_config #=> Types::PublicKeyConfig
    #   resp.public_key.public_key_config.caller_reference #=> String
    #   resp.public_key.public_key_config.member_name #=> String
    #   resp.public_key.public_key_config.encoded_key #=> String
    #   resp.public_key.public_key_config.comment #=> String
    #   resp.e_tag #=> String
    #
    def update_public_key(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::UpdatePublicKeyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::UpdatePublicKeyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::UpdatePublicKey
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::PreconditionFailed, Errors::InvalidIfMatchVersion, Errors::NoSuchPublicKey, Errors::IllegalUpdate, Errors::CannotChangeImmutablePublicKeyFields, Errors::InvalidArgument]),
        data_parser: Parsers::UpdatePublicKey
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdatePublicKey,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_public_key
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Updates a real-time log configuration.</p>
    # 		       <p>When you update a real-time log configuration, all the parameters are updated with the
    # 			values provided in the request. You cannot update some parameters independent of others.
    # 			To update a real-time log configuration:</p>
    # 		       <ol>
    #             <li>
    # 				           <p>Call <code>GetRealtimeLogConfig</code> to get the current real-time log
    # 					configuration.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Locally modify the parameters in the real-time log configuration that you want
    # 					to update.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Call this API (<code>UpdateRealtimeLogConfig</code>) by providing the entire
    # 					real-time log configuration, including the parameters that you modified and
    # 					those that you didn’t.</p>
    # 			         </li>
    #          </ol>
    # 		       <p>You cannot update a real-time log configuration’s <code>Name</code> or
    # 			<code>ARN</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRealtimeLogConfigInput}.
    #
    # @option params [Array<EndPoint>] :end_points
    #   <p>Contains information about the Amazon Kinesis data stream where you are sending real-time
    #   			log data.</p>
    #
    # @option params [Array<String>] :fields
    #   <p>A list of fields to include in each real-time log record.</p>
    #   		       <p>For more information about fields, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields">Real-time log configuration fields</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @option params [String] :member_name
    #   <p>The name for this real-time log configuration.</p>
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) for this real-time log configuration.</p>
    #
    # @option params [Integer] :sampling_rate
    #   <p>The sampling rate for this real-time log configuration. The sampling rate determines the
    #   			percentage of viewer requests that are represented in the real-time log data. You must
    #   			provide an integer between 1 and 100, inclusive.</p>
    #
    # @return [Types::UpdateRealtimeLogConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_realtime_log_config(
    #     end_points: [
    #       {
    #         stream_type: 'StreamType', # required
    #         kinesis_stream_config: {
    #           role_arn: 'RoleARN', # required
    #           stream_arn: 'StreamARN' # required
    #         }
    #       }
    #     ],
    #     fields: [
    #       'member'
    #     ],
    #     member_name: 'Name',
    #     arn: 'ARN',
    #     sampling_rate: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateRealtimeLogConfigOutput
    #   resp.realtime_log_config #=> Types::RealtimeLogConfig
    #   resp.realtime_log_config.arn #=> String
    #   resp.realtime_log_config.member_name #=> String
    #   resp.realtime_log_config.sampling_rate #=> Integer
    #   resp.realtime_log_config.end_points #=> Array<EndPoint>
    #   resp.realtime_log_config.end_points[0] #=> Types::EndPoint
    #   resp.realtime_log_config.end_points[0].stream_type #=> String
    #   resp.realtime_log_config.end_points[0].kinesis_stream_config #=> Types::KinesisStreamConfig
    #   resp.realtime_log_config.end_points[0].kinesis_stream_config.role_arn #=> String
    #   resp.realtime_log_config.end_points[0].kinesis_stream_config.stream_arn #=> String
    #   resp.realtime_log_config.fields #=> Array<String>
    #   resp.realtime_log_config.fields[0] #=> String
    #
    def update_realtime_log_config(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::UpdateRealtimeLogConfigInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::UpdateRealtimeLogConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::UpdateRealtimeLogConfig
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::NoSuchRealtimeLogConfig, Errors::InvalidArgument]),
        data_parser: Parsers::UpdateRealtimeLogConfig
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateRealtimeLogConfig,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_realtime_log_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Updates a response headers policy.</p>
    # 		       <p>When you update a response headers policy, the entire policy is replaced. You cannot
    # 			update some policy fields independent of others. To update a response headers policy
    # 			configuration:</p>
    # 		       <ol>
    #             <li>
    # 				           <p>Use <code>GetResponseHeadersPolicyConfig</code> to get the current policy’s
    # 					configuration.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Modify the fields in the response headers policy configuration that you want
    # 					to update.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Call <code>UpdateResponseHeadersPolicy</code>, providing the entire response
    # 					headers policy configuration, including the fields that you modified and those
    # 					that you didn’t.</p>
    # 			         </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::UpdateResponseHeadersPolicyInput}.
    #
    # @option params [ResponseHeadersPolicyConfig] :response_headers_policy_config
    #   <p>A response headers policy configuration.</p>
    #
    # @option params [String] :id
    #   <p>The identifier for the response headers policy that you are updating.</p>
    #
    # @option params [String] :if_match
    #   <p>The version of the response headers policy that you are updating.</p>
    #   		       <p>The version is returned in the cache policy’s <code>ETag</code> field in the response
    #   			to <code>GetResponseHeadersPolicyConfig</code>.</p>
    #
    # @return [Types::UpdateResponseHeadersPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_response_headers_policy(
    #     response_headers_policy_config: {
    #       comment: 'Comment',
    #       member_name: 'Name', # required
    #       cors_config: {
    #         access_control_allow_origins: {
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ] # required
    #         }, # required
    #         access_control_allow_headers: {
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ] # required
    #         }, # required
    #         access_control_allow_methods: {
    #           quantity: 1, # required
    #           items: [
    #             'GET' # accepts GET, POST, OPTIONS, PUT, DELETE, PATCH, HEAD, ALL
    #           ] # required
    #         }, # required
    #         access_control_allow_credentials: false, # required
    #         access_control_expose_headers: {
    #           quantity: 1, # required
    #           items: [
    #             'member'
    #           ]
    #         },
    #         access_control_max_age_sec: 1,
    #         origin_override: false # required
    #       },
    #       security_headers_config: {
    #         xss_protection: {
    #           override: false, # required
    #           protection: false, # required
    #           mode_block: false,
    #           report_uri: 'ReportUri'
    #         },
    #         frame_options: {
    #           override: false, # required
    #           frame_option: 'DENY' # required - accepts DENY, SAMEORIGIN
    #         },
    #         referrer_policy: {
    #           override: false, # required
    #           referrer_policy: 'no-referrer' # required - accepts no-referrer, no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
    #         },
    #         content_security_policy: {
    #           override: false, # required
    #           content_security_policy: 'ContentSecurityPolicy' # required
    #         },
    #         content_type_options: {
    #           override: false # required
    #         },
    #         strict_transport_security: {
    #           override: false, # required
    #           include_subdomains: false,
    #           preload: false,
    #           access_control_max_age_sec: 1 # required
    #         }
    #       },
    #       custom_headers_config: {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             header: 'Header', # required
    #             value: 'Value', # required
    #             override: false # required
    #           }
    #         ]
    #       }
    #     }, # required
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateResponseHeadersPolicyOutput
    #   resp.response_headers_policy #=> Types::ResponseHeadersPolicy
    #   resp.response_headers_policy.id #=> String
    #   resp.response_headers_policy.last_modified_time #=> Time
    #   resp.response_headers_policy.response_headers_policy_config #=> Types::ResponseHeadersPolicyConfig
    #   resp.response_headers_policy.response_headers_policy_config.comment #=> String
    #   resp.response_headers_policy.response_headers_policy_config.member_name #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config #=> Types::ResponseHeadersPolicyCorsConfig
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins #=> Types::ResponseHeadersPolicyAccessControlAllowOrigins
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items #=> Array<String>
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_origins.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers #=> Types::ResponseHeadersPolicyAccessControlAllowHeaders
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items #=> Array<String>
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_headers.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods #=> Types::ResponseHeadersPolicyAccessControlAllowMethods
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items #=> Array<String>
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_methods.items[0] #=> String, one of GET, POST, OPTIONS, PUT, DELETE, PATCH, HEAD, ALL
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_allow_credentials #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers #=> Types::ResponseHeadersPolicyAccessControlExposeHeaders
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items #=> Array<String>
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_expose_headers.items[0] #=> String
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.cors_config.origin_override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config #=> Types::ResponseHeadersPolicySecurityHeadersConfig
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection #=> Types::ResponseHeadersPolicyXSSProtection
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.protection #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.mode_block #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.xss_protection.report_uri #=> String
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.frame_options #=> Types::ResponseHeadersPolicyFrameOptions
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.frame_options.frame_option #=> String, one of DENY, SAMEORIGIN
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy #=> Types::ResponseHeadersPolicyReferrerPolicy
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.referrer_policy.referrer_policy #=> String, one of no-referrer, no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy #=> Types::ResponseHeadersPolicyContentSecurityPolicy
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_security_policy.content_security_policy #=> String
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_type_options #=> Types::ResponseHeadersPolicyContentTypeOptions
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.content_type_options.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security #=> Types::ResponseHeadersPolicyStrictTransportSecurity
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.override #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.include_subdomains #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.preload #=> Boolean
    #   resp.response_headers_policy.response_headers_policy_config.security_headers_config.strict_transport_security.access_control_max_age_sec #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config #=> Types::ResponseHeadersPolicyCustomHeadersConfig
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.quantity #=> Integer
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items #=> Array<ResponseHeadersPolicyCustomHeader>
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0] #=> Types::ResponseHeadersPolicyCustomHeader
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].header #=> String
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].value #=> String
    #   resp.response_headers_policy.response_headers_policy_config.custom_headers_config.items[0].override #=> Boolean
    #   resp.e_tag #=> String
    #
    def update_response_headers_policy(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::UpdateResponseHeadersPolicyInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::UpdateResponseHeadersPolicyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::UpdateResponseHeadersPolicy
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::AccessDenied, Errors::PreconditionFailed, Errors::TooManyCustomHeadersInResponseHeadersPolicy, Errors::InvalidIfMatchVersion, Errors::IllegalUpdate, Errors::NoSuchResponseHeadersPolicy, Errors::InconsistentQuantities, Errors::InvalidArgument, Errors::ResponseHeadersPolicyAlreadyExists]),
        data_parser: Parsers::UpdateResponseHeadersPolicy
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateResponseHeadersPolicy,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_response_headers_policy
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Update a streaming distribution. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStreamingDistributionInput}.
    #
    # @option params [StreamingDistributionConfig] :streaming_distribution_config
    #   <p>The streaming distribution's configuration information.</p>
    #
    # @option params [String] :id
    #   <p>The streaming distribution's id.</p>
    #
    # @option params [String] :if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the
    #   			streaming distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    # @return [Types::UpdateStreamingDistributionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_streaming_distribution(
    #     streaming_distribution_config: {
    #       caller_reference: 'CallerReference', # required
    #       s3_origin: {
    #         domain_name: 'DomainName', # required
    #         origin_access_identity: 'OriginAccessIdentity' # required
    #       }, # required
    #       aliases: {
    #         quantity: 1, # required
    #         items: [
    #           'member'
    #         ]
    #       },
    #       comment: 'Comment', # required
    #       logging: {
    #         enabled: false, # required
    #         bucket: 'Bucket', # required
    #         prefix: 'Prefix' # required
    #       },
    #       trusted_signers: {
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: [
    #           'member'
    #         ]
    #       }, # required
    #       price_class: 'PriceClass_100', # accepts PriceClass_100, PriceClass_200, PriceClass_All
    #       enabled: false # required
    #     }, # required
    #     id: 'Id', # required
    #     if_match: 'IfMatch'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateStreamingDistributionOutput
    #   resp.streaming_distribution #=> Types::StreamingDistribution
    #   resp.streaming_distribution.id #=> String
    #   resp.streaming_distribution.arn #=> String
    #   resp.streaming_distribution.status #=> String
    #   resp.streaming_distribution.last_modified_time #=> Time
    #   resp.streaming_distribution.domain_name #=> String
    #   resp.streaming_distribution.active_trusted_signers #=> Types::ActiveTrustedSigners
    #   resp.streaming_distribution.active_trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.active_trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items #=> Array<Signer>
    #   resp.streaming_distribution.active_trusted_signers.items[0] #=> Types::Signer
    #   resp.streaming_distribution.active_trusted_signers.items[0].aws_account_number #=> String
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids #=> Types::KeyPairIds
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.quantity #=> Integer
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items #=> Array<String>
    #   resp.streaming_distribution.active_trusted_signers.items[0].key_pair_ids.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config #=> Types::StreamingDistributionConfig
    #   resp.streaming_distribution.streaming_distribution_config.caller_reference #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin #=> Types::S3Origin
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.domain_name #=> String
    #   resp.streaming_distribution.streaming_distribution_config.s3_origin.origin_access_identity #=> String
    #   resp.streaming_distribution.streaming_distribution_config.aliases #=> Types::Aliases
    #   resp.streaming_distribution.streaming_distribution_config.aliases.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items #=> Array<String>
    #   resp.streaming_distribution.streaming_distribution_config.aliases.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.comment #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging #=> Types::StreamingLoggingConfig
    #   resp.streaming_distribution.streaming_distribution_config.logging.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.logging.bucket #=> String
    #   resp.streaming_distribution.streaming_distribution_config.logging.prefix #=> String
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers #=> Types::TrustedSigners
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.enabled #=> Boolean
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.quantity #=> Integer
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items #=> Array<String>
    #   resp.streaming_distribution.streaming_distribution_config.trusted_signers.items[0] #=> String
    #   resp.streaming_distribution.streaming_distribution_config.price_class #=> String, one of PriceClass_100, PriceClass_200, PriceClass_All
    #   resp.streaming_distribution.streaming_distribution_config.enabled #=> Boolean
    #   resp.e_tag #=> String
    #
    def update_streaming_distribution(params = {}, options = {}, &block)
      stack = Seahorse::MiddlewareStack.new
      input = Params::UpdateStreamingDistributionInput.build(params)
      stack.use(Seahorse::Middleware::Validate,
        validator: Validators::UpdateStreamingDistributionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Seahorse::Middleware::Build,
        builder: Builders::UpdateStreamingDistribution
      )
      stack.use(Seahorse::HTTP::Middleware::ContentLength)
      stack.use(Seahorse::Middleware::Parse,
        error_parser: Seahorse::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::MissingBody, Errors::PreconditionFailed, Errors::IllegalUpdate, Errors::InconsistentQuantities, Errors::TrustedSignerDoesNotExist, Errors::CNAMEAlreadyExists, Errors::InvalidArgument, Errors::NoSuchStreamingDistribution, Errors::AccessDenied, Errors::InvalidIfMatchVersion, Errors::TooManyTrustedSigners, Errors::InvalidOriginAccessIdentity, Errors::TooManyStreamingDistributionCNAMEs]),
        data_parser: Parsers::UpdateStreamingDistribution
      )
      stack.use(Seahorse::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Seahorse::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateStreamingDistribution,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Seahorse::Context.new(
          request: Seahorse::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Seahorse::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_streaming_distribution
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Seahorse::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end

    def output_stream(options = {}, &block)
      return options[:output_stream] if options[:output_stream]
      return Seahorse::BlockIO.new(block) if block

      StringIO.new
    end
  end
end
