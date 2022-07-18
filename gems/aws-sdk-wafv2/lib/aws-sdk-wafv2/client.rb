# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::WAFV2
  # An API client for AWSWAF_20190729
  # See {#initialize} for a full list of supported configuration options
  # <fullname>WAF</fullname>
  #          <note>
  #             <p>This is the latest version of the <b>WAF</b> API,
  #             released in November, 2019. The names of the entities that you use to access this API,
  #             like endpoints and namespaces, all have the versioning information added, like "V2" or
  #             "v2", to distinguish from the prior version. We recommend migrating your resources to
  #             this version, because it has a number of significant improvements.</p>
  #             <p>If you used WAF prior to this release, you can't use this WAFV2 API to access any
  #             WAF resources that you created before. You can access your old rules, web ACLs, and
  #             other WAF resources only through the WAF Classic APIs. The WAF Classic APIs
  #             have retained the prior names, endpoints, and namespaces. </p>
  #             <p>For information, including how to migrate your WAF resources to this version,
  #             see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
  #          </note>
  #          <p>WAF is a web application firewall that lets you monitor the HTTP and HTTPS
  #          requests that are forwarded to Amazon CloudFront, an Amazon API Gateway REST API, an Application Load Balancer, or an AppSync
  #          GraphQL API. WAF also lets you control access to your content. Based on conditions that
  #          you specify, such as the IP addresses that requests originate from or the values of query
  #          strings, the Amazon API Gateway REST API, CloudFront distribution, the Application Load Balancer, or the AppSync GraphQL
  #          API responds to requests either with the requested content or with an HTTP 403 status code
  #          (Forbidden). You also can configure CloudFront to return a custom error page when a request is
  #          blocked.</p>
  #          <p>This API guide is for developers who need detailed information about WAF API actions,
  #          data types, and errors. For detailed information about WAF features and an overview of
  #          how to use WAF, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html">WAF Developer
  #          Guide</a>.</p>
  #          <p>You can make calls using the endpoints listed in <a href="https://docs.aws.amazon.com/general/latest/gr/waf.html">WAF endpoints and quotas</a>. </p>
  #          <ul>
  #             <li>
  #                <p>For regional applications, you can use any of the endpoints in the list.
  #                A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API. </p>
  #             </li>
  #             <li>
  #                <p>For Amazon CloudFront applications, you must use the API endpoint listed for
  #                US East (N. Virginia): us-east-1.</p>
  #             </li>
  #          </ul>
  #          <p>Alternatively, you can use one of the Amazon Web Services SDKs to access an API that's tailored to the
  #          programming language or platform that you're using. For more information, see <a href="http://aws.amazon.com/tools/#SDKs">Amazon Web Services SDKs</a>.</p>
  #          <p>We currently provide two versions of the WAF API: this API and the prior versions,
  #          the classic WAF APIs. This new API provides the same functionality as the older versions,
  #          with the following major improvements:</p>
  #          <ul>
  #             <li>
  #                <p>You use one API for both global and regional applications. Where you need to
  #                distinguish the scope, you specify a <code>Scope</code> parameter and set it to
  #                   <code>CLOUDFRONT</code> or <code>REGIONAL</code>. </p>
  #             </li>
  #             <li>
  #                <p>You can define a web ACL or rule group with a single call, and update it with a
  #                single call. You define all rule specifications in JSON format, and pass them to your
  #                rule group or web ACL calls.</p>
  #             </li>
  #             <li>
  #                <p>The limits WAF places on the use of rules more closely reflects the cost of
  #                running each type of rule. Rule groups include capacity settings, so you know the
  #                maximum cost of a rule group when you use it.</p>
  #             </li>
  #          </ul>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::WAFV2::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates a web ACL with a regional application resource, to protect the resource.
    #          A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #          <p>For Amazon CloudFront, don't use this call. Instead, use your CloudFront distribution configuration. To
    #          associate a web ACL, in the CloudFront call <code>UpdateDistribution</code>, set the web ACL ID
    #          to the Amazon Resource Name (ARN) of the web ACL. For information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html">UpdateDistribution</a>.</p>
    #
    #          <p>When you make changes to web ACLs or web ACL components, like rules and rule groups, WAF propagates the changes everywhere that the web ACL and its components are stored and used. Your changes are applied within seconds, but there might be a brief period of inconsistency when the changes have arrived in some places and not in others. So, for example, if you change a rule action setting, the action might be the old action in one area and the new action in another area. Or if you add an IP address to an IP set used in a blocking rule, the new address might briefly be blocked in one area while still allowed in another. This temporary inconsistency can occur when you first associate a web ACL with an Amazon Web Services resource and when you change a web ACL that is already associated with a resource. Generally, any inconsistencies of this type last only a few seconds.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateWebACLInput}.
    #
    # @option params [String] :web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL that you want to associate with the
    #            resource.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to associate with the web ACL. </p>
    #
    #            <p>The ARN must be in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon API Gateway REST API: <code>arn:aws:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an AppSync GraphQL API: <code>arn:aws:appsync:<i>region</i>:<i>account-id</i>:apis/<i>GraphQLApiId</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::AssociateWebACLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_web_acl(
    #     web_acl_arn: 'WebACLArn', # required
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateWebACLOutput
    #
    def associate_web_acl(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateWebACLInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateWebACLInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateWebACL
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFUnavailableEntityException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::AssociateWebACL
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateWebACL,
        stubs: @stubs,
        params_class: Params::AssociateWebACLOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_web_acl
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the web ACL capacity unit (WCU) requirements for a specified scope and set of rules.
    #          You can use this to check the capacity requirements for the rules you want to use in a
    #          <a>RuleGroup</a> or <a>WebACL</a>.
    #          </p>
    #          <p>WAF uses WCUs to calculate and control the operating
    #          resources that are used to run your rules, rule groups, and web ACLs. WAF
    #          calculates capacity differently for each rule type, to reflect the relative cost of each rule.
    #          Simple rules that cost little to run use fewer WCUs than more complex rules
    # 				that use more processing power.
    # 				Rule group capacity is fixed at creation, which helps users plan their
    #          web ACL WCU usage when they use a rule group.
    #          The WCU limit for web ACLs is 1,500.  </p>
    #
    # @param [Hash] params
    #   See {Types::CheckCapacityInput}.
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Rule>] :rules
    #   <p>An array of <a>Rule</a> that you're configuring to use in a rule group or web
    #            ACL. </p>
    #
    # @return [Types::CheckCapacityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.check_capacity(
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     rules: [
    #       {
    #         name: 'Name', # required
    #         priority: 1, # required
    #         statement: {
    #           byte_match_statement: {
    #             search_string: 'SearchString', # required
    #             field_to_match: {
    #               single_header: {
    #                 name: 'Name' # required
    #               },
    #               single_query_argument: {
    #                 name: 'Name' # required
    #               },
    #               all_query_arguments: { },
    #               uri_path: { },
    #               query_string: { },
    #               body: {
    #                 oversize_handling: 'CONTINUE' # accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               member_method: { },
    #               json_body: {
    #                 match_pattern: {
    #                   all: { },
    #                   included_paths: [
    #                     'member'
    #                   ]
    #                 }, # required
    #                 match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #                 invalid_fallback_behavior: 'MATCH', # accepts ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"]
    #                 oversize_handling: 'CONTINUE' # accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: {
    #                   included_headers: [
    #                     'member'
    #                   ],
    #                 }, # required
    #                 match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #                 oversize_handling: 'CONTINUE' # required - accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               cookies: {
    #                 match_pattern: {
    #                   included_cookies: [
    #                     'member'
    #                   ],
    #                 }, # required
    #                 match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #                 oversize_handling: 'CONTINUE' # required - accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               }
    #             }, # required
    #             text_transformations: [
    #               {
    #                 priority: 1, # required
    #                 type: 'NONE' # required - accepts ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"]
    #               }
    #             ], # required
    #             positional_constraint: 'EXACTLY' # required - accepts ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"]
    #           },
    #           sqli_match_statement: {
    #           },
    #           xss_match_statement: {
    #           },
    #           size_constraint_statement: {
    #             comparison_operator: 'EQ', # required - accepts ["EQ", "NE", "LE", "LT", "GE", "GT"]
    #             size: 1, # required
    #           },
    #           geo_match_statement: {
    #             country_codes: [
    #               'AF' # accepts ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]
    #             ],
    #             forwarded_ip_config: {
    #               header_name: 'HeaderName', # required
    #               fallback_behavior: 'MATCH' # required - accepts ["MATCH", "NO_MATCH"]
    #             }
    #           },
    #           rule_group_reference_statement: {
    #             arn: 'ARN', # required
    #             excluded_rules: [
    #               {
    #                 name: 'Name' # required
    #               }
    #             ]
    #           },
    #           ip_set_reference_statement: {
    #             arn: 'ARN', # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: 'HeaderName', # required
    #               fallback_behavior: 'MATCH', # required - accepts ["MATCH", "NO_MATCH"]
    #               position: 'FIRST' # required - accepts ["FIRST", "LAST", "ANY"]
    #             }
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: 'ARN', # required
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: 'IP', # required - accepts ["IP", "FORWARDED_IP"]
    #           },
    #           and_statement: {
    #           },
    #           or_statement: {
    #           },
    #           not_statement: {
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: 'VendorName', # required
    #             name: 'Name', # required
    #             version: 'Version',
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: 'LoginPath',
    #                 payload_type: 'JSON', # accepts ["JSON", "FORM_ENCODED"]
    #                 username_field: {
    #                   identifier: 'Identifier' # required
    #                 },
    #                 password_field: {
    #                   identifier: 'Identifier' # required
    #                 }
    #               }
    #             ]
    #           },
    #           label_match_statement: {
    #             scope: 'LABEL', # required - accepts ["LABEL", "NAMESPACE"]
    #             key: 'Key' # required
    #           },
    #           regex_match_statement: {
    #             regex_string: 'RegexString', # required
    #           }
    #         }, # required
    #         action: {
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: 'CustomResponseBodyKey',
    #               response_headers: [
    #                 {
    #                   name: 'Name', # required
    #                   value: 'Value' # required
    #                 }
    #               ]
    #             }
    #           },
    #           allow: {
    #             custom_request_handling: {
    #             }
    #           },
    #           count: {
    #           },
    #           captcha: {
    #           }
    #         },
    #         override_action: {
    #           none: { }
    #         },
    #         rule_labels: [
    #           {
    #             name: 'Name' # required
    #           }
    #         ],
    #         visibility_config: {
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: 'MetricName' # required
    #         }, # required
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1 # required
    #           }
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CheckCapacityOutput
    #   resp.data.capacity #=> Integer
    #
    def check_capacity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CheckCapacityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CheckCapacityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CheckCapacity
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFExpiredManagedRuleGroupVersionException, Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInvalidResourceException, Errors::WAFSubscriptionNotFoundException, Errors::WAFInternalErrorException, Errors::WAFUnavailableEntityException, Errors::WAFLimitsExceededException]),
        data_parser: Parsers::CheckCapacity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CheckCapacity,
        stubs: @stubs,
        params_class: Params::CheckCapacityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :check_capacity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an <a>IPSet</a>, which you use to identify web requests that
    #          originate from specific IP addresses or ranges of IP addresses. For example, if you're
    #          receiving a lot of requests from a ranges of IP addresses, you can configure WAF to
    #          block them using an IPSet that lists those IP addresses. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateIPSetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :description
    #   <p>A description of the IP set that helps with identification. </p>
    #
    # @option params [String] :ip_address_version
    #   <p>The version of the IP addresses, either <code>IPV4</code> or <code>IPV6</code>. </p>
    #
    # @option params [Array<String>] :addresses
    #   <p>Contains an array of strings that specifies zero or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges except for /0. </p>
    #            <p>Example address strings: </p>
    #            <ul>
    #               <li>
    #                  <p>To configure WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify
    #                  <code>192.0.2.0/24</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>.</p>
    #            <p>Example JSON <code>Addresses</code> specifications: </p>
    #            <ul>
    #               <li>
    #                  <p>Empty array: <code>"Addresses": []</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Array with one address: <code>"Addresses": ["192.0.2.44/32"]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Array with three addresses: <code>"Addresses": ["192.0.2.44/32", "192.0.2.0/24", "192.0.0.0/16"]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>INVALID specification: <code>"Addresses": [""]</code> INVALID </p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    #
    # @return [Types::CreateIPSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ip_set(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     description: 'Description',
    #     ip_address_version: 'IPV4', # required - accepts ["IPV4", "IPV6"]
    #     addresses: [
    #       'member'
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIPSetOutput
    #   resp.data.summary #=> Types::IPSetSummary
    #   resp.data.summary.name #=> String
    #   resp.data.summary.id #=> String
    #   resp.data.summary.description #=> String
    #   resp.data.summary.lock_token #=> String
    #   resp.data.summary.arn #=> String
    #
    def create_ip_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIPSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIPSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIPSet
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFOptimisticLockException, Errors::WAFDuplicateItemException, Errors::WAFInvalidParameterException, Errors::WAFTagOperationException, Errors::WAFInternalErrorException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInvalidOperationException, Errors::WAFLimitsExceededException]),
        data_parser: Parsers::CreateIPSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIPSet,
        stubs: @stubs,
        params_class: Params::CreateIPSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_ip_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <a>RegexPatternSet</a>, which you reference in a <a>RegexPatternSetReferenceStatement</a>, to have WAF inspect a web request
    #          component for the specified patterns.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRegexPatternSetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :description
    #   <p>A description of the set that helps with identification. </p>
    #
    # @option params [Array<Regex>] :regular_expression_list
    #   <p>Array of regular expression strings. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    #
    # @return [Types::CreateRegexPatternSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_regex_pattern_set(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     description: 'Description',
    #     regular_expression_list: [
    #       {
    #         regex_string: 'RegexString'
    #       }
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRegexPatternSetOutput
    #   resp.data.summary #=> Types::RegexPatternSetSummary
    #   resp.data.summary.name #=> String
    #   resp.data.summary.id #=> String
    #   resp.data.summary.description #=> String
    #   resp.data.summary.lock_token #=> String
    #   resp.data.summary.arn #=> String
    #
    def create_regex_pattern_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRegexPatternSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRegexPatternSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRegexPatternSet
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFOptimisticLockException, Errors::WAFDuplicateItemException, Errors::WAFInvalidParameterException, Errors::WAFTagOperationException, Errors::WAFInternalErrorException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInvalidOperationException, Errors::WAFLimitsExceededException]),
        data_parser: Parsers::CreateRegexPatternSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRegexPatternSet,
        stubs: @stubs,
        params_class: Params::CreateRegexPatternSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_regex_pattern_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <a>RuleGroup</a> per the specifications provided. </p>
    #          <p> A rule group defines a collection of rules to inspect and control web requests that you can use in a <a>WebACL</a>. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateRuleGroupInput}.
    #
    # @option params [String] :name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :capacity
    #   <p>The web ACL capacity units (WCUs) required for this rule group.</p>
    #             <p>When you create your own rule group, you define this, and you cannot change it after creation.
    #             When you add or modify the rules in a rule group, WAF enforces this limit. You can check the capacity
    #             for a set of rules using <a>CheckCapacity</a>.</p>
    #             <p>WAF uses WCUs to calculate and control the operating
    #            resources that are used to run your rules, rule groups, and web ACLs. WAF
    #            calculates capacity differently for each rule type, to reflect the relative cost of each rule.
    #            Simple rules that cost little to run use fewer WCUs than more complex rules
    #   				that use more processing power.
    #   				Rule group capacity is fixed at creation, which helps users plan their
    #            web ACL WCU usage when they use a rule group.
    #            The WCU limit for web ACLs is 1,500.  </p>
    #
    # @option params [String] :description
    #   <p>A description of the rule group that helps with identification. </p>
    #
    # @option params [Array<Rule>] :rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to allow, block, or count. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #
    # @option params [VisibilityConfig] :visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    #
    # @option params [Hash<String, CustomResponseBody>] :custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the rule group, and then use them in the rules that you define in the rule group. </p>
    #            <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    # @return [Types::CreateRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule_group(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     capacity: 1, # required
    #     description: 'Description',
    #     rules: [
    #       {
    #         name: 'Name', # required
    #         priority: 1, # required
    #         statement: {
    #           byte_match_statement: {
    #             search_string: 'SearchString', # required
    #             field_to_match: {
    #               single_header: {
    #                 name: 'Name' # required
    #               },
    #               single_query_argument: {
    #                 name: 'Name' # required
    #               },
    #               all_query_arguments: { },
    #               uri_path: { },
    #               query_string: { },
    #               body: {
    #                 oversize_handling: 'CONTINUE' # accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               member_method: { },
    #               json_body: {
    #                 match_pattern: {
    #                   all: { },
    #                   included_paths: [
    #                     'member'
    #                   ]
    #                 }, # required
    #                 match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #                 invalid_fallback_behavior: 'MATCH', # accepts ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"]
    #                 oversize_handling: 'CONTINUE' # accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: {
    #                   included_headers: [
    #                     'member'
    #                   ],
    #                 }, # required
    #                 match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #                 oversize_handling: 'CONTINUE' # required - accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               cookies: {
    #                 match_pattern: {
    #                   included_cookies: [
    #                     'member'
    #                   ],
    #                 }, # required
    #                 match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #                 oversize_handling: 'CONTINUE' # required - accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               }
    #             }, # required
    #             text_transformations: [
    #               {
    #                 priority: 1, # required
    #                 type: 'NONE' # required - accepts ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"]
    #               }
    #             ], # required
    #             positional_constraint: 'EXACTLY' # required - accepts ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"]
    #           },
    #           sqli_match_statement: {
    #           },
    #           xss_match_statement: {
    #           },
    #           size_constraint_statement: {
    #             comparison_operator: 'EQ', # required - accepts ["EQ", "NE", "LE", "LT", "GE", "GT"]
    #             size: 1, # required
    #           },
    #           geo_match_statement: {
    #             country_codes: [
    #               'AF' # accepts ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]
    #             ],
    #             forwarded_ip_config: {
    #               header_name: 'HeaderName', # required
    #               fallback_behavior: 'MATCH' # required - accepts ["MATCH", "NO_MATCH"]
    #             }
    #           },
    #           rule_group_reference_statement: {
    #             arn: 'ARN', # required
    #             excluded_rules: [
    #               {
    #                 name: 'Name' # required
    #               }
    #             ]
    #           },
    #           ip_set_reference_statement: {
    #             arn: 'ARN', # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: 'HeaderName', # required
    #               fallback_behavior: 'MATCH', # required - accepts ["MATCH", "NO_MATCH"]
    #               position: 'FIRST' # required - accepts ["FIRST", "LAST", "ANY"]
    #             }
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: 'ARN', # required
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: 'IP', # required - accepts ["IP", "FORWARDED_IP"]
    #           },
    #           and_statement: {
    #           },
    #           or_statement: {
    #           },
    #           not_statement: {
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: 'VendorName', # required
    #             name: 'Name', # required
    #             version: 'Version',
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: 'LoginPath',
    #                 payload_type: 'JSON', # accepts ["JSON", "FORM_ENCODED"]
    #                 username_field: {
    #                   identifier: 'Identifier' # required
    #                 },
    #                 password_field: {
    #                   identifier: 'Identifier' # required
    #                 }
    #               }
    #             ]
    #           },
    #           label_match_statement: {
    #             scope: 'LABEL', # required - accepts ["LABEL", "NAMESPACE"]
    #             key: 'Key' # required
    #           },
    #           regex_match_statement: {
    #             regex_string: 'RegexString', # required
    #           }
    #         }, # required
    #         action: {
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: 'CustomResponseBodyKey',
    #               response_headers: [
    #                 {
    #                   name: 'Name', # required
    #                   value: 'Value' # required
    #                 }
    #               ]
    #             }
    #           },
    #           allow: {
    #             custom_request_handling: {
    #             }
    #           },
    #           count: {
    #           },
    #           captcha: {
    #           }
    #         },
    #         override_action: {
    #           none: { }
    #         },
    #         rule_labels: [
    #           {
    #             name: 'Name' # required
    #           }
    #         ],
    #         visibility_config: {
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: 'MetricName' # required
    #         }, # required
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1 # required
    #           }
    #         }
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     custom_response_bodies: {
    #       'key' => {
    #         content_type: 'TEXT_PLAIN', # required - accepts ["TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"]
    #         content: 'Content' # required
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRuleGroupOutput
    #   resp.data.summary #=> Types::RuleGroupSummary
    #   resp.data.summary.name #=> String
    #   resp.data.summary.id #=> String
    #   resp.data.summary.description #=> String
    #   resp.data.summary.lock_token #=> String
    #   resp.data.summary.arn #=> String
    #
    def create_rule_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRuleGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRuleGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRuleGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFOptimisticLockException, Errors::WAFDuplicateItemException, Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFSubscriptionNotFoundException, Errors::WAFTagOperationException, Errors::WAFInternalErrorException, Errors::WAFUnavailableEntityException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInvalidOperationException, Errors::WAFLimitsExceededException]),
        data_parser: Parsers::CreateRuleGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRuleGroup,
        stubs: @stubs,
        params_class: Params::CreateRuleGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_rule_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <a>WebACL</a> per the specifications provided.</p>
    #          <p> A web ACL defines a collection of rules to use to inspect and control web requests. Each rule has an action defined (allow, block, or count) for requests that match the statement of the rule. In the web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a web ACL can be a combination of the types <a>Rule</a>, <a>RuleGroup</a>, and managed rule group. You can associate a web ACL with one or more Amazon Web Services resources to protect. The resources can be an Amazon CloudFront distribution, an Amazon API Gateway REST API, an Application Load Balancer, or an AppSync GraphQL API.  </p>
    #
    # @param [Hash] params
    #   See {Types::CreateWebACLInput}.
    #
    # @option params [String] :name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [DefaultAction] :default_action
    #   <p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>
    #
    # @option params [String] :description
    #   <p>A description of the web ACL that helps with identification. </p>
    #
    # @option params [Array<Rule>] :rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to allow, block, or count. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #
    # @option params [VisibilityConfig] :visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    #
    # @option params [Hash<String, CustomResponseBody>] :custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the web ACL, and then use them in the rules and default actions that you define in the web ACL. </p>
    #            <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    # @option params [CaptchaConfig] :captcha_config
    #   <p>Specifies how WAF should handle <code>CAPTCHA</code> evaluations for rules that don't have their own <code>CaptchaConfig</code> settings. If you don't specify this, WAF uses its default settings for <code>CaptchaConfig</code>. </p>
    #
    # @return [Types::CreateWebACLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_web_acl(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     default_action: {
    #       block: {
    #         custom_response: {
    #           response_code: 1, # required
    #           custom_response_body_key: 'CustomResponseBodyKey',
    #           response_headers: [
    #             {
    #               name: 'Name', # required
    #               value: 'Value' # required
    #             }
    #           ]
    #         }
    #       },
    #       allow: {
    #         custom_request_handling: {
    #         }
    #       }
    #     }, # required
    #     description: 'Description',
    #     rules: [
    #       {
    #         name: 'Name', # required
    #         priority: 1, # required
    #         statement: {
    #           byte_match_statement: {
    #             search_string: 'SearchString', # required
    #             field_to_match: {
    #               single_header: {
    #                 name: 'Name' # required
    #               },
    #               single_query_argument: {
    #                 name: 'Name' # required
    #               },
    #               all_query_arguments: { },
    #               uri_path: { },
    #               query_string: { },
    #               body: {
    #                 oversize_handling: 'CONTINUE' # accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               member_method: { },
    #               json_body: {
    #                 match_pattern: {
    #                   all: { },
    #                   included_paths: [
    #                     'member'
    #                   ]
    #                 }, # required
    #                 match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #                 invalid_fallback_behavior: 'MATCH', # accepts ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"]
    #                 oversize_handling: 'CONTINUE' # accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: {
    #                   included_headers: [
    #                     'member'
    #                   ],
    #                 }, # required
    #                 match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #                 oversize_handling: 'CONTINUE' # required - accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               cookies: {
    #                 match_pattern: {
    #                   included_cookies: [
    #                     'member'
    #                   ],
    #                 }, # required
    #                 match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #                 oversize_handling: 'CONTINUE' # required - accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               }
    #             }, # required
    #             text_transformations: [
    #               {
    #                 priority: 1, # required
    #                 type: 'NONE' # required - accepts ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"]
    #               }
    #             ], # required
    #             positional_constraint: 'EXACTLY' # required - accepts ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"]
    #           },
    #           sqli_match_statement: {
    #           },
    #           xss_match_statement: {
    #           },
    #           size_constraint_statement: {
    #             comparison_operator: 'EQ', # required - accepts ["EQ", "NE", "LE", "LT", "GE", "GT"]
    #             size: 1, # required
    #           },
    #           geo_match_statement: {
    #             country_codes: [
    #               'AF' # accepts ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]
    #             ],
    #             forwarded_ip_config: {
    #               header_name: 'HeaderName', # required
    #               fallback_behavior: 'MATCH' # required - accepts ["MATCH", "NO_MATCH"]
    #             }
    #           },
    #           rule_group_reference_statement: {
    #             arn: 'ARN', # required
    #             excluded_rules: [
    #               {
    #                 name: 'Name' # required
    #               }
    #             ]
    #           },
    #           ip_set_reference_statement: {
    #             arn: 'ARN', # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: 'HeaderName', # required
    #               fallback_behavior: 'MATCH', # required - accepts ["MATCH", "NO_MATCH"]
    #               position: 'FIRST' # required - accepts ["FIRST", "LAST", "ANY"]
    #             }
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: 'ARN', # required
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: 'IP', # required - accepts ["IP", "FORWARDED_IP"]
    #           },
    #           and_statement: {
    #           },
    #           or_statement: {
    #           },
    #           not_statement: {
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: 'VendorName', # required
    #             name: 'Name', # required
    #             version: 'Version',
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: 'LoginPath',
    #                 payload_type: 'JSON', # accepts ["JSON", "FORM_ENCODED"]
    #                 username_field: {
    #                   identifier: 'Identifier' # required
    #                 },
    #                 password_field: {
    #                   identifier: 'Identifier' # required
    #                 }
    #               }
    #             ]
    #           },
    #           label_match_statement: {
    #             scope: 'LABEL', # required - accepts ["LABEL", "NAMESPACE"]
    #             key: 'Key' # required
    #           },
    #           regex_match_statement: {
    #             regex_string: 'RegexString', # required
    #           }
    #         }, # required
    #         action: {
    #           count: {
    #           },
    #           captcha: {
    #           }
    #         },
    #         override_action: {
    #           none: { }
    #         },
    #         rule_labels: [
    #           {
    #             name: 'Name' # required
    #           }
    #         ],
    #         visibility_config: {
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: 'MetricName' # required
    #         }, # required
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1 # required
    #           }
    #         }
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     custom_response_bodies: {
    #       'key' => {
    #         content_type: 'TEXT_PLAIN', # required - accepts ["TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"]
    #         content: 'Content' # required
    #       }
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWebACLOutput
    #   resp.data.summary #=> Types::WebACLSummary
    #   resp.data.summary.name #=> String
    #   resp.data.summary.id #=> String
    #   resp.data.summary.description #=> String
    #   resp.data.summary.lock_token #=> String
    #   resp.data.summary.arn #=> String
    #
    def create_web_acl(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWebACLInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWebACLInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWebACL
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFOptimisticLockException, Errors::WAFInvalidParameterException, Errors::WAFSubscriptionNotFoundException, Errors::WAFUnavailableEntityException, Errors::WAFTagOperationInternalErrorException, Errors::WAFLimitsExceededException, Errors::WAFDuplicateItemException, Errors::WAFNonexistentItemException, Errors::WAFInvalidResourceException, Errors::WAFTagOperationException, Errors::WAFConfigurationWarningException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::CreateWebACL
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWebACL,
        stubs: @stubs,
        params_class: Params::CreateWebACLOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_web_acl
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes all rule groups that are managed by Firewall Manager for the specified web ACL. </p>
    #          <p>You can only use this if <code>ManagedByFirewallManager</code> is false in the specified
    #             <a>WebACL</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFirewallManagerRuleGroupsInput}.
    #
    # @option params [String] :web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL.</p>
    #
    # @option params [String] :web_acl_lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    # @return [Types::DeleteFirewallManagerRuleGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_firewall_manager_rule_groups(
    #     web_acl_arn: 'WebACLArn', # required
    #     web_acl_lock_token: 'WebACLLockToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFirewallManagerRuleGroupsOutput
    #   resp.data.next_web_acl_lock_token #=> String
    #
    def delete_firewall_manager_rule_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFirewallManagerRuleGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFirewallManagerRuleGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFirewallManagerRuleGroups
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFOptimisticLockException, Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::DeleteFirewallManagerRuleGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFirewallManagerRuleGroups,
        stubs: @stubs,
        params_class: Params::DeleteFirewallManagerRuleGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_firewall_manager_rule_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified <a>IPSet</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIPSetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    # @return [Types::DeleteIPSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ip_set(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     id: 'Id', # required
    #     lock_token: 'LockToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIPSetOutput
    #
    def delete_ip_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIPSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIPSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIPSet
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFAssociatedItemException, Errors::WAFOptimisticLockException, Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFTagOperationException, Errors::WAFInternalErrorException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::DeleteIPSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIPSet,
        stubs: @stubs,
        params_class: Params::DeleteIPSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_ip_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the <a>LoggingConfiguration</a> from the specified web ACL.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLoggingConfigurationInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL from which you want to delete the
    #          <a>LoggingConfiguration</a>.</p>
    #
    # @return [Types::DeleteLoggingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_logging_configuration(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLoggingConfigurationOutput
    #
    def delete_logging_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLoggingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLoggingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLoggingConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFOptimisticLockException, Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::DeleteLoggingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLoggingConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteLoggingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_logging_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Permanently deletes an IAM policy from the specified rule group.</p>
    #          <p>You must be the owner of the rule group to perform this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePermissionPolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group from which you want to delete the
    #            policy.</p>
    #            <p>You must be the owner of the rule group to perform this operation.</p>
    #
    # @return [Types::DeletePermissionPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_permission_policy(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePermissionPolicyOutput
    #
    def delete_permission_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePermissionPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePermissionPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePermissionPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException]),
        data_parser: Parsers::DeletePermissionPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePermissionPolicy,
        stubs: @stubs,
        params_class: Params::DeletePermissionPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_permission_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified <a>RegexPatternSet</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRegexPatternSetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    # @return [Types::DeleteRegexPatternSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_regex_pattern_set(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     id: 'Id', # required
    #     lock_token: 'LockToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRegexPatternSetOutput
    #
    def delete_regex_pattern_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRegexPatternSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRegexPatternSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRegexPatternSet
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFAssociatedItemException, Errors::WAFOptimisticLockException, Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFTagOperationException, Errors::WAFInternalErrorException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::DeleteRegexPatternSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRegexPatternSet,
        stubs: @stubs,
        params_class: Params::DeleteRegexPatternSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_regex_pattern_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified <a>RuleGroup</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRuleGroupInput}.
    #
    # @option params [String] :name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    # @return [Types::DeleteRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule_group(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     id: 'Id', # required
    #     lock_token: 'LockToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRuleGroupOutput
    #
    def delete_rule_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRuleGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRuleGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRuleGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFAssociatedItemException, Errors::WAFOptimisticLockException, Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFTagOperationException, Errors::WAFInternalErrorException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::DeleteRuleGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRuleGroup,
        stubs: @stubs,
        params_class: Params::DeleteRuleGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_rule_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified <a>WebACL</a>. </p>
    #          <p>You can only use this if <code>ManagedByFirewallManager</code> is false in the specified
    #             <a>WebACL</a>. </p>
    #         <note>
    #             <p>Before deleting any web ACL, first disassociate it from all resources.</p>
    #             <ul>
    #                <li>
    #                   <p>To retrieve a list of the resources that are associated with a web ACL, use the following calls:</p>
    #                   <ul>
    #                      <li>
    #                         <p>For regional resources, call <a>ListResourcesForWebACL</a>.</p>
    #                      </li>
    #                      <li>
    #                         <p>For Amazon CloudFront distributions, use the CloudFront call <code>ListDistributionsByWebACLId</code>.
    #                       For information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListDistributionsByWebACLId.html">ListDistributionsByWebACLId</a>.</p>
    #                      </li>
    #                   </ul>
    #                </li>
    #                <li>
    #                   <p>To disassociate a resource from a web ACL, use the following calls:</p>
    #                   <ul>
    #                      <li>
    #                         <p>For regional resources, call <a>DisassociateWebACL</a>.</p>
    #                      </li>
    #                      <li>
    #                         <p>For Amazon CloudFront distributions, provide an empty web ACL ID in the CloudFront call
    #             <code>UpdateDistribution</code>. For information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html">UpdateDistribution</a>.</p>
    #                      </li>
    #                   </ul>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteWebACLInput}.
    #
    # @option params [String] :name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    # @return [Types::DeleteWebACLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_web_acl(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     id: 'Id', # required
    #     lock_token: 'LockToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWebACLOutput
    #
    def delete_web_acl(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWebACLInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWebACLInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWebACL
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFAssociatedItemException, Errors::WAFOptimisticLockException, Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFTagOperationException, Errors::WAFInternalErrorException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::DeleteWebACL
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWebACL,
        stubs: @stubs,
        params_class: Params::DeleteWebACLOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_web_acl
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides high-level information for a managed rule group, including descriptions of the
    #          rules. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeManagedRuleGroupInput}.
    #
    # @option params [String] :vendor_name
    #   <p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify the rule group.</p>
    #
    # @option params [String] :name
    #   <p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :version_name
    #   <p>The version of the rule group. You can only use a version that is not
    #          scheduled for expiration. If you don't provide this, WAF uses the vendor's default version.
    #         </p>
    #
    # @return [Types::DescribeManagedRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_managed_rule_group(
    #     vendor_name: 'VendorName', # required
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     version_name: 'VersionName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeManagedRuleGroupOutput
    #   resp.data.version_name #=> String
    #   resp.data.sns_topic_arn #=> String
    #   resp.data.capacity #=> Integer
    #   resp.data.rules #=> Array<RuleSummary>
    #   resp.data.rules[0] #=> Types::RuleSummary
    #   resp.data.rules[0].name #=> String
    #   resp.data.rules[0].action #=> Types::RuleAction
    #   resp.data.rules[0].action.block #=> Types::BlockAction
    #   resp.data.rules[0].action.block.custom_response #=> Types::CustomResponse
    #   resp.data.rules[0].action.block.custom_response.response_code #=> Integer
    #   resp.data.rules[0].action.block.custom_response.custom_response_body_key #=> String
    #   resp.data.rules[0].action.block.custom_response.response_headers #=> Array<CustomHTTPHeader>
    #   resp.data.rules[0].action.block.custom_response.response_headers[0] #=> Types::CustomHTTPHeader
    #   resp.data.rules[0].action.block.custom_response.response_headers[0].name #=> String
    #   resp.data.rules[0].action.block.custom_response.response_headers[0].value #=> String
    #   resp.data.rules[0].action.allow #=> Types::AllowAction
    #   resp.data.rules[0].action.allow.custom_request_handling #=> Types::CustomRequestHandling
    #   resp.data.rules[0].action.allow.custom_request_handling.insert_headers #=> Array<CustomHTTPHeader>
    #   resp.data.rules[0].action.count #=> Types::CountAction
    #   resp.data.rules[0].action.count.custom_request_handling #=> Types::CustomRequestHandling
    #   resp.data.rules[0].action.captcha #=> Types::CaptchaAction
    #   resp.data.rules[0].action.captcha.custom_request_handling #=> Types::CustomRequestHandling
    #   resp.data.label_namespace #=> String
    #   resp.data.available_labels #=> Array<LabelSummary>
    #   resp.data.available_labels[0] #=> Types::LabelSummary
    #   resp.data.available_labels[0].name #=> String
    #   resp.data.consumed_labels #=> Array<LabelSummary>
    #
    def describe_managed_rule_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeManagedRuleGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeManagedRuleGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeManagedRuleGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFExpiredManagedRuleGroupVersionException, Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInvalidResourceException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::DescribeManagedRuleGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeManagedRuleGroup,
        stubs: @stubs,
        params_class: Params::DescribeManagedRuleGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_managed_rule_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified regional application resource from any existing web ACL association. A resource can have at most one
    #            web ACL association. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #          <p>For Amazon CloudFront, don't use this call. Instead, use your CloudFront distribution configuration. To
    #          disassociate a web ACL, provide an empty web ACL ID in the CloudFront call
    #             <code>UpdateDistribution</code>. For information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html">UpdateDistribution</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateWebACLInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to disassociate from the web ACL. </p>
    #
    #            <p>The ARN must be in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon API Gateway REST API: <code>arn:aws:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an AppSync GraphQL API: <code>arn:aws:appsync:<i>region</i>:<i>account-id</i>:apis/<i>GraphQLApiId</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DisassociateWebACLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_web_acl(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateWebACLOutput
    #
    def disassociate_web_acl(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateWebACLInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateWebACLInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateWebACL
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::DisassociateWebACL
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateWebACL,
        stubs: @stubs,
        params_class: Params::DisassociateWebACLOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_web_acl
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a presigned download URL for the specified release of the mobile SDK.</p>
    #          <p>The mobile SDK is not generally available. Customers who have access to the mobile SDK can use it to establish and manage Security Token Service (STS) security tokens for use in HTTP(S) requests from a mobile device to WAF. For more information, see
    # <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html">WAF client application integration</a> in the <i>WAF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GenerateMobileSdkReleaseUrlInput}.
    #
    # @option params [String] :platform
    #   <p>The device platform.</p>
    #
    # @option params [String] :release_version
    #   <p>The release version. For the latest available version, specify <code>LATEST</code>.</p>
    #
    # @return [Types::GenerateMobileSdkReleaseUrlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_mobile_sdk_release_url(
    #     platform: 'IOS', # required - accepts ["IOS", "ANDROID"]
    #     release_version: 'ReleaseVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GenerateMobileSdkReleaseUrlOutput
    #   resp.data.url #=> String
    #
    def generate_mobile_sdk_release_url(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GenerateMobileSdkReleaseUrlInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GenerateMobileSdkReleaseUrlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GenerateMobileSdkReleaseUrl
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::GenerateMobileSdkReleaseUrl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GenerateMobileSdkReleaseUrl,
        stubs: @stubs,
        params_class: Params::GenerateMobileSdkReleaseUrlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :generate_mobile_sdk_release_url
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the specified <a>IPSet</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIPSetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    # @return [Types::GetIPSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ip_set(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIPSetOutput
    #   resp.data.ip_set #=> Types::IPSet
    #   resp.data.ip_set.name #=> String
    #   resp.data.ip_set.id #=> String
    #   resp.data.ip_set.arn #=> String
    #   resp.data.ip_set.description #=> String
    #   resp.data.ip_set.ip_address_version #=> String, one of ["IPV4", "IPV6"]
    #   resp.data.ip_set.addresses #=> Array<String>
    #   resp.data.ip_set.addresses[0] #=> String
    #   resp.data.lock_token #=> String
    #
    def get_ip_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIPSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIPSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIPSet
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::GetIPSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIPSet,
        stubs: @stubs,
        params_class: Params::GetIPSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_ip_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the <a>LoggingConfiguration</a> for the specified web ACL.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLoggingConfigurationInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL for which you want to get the
    #          <a>LoggingConfiguration</a>.</p>
    #
    # @return [Types::GetLoggingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_logging_configuration(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLoggingConfigurationOutput
    #   resp.data.logging_configuration #=> Types::LoggingConfiguration
    #   resp.data.logging_configuration.resource_arn #=> String
    #   resp.data.logging_configuration.log_destination_configs #=> Array<String>
    #   resp.data.logging_configuration.log_destination_configs[0] #=> String
    #   resp.data.logging_configuration.redacted_fields #=> Array<FieldToMatch>
    #   resp.data.logging_configuration.redacted_fields[0] #=> Types::FieldToMatch
    #   resp.data.logging_configuration.redacted_fields[0].single_header #=> Types::SingleHeader
    #   resp.data.logging_configuration.redacted_fields[0].single_header.name #=> String
    #   resp.data.logging_configuration.redacted_fields[0].single_query_argument #=> Types::SingleQueryArgument
    #   resp.data.logging_configuration.redacted_fields[0].single_query_argument.name #=> String
    #   resp.data.logging_configuration.redacted_fields[0].all_query_arguments #=> Types::AllQueryArguments
    #   resp.data.logging_configuration.redacted_fields[0].uri_path #=> Types::UriPath
    #   resp.data.logging_configuration.redacted_fields[0].query_string #=> Types::QueryString
    #   resp.data.logging_configuration.redacted_fields[0].body #=> Types::Body
    #   resp.data.logging_configuration.redacted_fields[0].body.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.logging_configuration.redacted_fields[0].member_method #=> Types::Method
    #   resp.data.logging_configuration.redacted_fields[0].json_body #=> Types::JsonBody
    #   resp.data.logging_configuration.redacted_fields[0].json_body.match_pattern #=> Types::JsonMatchPattern
    #   resp.data.logging_configuration.redacted_fields[0].json_body.match_pattern.all #=> Types::All
    #   resp.data.logging_configuration.redacted_fields[0].json_body.match_pattern.included_paths #=> Array<String>
    #   resp.data.logging_configuration.redacted_fields[0].json_body.match_pattern.included_paths[0] #=> String
    #   resp.data.logging_configuration.redacted_fields[0].json_body.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.logging_configuration.redacted_fields[0].json_body.invalid_fallback_behavior #=> String, one of ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"]
    #   resp.data.logging_configuration.redacted_fields[0].json_body.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.logging_configuration.redacted_fields[0].headers #=> Types::Headers
    #   resp.data.logging_configuration.redacted_fields[0].headers.match_pattern #=> Types::HeaderMatchPattern
    #   resp.data.logging_configuration.redacted_fields[0].headers.match_pattern.all #=> Types::All
    #   resp.data.logging_configuration.redacted_fields[0].headers.match_pattern.included_headers #=> Array<String>
    #   resp.data.logging_configuration.redacted_fields[0].headers.match_pattern.included_headers[0] #=> String
    #   resp.data.logging_configuration.redacted_fields[0].headers.match_pattern.excluded_headers #=> Array<String>
    #   resp.data.logging_configuration.redacted_fields[0].headers.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.logging_configuration.redacted_fields[0].headers.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.logging_configuration.redacted_fields[0].cookies #=> Types::Cookies
    #   resp.data.logging_configuration.redacted_fields[0].cookies.match_pattern #=> Types::CookieMatchPattern
    #   resp.data.logging_configuration.redacted_fields[0].cookies.match_pattern.all #=> Types::All
    #   resp.data.logging_configuration.redacted_fields[0].cookies.match_pattern.included_cookies #=> Array<String>
    #   resp.data.logging_configuration.redacted_fields[0].cookies.match_pattern.included_cookies[0] #=> String
    #   resp.data.logging_configuration.redacted_fields[0].cookies.match_pattern.excluded_cookies #=> Array<String>
    #   resp.data.logging_configuration.redacted_fields[0].cookies.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.logging_configuration.redacted_fields[0].cookies.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.logging_configuration.managed_by_firewall_manager #=> Boolean
    #   resp.data.logging_configuration.logging_filter #=> Types::LoggingFilter
    #   resp.data.logging_configuration.logging_filter.filters #=> Array<Filter>
    #   resp.data.logging_configuration.logging_filter.filters[0] #=> Types::Filter
    #   resp.data.logging_configuration.logging_filter.filters[0].behavior #=> String, one of ["KEEP", "DROP"]
    #   resp.data.logging_configuration.logging_filter.filters[0].requirement #=> String, one of ["MEETS_ALL", "MEETS_ANY"]
    #   resp.data.logging_configuration.logging_filter.filters[0].conditions #=> Array<Condition>
    #   resp.data.logging_configuration.logging_filter.filters[0].conditions[0] #=> Types::Condition
    #   resp.data.logging_configuration.logging_filter.filters[0].conditions[0].action_condition #=> Types::ActionCondition
    #   resp.data.logging_configuration.logging_filter.filters[0].conditions[0].action_condition.action #=> String, one of ["ALLOW", "BLOCK", "COUNT", "CAPTCHA", "EXCLUDED_AS_COUNT"]
    #   resp.data.logging_configuration.logging_filter.filters[0].conditions[0].label_name_condition #=> Types::LabelNameCondition
    #   resp.data.logging_configuration.logging_filter.filters[0].conditions[0].label_name_condition.label_name #=> String
    #   resp.data.logging_configuration.logging_filter.default_behavior #=> String, one of ["KEEP", "DROP"]
    #
    def get_logging_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLoggingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLoggingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLoggingConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::GetLoggingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLoggingConfiguration,
        stubs: @stubs,
        params_class: Params::GetLoggingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_logging_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the specified managed rule set. </p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetManagedRuleSetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    #
    # @return [Types::GetManagedRuleSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_rule_set(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetManagedRuleSetOutput
    #   resp.data.managed_rule_set #=> Types::ManagedRuleSet
    #   resp.data.managed_rule_set.name #=> String
    #   resp.data.managed_rule_set.id #=> String
    #   resp.data.managed_rule_set.arn #=> String
    #   resp.data.managed_rule_set.description #=> String
    #   resp.data.managed_rule_set.published_versions #=> Hash<String, ManagedRuleSetVersion>
    #   resp.data.managed_rule_set.published_versions['key'] #=> Types::ManagedRuleSetVersion
    #   resp.data.managed_rule_set.published_versions['key'].associated_rule_group_arn #=> String
    #   resp.data.managed_rule_set.published_versions['key'].capacity #=> Integer
    #   resp.data.managed_rule_set.published_versions['key'].forecasted_lifetime #=> Integer
    #   resp.data.managed_rule_set.published_versions['key'].publish_timestamp #=> Time
    #   resp.data.managed_rule_set.published_versions['key'].last_update_timestamp #=> Time
    #   resp.data.managed_rule_set.published_versions['key'].expiry_timestamp #=> Time
    #   resp.data.managed_rule_set.recommended_version #=> String
    #   resp.data.managed_rule_set.label_namespace #=> String
    #   resp.data.lock_token #=> String
    #
    def get_managed_rule_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetManagedRuleSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetManagedRuleSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetManagedRuleSet
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::GetManagedRuleSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetManagedRuleSet,
        stubs: @stubs,
        params_class: Params::GetManagedRuleSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_managed_rule_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information for the specified mobile SDK release, including release notes and tags.</p>
    #          <p>The mobile SDK is not generally available. Customers who have access to the mobile SDK can use it to establish and manage Security Token Service (STS) security tokens for use in HTTP(S) requests from a mobile device to WAF. For more information, see
    # <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html">WAF client application integration</a> in the <i>WAF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMobileSdkReleaseInput}.
    #
    # @option params [String] :platform
    #   <p>The device platform.</p>
    #
    # @option params [String] :release_version
    #   <p>The release version. For the latest available version, specify <code>LATEST</code>.</p>
    #
    # @return [Types::GetMobileSdkReleaseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_mobile_sdk_release(
    #     platform: 'IOS', # required - accepts ["IOS", "ANDROID"]
    #     release_version: 'ReleaseVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMobileSdkReleaseOutput
    #   resp.data.mobile_sdk_release #=> Types::MobileSdkRelease
    #   resp.data.mobile_sdk_release.release_version #=> String
    #   resp.data.mobile_sdk_release.timestamp #=> Time
    #   resp.data.mobile_sdk_release.release_notes #=> String
    #   resp.data.mobile_sdk_release.tags #=> Array<Tag>
    #   resp.data.mobile_sdk_release.tags[0] #=> Types::Tag
    #   resp.data.mobile_sdk_release.tags[0].key #=> String
    #   resp.data.mobile_sdk_release.tags[0].value #=> String
    #
    def get_mobile_sdk_release(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMobileSdkReleaseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMobileSdkReleaseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMobileSdkRelease
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::GetMobileSdkRelease
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMobileSdkRelease,
        stubs: @stubs,
        params_class: Params::GetMobileSdkReleaseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_mobile_sdk_release
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the IAM policy that is attached to the specified rule group.</p>
    #          <p>You must be the owner of the rule group to perform this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPermissionPolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group for which you want to get the
    #            policy.</p>
    #
    # @return [Types::GetPermissionPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_permission_policy(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPermissionPolicyOutput
    #   resp.data.policy #=> String
    #
    def get_permission_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPermissionPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPermissionPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPermissionPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException]),
        data_parser: Parsers::GetPermissionPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPermissionPolicy,
        stubs: @stubs,
        params_class: Params::GetPermissionPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_permission_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the keys that are currently blocked by a rate-based rule instance. The maximum number of managed keys that can be blocked for a single rate-based rule instance is 10,000. If more than 10,000 addresses exceed the rate limit, those with the highest rates are blocked.</p>
    #          <p>For a rate-based rule that you've defined inside a rule group, provide the name of the rule group reference statement in your request, in addition to the rate-based rule name and the web ACL name. </p>
    #          <p>WAF monitors web requests and manages keys independently for each unique combination of web ACL, optional rule group, and rate-based rule. For example, if you define a rate-based rule inside a rule group, and then use the rule group in a web ACL, WAF monitors web requests and manages keys for that web ACL, rule group reference statement, and rate-based rule instance. If you use the same rule group in a second web ACL, WAF monitors web requests and manages keys for this second usage completely independent of your first.  </p>
    #
    # @param [Hash] params
    #   See {Types::GetRateBasedStatementManagedKeysInput}.
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :web_acl_name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #
    # @option params [String] :web_acl_id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    # @option params [String] :rule_group_rule_name
    #   <p>The name of the rule group reference statement in your web ACL. This is required only when you have the rate-based rule nested
    #   inside a rule group. </p>
    #
    # @option params [String] :rule_name
    #   <p>The name of the rate-based rule to get the keys for. If you have the rule defined inside a rule group that you're using in your web ACL, also provide the name of the rule group reference statement in the request parameter <code>RuleGroupRuleName</code>.</p>
    #
    # @return [Types::GetRateBasedStatementManagedKeysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rate_based_statement_managed_keys(
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     web_acl_name: 'WebACLName', # required
    #     web_acl_id: 'WebACLId', # required
    #     rule_group_rule_name: 'RuleGroupRuleName',
    #     rule_name: 'RuleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRateBasedStatementManagedKeysOutput
    #   resp.data.managed_keys_ipv4 #=> Types::RateBasedStatementManagedKeysIPSet
    #   resp.data.managed_keys_ipv4.ip_address_version #=> String, one of ["IPV4", "IPV6"]
    #   resp.data.managed_keys_ipv4.addresses #=> Array<String>
    #   resp.data.managed_keys_ipv4.addresses[0] #=> String
    #   resp.data.managed_keys_ipv6 #=> Types::RateBasedStatementManagedKeysIPSet
    #
    def get_rate_based_statement_managed_keys(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRateBasedStatementManagedKeysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRateBasedStatementManagedKeysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRateBasedStatementManagedKeys
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::GetRateBasedStatementManagedKeys
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRateBasedStatementManagedKeys,
        stubs: @stubs,
        params_class: Params::GetRateBasedStatementManagedKeysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_rate_based_statement_managed_keys
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the specified <a>RegexPatternSet</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRegexPatternSetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    # @return [Types::GetRegexPatternSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_regex_pattern_set(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRegexPatternSetOutput
    #   resp.data.regex_pattern_set #=> Types::RegexPatternSet
    #   resp.data.regex_pattern_set.name #=> String
    #   resp.data.regex_pattern_set.id #=> String
    #   resp.data.regex_pattern_set.arn #=> String
    #   resp.data.regex_pattern_set.description #=> String
    #   resp.data.regex_pattern_set.regular_expression_list #=> Array<Regex>
    #   resp.data.regex_pattern_set.regular_expression_list[0] #=> Types::Regex
    #   resp.data.regex_pattern_set.regular_expression_list[0].regex_string #=> String
    #   resp.data.lock_token #=> String
    #
    def get_regex_pattern_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRegexPatternSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRegexPatternSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRegexPatternSet
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::GetRegexPatternSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRegexPatternSet,
        stubs: @stubs,
        params_class: Params::GetRegexPatternSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_regex_pattern_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the specified <a>RuleGroup</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRuleGroupInput}.
    #
    # @option params [String] :name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #
    # @return [Types::GetRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rule_group(
    #     name: 'Name',
    #     scope: 'CLOUDFRONT', # accepts ["CLOUDFRONT", "REGIONAL"]
    #     id: 'Id',
    #     arn: 'ARN'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRuleGroupOutput
    #   resp.data.rule_group #=> Types::RuleGroup
    #   resp.data.rule_group.name #=> String
    #   resp.data.rule_group.id #=> String
    #   resp.data.rule_group.capacity #=> Integer
    #   resp.data.rule_group.arn #=> String
    #   resp.data.rule_group.description #=> String
    #   resp.data.rule_group.rules #=> Array<Rule>
    #   resp.data.rule_group.rules[0] #=> Types::Rule
    #   resp.data.rule_group.rules[0].name #=> String
    #   resp.data.rule_group.rules[0].priority #=> Integer
    #   resp.data.rule_group.rules[0].statement #=> Types::Statement
    #   resp.data.rule_group.rules[0].statement.byte_match_statement #=> Types::ByteMatchStatement
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.search_string #=> String
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.single_header #=> Types::SingleHeader
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.single_header.name #=> String
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.single_query_argument #=> Types::SingleQueryArgument
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.all_query_arguments #=> Types::AllQueryArguments
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.uri_path #=> Types::UriPath
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.query_string #=> Types::QueryString
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.body #=> Types::Body
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.body.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.member_method #=> Types::Method
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body #=> Types::JsonBody
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern #=> Types::JsonMatchPattern
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.all #=> Types::All
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array<String>
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"]
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.headers #=> Types::Headers
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern #=> Types::HeaderMatchPattern
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.all #=> Types::All
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.included_headers #=> Array<String>
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.included_headers[0] #=> String
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.excluded_headers #=> Array<String>
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.headers.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.headers.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.cookies #=> Types::Cookies
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern #=> Types::CookieMatchPattern
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.all #=> Types::All
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.included_cookies #=> Array<String>
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.included_cookies[0] #=> String
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.excluded_cookies #=> Array<String>
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.cookies.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.field_to_match.cookies.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.text_transformations[0] #=> Types::TextTransformation
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.text_transformations[0].priority #=> Integer
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.text_transformations[0].type #=> String, one of ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"]
    #   resp.data.rule_group.rules[0].statement.byte_match_statement.positional_constraint #=> String, one of ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"]
    #   resp.data.rule_group.rules[0].statement.sqli_match_statement #=> Types::SqliMatchStatement
    #   resp.data.rule_group.rules[0].statement.sqli_match_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.rule_group.rules[0].statement.sqli_match_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.rule_group.rules[0].statement.xss_match_statement #=> Types::XssMatchStatement
    #   resp.data.rule_group.rules[0].statement.xss_match_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.rule_group.rules[0].statement.xss_match_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.rule_group.rules[0].statement.size_constraint_statement #=> Types::SizeConstraintStatement
    #   resp.data.rule_group.rules[0].statement.size_constraint_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.rule_group.rules[0].statement.size_constraint_statement.comparison_operator #=> String, one of ["EQ", "NE", "LE", "LT", "GE", "GT"]
    #   resp.data.rule_group.rules[0].statement.size_constraint_statement.size #=> Integer
    #   resp.data.rule_group.rules[0].statement.size_constraint_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.rule_group.rules[0].statement.geo_match_statement #=> Types::GeoMatchStatement
    #   resp.data.rule_group.rules[0].statement.geo_match_statement.country_codes #=> Array<String>
    #   resp.data.rule_group.rules[0].statement.geo_match_statement.country_codes[0] #=> String, one of ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]
    #   resp.data.rule_group.rules[0].statement.geo_match_statement.forwarded_ip_config #=> Types::ForwardedIPConfig
    #   resp.data.rule_group.rules[0].statement.geo_match_statement.forwarded_ip_config.header_name #=> String
    #   resp.data.rule_group.rules[0].statement.geo_match_statement.forwarded_ip_config.fallback_behavior #=> String, one of ["MATCH", "NO_MATCH"]
    #   resp.data.rule_group.rules[0].statement.rule_group_reference_statement #=> Types::RuleGroupReferenceStatement
    #   resp.data.rule_group.rules[0].statement.rule_group_reference_statement.arn #=> String
    #   resp.data.rule_group.rules[0].statement.rule_group_reference_statement.excluded_rules #=> Array<ExcludedRule>
    #   resp.data.rule_group.rules[0].statement.rule_group_reference_statement.excluded_rules[0] #=> Types::ExcludedRule
    #   resp.data.rule_group.rules[0].statement.rule_group_reference_statement.excluded_rules[0].name #=> String
    #   resp.data.rule_group.rules[0].statement.ip_set_reference_statement #=> Types::IPSetReferenceStatement
    #   resp.data.rule_group.rules[0].statement.ip_set_reference_statement.arn #=> String
    #   resp.data.rule_group.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config #=> Types::IPSetForwardedIPConfig
    #   resp.data.rule_group.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.header_name #=> String
    #   resp.data.rule_group.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.fallback_behavior #=> String, one of ["MATCH", "NO_MATCH"]
    #   resp.data.rule_group.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.position #=> String, one of ["FIRST", "LAST", "ANY"]
    #   resp.data.rule_group.rules[0].statement.regex_pattern_set_reference_statement #=> Types::RegexPatternSetReferenceStatement
    #   resp.data.rule_group.rules[0].statement.regex_pattern_set_reference_statement.arn #=> String
    #   resp.data.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.rule_group.rules[0].statement.regex_pattern_set_reference_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.rule_group.rules[0].statement.rate_based_statement #=> Types::RateBasedStatement
    #   resp.data.rule_group.rules[0].statement.rate_based_statement.limit #=> Integer
    #   resp.data.rule_group.rules[0].statement.rate_based_statement.aggregate_key_type #=> String, one of ["IP", "FORWARDED_IP"]
    #   resp.data.rule_group.rules[0].statement.rate_based_statement.scope_down_statement #=> Types::Statement
    #   resp.data.rule_group.rules[0].statement.rate_based_statement.forwarded_ip_config #=> Types::ForwardedIPConfig
    #   resp.data.rule_group.rules[0].statement.and_statement #=> Types::AndStatement
    #   resp.data.rule_group.rules[0].statement.and_statement.statements #=> Array<Statement>
    #   resp.data.rule_group.rules[0].statement.or_statement #=> Types::OrStatement
    #   resp.data.rule_group.rules[0].statement.or_statement.statements #=> Array<Statement>
    #   resp.data.rule_group.rules[0].statement.not_statement #=> Types::NotStatement
    #   resp.data.rule_group.rules[0].statement.not_statement.statement #=> Types::Statement
    #   resp.data.rule_group.rules[0].statement.managed_rule_group_statement #=> Types::ManagedRuleGroupStatement
    #   resp.data.rule_group.rules[0].statement.managed_rule_group_statement.vendor_name #=> String
    #   resp.data.rule_group.rules[0].statement.managed_rule_group_statement.name #=> String
    #   resp.data.rule_group.rules[0].statement.managed_rule_group_statement.version #=> String
    #   resp.data.rule_group.rules[0].statement.managed_rule_group_statement.excluded_rules #=> Array<ExcludedRule>
    #   resp.data.rule_group.rules[0].statement.managed_rule_group_statement.scope_down_statement #=> Types::Statement
    #   resp.data.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs #=> Array<ManagedRuleGroupConfig>
    #   resp.data.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0] #=> Types::ManagedRuleGroupConfig
    #   resp.data.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].login_path #=> String
    #   resp.data.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].payload_type #=> String, one of ["JSON", "FORM_ENCODED"]
    #   resp.data.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].username_field #=> Types::UsernameField
    #   resp.data.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].username_field.identifier #=> String
    #   resp.data.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].password_field #=> Types::PasswordField
    #   resp.data.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].password_field.identifier #=> String
    #   resp.data.rule_group.rules[0].statement.label_match_statement #=> Types::LabelMatchStatement
    #   resp.data.rule_group.rules[0].statement.label_match_statement.scope #=> String, one of ["LABEL", "NAMESPACE"]
    #   resp.data.rule_group.rules[0].statement.label_match_statement.key #=> String
    #   resp.data.rule_group.rules[0].statement.regex_match_statement #=> Types::RegexMatchStatement
    #   resp.data.rule_group.rules[0].statement.regex_match_statement.regex_string #=> String
    #   resp.data.rule_group.rules[0].statement.regex_match_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.rule_group.rules[0].statement.regex_match_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.rule_group.rules[0].action #=> Types::RuleAction
    #   resp.data.rule_group.rules[0].action.block #=> Types::BlockAction
    #   resp.data.rule_group.rules[0].action.block.custom_response #=> Types::CustomResponse
    #   resp.data.rule_group.rules[0].action.block.custom_response.response_code #=> Integer
    #   resp.data.rule_group.rules[0].action.block.custom_response.custom_response_body_key #=> String
    #   resp.data.rule_group.rules[0].action.block.custom_response.response_headers #=> Array<CustomHTTPHeader>
    #   resp.data.rule_group.rules[0].action.block.custom_response.response_headers[0] #=> Types::CustomHTTPHeader
    #   resp.data.rule_group.rules[0].action.block.custom_response.response_headers[0].name #=> String
    #   resp.data.rule_group.rules[0].action.block.custom_response.response_headers[0].value #=> String
    #   resp.data.rule_group.rules[0].action.allow #=> Types::AllowAction
    #   resp.data.rule_group.rules[0].action.allow.custom_request_handling #=> Types::CustomRequestHandling
    #   resp.data.rule_group.rules[0].action.allow.custom_request_handling.insert_headers #=> Array<CustomHTTPHeader>
    #   resp.data.rule_group.rules[0].action.count #=> Types::CountAction
    #   resp.data.rule_group.rules[0].action.count.custom_request_handling #=> Types::CustomRequestHandling
    #   resp.data.rule_group.rules[0].action.captcha #=> Types::CaptchaAction
    #   resp.data.rule_group.rules[0].action.captcha.custom_request_handling #=> Types::CustomRequestHandling
    #   resp.data.rule_group.rules[0].override_action #=> Types::OverrideAction
    #   resp.data.rule_group.rules[0].override_action.count #=> Types::CountAction
    #   resp.data.rule_group.rules[0].override_action.none #=> Types::NoneAction
    #   resp.data.rule_group.rules[0].rule_labels #=> Array<Label>
    #   resp.data.rule_group.rules[0].rule_labels[0] #=> Types::Label
    #   resp.data.rule_group.rules[0].rule_labels[0].name #=> String
    #   resp.data.rule_group.rules[0].visibility_config #=> Types::VisibilityConfig
    #   resp.data.rule_group.rules[0].visibility_config.sampled_requests_enabled #=> Boolean
    #   resp.data.rule_group.rules[0].visibility_config.cloud_watch_metrics_enabled #=> Boolean
    #   resp.data.rule_group.rules[0].visibility_config.metric_name #=> String
    #   resp.data.rule_group.rules[0].captcha_config #=> Types::CaptchaConfig
    #   resp.data.rule_group.rules[0].captcha_config.immunity_time_property #=> Types::ImmunityTimeProperty
    #   resp.data.rule_group.rules[0].captcha_config.immunity_time_property.immunity_time #=> Integer
    #   resp.data.rule_group.visibility_config #=> Types::VisibilityConfig
    #   resp.data.rule_group.label_namespace #=> String
    #   resp.data.rule_group.custom_response_bodies #=> Hash<String, CustomResponseBody>
    #   resp.data.rule_group.custom_response_bodies['key'] #=> Types::CustomResponseBody
    #   resp.data.rule_group.custom_response_bodies['key'].content_type #=> String, one of ["TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"]
    #   resp.data.rule_group.custom_response_bodies['key'].content #=> String
    #   resp.data.rule_group.available_labels #=> Array<LabelSummary>
    #   resp.data.rule_group.available_labels[0] #=> Types::LabelSummary
    #   resp.data.rule_group.available_labels[0].name #=> String
    #   resp.data.rule_group.consumed_labels #=> Array<LabelSummary>
    #   resp.data.lock_token #=> String
    #
    def get_rule_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRuleGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRuleGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRuleGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::GetRuleGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRuleGroup,
        stubs: @stubs,
        params_class: Params::GetRuleGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_rule_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets detailed information about a specified number of requests--a sample--that WAF
    #          randomly selects from among the first 5,000 requests that your Amazon Web Services resource received
    #          during a time range that you choose. You can specify a sample size of up to 500 requests,
    #          and you can specify any time range in the previous three hours.</p>
    #          <p>
    #             <code>GetSampledRequests</code> returns a time range, which is usually the time range that
    #          you specified. However, if your resource (such as a CloudFront distribution) received 5,000
    #          requests before the specified time range elapsed, <code>GetSampledRequests</code> returns
    #          an updated time range. This new time range indicates the actual period during which WAF
    #          selected the requests in the sample.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSampledRequestsInput}.
    #
    # @option params [String] :web_acl_arn
    #   <p>The Amazon resource name (ARN) of the <code>WebACL</code> for which you want a sample of
    #            requests.</p>
    #
    # @option params [String] :rule_metric_name
    #   <p>The metric name assigned to the <code>Rule</code> or <code>RuleGroup</code> for which
    #            you want a sample of requests.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [TimeWindow] :time_window
    #   <p>The start date and time and the end date and time of the range for which you want
    #               <code>GetSampledRequests</code> to return a sample of requests. You must specify the
    #            times in Coordinated Universal Time (UTC) format. UTC format includes the special
    #            designator, <code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>. You can specify
    #            any time range in the previous three hours. If you specify a start time that's earlier than
    #            three hours ago, WAF sets it to three hours ago.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The number of requests that you want WAF to return from among the first 5,000
    #            requests that your Amazon Web Services resource received during the time range. If your resource received
    #            fewer requests than the value of <code>MaxItems</code>, <code>GetSampledRequests</code>
    #            returns information about all of them. </p>
    #
    # @return [Types::GetSampledRequestsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sampled_requests(
    #     web_acl_arn: 'WebAclArn', # required
    #     rule_metric_name: 'RuleMetricName', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     time_window: {
    #       start_time: Time.now, # required
    #       end_time: Time.now # required
    #     }, # required
    #     max_items: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSampledRequestsOutput
    #   resp.data.sampled_requests #=> Array<SampledHTTPRequest>
    #   resp.data.sampled_requests[0] #=> Types::SampledHTTPRequest
    #   resp.data.sampled_requests[0].request #=> Types::HTTPRequest
    #   resp.data.sampled_requests[0].request.client_ip #=> String
    #   resp.data.sampled_requests[0].request.country #=> String
    #   resp.data.sampled_requests[0].request.uri #=> String
    #   resp.data.sampled_requests[0].request.member_method #=> String
    #   resp.data.sampled_requests[0].request.http_version #=> String
    #   resp.data.sampled_requests[0].request.headers #=> Array<HTTPHeader>
    #   resp.data.sampled_requests[0].request.headers[0] #=> Types::HTTPHeader
    #   resp.data.sampled_requests[0].request.headers[0].name #=> String
    #   resp.data.sampled_requests[0].request.headers[0].value #=> String
    #   resp.data.sampled_requests[0].weight #=> Integer
    #   resp.data.sampled_requests[0].timestamp #=> Time
    #   resp.data.sampled_requests[0].action #=> String
    #   resp.data.sampled_requests[0].rule_name_within_rule_group #=> String
    #   resp.data.sampled_requests[0].request_headers_inserted #=> Array<HTTPHeader>
    #   resp.data.sampled_requests[0].response_code_sent #=> Integer
    #   resp.data.sampled_requests[0].labels #=> Array<Label>
    #   resp.data.sampled_requests[0].labels[0] #=> Types::Label
    #   resp.data.sampled_requests[0].labels[0].name #=> String
    #   resp.data.sampled_requests[0].captcha_response #=> Types::CaptchaResponse
    #   resp.data.sampled_requests[0].captcha_response.response_code #=> Integer
    #   resp.data.sampled_requests[0].captcha_response.solve_timestamp #=> Integer
    #   resp.data.sampled_requests[0].captcha_response.failure_reason #=> String, one of ["TOKEN_MISSING", "TOKEN_EXPIRED"]
    #   resp.data.population_size #=> Integer
    #   resp.data.time_window #=> Types::TimeWindow
    #   resp.data.time_window.start_time #=> Time
    #   resp.data.time_window.end_time #=> Time
    #
    def get_sampled_requests(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSampledRequestsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSampledRequestsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSampledRequests
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException]),
        data_parser: Parsers::GetSampledRequests
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSampledRequests,
        stubs: @stubs,
        params_class: Params::GetSampledRequestsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sampled_requests
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the specified <a>WebACL</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWebACLInput}.
    #
    # @option params [String] :name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    # @return [Types::GetWebACLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_web_acl(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWebACLOutput
    #   resp.data.web_acl #=> Types::WebACL
    #   resp.data.web_acl.name #=> String
    #   resp.data.web_acl.id #=> String
    #   resp.data.web_acl.arn #=> String
    #   resp.data.web_acl.default_action #=> Types::DefaultAction
    #   resp.data.web_acl.default_action.block #=> Types::BlockAction
    #   resp.data.web_acl.default_action.block.custom_response #=> Types::CustomResponse
    #   resp.data.web_acl.default_action.block.custom_response.response_code #=> Integer
    #   resp.data.web_acl.default_action.block.custom_response.custom_response_body_key #=> String
    #   resp.data.web_acl.default_action.block.custom_response.response_headers #=> Array<CustomHTTPHeader>
    #   resp.data.web_acl.default_action.block.custom_response.response_headers[0] #=> Types::CustomHTTPHeader
    #   resp.data.web_acl.default_action.block.custom_response.response_headers[0].name #=> String
    #   resp.data.web_acl.default_action.block.custom_response.response_headers[0].value #=> String
    #   resp.data.web_acl.default_action.allow #=> Types::AllowAction
    #   resp.data.web_acl.default_action.allow.custom_request_handling #=> Types::CustomRequestHandling
    #   resp.data.web_acl.default_action.allow.custom_request_handling.insert_headers #=> Array<CustomHTTPHeader>
    #   resp.data.web_acl.description #=> String
    #   resp.data.web_acl.rules #=> Array<Rule>
    #   resp.data.web_acl.rules[0] #=> Types::Rule
    #   resp.data.web_acl.rules[0].name #=> String
    #   resp.data.web_acl.rules[0].priority #=> Integer
    #   resp.data.web_acl.rules[0].statement #=> Types::Statement
    #   resp.data.web_acl.rules[0].statement.byte_match_statement #=> Types::ByteMatchStatement
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.search_string #=> String
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.single_header #=> Types::SingleHeader
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.single_header.name #=> String
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.single_query_argument #=> Types::SingleQueryArgument
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.all_query_arguments #=> Types::AllQueryArguments
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.uri_path #=> Types::UriPath
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.query_string #=> Types::QueryString
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.body #=> Types::Body
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.body.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.member_method #=> Types::Method
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body #=> Types::JsonBody
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern #=> Types::JsonMatchPattern
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.all #=> Types::All
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array<String>
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers #=> Types::Headers
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern #=> Types::HeaderMatchPattern
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.all #=> Types::All
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.included_headers #=> Array<String>
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.included_headers[0] #=> String
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.excluded_headers #=> Array<String>
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies #=> Types::Cookies
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern #=> Types::CookieMatchPattern
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.all #=> Types::All
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.included_cookies #=> Array<String>
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.included_cookies[0] #=> String
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.excluded_cookies #=> Array<String>
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.text_transformations[0] #=> Types::TextTransformation
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.text_transformations[0].priority #=> Integer
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.text_transformations[0].type #=> String, one of ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.positional_constraint #=> String, one of ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"]
    #   resp.data.web_acl.rules[0].statement.sqli_match_statement #=> Types::SqliMatchStatement
    #   resp.data.web_acl.rules[0].statement.sqli_match_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.web_acl.rules[0].statement.sqli_match_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.web_acl.rules[0].statement.xss_match_statement #=> Types::XssMatchStatement
    #   resp.data.web_acl.rules[0].statement.xss_match_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.web_acl.rules[0].statement.xss_match_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.web_acl.rules[0].statement.size_constraint_statement #=> Types::SizeConstraintStatement
    #   resp.data.web_acl.rules[0].statement.size_constraint_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.web_acl.rules[0].statement.size_constraint_statement.comparison_operator #=> String, one of ["EQ", "NE", "LE", "LT", "GE", "GT"]
    #   resp.data.web_acl.rules[0].statement.size_constraint_statement.size #=> Integer
    #   resp.data.web_acl.rules[0].statement.size_constraint_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.web_acl.rules[0].statement.geo_match_statement #=> Types::GeoMatchStatement
    #   resp.data.web_acl.rules[0].statement.geo_match_statement.country_codes #=> Array<String>
    #   resp.data.web_acl.rules[0].statement.geo_match_statement.country_codes[0] #=> String, one of ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]
    #   resp.data.web_acl.rules[0].statement.geo_match_statement.forwarded_ip_config #=> Types::ForwardedIPConfig
    #   resp.data.web_acl.rules[0].statement.geo_match_statement.forwarded_ip_config.header_name #=> String
    #   resp.data.web_acl.rules[0].statement.geo_match_statement.forwarded_ip_config.fallback_behavior #=> String, one of ["MATCH", "NO_MATCH"]
    #   resp.data.web_acl.rules[0].statement.rule_group_reference_statement #=> Types::RuleGroupReferenceStatement
    #   resp.data.web_acl.rules[0].statement.rule_group_reference_statement.arn #=> String
    #   resp.data.web_acl.rules[0].statement.rule_group_reference_statement.excluded_rules #=> Array<ExcludedRule>
    #   resp.data.web_acl.rules[0].statement.rule_group_reference_statement.excluded_rules[0] #=> Types::ExcludedRule
    #   resp.data.web_acl.rules[0].statement.rule_group_reference_statement.excluded_rules[0].name #=> String
    #   resp.data.web_acl.rules[0].statement.ip_set_reference_statement #=> Types::IPSetReferenceStatement
    #   resp.data.web_acl.rules[0].statement.ip_set_reference_statement.arn #=> String
    #   resp.data.web_acl.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config #=> Types::IPSetForwardedIPConfig
    #   resp.data.web_acl.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.header_name #=> String
    #   resp.data.web_acl.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.fallback_behavior #=> String, one of ["MATCH", "NO_MATCH"]
    #   resp.data.web_acl.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.position #=> String, one of ["FIRST", "LAST", "ANY"]
    #   resp.data.web_acl.rules[0].statement.regex_pattern_set_reference_statement #=> Types::RegexPatternSetReferenceStatement
    #   resp.data.web_acl.rules[0].statement.regex_pattern_set_reference_statement.arn #=> String
    #   resp.data.web_acl.rules[0].statement.regex_pattern_set_reference_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.web_acl.rules[0].statement.regex_pattern_set_reference_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.web_acl.rules[0].statement.rate_based_statement #=> Types::RateBasedStatement
    #   resp.data.web_acl.rules[0].statement.rate_based_statement.limit #=> Integer
    #   resp.data.web_acl.rules[0].statement.rate_based_statement.aggregate_key_type #=> String, one of ["IP", "FORWARDED_IP"]
    #   resp.data.web_acl.rules[0].statement.rate_based_statement.scope_down_statement #=> Types::Statement
    #   resp.data.web_acl.rules[0].statement.rate_based_statement.forwarded_ip_config #=> Types::ForwardedIPConfig
    #   resp.data.web_acl.rules[0].statement.and_statement #=> Types::AndStatement
    #   resp.data.web_acl.rules[0].statement.and_statement.statements #=> Array<Statement>
    #   resp.data.web_acl.rules[0].statement.or_statement #=> Types::OrStatement
    #   resp.data.web_acl.rules[0].statement.or_statement.statements #=> Array<Statement>
    #   resp.data.web_acl.rules[0].statement.not_statement #=> Types::NotStatement
    #   resp.data.web_acl.rules[0].statement.not_statement.statement #=> Types::Statement
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement #=> Types::ManagedRuleGroupStatement
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.vendor_name #=> String
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.name #=> String
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.version #=> String
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.excluded_rules #=> Array<ExcludedRule>
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.scope_down_statement #=> Types::Statement
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs #=> Array<ManagedRuleGroupConfig>
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0] #=> Types::ManagedRuleGroupConfig
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].login_path #=> String
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].payload_type #=> String, one of ["JSON", "FORM_ENCODED"]
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].username_field #=> Types::UsernameField
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].username_field.identifier #=> String
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].password_field #=> Types::PasswordField
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].password_field.identifier #=> String
    #   resp.data.web_acl.rules[0].statement.label_match_statement #=> Types::LabelMatchStatement
    #   resp.data.web_acl.rules[0].statement.label_match_statement.scope #=> String, one of ["LABEL", "NAMESPACE"]
    #   resp.data.web_acl.rules[0].statement.label_match_statement.key #=> String
    #   resp.data.web_acl.rules[0].statement.regex_match_statement #=> Types::RegexMatchStatement
    #   resp.data.web_acl.rules[0].statement.regex_match_statement.regex_string #=> String
    #   resp.data.web_acl.rules[0].statement.regex_match_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.web_acl.rules[0].statement.regex_match_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.web_acl.rules[0].action #=> Types::RuleAction
    #   resp.data.web_acl.rules[0].action.block #=> Types::BlockAction
    #   resp.data.web_acl.rules[0].action.allow #=> Types::AllowAction
    #   resp.data.web_acl.rules[0].action.count #=> Types::CountAction
    #   resp.data.web_acl.rules[0].action.count.custom_request_handling #=> Types::CustomRequestHandling
    #   resp.data.web_acl.rules[0].action.captcha #=> Types::CaptchaAction
    #   resp.data.web_acl.rules[0].action.captcha.custom_request_handling #=> Types::CustomRequestHandling
    #   resp.data.web_acl.rules[0].override_action #=> Types::OverrideAction
    #   resp.data.web_acl.rules[0].override_action.count #=> Types::CountAction
    #   resp.data.web_acl.rules[0].override_action.none #=> Types::NoneAction
    #   resp.data.web_acl.rules[0].rule_labels #=> Array<Label>
    #   resp.data.web_acl.rules[0].rule_labels[0] #=> Types::Label
    #   resp.data.web_acl.rules[0].rule_labels[0].name #=> String
    #   resp.data.web_acl.rules[0].visibility_config #=> Types::VisibilityConfig
    #   resp.data.web_acl.rules[0].visibility_config.sampled_requests_enabled #=> Boolean
    #   resp.data.web_acl.rules[0].visibility_config.cloud_watch_metrics_enabled #=> Boolean
    #   resp.data.web_acl.rules[0].visibility_config.metric_name #=> String
    #   resp.data.web_acl.rules[0].captcha_config #=> Types::CaptchaConfig
    #   resp.data.web_acl.rules[0].captcha_config.immunity_time_property #=> Types::ImmunityTimeProperty
    #   resp.data.web_acl.rules[0].captcha_config.immunity_time_property.immunity_time #=> Integer
    #   resp.data.web_acl.visibility_config #=> Types::VisibilityConfig
    #   resp.data.web_acl.capacity #=> Integer
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups #=> Array<FirewallManagerRuleGroup>
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0] #=> Types::FirewallManagerRuleGroup
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0].name #=> String
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0].priority #=> Integer
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement #=> Types::FirewallManagerStatement
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement #=> Types::ManagedRuleGroupStatement
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.rule_group_reference_statement #=> Types::RuleGroupReferenceStatement
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0].override_action #=> Types::OverrideAction
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0].visibility_config #=> Types::VisibilityConfig
    #   resp.data.web_acl.post_process_firewall_manager_rule_groups #=> Array<FirewallManagerRuleGroup>
    #   resp.data.web_acl.managed_by_firewall_manager #=> Boolean
    #   resp.data.web_acl.label_namespace #=> String
    #   resp.data.web_acl.custom_response_bodies #=> Hash<String, CustomResponseBody>
    #   resp.data.web_acl.custom_response_bodies['key'] #=> Types::CustomResponseBody
    #   resp.data.web_acl.custom_response_bodies['key'].content_type #=> String, one of ["TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"]
    #   resp.data.web_acl.custom_response_bodies['key'].content #=> String
    #   resp.data.web_acl.captcha_config #=> Types::CaptchaConfig
    #   resp.data.lock_token #=> String
    #   resp.data.application_integration_url #=> String
    #
    def get_web_acl(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWebACLInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWebACLInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWebACL
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::GetWebACL
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWebACL,
        stubs: @stubs,
        params_class: Params::GetWebACLOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_web_acl
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the <a>WebACL</a> for the specified resource. </p>
    #
    # @param [Hash] params
    #   See {Types::GetWebACLForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource.</p>
    #
    # @return [Types::GetWebACLForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_web_acl_for_resource(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWebACLForResourceOutput
    #   resp.data.web_acl #=> Types::WebACL
    #   resp.data.web_acl.name #=> String
    #   resp.data.web_acl.id #=> String
    #   resp.data.web_acl.arn #=> String
    #   resp.data.web_acl.default_action #=> Types::DefaultAction
    #   resp.data.web_acl.default_action.block #=> Types::BlockAction
    #   resp.data.web_acl.default_action.block.custom_response #=> Types::CustomResponse
    #   resp.data.web_acl.default_action.block.custom_response.response_code #=> Integer
    #   resp.data.web_acl.default_action.block.custom_response.custom_response_body_key #=> String
    #   resp.data.web_acl.default_action.block.custom_response.response_headers #=> Array<CustomHTTPHeader>
    #   resp.data.web_acl.default_action.block.custom_response.response_headers[0] #=> Types::CustomHTTPHeader
    #   resp.data.web_acl.default_action.block.custom_response.response_headers[0].name #=> String
    #   resp.data.web_acl.default_action.block.custom_response.response_headers[0].value #=> String
    #   resp.data.web_acl.default_action.allow #=> Types::AllowAction
    #   resp.data.web_acl.default_action.allow.custom_request_handling #=> Types::CustomRequestHandling
    #   resp.data.web_acl.default_action.allow.custom_request_handling.insert_headers #=> Array<CustomHTTPHeader>
    #   resp.data.web_acl.description #=> String
    #   resp.data.web_acl.rules #=> Array<Rule>
    #   resp.data.web_acl.rules[0] #=> Types::Rule
    #   resp.data.web_acl.rules[0].name #=> String
    #   resp.data.web_acl.rules[0].priority #=> Integer
    #   resp.data.web_acl.rules[0].statement #=> Types::Statement
    #   resp.data.web_acl.rules[0].statement.byte_match_statement #=> Types::ByteMatchStatement
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.search_string #=> String
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.single_header #=> Types::SingleHeader
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.single_header.name #=> String
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.single_query_argument #=> Types::SingleQueryArgument
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.all_query_arguments #=> Types::AllQueryArguments
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.uri_path #=> Types::UriPath
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.query_string #=> Types::QueryString
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.body #=> Types::Body
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.body.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.member_method #=> Types::Method
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body #=> Types::JsonBody
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern #=> Types::JsonMatchPattern
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.all #=> Types::All
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array<String>
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers #=> Types::Headers
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern #=> Types::HeaderMatchPattern
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.all #=> Types::All
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.included_headers #=> Array<String>
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.included_headers[0] #=> String
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.excluded_headers #=> Array<String>
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.headers.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies #=> Types::Cookies
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern #=> Types::CookieMatchPattern
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.all #=> Types::All
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.included_cookies #=> Array<String>
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.included_cookies[0] #=> String
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.excluded_cookies #=> Array<String>
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.field_to_match.cookies.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.text_transformations[0] #=> Types::TextTransformation
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.text_transformations[0].priority #=> Integer
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.text_transformations[0].type #=> String, one of ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"]
    #   resp.data.web_acl.rules[0].statement.byte_match_statement.positional_constraint #=> String, one of ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"]
    #   resp.data.web_acl.rules[0].statement.sqli_match_statement #=> Types::SqliMatchStatement
    #   resp.data.web_acl.rules[0].statement.sqli_match_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.web_acl.rules[0].statement.sqli_match_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.web_acl.rules[0].statement.xss_match_statement #=> Types::XssMatchStatement
    #   resp.data.web_acl.rules[0].statement.xss_match_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.web_acl.rules[0].statement.xss_match_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.web_acl.rules[0].statement.size_constraint_statement #=> Types::SizeConstraintStatement
    #   resp.data.web_acl.rules[0].statement.size_constraint_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.web_acl.rules[0].statement.size_constraint_statement.comparison_operator #=> String, one of ["EQ", "NE", "LE", "LT", "GE", "GT"]
    #   resp.data.web_acl.rules[0].statement.size_constraint_statement.size #=> Integer
    #   resp.data.web_acl.rules[0].statement.size_constraint_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.web_acl.rules[0].statement.geo_match_statement #=> Types::GeoMatchStatement
    #   resp.data.web_acl.rules[0].statement.geo_match_statement.country_codes #=> Array<String>
    #   resp.data.web_acl.rules[0].statement.geo_match_statement.country_codes[0] #=> String, one of ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]
    #   resp.data.web_acl.rules[0].statement.geo_match_statement.forwarded_ip_config #=> Types::ForwardedIPConfig
    #   resp.data.web_acl.rules[0].statement.geo_match_statement.forwarded_ip_config.header_name #=> String
    #   resp.data.web_acl.rules[0].statement.geo_match_statement.forwarded_ip_config.fallback_behavior #=> String, one of ["MATCH", "NO_MATCH"]
    #   resp.data.web_acl.rules[0].statement.rule_group_reference_statement #=> Types::RuleGroupReferenceStatement
    #   resp.data.web_acl.rules[0].statement.rule_group_reference_statement.arn #=> String
    #   resp.data.web_acl.rules[0].statement.rule_group_reference_statement.excluded_rules #=> Array<ExcludedRule>
    #   resp.data.web_acl.rules[0].statement.rule_group_reference_statement.excluded_rules[0] #=> Types::ExcludedRule
    #   resp.data.web_acl.rules[0].statement.rule_group_reference_statement.excluded_rules[0].name #=> String
    #   resp.data.web_acl.rules[0].statement.ip_set_reference_statement #=> Types::IPSetReferenceStatement
    #   resp.data.web_acl.rules[0].statement.ip_set_reference_statement.arn #=> String
    #   resp.data.web_acl.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config #=> Types::IPSetForwardedIPConfig
    #   resp.data.web_acl.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.header_name #=> String
    #   resp.data.web_acl.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.fallback_behavior #=> String, one of ["MATCH", "NO_MATCH"]
    #   resp.data.web_acl.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.position #=> String, one of ["FIRST", "LAST", "ANY"]
    #   resp.data.web_acl.rules[0].statement.regex_pattern_set_reference_statement #=> Types::RegexPatternSetReferenceStatement
    #   resp.data.web_acl.rules[0].statement.regex_pattern_set_reference_statement.arn #=> String
    #   resp.data.web_acl.rules[0].statement.regex_pattern_set_reference_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.web_acl.rules[0].statement.regex_pattern_set_reference_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.web_acl.rules[0].statement.rate_based_statement #=> Types::RateBasedStatement
    #   resp.data.web_acl.rules[0].statement.rate_based_statement.limit #=> Integer
    #   resp.data.web_acl.rules[0].statement.rate_based_statement.aggregate_key_type #=> String, one of ["IP", "FORWARDED_IP"]
    #   resp.data.web_acl.rules[0].statement.rate_based_statement.scope_down_statement #=> Types::Statement
    #   resp.data.web_acl.rules[0].statement.rate_based_statement.forwarded_ip_config #=> Types::ForwardedIPConfig
    #   resp.data.web_acl.rules[0].statement.and_statement #=> Types::AndStatement
    #   resp.data.web_acl.rules[0].statement.and_statement.statements #=> Array<Statement>
    #   resp.data.web_acl.rules[0].statement.or_statement #=> Types::OrStatement
    #   resp.data.web_acl.rules[0].statement.or_statement.statements #=> Array<Statement>
    #   resp.data.web_acl.rules[0].statement.not_statement #=> Types::NotStatement
    #   resp.data.web_acl.rules[0].statement.not_statement.statement #=> Types::Statement
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement #=> Types::ManagedRuleGroupStatement
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.vendor_name #=> String
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.name #=> String
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.version #=> String
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.excluded_rules #=> Array<ExcludedRule>
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.scope_down_statement #=> Types::Statement
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs #=> Array<ManagedRuleGroupConfig>
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0] #=> Types::ManagedRuleGroupConfig
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].login_path #=> String
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].payload_type #=> String, one of ["JSON", "FORM_ENCODED"]
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].username_field #=> Types::UsernameField
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].username_field.identifier #=> String
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].password_field #=> Types::PasswordField
    #   resp.data.web_acl.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].password_field.identifier #=> String
    #   resp.data.web_acl.rules[0].statement.label_match_statement #=> Types::LabelMatchStatement
    #   resp.data.web_acl.rules[0].statement.label_match_statement.scope #=> String, one of ["LABEL", "NAMESPACE"]
    #   resp.data.web_acl.rules[0].statement.label_match_statement.key #=> String
    #   resp.data.web_acl.rules[0].statement.regex_match_statement #=> Types::RegexMatchStatement
    #   resp.data.web_acl.rules[0].statement.regex_match_statement.regex_string #=> String
    #   resp.data.web_acl.rules[0].statement.regex_match_statement.field_to_match #=> Types::FieldToMatch
    #   resp.data.web_acl.rules[0].statement.regex_match_statement.text_transformations #=> Array<TextTransformation>
    #   resp.data.web_acl.rules[0].action #=> Types::RuleAction
    #   resp.data.web_acl.rules[0].action.block #=> Types::BlockAction
    #   resp.data.web_acl.rules[0].action.allow #=> Types::AllowAction
    #   resp.data.web_acl.rules[0].action.count #=> Types::CountAction
    #   resp.data.web_acl.rules[0].action.count.custom_request_handling #=> Types::CustomRequestHandling
    #   resp.data.web_acl.rules[0].action.captcha #=> Types::CaptchaAction
    #   resp.data.web_acl.rules[0].action.captcha.custom_request_handling #=> Types::CustomRequestHandling
    #   resp.data.web_acl.rules[0].override_action #=> Types::OverrideAction
    #   resp.data.web_acl.rules[0].override_action.count #=> Types::CountAction
    #   resp.data.web_acl.rules[0].override_action.none #=> Types::NoneAction
    #   resp.data.web_acl.rules[0].rule_labels #=> Array<Label>
    #   resp.data.web_acl.rules[0].rule_labels[0] #=> Types::Label
    #   resp.data.web_acl.rules[0].rule_labels[0].name #=> String
    #   resp.data.web_acl.rules[0].visibility_config #=> Types::VisibilityConfig
    #   resp.data.web_acl.rules[0].visibility_config.sampled_requests_enabled #=> Boolean
    #   resp.data.web_acl.rules[0].visibility_config.cloud_watch_metrics_enabled #=> Boolean
    #   resp.data.web_acl.rules[0].visibility_config.metric_name #=> String
    #   resp.data.web_acl.rules[0].captcha_config #=> Types::CaptchaConfig
    #   resp.data.web_acl.rules[0].captcha_config.immunity_time_property #=> Types::ImmunityTimeProperty
    #   resp.data.web_acl.rules[0].captcha_config.immunity_time_property.immunity_time #=> Integer
    #   resp.data.web_acl.visibility_config #=> Types::VisibilityConfig
    #   resp.data.web_acl.capacity #=> Integer
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups #=> Array<FirewallManagerRuleGroup>
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0] #=> Types::FirewallManagerRuleGroup
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0].name #=> String
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0].priority #=> Integer
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement #=> Types::FirewallManagerStatement
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement #=> Types::ManagedRuleGroupStatement
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.rule_group_reference_statement #=> Types::RuleGroupReferenceStatement
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0].override_action #=> Types::OverrideAction
    #   resp.data.web_acl.pre_process_firewall_manager_rule_groups[0].visibility_config #=> Types::VisibilityConfig
    #   resp.data.web_acl.post_process_firewall_manager_rule_groups #=> Array<FirewallManagerRuleGroup>
    #   resp.data.web_acl.managed_by_firewall_manager #=> Boolean
    #   resp.data.web_acl.label_namespace #=> String
    #   resp.data.web_acl.custom_response_bodies #=> Hash<String, CustomResponseBody>
    #   resp.data.web_acl.custom_response_bodies['key'] #=> Types::CustomResponseBody
    #   resp.data.web_acl.custom_response_bodies['key'].content_type #=> String, one of ["TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"]
    #   resp.data.web_acl.custom_response_bodies['key'].content #=> String
    #   resp.data.web_acl.captcha_config #=> Types::CaptchaConfig
    #
    def get_web_acl_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWebACLForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWebACLForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWebACLForResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFUnavailableEntityException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::GetWebACLForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWebACLForResource,
        stubs: @stubs,
        params_class: Params::GetWebACLForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_web_acl_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the available versions for the specified managed rule group. </p>
    #
    # @param [Hash] params
    #   See {Types::ListAvailableManagedRuleGroupVersionsInput}.
    #
    # @option params [String] :vendor_name
    #   <p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify the rule group.</p>
    #
    # @option params [String] :name
    #   <p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    # @return [Types::ListAvailableManagedRuleGroupVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_available_managed_rule_group_versions(
    #     vendor_name: 'VendorName', # required
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAvailableManagedRuleGroupVersionsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.versions #=> Array<ManagedRuleGroupVersion>
    #   resp.data.versions[0] #=> Types::ManagedRuleGroupVersion
    #   resp.data.versions[0].name #=> String
    #   resp.data.versions[0].last_update_timestamp #=> Time
    #   resp.data.current_default_version #=> String
    #
    def list_available_managed_rule_group_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAvailableManagedRuleGroupVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAvailableManagedRuleGroupVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAvailableManagedRuleGroupVersions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::ListAvailableManagedRuleGroupVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAvailableManagedRuleGroupVersions,
        stubs: @stubs,
        params_class: Params::ListAvailableManagedRuleGroupVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_available_managed_rule_group_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves an array of managed rule groups that are available for you to use. This list
    #          includes all Amazon Web Services Managed Rules rule groups and all of the Amazon Web Services Marketplace managed rule groups that you're
    #          subscribed to.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAvailableManagedRuleGroupsInput}.
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    # @return [Types::ListAvailableManagedRuleGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_available_managed_rule_groups(
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAvailableManagedRuleGroupsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.managed_rule_groups #=> Array<ManagedRuleGroupSummary>
    #   resp.data.managed_rule_groups[0] #=> Types::ManagedRuleGroupSummary
    #   resp.data.managed_rule_groups[0].vendor_name #=> String
    #   resp.data.managed_rule_groups[0].name #=> String
    #   resp.data.managed_rule_groups[0].versioning_supported #=> Boolean
    #   resp.data.managed_rule_groups[0].description #=> String
    #
    def list_available_managed_rule_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAvailableManagedRuleGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAvailableManagedRuleGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAvailableManagedRuleGroups
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::ListAvailableManagedRuleGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAvailableManagedRuleGroups,
        stubs: @stubs,
        params_class: Params::ListAvailableManagedRuleGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_available_managed_rule_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves an array of <a>IPSetSummary</a> objects for the IP sets that you
    #          manage.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIPSetsInput}.
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    # @return [Types::ListIPSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ip_sets(
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIPSetsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.ip_sets #=> Array<IPSetSummary>
    #   resp.data.ip_sets[0] #=> Types::IPSetSummary
    #   resp.data.ip_sets[0].name #=> String
    #   resp.data.ip_sets[0].id #=> String
    #   resp.data.ip_sets[0].description #=> String
    #   resp.data.ip_sets[0].lock_token #=> String
    #   resp.data.ip_sets[0].arn #=> String
    #
    def list_ip_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIPSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIPSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIPSets
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::ListIPSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIPSets,
        stubs: @stubs,
        params_class: Params::ListIPSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_ip_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves an array of your <a>LoggingConfiguration</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLoggingConfigurationsInput}.
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    # @return [Types::ListLoggingConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_logging_configurations(
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLoggingConfigurationsOutput
    #   resp.data.logging_configurations #=> Array<LoggingConfiguration>
    #   resp.data.logging_configurations[0] #=> Types::LoggingConfiguration
    #   resp.data.logging_configurations[0].resource_arn #=> String
    #   resp.data.logging_configurations[0].log_destination_configs #=> Array<String>
    #   resp.data.logging_configurations[0].log_destination_configs[0] #=> String
    #   resp.data.logging_configurations[0].redacted_fields #=> Array<FieldToMatch>
    #   resp.data.logging_configurations[0].redacted_fields[0] #=> Types::FieldToMatch
    #   resp.data.logging_configurations[0].redacted_fields[0].single_header #=> Types::SingleHeader
    #   resp.data.logging_configurations[0].redacted_fields[0].single_header.name #=> String
    #   resp.data.logging_configurations[0].redacted_fields[0].single_query_argument #=> Types::SingleQueryArgument
    #   resp.data.logging_configurations[0].redacted_fields[0].single_query_argument.name #=> String
    #   resp.data.logging_configurations[0].redacted_fields[0].all_query_arguments #=> Types::AllQueryArguments
    #   resp.data.logging_configurations[0].redacted_fields[0].uri_path #=> Types::UriPath
    #   resp.data.logging_configurations[0].redacted_fields[0].query_string #=> Types::QueryString
    #   resp.data.logging_configurations[0].redacted_fields[0].body #=> Types::Body
    #   resp.data.logging_configurations[0].redacted_fields[0].body.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.logging_configurations[0].redacted_fields[0].member_method #=> Types::Method
    #   resp.data.logging_configurations[0].redacted_fields[0].json_body #=> Types::JsonBody
    #   resp.data.logging_configurations[0].redacted_fields[0].json_body.match_pattern #=> Types::JsonMatchPattern
    #   resp.data.logging_configurations[0].redacted_fields[0].json_body.match_pattern.all #=> Types::All
    #   resp.data.logging_configurations[0].redacted_fields[0].json_body.match_pattern.included_paths #=> Array<String>
    #   resp.data.logging_configurations[0].redacted_fields[0].json_body.match_pattern.included_paths[0] #=> String
    #   resp.data.logging_configurations[0].redacted_fields[0].json_body.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.logging_configurations[0].redacted_fields[0].json_body.invalid_fallback_behavior #=> String, one of ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"]
    #   resp.data.logging_configurations[0].redacted_fields[0].json_body.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.logging_configurations[0].redacted_fields[0].headers #=> Types::Headers
    #   resp.data.logging_configurations[0].redacted_fields[0].headers.match_pattern #=> Types::HeaderMatchPattern
    #   resp.data.logging_configurations[0].redacted_fields[0].headers.match_pattern.all #=> Types::All
    #   resp.data.logging_configurations[0].redacted_fields[0].headers.match_pattern.included_headers #=> Array<String>
    #   resp.data.logging_configurations[0].redacted_fields[0].headers.match_pattern.included_headers[0] #=> String
    #   resp.data.logging_configurations[0].redacted_fields[0].headers.match_pattern.excluded_headers #=> Array<String>
    #   resp.data.logging_configurations[0].redacted_fields[0].headers.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.logging_configurations[0].redacted_fields[0].headers.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.logging_configurations[0].redacted_fields[0].cookies #=> Types::Cookies
    #   resp.data.logging_configurations[0].redacted_fields[0].cookies.match_pattern #=> Types::CookieMatchPattern
    #   resp.data.logging_configurations[0].redacted_fields[0].cookies.match_pattern.all #=> Types::All
    #   resp.data.logging_configurations[0].redacted_fields[0].cookies.match_pattern.included_cookies #=> Array<String>
    #   resp.data.logging_configurations[0].redacted_fields[0].cookies.match_pattern.included_cookies[0] #=> String
    #   resp.data.logging_configurations[0].redacted_fields[0].cookies.match_pattern.excluded_cookies #=> Array<String>
    #   resp.data.logging_configurations[0].redacted_fields[0].cookies.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.logging_configurations[0].redacted_fields[0].cookies.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.logging_configurations[0].managed_by_firewall_manager #=> Boolean
    #   resp.data.logging_configurations[0].logging_filter #=> Types::LoggingFilter
    #   resp.data.logging_configurations[0].logging_filter.filters #=> Array<Filter>
    #   resp.data.logging_configurations[0].logging_filter.filters[0] #=> Types::Filter
    #   resp.data.logging_configurations[0].logging_filter.filters[0].behavior #=> String, one of ["KEEP", "DROP"]
    #   resp.data.logging_configurations[0].logging_filter.filters[0].requirement #=> String, one of ["MEETS_ALL", "MEETS_ANY"]
    #   resp.data.logging_configurations[0].logging_filter.filters[0].conditions #=> Array<Condition>
    #   resp.data.logging_configurations[0].logging_filter.filters[0].conditions[0] #=> Types::Condition
    #   resp.data.logging_configurations[0].logging_filter.filters[0].conditions[0].action_condition #=> Types::ActionCondition
    #   resp.data.logging_configurations[0].logging_filter.filters[0].conditions[0].action_condition.action #=> String, one of ["ALLOW", "BLOCK", "COUNT", "CAPTCHA", "EXCLUDED_AS_COUNT"]
    #   resp.data.logging_configurations[0].logging_filter.filters[0].conditions[0].label_name_condition #=> Types::LabelNameCondition
    #   resp.data.logging_configurations[0].logging_filter.filters[0].conditions[0].label_name_condition.label_name #=> String
    #   resp.data.logging_configurations[0].logging_filter.default_behavior #=> String, one of ["KEEP", "DROP"]
    #   resp.data.next_marker #=> String
    #
    def list_logging_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLoggingConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLoggingConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLoggingConfigurations
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::ListLoggingConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLoggingConfigurations,
        stubs: @stubs,
        params_class: Params::ListLoggingConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_logging_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the managed rule sets that you own. </p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListManagedRuleSetsInput}.
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    # @return [Types::ListManagedRuleSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_rule_sets(
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListManagedRuleSetsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.managed_rule_sets #=> Array<ManagedRuleSetSummary>
    #   resp.data.managed_rule_sets[0] #=> Types::ManagedRuleSetSummary
    #   resp.data.managed_rule_sets[0].name #=> String
    #   resp.data.managed_rule_sets[0].id #=> String
    #   resp.data.managed_rule_sets[0].description #=> String
    #   resp.data.managed_rule_sets[0].lock_token #=> String
    #   resp.data.managed_rule_sets[0].arn #=> String
    #   resp.data.managed_rule_sets[0].label_namespace #=> String
    #
    def list_managed_rule_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListManagedRuleSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListManagedRuleSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListManagedRuleSets
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::ListManagedRuleSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListManagedRuleSets,
        stubs: @stubs,
        params_class: Params::ListManagedRuleSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_managed_rule_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of the available releases for the mobile SDK and the specified device platform. </p>
    #          <p>The mobile SDK is not generally available. Customers who have access to the mobile SDK can use it to establish and manage Security Token Service (STS) security tokens for use in HTTP(S) requests from a mobile device to WAF. For more information, see
    # <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html">WAF client application integration</a> in the <i>WAF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMobileSdkReleasesInput}.
    #
    # @option params [String] :platform
    #   <p>The device platform to retrieve the list for.</p>
    #
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    # @return [Types::ListMobileSdkReleasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mobile_sdk_releases(
    #     platform: 'IOS', # required - accepts ["IOS", "ANDROID"]
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMobileSdkReleasesOutput
    #   resp.data.release_summaries #=> Array<ReleaseSummary>
    #   resp.data.release_summaries[0] #=> Types::ReleaseSummary
    #   resp.data.release_summaries[0].release_version #=> String
    #   resp.data.release_summaries[0].timestamp #=> Time
    #   resp.data.next_marker #=> String
    #
    def list_mobile_sdk_releases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMobileSdkReleasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMobileSdkReleasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMobileSdkReleases
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::ListMobileSdkReleases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMobileSdkReleases,
        stubs: @stubs,
        params_class: Params::ListMobileSdkReleasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_mobile_sdk_releases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves an array of <a>RegexPatternSetSummary</a> objects for the regex
    #          pattern sets that you manage.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRegexPatternSetsInput}.
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    # @return [Types::ListRegexPatternSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_regex_pattern_sets(
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRegexPatternSetsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.regex_pattern_sets #=> Array<RegexPatternSetSummary>
    #   resp.data.regex_pattern_sets[0] #=> Types::RegexPatternSetSummary
    #   resp.data.regex_pattern_sets[0].name #=> String
    #   resp.data.regex_pattern_sets[0].id #=> String
    #   resp.data.regex_pattern_sets[0].description #=> String
    #   resp.data.regex_pattern_sets[0].lock_token #=> String
    #   resp.data.regex_pattern_sets[0].arn #=> String
    #
    def list_regex_pattern_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRegexPatternSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRegexPatternSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRegexPatternSets
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::ListRegexPatternSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRegexPatternSets,
        stubs: @stubs,
        params_class: Params::ListRegexPatternSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_regex_pattern_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves an array of the Amazon Resource Names (ARNs) for the regional resources that
    #          are associated with the specified web ACL. If you want the list of Amazon CloudFront resources, use
    #          the CloudFront call <code>ListDistributionsByWebACLId</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListResourcesForWebACLInput}.
    #
    # @option params [String] :web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL.</p>
    #
    # @option params [String] :resource_type
    #   <p>Used for web ACLs that are scoped for regional applications.
    #            A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API. </p>
    #
    # @return [Types::ListResourcesForWebACLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources_for_web_acl(
    #     web_acl_arn: 'WebACLArn', # required
    #     resource_type: 'APPLICATION_LOAD_BALANCER' # accepts ["APPLICATION_LOAD_BALANCER", "API_GATEWAY", "APPSYNC"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourcesForWebACLOutput
    #   resp.data.resource_arns #=> Array<String>
    #   resp.data.resource_arns[0] #=> String
    #
    def list_resources_for_web_acl(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourcesForWebACLInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourcesForWebACLInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourcesForWebACL
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::ListResourcesForWebACL
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourcesForWebACL,
        stubs: @stubs,
        params_class: Params::ListResourcesForWebACLOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resources_for_web_acl
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves an array of <a>RuleGroupSummary</a> objects for the rule groups
    #          that you manage. </p>
    #
    # @param [Hash] params
    #   See {Types::ListRuleGroupsInput}.
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    # @return [Types::ListRuleGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_groups(
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRuleGroupsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.rule_groups #=> Array<RuleGroupSummary>
    #   resp.data.rule_groups[0] #=> Types::RuleGroupSummary
    #   resp.data.rule_groups[0].name #=> String
    #   resp.data.rule_groups[0].id #=> String
    #   resp.data.rule_groups[0].description #=> String
    #   resp.data.rule_groups[0].lock_token #=> String
    #   resp.data.rule_groups[0].arn #=> String
    #
    def list_rule_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRuleGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRuleGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRuleGroups
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::ListRuleGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRuleGroups,
        stubs: @stubs,
        params_class: Params::ListRuleGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_rule_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the <a>TagInfoForResource</a> for the specified resource. Tags are
    #          key:value pairs that you can use to categorize and manage your resources, for purposes like
    #          billing. For example, you might set the tag key to "customer" and the value to the customer
    #          name or ID. You can specify one or more tags to add to each Amazon Web Services resource, up to 50 tags
    #          for a resource.</p>
    #          <p>You can tag the Amazon Web Services resources that you manage through WAF: web ACLs, rule
    #          groups, IP sets, and regex pattern sets. You can't manage or view tags through the WAF
    #          console. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     next_marker: 'NextMarker',
    #     limit: 1,
    #     resource_arn: 'ResourceARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.next_marker #=> String
    #   resp.data.tag_info_for_resource #=> Types::TagInfoForResource
    #   resp.data.tag_info_for_resource.resource_arn #=> String
    #   resp.data.tag_info_for_resource.tag_list #=> Array<Tag>
    #   resp.data.tag_info_for_resource.tag_list[0] #=> Types::Tag
    #   resp.data.tag_info_for_resource.tag_list[0].key #=> String
    #   resp.data.tag_info_for_resource.tag_list[0].value #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFTagOperationException, Errors::WAFInternalErrorException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves an array of <a>WebACLSummary</a> objects for the web ACLs that you
    #          manage.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWebACLsInput}.
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    # @return [Types::ListWebACLsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_web_ac_ls(
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWebACLsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.web_ac_ls #=> Array<WebACLSummary>
    #   resp.data.web_ac_ls[0] #=> Types::WebACLSummary
    #   resp.data.web_ac_ls[0].name #=> String
    #   resp.data.web_ac_ls[0].id #=> String
    #   resp.data.web_ac_ls[0].description #=> String
    #   resp.data.web_ac_ls[0].lock_token #=> String
    #   resp.data.web_ac_ls[0].arn #=> String
    #
    def list_web_ac_ls(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWebACLsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWebACLsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWebACLs
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::ListWebACLs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWebACLs,
        stubs: @stubs,
        params_class: Params::ListWebACLsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_web_ac_ls
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the specified <a>LoggingConfiguration</a>, to start logging from a
    #          web ACL, according to the configuration provided. </p>
    #          <note>
    #             <p>You can define one logging destination per web ACL.</p>
    #          </note>
    #          <p>You can access information about the traffic that WAF inspects using the following
    #          steps:</p>
    #          <ol>
    #             <li>
    #                <p>Create your logging destination. You can use an Amazon CloudWatch Logs log group, an Amazon Simple Storage Service (Amazon S3) bucket, or an Amazon Kinesis Data Firehose.
    #                  For information about configuring logging destinations and the permissions that are required for each, see
    #                  <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging.html">Logging web ACL traffic information</a>
    #                  in the <i>WAF Developer Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>Associate your logging destination to your web ACL using a
    #                   <code>PutLoggingConfiguration</code> request.</p>
    #             </li>
    #          </ol>
    #          <p>When you successfully enable logging using a <code>PutLoggingConfiguration</code>
    #           request, WAF creates an additional role or policy that is required to write
    #               logs to the logging destination. For an Amazon CloudWatch Logs log group, WAF creates a resource policy on the log group.
    #           For an Amazon S3 bucket, WAF creates a bucket policy. For an Amazon Kinesis Data Firehose, WAF creates a service-linked role.</p>
    #          <p>For additional information about web ACL logging, see
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging.html">Logging web ACL traffic information</a>
    #                in the <i>WAF Developer Guide</i>.</p>
    #          <note>
    #             <p>This operation completely replaces the mutable specifications that you already have for the logging configuration with the ones that you provide to this call. To modify the logging configuration, retrieve it by calling <a>GetLoggingConfiguration</a>, update the settings as needed, and then provide the complete logging configuration specification to this call.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutLoggingConfigurationInput}.
    #
    # @option params [LoggingConfiguration] :logging_configuration
    #   <p></p>
    #
    # @return [Types::PutLoggingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_logging_configuration(
    #     logging_configuration: {
    #       resource_arn: 'ResourceArn', # required
    #       log_destination_configs: [
    #         'member'
    #       ], # required
    #       redacted_fields: [
    #         {
    #           single_header: {
    #             name: 'Name' # required
    #           },
    #           single_query_argument: {
    #             name: 'Name' # required
    #           },
    #           all_query_arguments: { },
    #           uri_path: { },
    #           query_string: { },
    #           body: {
    #             oversize_handling: 'CONTINUE' # accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #           },
    #           member_method: { },
    #           json_body: {
    #             match_pattern: {
    #               all: { },
    #               included_paths: [
    #                 'member'
    #               ]
    #             }, # required
    #             match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #             invalid_fallback_behavior: 'MATCH', # accepts ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"]
    #             oversize_handling: 'CONTINUE' # accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #           },
    #           headers: {
    #             match_pattern: {
    #               included_headers: [
    #                 'member'
    #               ],
    #             }, # required
    #             match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #             oversize_handling: 'CONTINUE' # required - accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #           },
    #           cookies: {
    #             match_pattern: {
    #               included_cookies: [
    #                 'member'
    #               ],
    #             }, # required
    #             match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #             oversize_handling: 'CONTINUE' # required - accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #           }
    #         }
    #       ],
    #       managed_by_firewall_manager: false,
    #       logging_filter: {
    #         filters: [
    #           {
    #             behavior: 'KEEP', # required - accepts ["KEEP", "DROP"]
    #             requirement: 'MEETS_ALL', # required - accepts ["MEETS_ALL", "MEETS_ANY"]
    #             conditions: [
    #               {
    #                 action_condition: {
    #                   action: 'ALLOW' # required - accepts ["ALLOW", "BLOCK", "COUNT", "CAPTCHA", "EXCLUDED_AS_COUNT"]
    #                 },
    #                 label_name_condition: {
    #                   label_name: 'LabelName' # required
    #                 }
    #               }
    #             ] # required
    #           }
    #         ], # required
    #         default_behavior: 'KEEP' # required - accepts ["KEEP", "DROP"]
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutLoggingConfigurationOutput
    #   resp.data.logging_configuration #=> Types::LoggingConfiguration
    #   resp.data.logging_configuration.resource_arn #=> String
    #   resp.data.logging_configuration.log_destination_configs #=> Array<String>
    #   resp.data.logging_configuration.log_destination_configs[0] #=> String
    #   resp.data.logging_configuration.redacted_fields #=> Array<FieldToMatch>
    #   resp.data.logging_configuration.redacted_fields[0] #=> Types::FieldToMatch
    #   resp.data.logging_configuration.redacted_fields[0].single_header #=> Types::SingleHeader
    #   resp.data.logging_configuration.redacted_fields[0].single_header.name #=> String
    #   resp.data.logging_configuration.redacted_fields[0].single_query_argument #=> Types::SingleQueryArgument
    #   resp.data.logging_configuration.redacted_fields[0].single_query_argument.name #=> String
    #   resp.data.logging_configuration.redacted_fields[0].all_query_arguments #=> Types::AllQueryArguments
    #   resp.data.logging_configuration.redacted_fields[0].uri_path #=> Types::UriPath
    #   resp.data.logging_configuration.redacted_fields[0].query_string #=> Types::QueryString
    #   resp.data.logging_configuration.redacted_fields[0].body #=> Types::Body
    #   resp.data.logging_configuration.redacted_fields[0].body.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.logging_configuration.redacted_fields[0].member_method #=> Types::Method
    #   resp.data.logging_configuration.redacted_fields[0].json_body #=> Types::JsonBody
    #   resp.data.logging_configuration.redacted_fields[0].json_body.match_pattern #=> Types::JsonMatchPattern
    #   resp.data.logging_configuration.redacted_fields[0].json_body.match_pattern.all #=> Types::All
    #   resp.data.logging_configuration.redacted_fields[0].json_body.match_pattern.included_paths #=> Array<String>
    #   resp.data.logging_configuration.redacted_fields[0].json_body.match_pattern.included_paths[0] #=> String
    #   resp.data.logging_configuration.redacted_fields[0].json_body.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.logging_configuration.redacted_fields[0].json_body.invalid_fallback_behavior #=> String, one of ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"]
    #   resp.data.logging_configuration.redacted_fields[0].json_body.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.logging_configuration.redacted_fields[0].headers #=> Types::Headers
    #   resp.data.logging_configuration.redacted_fields[0].headers.match_pattern #=> Types::HeaderMatchPattern
    #   resp.data.logging_configuration.redacted_fields[0].headers.match_pattern.all #=> Types::All
    #   resp.data.logging_configuration.redacted_fields[0].headers.match_pattern.included_headers #=> Array<String>
    #   resp.data.logging_configuration.redacted_fields[0].headers.match_pattern.included_headers[0] #=> String
    #   resp.data.logging_configuration.redacted_fields[0].headers.match_pattern.excluded_headers #=> Array<String>
    #   resp.data.logging_configuration.redacted_fields[0].headers.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.logging_configuration.redacted_fields[0].headers.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.logging_configuration.redacted_fields[0].cookies #=> Types::Cookies
    #   resp.data.logging_configuration.redacted_fields[0].cookies.match_pattern #=> Types::CookieMatchPattern
    #   resp.data.logging_configuration.redacted_fields[0].cookies.match_pattern.all #=> Types::All
    #   resp.data.logging_configuration.redacted_fields[0].cookies.match_pattern.included_cookies #=> Array<String>
    #   resp.data.logging_configuration.redacted_fields[0].cookies.match_pattern.included_cookies[0] #=> String
    #   resp.data.logging_configuration.redacted_fields[0].cookies.match_pattern.excluded_cookies #=> Array<String>
    #   resp.data.logging_configuration.redacted_fields[0].cookies.match_scope #=> String, one of ["ALL", "KEY", "VALUE"]
    #   resp.data.logging_configuration.redacted_fields[0].cookies.oversize_handling #=> String, one of ["CONTINUE", "MATCH", "NO_MATCH"]
    #   resp.data.logging_configuration.managed_by_firewall_manager #=> Boolean
    #   resp.data.logging_configuration.logging_filter #=> Types::LoggingFilter
    #   resp.data.logging_configuration.logging_filter.filters #=> Array<Filter>
    #   resp.data.logging_configuration.logging_filter.filters[0] #=> Types::Filter
    #   resp.data.logging_configuration.logging_filter.filters[0].behavior #=> String, one of ["KEEP", "DROP"]
    #   resp.data.logging_configuration.logging_filter.filters[0].requirement #=> String, one of ["MEETS_ALL", "MEETS_ANY"]
    #   resp.data.logging_configuration.logging_filter.filters[0].conditions #=> Array<Condition>
    #   resp.data.logging_configuration.logging_filter.filters[0].conditions[0] #=> Types::Condition
    #   resp.data.logging_configuration.logging_filter.filters[0].conditions[0].action_condition #=> Types::ActionCondition
    #   resp.data.logging_configuration.logging_filter.filters[0].conditions[0].action_condition.action #=> String, one of ["ALLOW", "BLOCK", "COUNT", "CAPTCHA", "EXCLUDED_AS_COUNT"]
    #   resp.data.logging_configuration.logging_filter.filters[0].conditions[0].label_name_condition #=> Types::LabelNameCondition
    #   resp.data.logging_configuration.logging_filter.filters[0].conditions[0].label_name_condition.label_name #=> String
    #   resp.data.logging_configuration.logging_filter.default_behavior #=> String, one of ["KEEP", "DROP"]
    #
    def put_logging_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutLoggingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutLoggingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutLoggingConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFOptimisticLockException, Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException, Errors::WAFLimitsExceededException, Errors::WAFLogDestinationPermissionIssueException, Errors::WAFServiceLinkedRoleErrorException]),
        data_parser: Parsers::PutLoggingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutLoggingConfiguration,
        stubs: @stubs,
        params_class: Params::PutLoggingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_logging_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Defines the versions of your managed rule set that you are offering to the customers.
    #          Customers see your offerings as managed rule groups with versioning.</p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    #          <p>Customers retrieve their managed rule group list by calling <a>ListAvailableManagedRuleGroups</a>. The name that you provide here for your
    #          managed rule set is the name the customer sees for the corresponding managed rule group.
    #          Customers can retrieve the available versions for a managed rule group by calling <a>ListAvailableManagedRuleGroupVersions</a>. You provide a rule group
    #          specification for each version. For each managed rule set, you must specify a version that
    #          you recommend using. </p>
    #          <p>To initiate the expiration of a managed rule group version, use <a>UpdateManagedRuleSetVersionExpiryDate</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutManagedRuleSetVersionsInput}.
    #
    # @option params [String] :name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    #
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    # @option params [String] :recommended_version
    #   <p>The version of the named managed rule group that you'd like your customers to choose,
    #            from among your version offerings. </p>
    #
    # @option params [Hash<String, VersionToPublish>] :versions_to_publish
    #   <p>The versions of the named managed rule group that you want to offer to your customers.
    #         </p>
    #
    # @return [Types::PutManagedRuleSetVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_managed_rule_set_versions(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     id: 'Id', # required
    #     lock_token: 'LockToken', # required
    #     recommended_version: 'RecommendedVersion',
    #     versions_to_publish: {
    #       'key' => {
    #         associated_rule_group_arn: 'AssociatedRuleGroupArn',
    #         forecasted_lifetime: 1
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutManagedRuleSetVersionsOutput
    #   resp.data.next_lock_token #=> String
    #
    def put_managed_rule_set_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutManagedRuleSetVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutManagedRuleSetVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutManagedRuleSetVersions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFOptimisticLockException, Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::PutManagedRuleSetVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutManagedRuleSetVersions,
        stubs: @stubs,
        params_class: Params::PutManagedRuleSetVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_managed_rule_set_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches an IAM policy to the specified resource. Use this to share a rule group across
    #          accounts.</p>
    #          <p>You must be the owner of the rule group to perform this operation.</p>
    #          <p>This action is subject to the following restrictions:</p>
    #          <ul>
    #             <li>
    #                <p>You can attach only one policy with each <code>PutPermissionPolicy</code>
    #                request.</p>
    #             </li>
    #             <li>
    #                <p>The ARN in the request must be a valid WAF <a>RuleGroup</a> ARN and the
    #                rule group must exist in the same Region.</p>
    #             </li>
    #             <li>
    #                <p>The user making the request must be the owner of the rule group.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutPermissionPolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the <a>RuleGroup</a> to which you want to
    #            attach the policy.</p>
    #
    # @option params [String] :policy
    #   <p>The policy to attach to the specified rule group. </p>
    #
    #            <p>The policy specifications must conform to the following:</p>
    #            <ul>
    #               <li>
    #                  <p>The policy must be composed using IAM Policy version 2012-10-17 or version 2015-01-01.</p>
    #               </li>
    #               <li>
    #                  <p>The policy must include specifications for <code>Effect</code>, <code>Action</code>, and <code>Principal</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Effect</code> must specify <code>Allow</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Action</code> must specify <code>wafv2:CreateWebACL</code>, <code>wafv2:UpdateWebACL</code>, and
    #                <code>wafv2:PutFirewallManagerRuleGroups</code> and may optionally specify <code>wafv2:GetRuleGroup</code>.
    #                    WAF rejects any extra actions or wildcard actions in the policy.</p>
    #               </li>
    #               <li>
    #                  <p>The policy must not include a <code>Resource</code> parameter.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">IAM Policies</a>.  </p>
    #
    # @return [Types::PutPermissionPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_permission_policy(
    #     resource_arn: 'ResourceArn', # required
    #     policy: 'Policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutPermissionPolicyOutput
    #
    def put_permission_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutPermissionPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutPermissionPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutPermissionPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInvalidPermissionPolicyException, Errors::WAFInternalErrorException]),
        data_parser: Parsers::PutPermissionPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutPermissionPolicy,
        stubs: @stubs,
        params_class: Params::PutPermissionPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_permission_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates tags with the specified Amazon Web Services resource. Tags are key:value pairs that you can
    #          use to categorize and manage your resources, for purposes like billing. For example, you
    #          might set the tag key to "customer" and the value to the customer name or ID. You can
    #          specify one or more tags to add to each Amazon Web Services resource, up to 50 tags for a
    #          resource.</p>
    #          <p>You can tag the Amazon Web Services resources that you manage through WAF: web ACLs, rule
    #          groups, IP sets, and regex pattern sets. You can't manage or view tags through the WAF
    #          console. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFTagOperationException, Errors::WAFInternalErrorException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInvalidOperationException, Errors::WAFLimitsExceededException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates tags from an Amazon Web Services resource. Tags are key:value pairs that you can
    #          associate with Amazon Web Services resources. For example, the tag key might be "customer" and the tag
    #          value might be "companyA." You can specify one or more tags to add to each container. You
    #          can add up to 50 tags to each Amazon Web Services resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>An array of keys identifying the tags to disassociate from the resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFTagOperationException, Errors::WAFInternalErrorException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified <a>IPSet</a>. </p>
    #          <note>
    #             <p>This operation completely replaces the mutable specifications that you already have for the IP set with the ones that you provide to this call. To modify the IP set, retrieve it by calling <a>GetIPSet</a>, update the settings as needed, and then provide the complete IP set specification to this call.</p>
    #          </note>
    #
    #          <p>When you make changes to web ACLs or web ACL components, like rules and rule groups, WAF propagates the changes everywhere that the web ACL and its components are stored and used. Your changes are applied within seconds, but there might be a brief period of inconsistency when the changes have arrived in some places and not in others. So, for example, if you change a rule action setting, the action might be the old action in one area and the new action in another area. Or if you add an IP address to an IP set used in a blocking rule, the new address might briefly be blocked in one area while still allowed in another. This temporary inconsistency can occur when you first associate a web ACL with an Amazon Web Services resource and when you change a web ACL that is already associated with a resource. Generally, any inconsistencies of this type last only a few seconds.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIPSetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    # @option params [String] :description
    #   <p>A description of the IP set that helps with identification. </p>
    #
    # @option params [Array<String>] :addresses
    #   <p>Contains an array of strings that specifies zero or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges except for /0. </p>
    #            <p>Example address strings: </p>
    #            <ul>
    #               <li>
    #                  <p>To configure WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify
    #                  <code>192.0.2.0/24</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>.</p>
    #            <p>Example JSON <code>Addresses</code> specifications: </p>
    #            <ul>
    #               <li>
    #                  <p>Empty array: <code>"Addresses": []</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Array with one address: <code>"Addresses": ["192.0.2.44/32"]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Array with three addresses: <code>"Addresses": ["192.0.2.44/32", "192.0.2.0/24", "192.0.0.0/16"]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>INVALID specification: <code>"Addresses": [""]</code> INVALID </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    # @return [Types::UpdateIPSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ip_set(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     id: 'Id', # required
    #     description: 'Description',
    #     addresses: [
    #       'member'
    #     ], # required
    #     lock_token: 'LockToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIPSetOutput
    #   resp.data.next_lock_token #=> String
    #
    def update_ip_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateIPSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateIPSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateIPSet
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFOptimisticLockException, Errors::WAFDuplicateItemException, Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException, Errors::WAFLimitsExceededException]),
        data_parser: Parsers::UpdateIPSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateIPSet,
        stubs: @stubs,
        params_class: Params::UpdateIPSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_ip_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the expiration information for your managed rule set. Use this to initiate the
    #          expiration of a managed rule group version. After you initiate expiration for a version,
    #          WAF excludes it from the reponse to <a>ListAvailableManagedRuleGroupVersions</a> for the managed rule group. </p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateManagedRuleSetVersionExpiryDateInput}.
    #
    # @option params [String] :name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    #
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    # @option params [String] :version_to_expire
    #   <p>The version that you want to remove from your list of offerings for the named managed
    #            rule group. </p>
    #
    # @option params [Time] :expiry_timestamp
    #   <p>The time that you want the version to expire.</p>
    #            <p>Times are in Coordinated Universal Time (UTC) format. UTC format includes the special designator, Z. For example, "2016-09-27T14:50Z". </p>
    #
    # @return [Types::UpdateManagedRuleSetVersionExpiryDateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_managed_rule_set_version_expiry_date(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     id: 'Id', # required
    #     lock_token: 'LockToken', # required
    #     version_to_expire: 'VersionToExpire', # required
    #     expiry_timestamp: Time.now # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateManagedRuleSetVersionExpiryDateOutput
    #   resp.data.expiring_version #=> String
    #   resp.data.expiry_timestamp #=> Time
    #   resp.data.next_lock_token #=> String
    #
    def update_managed_rule_set_version_expiry_date(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateManagedRuleSetVersionExpiryDateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateManagedRuleSetVersionExpiryDateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateManagedRuleSetVersionExpiryDate
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFOptimisticLockException, Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::UpdateManagedRuleSetVersionExpiryDate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateManagedRuleSetVersionExpiryDate,
        stubs: @stubs,
        params_class: Params::UpdateManagedRuleSetVersionExpiryDateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_managed_rule_set_version_expiry_date
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified <a>RegexPatternSet</a>.</p>
    #          <note>
    #             <p>This operation completely replaces the mutable specifications that you already have for the regex pattern set with the ones that you provide to this call. To modify the regex pattern set, retrieve it by calling <a>GetRegexPatternSet</a>, update the settings as needed, and then provide the complete regex pattern set specification to this call.</p>
    #          </note>
    #
    #          <p>When you make changes to web ACLs or web ACL components, like rules and rule groups, WAF propagates the changes everywhere that the web ACL and its components are stored and used. Your changes are applied within seconds, but there might be a brief period of inconsistency when the changes have arrived in some places and not in others. So, for example, if you change a rule action setting, the action might be the old action in one area and the new action in another area. Or if you add an IP address to an IP set used in a blocking rule, the new address might briefly be blocked in one area while still allowed in another. This temporary inconsistency can occur when you first associate a web ACL with an Amazon Web Services resource and when you change a web ACL that is already associated with a resource. Generally, any inconsistencies of this type last only a few seconds.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRegexPatternSetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    # @option params [String] :description
    #   <p>A description of the set that helps with identification. </p>
    #
    # @option params [Array<Regex>] :regular_expression_list
    #   <p></p>
    #
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    # @return [Types::UpdateRegexPatternSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_regex_pattern_set(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     id: 'Id', # required
    #     description: 'Description',
    #     regular_expression_list: [
    #       {
    #         regex_string: 'RegexString'
    #       }
    #     ], # required
    #     lock_token: 'LockToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRegexPatternSetOutput
    #   resp.data.next_lock_token #=> String
    #
    def update_regex_pattern_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRegexPatternSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRegexPatternSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRegexPatternSet
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFOptimisticLockException, Errors::WAFDuplicateItemException, Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException, Errors::WAFLimitsExceededException]),
        data_parser: Parsers::UpdateRegexPatternSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRegexPatternSet,
        stubs: @stubs,
        params_class: Params::UpdateRegexPatternSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_regex_pattern_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified <a>RuleGroup</a>.</p>
    #          <note>
    #             <p>This operation completely replaces the mutable specifications that you already have for the rule group with the ones that you provide to this call. To modify the rule group, retrieve it by calling <a>GetRuleGroup</a>, update the settings as needed, and then provide the complete rule group specification to this call.</p>
    #          </note>
    #
    #          <p>When you make changes to web ACLs or web ACL components, like rules and rule groups, WAF propagates the changes everywhere that the web ACL and its components are stored and used. Your changes are applied within seconds, but there might be a brief period of inconsistency when the changes have arrived in some places and not in others. So, for example, if you change a rule action setting, the action might be the old action in one area and the new action in another area. Or if you add an IP address to an IP set used in a blocking rule, the new address might briefly be blocked in one area while still allowed in another. This temporary inconsistency can occur when you first associate a web ACL with an Amazon Web Services resource and when you change a web ACL that is already associated with a resource. Generally, any inconsistencies of this type last only a few seconds.</p>
    #          <p> A rule group defines a collection of rules to inspect and control web requests that you can use in a <a>WebACL</a>. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRuleGroupInput}.
    #
    # @option params [String] :name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    # @option params [String] :description
    #   <p>A description of the rule group that helps with identification. </p>
    #
    # @option params [Array<Rule>] :rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to allow, block, or count. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #
    # @option params [VisibilityConfig] :visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    # @option params [Hash<String, CustomResponseBody>] :custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the rule group, and then use them in the rules that you define in the rule group. </p>
    #            <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    # @return [Types::UpdateRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule_group(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     id: 'Id', # required
    #     description: 'Description',
    #     rules: [
    #       {
    #         name: 'Name', # required
    #         priority: 1, # required
    #         statement: {
    #           byte_match_statement: {
    #             search_string: 'SearchString', # required
    #             field_to_match: {
    #               single_header: {
    #                 name: 'Name' # required
    #               },
    #               single_query_argument: {
    #                 name: 'Name' # required
    #               },
    #               all_query_arguments: { },
    #               uri_path: { },
    #               query_string: { },
    #               body: {
    #                 oversize_handling: 'CONTINUE' # accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               member_method: { },
    #               json_body: {
    #                 match_pattern: {
    #                   all: { },
    #                   included_paths: [
    #                     'member'
    #                   ]
    #                 }, # required
    #                 match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #                 invalid_fallback_behavior: 'MATCH', # accepts ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"]
    #                 oversize_handling: 'CONTINUE' # accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: {
    #                   included_headers: [
    #                     'member'
    #                   ],
    #                 }, # required
    #                 match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #                 oversize_handling: 'CONTINUE' # required - accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               cookies: {
    #                 match_pattern: {
    #                   included_cookies: [
    #                     'member'
    #                   ],
    #                 }, # required
    #                 match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #                 oversize_handling: 'CONTINUE' # required - accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               }
    #             }, # required
    #             text_transformations: [
    #               {
    #                 priority: 1, # required
    #                 type: 'NONE' # required - accepts ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"]
    #               }
    #             ], # required
    #             positional_constraint: 'EXACTLY' # required - accepts ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"]
    #           },
    #           sqli_match_statement: {
    #           },
    #           xss_match_statement: {
    #           },
    #           size_constraint_statement: {
    #             comparison_operator: 'EQ', # required - accepts ["EQ", "NE", "LE", "LT", "GE", "GT"]
    #             size: 1, # required
    #           },
    #           geo_match_statement: {
    #             country_codes: [
    #               'AF' # accepts ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]
    #             ],
    #             forwarded_ip_config: {
    #               header_name: 'HeaderName', # required
    #               fallback_behavior: 'MATCH' # required - accepts ["MATCH", "NO_MATCH"]
    #             }
    #           },
    #           rule_group_reference_statement: {
    #             arn: 'ARN', # required
    #             excluded_rules: [
    #               {
    #                 name: 'Name' # required
    #               }
    #             ]
    #           },
    #           ip_set_reference_statement: {
    #             arn: 'ARN', # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: 'HeaderName', # required
    #               fallback_behavior: 'MATCH', # required - accepts ["MATCH", "NO_MATCH"]
    #               position: 'FIRST' # required - accepts ["FIRST", "LAST", "ANY"]
    #             }
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: 'ARN', # required
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: 'IP', # required - accepts ["IP", "FORWARDED_IP"]
    #           },
    #           and_statement: {
    #           },
    #           or_statement: {
    #           },
    #           not_statement: {
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: 'VendorName', # required
    #             name: 'Name', # required
    #             version: 'Version',
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: 'LoginPath',
    #                 payload_type: 'JSON', # accepts ["JSON", "FORM_ENCODED"]
    #                 username_field: {
    #                   identifier: 'Identifier' # required
    #                 },
    #                 password_field: {
    #                   identifier: 'Identifier' # required
    #                 }
    #               }
    #             ]
    #           },
    #           label_match_statement: {
    #             scope: 'LABEL', # required - accepts ["LABEL", "NAMESPACE"]
    #             key: 'Key' # required
    #           },
    #           regex_match_statement: {
    #             regex_string: 'RegexString', # required
    #           }
    #         }, # required
    #         action: {
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: 'CustomResponseBodyKey',
    #               response_headers: [
    #                 {
    #                   name: 'Name', # required
    #                   value: 'Value' # required
    #                 }
    #               ]
    #             }
    #           },
    #           allow: {
    #             custom_request_handling: {
    #             }
    #           },
    #           count: {
    #           },
    #           captcha: {
    #           }
    #         },
    #         override_action: {
    #           none: { }
    #         },
    #         rule_labels: [
    #           {
    #             name: 'Name' # required
    #           }
    #         ],
    #         visibility_config: {
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: 'MetricName' # required
    #         }, # required
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1 # required
    #           }
    #         }
    #       }
    #     ],
    #     lock_token: 'LockToken', # required
    #     custom_response_bodies: {
    #       'key' => {
    #         content_type: 'TEXT_PLAIN', # required - accepts ["TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"]
    #         content: 'Content' # required
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRuleGroupOutput
    #   resp.data.next_lock_token #=> String
    #
    def update_rule_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRuleGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRuleGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRuleGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFOptimisticLockException, Errors::WAFDuplicateItemException, Errors::WAFInvalidParameterException, Errors::WAFNonexistentItemException, Errors::WAFSubscriptionNotFoundException, Errors::WAFConfigurationWarningException, Errors::WAFInternalErrorException, Errors::WAFUnavailableEntityException, Errors::WAFInvalidOperationException, Errors::WAFLimitsExceededException]),
        data_parser: Parsers::UpdateRuleGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRuleGroup,
        stubs: @stubs,
        params_class: Params::UpdateRuleGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_rule_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified <a>WebACL</a>. While updating a web ACL, WAF provides continous coverage to the resources that you have associated with the web ACL. </p>
    #
    #          <p>When you make changes to web ACLs or web ACL components, like rules and rule groups, WAF propagates the changes everywhere that the web ACL and its components are stored and used. Your changes are applied within seconds, but there might be a brief period of inconsistency when the changes have arrived in some places and not in others. So, for example, if you change a rule action setting, the action might be the old action in one area and the new action in another area. Or if you add an IP address to an IP set used in a blocking rule, the new address might briefly be blocked in one area while still allowed in another. This temporary inconsistency can occur when you first associate a web ACL with an Amazon Web Services resource and when you change a web ACL that is already associated with a resource. Generally, any inconsistencies of this type last only a few seconds.</p>
    #          <note>
    #             <p>This operation completely replaces the mutable specifications that you already have for the web ACL with the ones that you provide to this call. To modify the web ACL, retrieve it by calling <a>GetWebACL</a>, update the settings as needed, and then provide the complete web ACL specification to this call.</p>
    #          </note>
    #          <p> A web ACL defines a collection of rules to use to inspect and control web requests. Each rule has an action defined (allow, block, or count) for requests that match the statement of the rule. In the web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a web ACL can be a combination of the types <a>Rule</a>, <a>RuleGroup</a>, and managed rule group. You can associate a web ACL with one or more Amazon Web Services resources to protect. The resources can be an Amazon CloudFront distribution, an Amazon API Gateway REST API, an Application Load Balancer, or an AppSync GraphQL API.  </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateWebACLInput}.
    #
    # @option params [String] :name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #
    # @option params [String] :scope
    #   <p>Specifies whether this is for an Amazon CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API.  </p>
    #            <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    #               </li>
    #               <li>
    #                  <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    # @option params [DefaultAction] :default_action
    #   <p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>
    #
    # @option params [String] :description
    #   <p>A description of the web ACL that helps with identification. </p>
    #
    # @option params [Array<Rule>] :rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to allow, block, or count. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #
    # @option params [VisibilityConfig] :visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #
    # @option params [String] :lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    # @option params [Hash<String, CustomResponseBody>] :custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the web ACL, and then use them in the rules and default actions that you define in the web ACL. </p>
    #            <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    # @option params [CaptchaConfig] :captcha_config
    #   <p>Specifies how WAF should handle <code>CAPTCHA</code> evaluations for rules that don't have their own <code>CaptchaConfig</code> settings. If you don't specify this, WAF uses its default settings for <code>CaptchaConfig</code>. </p>
    #
    # @return [Types::UpdateWebACLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_web_acl(
    #     name: 'Name', # required
    #     scope: 'CLOUDFRONT', # required - accepts ["CLOUDFRONT", "REGIONAL"]
    #     id: 'Id', # required
    #     default_action: {
    #       block: {
    #         custom_response: {
    #           response_code: 1, # required
    #           custom_response_body_key: 'CustomResponseBodyKey',
    #           response_headers: [
    #             {
    #               name: 'Name', # required
    #               value: 'Value' # required
    #             }
    #           ]
    #         }
    #       },
    #       allow: {
    #         custom_request_handling: {
    #         }
    #       }
    #     }, # required
    #     description: 'Description',
    #     rules: [
    #       {
    #         name: 'Name', # required
    #         priority: 1, # required
    #         statement: {
    #           byte_match_statement: {
    #             search_string: 'SearchString', # required
    #             field_to_match: {
    #               single_header: {
    #                 name: 'Name' # required
    #               },
    #               single_query_argument: {
    #                 name: 'Name' # required
    #               },
    #               all_query_arguments: { },
    #               uri_path: { },
    #               query_string: { },
    #               body: {
    #                 oversize_handling: 'CONTINUE' # accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               member_method: { },
    #               json_body: {
    #                 match_pattern: {
    #                   all: { },
    #                   included_paths: [
    #                     'member'
    #                   ]
    #                 }, # required
    #                 match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #                 invalid_fallback_behavior: 'MATCH', # accepts ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"]
    #                 oversize_handling: 'CONTINUE' # accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               headers: {
    #                 match_pattern: {
    #                   included_headers: [
    #                     'member'
    #                   ],
    #                 }, # required
    #                 match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #                 oversize_handling: 'CONTINUE' # required - accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               },
    #               cookies: {
    #                 match_pattern: {
    #                   included_cookies: [
    #                     'member'
    #                   ],
    #                 }, # required
    #                 match_scope: 'ALL', # required - accepts ["ALL", "KEY", "VALUE"]
    #                 oversize_handling: 'CONTINUE' # required - accepts ["CONTINUE", "MATCH", "NO_MATCH"]
    #               }
    #             }, # required
    #             text_transformations: [
    #               {
    #                 priority: 1, # required
    #                 type: 'NONE' # required - accepts ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"]
    #               }
    #             ], # required
    #             positional_constraint: 'EXACTLY' # required - accepts ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"]
    #           },
    #           sqli_match_statement: {
    #           },
    #           xss_match_statement: {
    #           },
    #           size_constraint_statement: {
    #             comparison_operator: 'EQ', # required - accepts ["EQ", "NE", "LE", "LT", "GE", "GT"]
    #             size: 1, # required
    #           },
    #           geo_match_statement: {
    #             country_codes: [
    #               'AF' # accepts ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"]
    #             ],
    #             forwarded_ip_config: {
    #               header_name: 'HeaderName', # required
    #               fallback_behavior: 'MATCH' # required - accepts ["MATCH", "NO_MATCH"]
    #             }
    #           },
    #           rule_group_reference_statement: {
    #             arn: 'ARN', # required
    #             excluded_rules: [
    #               {
    #                 name: 'Name' # required
    #               }
    #             ]
    #           },
    #           ip_set_reference_statement: {
    #             arn: 'ARN', # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: 'HeaderName', # required
    #               fallback_behavior: 'MATCH', # required - accepts ["MATCH", "NO_MATCH"]
    #               position: 'FIRST' # required - accepts ["FIRST", "LAST", "ANY"]
    #             }
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: 'ARN', # required
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: 'IP', # required - accepts ["IP", "FORWARDED_IP"]
    #           },
    #           and_statement: {
    #           },
    #           or_statement: {
    #           },
    #           not_statement: {
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: 'VendorName', # required
    #             name: 'Name', # required
    #             version: 'Version',
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: 'LoginPath',
    #                 payload_type: 'JSON', # accepts ["JSON", "FORM_ENCODED"]
    #                 username_field: {
    #                   identifier: 'Identifier' # required
    #                 },
    #                 password_field: {
    #                   identifier: 'Identifier' # required
    #                 }
    #               }
    #             ]
    #           },
    #           label_match_statement: {
    #             scope: 'LABEL', # required - accepts ["LABEL", "NAMESPACE"]
    #             key: 'Key' # required
    #           },
    #           regex_match_statement: {
    #             regex_string: 'RegexString', # required
    #           }
    #         }, # required
    #         action: {
    #           count: {
    #           },
    #           captcha: {
    #           }
    #         },
    #         override_action: {
    #           none: { }
    #         },
    #         rule_labels: [
    #           {
    #             name: 'Name' # required
    #           }
    #         ],
    #         visibility_config: {
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: 'MetricName' # required
    #         }, # required
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1 # required
    #           }
    #         }
    #       }
    #     ],
    #     lock_token: 'LockToken', # required
    #     custom_response_bodies: {
    #       'key' => {
    #         content_type: 'TEXT_PLAIN', # required - accepts ["TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"]
    #         content: 'Content' # required
    #       }
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWebACLOutput
    #   resp.data.next_lock_token #=> String
    #
    def update_web_acl(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateWebACLInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateWebACLInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateWebACL
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFOptimisticLockException, Errors::WAFInvalidParameterException, Errors::WAFSubscriptionNotFoundException, Errors::WAFUnavailableEntityException, Errors::WAFLimitsExceededException, Errors::WAFDuplicateItemException, Errors::WAFExpiredManagedRuleGroupVersionException, Errors::WAFNonexistentItemException, Errors::WAFInvalidResourceException, Errors::WAFConfigurationWarningException, Errors::WAFInternalErrorException, Errors::WAFInvalidOperationException]),
        data_parser: Parsers::UpdateWebACL
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateWebACL,
        stubs: @stubs,
        params_class: Params::UpdateWebACLOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_web_acl
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
