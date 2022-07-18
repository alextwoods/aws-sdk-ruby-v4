# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::WAFRegional
  # An API client for AWSWAF_Regional_20161128
  # See {#initialize} for a full list of supported configuration options
  # <note>
  #             <p>This is <b>AWS WAF Classic Regional</b> documentation. For
  #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
  #       WAF Classic</a> in the developer guide.</p>
  #             <p>
  #                <b>For the latest version of AWS
  #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
  #          </note>
  #          <p>This is the <i>AWS WAF Regional Classic API Reference</i> for using AWS WAF Classic with the AWS resources, Elastic Load Balancing (ELB) Application Load Balancers and API Gateway APIs. The AWS WAF Classic actions and data types listed in the reference are available for protecting Elastic Load Balancing (ELB) Application Load Balancers and API Gateway APIs. You can use these actions and data types by means of the endpoints listed in <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#waf_region">AWS Regions and Endpoints</a>. This guide is for developers who need detailed information about the AWS WAF Classic API actions, data types, and errors. For detailed information about AWS WAF Classic features and an overview of how to use the AWS WAF Classic API, see the
  #       <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
  #         WAF Classic</a> in the developer guide.</p>
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
    def initialize(config = AWS::SDK::WAFRegional::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic Regional</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Associates a web ACL with a resource, either an application load balancer or Amazon API Gateway stage.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateWebACLInput}.
    #
    # @option params [String] :web_acl_id
    #   <p>A unique identifier (ID) for the web ACL. </p>
    #
    # @option params [String] :resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource to be protected, either an application load balancer or Amazon API Gateway stage.  </p>
    #            <p>The ARN should be in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon API Gateway stage: <code>arn:aws:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
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
    #     web_acl_id: 'WebACLId', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFUnavailableEntityException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Creates a <code>ByteMatchSet</code>. You then use <a>UpdateByteMatchSet</a> to identify the part of a
    # 			web request that you want AWS WAF to inspect, such as the values of the <code>User-Agent</code> header or the query string.
    # 			For example, you can create a <code>ByteMatchSet</code> that matches any requests with <code>User-Agent</code> headers
    # 			that contain the string <code>BadBot</code>. You can then configure AWS WAF to reject those requests.</p>
    # 		       <p>To create and configure a <code>ByteMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>CreateByteMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateByteMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<code>UpdateByteMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <a>UpdateByteMatchSet</a> request to specify the part of the request that you want AWS WAF to inspect
    # 				(for example, the header or the URI) and the value that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateByteMatchSetInput}.
    #
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>ByteMatchSet</a>. You can't change <code>Name</code> after you create a
    #   			<code>ByteMatchSet</code>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::CreateByteMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_byte_match_set(
    #     name: 'Name', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateByteMatchSetOutput
    #   resp.data.byte_match_set #=> Types::ByteMatchSet
    #   resp.data.byte_match_set.byte_match_set_id #=> String
    #   resp.data.byte_match_set.name #=> String
    #   resp.data.byte_match_set.byte_match_tuples #=> Array<ByteMatchTuple>
    #   resp.data.byte_match_set.byte_match_tuples[0] #=> Types::ByteMatchTuple
    #   resp.data.byte_match_set.byte_match_tuples[0].field_to_match #=> Types::FieldToMatch
    #   resp.data.byte_match_set.byte_match_tuples[0].field_to_match.type #=> String, one of ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #   resp.data.byte_match_set.byte_match_tuples[0].field_to_match.data #=> String
    #   resp.data.byte_match_set.byte_match_tuples[0].target_string #=> String
    #   resp.data.byte_match_set.byte_match_tuples[0].text_transformation #=> String, one of ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #   resp.data.byte_match_set.byte_match_tuples[0].positional_constraint #=> String, one of ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"]
    #   resp.data.change_token #=> String
    #
    def create_byte_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateByteMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateByteMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateByteMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFStaleDataException, Errors::WAFDisallowedNameException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::CreateByteMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateByteMatchSet,
        stubs: @stubs,
        params_class: Params::CreateByteMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_byte_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Creates an <a>GeoMatchSet</a>, which you use to specify which web requests you want to allow or block based on the country
    # 			that the requests originate from. For example, if you're receiving a lot of requests from one or more countries and you want to block the requests, you can create an <code>GeoMatchSet</code> that contains those countries and then configure AWS WAF to block the requests. </p>
    # 		       <p>To create and configure a <code>GeoMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>CreateGeoMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateGeoMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<a>UpdateGeoMatchSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateGeoMatchSetSet</code> request to specify the countries that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGeoMatchSetInput}.
    #
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>GeoMatchSet</a>. You can't change <code>Name</code> after you create the <code>GeoMatchSet</code>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::CreateGeoMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_geo_match_set(
    #     name: 'Name', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGeoMatchSetOutput
    #   resp.data.geo_match_set #=> Types::GeoMatchSet
    #   resp.data.geo_match_set.geo_match_set_id #=> String
    #   resp.data.geo_match_set.name #=> String
    #   resp.data.geo_match_set.geo_match_constraints #=> Array<GeoMatchConstraint>
    #   resp.data.geo_match_set.geo_match_constraints[0] #=> Types::GeoMatchConstraint
    #   resp.data.geo_match_set.geo_match_constraints[0].type #=> String, one of ["Country"]
    #   resp.data.geo_match_set.geo_match_constraints[0].value #=> String, one of ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"]
    #   resp.data.change_token #=> String
    #
    def create_geo_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGeoMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGeoMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGeoMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFStaleDataException, Errors::WAFDisallowedNameException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::CreateGeoMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGeoMatchSet,
        stubs: @stubs,
        params_class: Params::CreateGeoMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_geo_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Creates an <a>IPSet</a>, which you use to specify which web requests
    #          that
    #          you want to allow or block based on the IP addresses that the requests
    #          originate from. For example, if you're receiving a lot of requests from one or more
    #          individual IP addresses or one or more ranges of IP addresses and you want to block the
    #          requests, you can create an <code>IPSet</code> that contains those IP addresses and then
    #          configure AWS WAF to block the requests. </p>
    # 		       <p>To create and configure an <code>IPSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>CreateIPSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateIPSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<a>UpdateIPSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateIPSet</code> request to specify the IP addresses that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateIPSetInput}.
    #
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>IPSet</a>. You can't change <code>Name</code> after you create the <code>IPSet</code>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::CreateIPSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ip_set(
    #     name: 'Name', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIPSetOutput
    #   resp.data.ip_set #=> Types::IPSet
    #   resp.data.ip_set.ip_set_id #=> String
    #   resp.data.ip_set.name #=> String
    #   resp.data.ip_set.ip_set_descriptors #=> Array<IPSetDescriptor>
    #   resp.data.ip_set.ip_set_descriptors[0] #=> Types::IPSetDescriptor
    #   resp.data.ip_set.ip_set_descriptors[0].type #=> String, one of ["IPV4", "IPV6"]
    #   resp.data.ip_set.ip_set_descriptors[0].value #=> String
    #   resp.data.change_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFStaleDataException, Errors::WAFDisallowedNameException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Creates a <a>RateBasedRule</a>. The <code>RateBasedRule</code> contains a
    #             <code>RateLimit</code>, which specifies the maximum number of requests that AWS WAF allows
    #                 from a specified IP address in a five-minute period.
    #                 The <code>RateBasedRule</code> also
    #          contains the <code>IPSet</code> objects, <code>ByteMatchSet</code> objects, and other
    #          predicates that identify the requests that you want to count or block if these requests
    #          exceed the <code>RateLimit</code>.</p>
    #          <p>If you add more than one predicate to a <code>RateBasedRule</code>, a request not
    #          only must exceed the <code>RateLimit</code>, but it also must match all the
    #          conditions to be counted or blocked. For example, suppose you add the following to a
    #             <code>RateBasedRule</code>:</p>
    #          <ul>
    #             <li>
    #                <p>An <code>IPSet</code> that matches the IP address <code>192.0.2.44/32</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A <code>ByteMatchSet</code> that matches <code>BadBot</code> in the
    #                   <code>User-Agent</code> header</p>
    #             </li>
    #          </ul>
    #          <p>Further, you specify a <code>RateLimit</code> of 1,000.</p>
    #          <p>You then add the <code>RateBasedRule</code> to a <code>WebACL</code> and specify that
    #          you want to block requests that meet the conditions in the rule. For a request to be
    #          blocked, it must come from the IP address 192.0.2.44 <i>and</i> the
    #             <code>User-Agent</code> header in the request must contain the value
    #          <code>BadBot</code>. Further, requests that match these two conditions must be received at
    #          a rate of more than 1,000 requests every five minutes. If both conditions are met and the
    #          rate is exceeded, AWS WAF blocks the requests. If the rate drops below 1,000 for a
    #          five-minute period, AWS WAF no longer blocks the requests.</p>
    # 		
    # 		       <p>As a second example, suppose you want to limit requests to a particular page on your site. To do this, you could add the following to a
    #             <code>RateBasedRule</code>:</p>
    # 			
    # 			
    #          <ul>
    #             <li>
    #                <p>A <code>ByteMatchSet</code> with <code>FieldToMatch</code> of <code>URI</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A <code>PositionalConstraint</code> of <code>STARTS_WITH</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A <code>TargetString</code> of <code>login</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Further, you specify a <code>RateLimit</code> of 1,000.</p>
    #          <p>By adding this <code>RateBasedRule</code> to a <code>WebACL</code>, you could limit requests to your login page without affecting the rest of your site.</p>
    # 		
    # 		
    #          <p>To create and configure a <code>RateBasedRule</code>, perform the following
    #          steps:</p>
    #          <ol>
    #             <li>
    #                <p>Create and update the predicates that you want to include in the rule. For more
    #                information, see <a>CreateByteMatchSet</a>, <a>CreateIPSet</a>,
    #                and <a>CreateSqlInjectionMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide
    #                in the <code>ChangeToken</code> parameter of a <code>CreateRule</code>
    #                request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateRateBasedRule</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the
    #                   <code>ChangeToken</code> parameter of an <a>UpdateRule</a>
    #                request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateRateBasedRule</code> request to specify the predicates
    #                that you want to include in the rule.</p>
    #             </li>
    #             <li>
    #                <p>Create and update a <code>WebACL</code> that contains the
    #                   <code>RateBasedRule</code>. For more information, see <a>CreateWebACL</a>.</p>
    #             </li>
    #          </ol>
    #          <p>For more information about how to use the AWS WAF API to allow or block HTTP requests,
    #          see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer
    #             Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRateBasedRuleInput}.
    #
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>RateBasedRule</a>. You can't
    #            change the name of a <code>RateBasedRule</code> after you create it.</p>
    #
    # @option params [String] :metric_name
    #   <p>A friendly name or description for the metrics for this <code>RateBasedRule</code>.
    #             The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #             whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change the name of the metric after you create the
    #               <code>RateBasedRule</code>.</p>
    #
    # @option params [String] :rate_key
    #   <p>The field that AWS WAF uses to determine if requests are likely arriving from a single
    #            source and thus subject to rate monitoring. The only valid value for <code>RateKey</code>
    #            is <code>IP</code>. <code>IP</code> indicates that requests that arrive from the same IP
    #            address are subject to the <code>RateLimit</code> that is specified in
    #            the <code>RateBasedRule</code>.</p>
    #
    # @option params [Integer] :rate_limit
    #   <p>The maximum number of requests, which have an identical value in the field that is
    #            specified by <code>RateKey</code>, allowed in a five-minute period. If the number of
    #            requests exceeds the <code>RateLimit</code> and the other predicates specified in the rule
    #            are also met, AWS WAF triggers the action that is specified for this rule.</p>
    #
    # @option params [String] :change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the
    #               <code>CreateRateBasedRule</code> request. You can also use this value to query the
    #            status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p></p>
    #
    # @return [Types::CreateRateBasedRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rate_based_rule(
    #     name: 'Name', # required
    #     metric_name: 'MetricName', # required
    #     rate_key: 'IP', # required - accepts ["IP"]
    #     rate_limit: 1, # required
    #     change_token: 'ChangeToken', # required
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
    #   resp.data #=> Types::CreateRateBasedRuleOutput
    #   resp.data.rule #=> Types::RateBasedRule
    #   resp.data.rule.rule_id #=> String
    #   resp.data.rule.name #=> String
    #   resp.data.rule.metric_name #=> String
    #   resp.data.rule.match_predicates #=> Array<Predicate>
    #   resp.data.rule.match_predicates[0] #=> Types::Predicate
    #   resp.data.rule.match_predicates[0].negated #=> Boolean
    #   resp.data.rule.match_predicates[0].type #=> String, one of ["IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"]
    #   resp.data.rule.match_predicates[0].data_id #=> String
    #   resp.data.rule.rate_key #=> String, one of ["IP"]
    #   resp.data.rule.rate_limit #=> Integer
    #   resp.data.change_token #=> String
    #
    def create_rate_based_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRateBasedRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRateBasedRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRateBasedRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFStaleDataException, Errors::WAFDisallowedNameException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInternalErrorException, Errors::WAFTagOperationException, Errors::WAFBadRequestException]),
        data_parser: Parsers::CreateRateBasedRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRateBasedRule,
        stubs: @stubs,
        params_class: Params::CreateRateBasedRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_rate_based_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Creates a <a>RegexMatchSet</a>. You then use <a>UpdateRegexMatchSet</a> to identify the part of a
    #          web request that you want AWS WAF to inspect, such as the values of the <code>User-Agent</code> header or the query string.
    #          For example, you can create a <code>RegexMatchSet</code> that contains a <code>RegexMatchTuple</code> that looks for any requests with <code>User-Agent</code> headers
    #          that match a <code>RegexPatternSet</code> with pattern <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those requests.</p>
    #          <p>To create and configure a <code>RegexMatchSet</code>, perform the following steps:</p>
    #          <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    #                   <code>CreateRegexMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateRegexMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    #                   <code>UpdateRegexMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <a>UpdateRegexMatchSet</a> request to specify the part of the request that you want AWS WAF to inspect
    #                   (for example, the header or the URI) and the value, using a <code>RegexPatternSet</code>, that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    #          <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    #             <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRegexMatchSetInput}.
    #
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>RegexMatchSet</a>. You can't change <code>Name</code> after you create a
    #   			<code>RegexMatchSet</code>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::CreateRegexMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_regex_match_set(
    #     name: 'Name', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRegexMatchSetOutput
    #   resp.data.regex_match_set #=> Types::RegexMatchSet
    #   resp.data.regex_match_set.regex_match_set_id #=> String
    #   resp.data.regex_match_set.name #=> String
    #   resp.data.regex_match_set.regex_match_tuples #=> Array<RegexMatchTuple>
    #   resp.data.regex_match_set.regex_match_tuples[0] #=> Types::RegexMatchTuple
    #   resp.data.regex_match_set.regex_match_tuples[0].field_to_match #=> Types::FieldToMatch
    #   resp.data.regex_match_set.regex_match_tuples[0].field_to_match.type #=> String, one of ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #   resp.data.regex_match_set.regex_match_tuples[0].field_to_match.data #=> String
    #   resp.data.regex_match_set.regex_match_tuples[0].text_transformation #=> String, one of ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #   resp.data.regex_match_set.regex_match_tuples[0].regex_pattern_set_id #=> String
    #   resp.data.change_token #=> String
    #
    def create_regex_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRegexMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRegexMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRegexMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFStaleDataException, Errors::WAFDisallowedNameException, Errors::WAFLimitsExceededException, Errors::WAFInternalErrorException]),
        data_parser: Parsers::CreateRegexMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRegexMatchSet,
        stubs: @stubs,
        params_class: Params::CreateRegexMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_regex_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Creates a <code>RegexPatternSet</code>. You then use <a>UpdateRegexPatternSet</a> to specify the regular expression (regex) pattern that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those requests.</p>
    # 		       <p>To create and configure a <code>RegexPatternSet</code>, perform the following steps:</p>
    #          <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    #                   <code>CreateRegexPatternSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateRegexPatternSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    #                   <code>UpdateRegexPatternSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <a>UpdateRegexPatternSet</a> request to specify the string that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    #          <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    #             <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRegexPatternSetInput}.
    #
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>RegexPatternSet</a>. You can't change <code>Name</code> after you create a
    #   			<code>RegexPatternSet</code>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::CreateRegexPatternSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_regex_pattern_set(
    #     name: 'Name', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRegexPatternSetOutput
    #   resp.data.regex_pattern_set #=> Types::RegexPatternSet
    #   resp.data.regex_pattern_set.regex_pattern_set_id #=> String
    #   resp.data.regex_pattern_set.name #=> String
    #   resp.data.regex_pattern_set.regex_pattern_strings #=> Array<String>
    #   resp.data.regex_pattern_set.regex_pattern_strings[0] #=> String
    #   resp.data.change_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFStaleDataException, Errors::WAFDisallowedNameException, Errors::WAFLimitsExceededException, Errors::WAFInternalErrorException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Creates a <code>Rule</code>, which contains the <code>IPSet</code> objects,
    #             <code>ByteMatchSet</code> objects, and other predicates that identify the requests that
    #          you want to block. If you add more than one predicate to a <code>Rule</code>, a request
    #          must match all of the specifications to be allowed or blocked. For example, suppose
    #          that
    #          you add the following to a <code>Rule</code>:</p>
    # 		       <ul>
    #             <li>
    #                <p>An <code>IPSet</code> that matches the IP address <code>192.0.2.44/32</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A <code>ByteMatchSet</code> that matches <code>BadBot</code> in the <code>User-Agent</code> header</p>
    #             </li>
    #          </ul>
    # 		       <p>You then add the <code>Rule</code> to a <code>WebACL</code> and specify that you want to blocks requests that satisfy the <code>Rule</code>.
    # 			For a request to be blocked, it must come from the IP address 192.0.2.44 <i>and</i> the <code>User-Agent</code> header in the request
    # 			must contain the value <code>BadBot</code>.</p>
    # 		       <p>To create and configure a <code>Rule</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create and update the predicates that you want to include in the <code>Rule</code>. For more information, see
    # 				<a>CreateByteMatchSet</a>, <a>CreateIPSet</a>, and <a>CreateSqlInjectionMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>CreateRule</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateRule</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<a>UpdateRule</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateRule</code> request to specify the predicates that you want to include in the <code>Rule</code>.</p>
    #             </li>
    #             <li>
    #                <p>Create and update a <code>WebACL</code> that contains the <code>Rule</code>. For more information, see <a>CreateWebACL</a>.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRuleInput}.
    #
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>Rule</a>. You can't change the name of a <code>Rule</code> after you create it.</p>
    #
    # @option params [String] :metric_name
    #   <p>A friendly name or description for the metrics for this <code>Rule</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #   	        whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change the name of the metric after you create the
    #               <code>Rule</code>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p></p>
    #
    # @return [Types::CreateRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule(
    #     name: 'Name', # required
    #     metric_name: 'MetricName', # required
    #     change_token: 'ChangeToken', # required
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
    #   resp.data #=> Types::CreateRuleOutput
    #   resp.data.rule #=> Types::Rule
    #   resp.data.rule.rule_id #=> String
    #   resp.data.rule.name #=> String
    #   resp.data.rule.metric_name #=> String
    #   resp.data.rule.predicates #=> Array<Predicate>
    #   resp.data.rule.predicates[0] #=> Types::Predicate
    #   resp.data.rule.predicates[0].negated #=> Boolean
    #   resp.data.rule.predicates[0].type #=> String, one of ["IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"]
    #   resp.data.rule.predicates[0].data_id #=> String
    #   resp.data.change_token #=> String
    #
    def create_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFStaleDataException, Errors::WAFDisallowedNameException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInternalErrorException, Errors::WAFTagOperationException, Errors::WAFBadRequestException]),
        data_parser: Parsers::CreateRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRule,
        stubs: @stubs,
        params_class: Params::CreateRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Creates a <code>RuleGroup</code>. A rule group is a collection of predefined rules that you add to a web ACL. You use <a>UpdateRuleGroup</a> to add rules to the rule group.</p>
    # 	        <p>Rule groups are subject to the following limits:</p>
    # 	        <ul>
    #             <li>
    #                <p>Three rule groups per account. You can request an increase to this limit by contacting customer support.</p>
    #             </li>
    #             <li>
    #                <p>One rule group per web ACL.</p>
    #             </li>
    #             <li>
    #                <p>Ten rules per rule group.</p>
    #             </li>
    #          </ul>
    #          <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    #          <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRuleGroupInput}.
    #
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>RuleGroup</a>. You can't change <code>Name</code> after you create a
    #            <code>RuleGroup</code>.</p>
    #
    # @option params [String] :metric_name
    #   <p>A friendly name or description for the metrics for this <code>RuleGroup</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #            whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change the name of the metric after you create the <code>RuleGroup</code>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p></p>
    #
    # @return [Types::CreateRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule_group(
    #     name: 'Name', # required
    #     metric_name: 'MetricName', # required
    #     change_token: 'ChangeToken', # required
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
    #   resp.data #=> Types::CreateRuleGroupOutput
    #   resp.data.rule_group #=> Types::RuleGroup
    #   resp.data.rule_group.rule_group_id #=> String
    #   resp.data.rule_group.name #=> String
    #   resp.data.rule_group.metric_name #=> String
    #   resp.data.change_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFStaleDataException, Errors::WAFDisallowedNameException, Errors::WAFLimitsExceededException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInternalErrorException, Errors::WAFTagOperationException, Errors::WAFBadRequestException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Creates a <code>SizeConstraintSet</code>. You then use <a>UpdateSizeConstraintSet</a> to identify the part of a
    # 			web request that you want AWS WAF to check for length, such as the length of the <code>User-Agent</code> header or the length of the query string.
    # 			For example, you can create a <code>SizeConstraintSet</code> that matches any requests that have a query string that is longer than 100 bytes.
    # 			You can then configure AWS WAF to reject those requests.</p>
    # 		       <p>To create and configure a <code>SizeConstraintSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>CreateSizeConstraintSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateSizeConstraintSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<code>UpdateSizeConstraintSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <a>UpdateSizeConstraintSet</a> request to specify the part of the request that you want AWS WAF to inspect
    # 				(for example, the header or the URI) and the value that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSizeConstraintSetInput}.
    #
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>SizeConstraintSet</a>. You can't change <code>Name</code> after you create a
    #   			<code>SizeConstraintSet</code>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::CreateSizeConstraintSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_size_constraint_set(
    #     name: 'Name', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSizeConstraintSetOutput
    #   resp.data.size_constraint_set #=> Types::SizeConstraintSet
    #   resp.data.size_constraint_set.size_constraint_set_id #=> String
    #   resp.data.size_constraint_set.name #=> String
    #   resp.data.size_constraint_set.size_constraints #=> Array<SizeConstraint>
    #   resp.data.size_constraint_set.size_constraints[0] #=> Types::SizeConstraint
    #   resp.data.size_constraint_set.size_constraints[0].field_to_match #=> Types::FieldToMatch
    #   resp.data.size_constraint_set.size_constraints[0].field_to_match.type #=> String, one of ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #   resp.data.size_constraint_set.size_constraints[0].field_to_match.data #=> String
    #   resp.data.size_constraint_set.size_constraints[0].text_transformation #=> String, one of ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #   resp.data.size_constraint_set.size_constraints[0].comparison_operator #=> String, one of ["EQ", "NE", "LE", "LT", "GE", "GT"]
    #   resp.data.size_constraint_set.size_constraints[0].size #=> Integer
    #   resp.data.change_token #=> String
    #
    def create_size_constraint_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSizeConstraintSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSizeConstraintSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSizeConstraintSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFStaleDataException, Errors::WAFDisallowedNameException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::CreateSizeConstraintSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSizeConstraintSet,
        stubs: @stubs,
        params_class: Params::CreateSizeConstraintSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_size_constraint_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Creates a <a>SqlInjectionMatchSet</a>, which you use to allow, block, or count requests that contain snippets of SQL code in a
    # 			specified part of web requests. AWS WAF searches for character sequences that are likely to be malicious strings.</p>
    # 		       <p>To create and configure a <code>SqlInjectionMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>CreateSqlInjectionMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateSqlInjectionMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<a>UpdateSqlInjectionMatchSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <a>UpdateSqlInjectionMatchSet</a> request to specify the parts of web requests in which you want to
    # 				allow, block, or count malicious SQL code.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSqlInjectionMatchSetInput}.
    #
    # @option params [String] :name
    #   <p>A friendly name or description for the <a>SqlInjectionMatchSet</a> that you're creating. You can't change <code>Name</code>
    #   			after you create the <code>SqlInjectionMatchSet</code>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::CreateSqlInjectionMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sql_injection_match_set(
    #     name: 'Name', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSqlInjectionMatchSetOutput
    #   resp.data.sql_injection_match_set #=> Types::SqlInjectionMatchSet
    #   resp.data.sql_injection_match_set.sql_injection_match_set_id #=> String
    #   resp.data.sql_injection_match_set.name #=> String
    #   resp.data.sql_injection_match_set.sql_injection_match_tuples #=> Array<SqlInjectionMatchTuple>
    #   resp.data.sql_injection_match_set.sql_injection_match_tuples[0] #=> Types::SqlInjectionMatchTuple
    #   resp.data.sql_injection_match_set.sql_injection_match_tuples[0].field_to_match #=> Types::FieldToMatch
    #   resp.data.sql_injection_match_set.sql_injection_match_tuples[0].field_to_match.type #=> String, one of ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #   resp.data.sql_injection_match_set.sql_injection_match_tuples[0].field_to_match.data #=> String
    #   resp.data.sql_injection_match_set.sql_injection_match_tuples[0].text_transformation #=> String, one of ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #   resp.data.change_token #=> String
    #
    def create_sql_injection_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSqlInjectionMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSqlInjectionMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSqlInjectionMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFStaleDataException, Errors::WAFDisallowedNameException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::CreateSqlInjectionMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSqlInjectionMatchSet,
        stubs: @stubs,
        params_class: Params::CreateSqlInjectionMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_sql_injection_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Creates a <code>WebACL</code>, which contains the <code>Rules</code> that identify the CloudFront web requests that you want to allow, block, or count.
    # 			AWS WAF evaluates <code>Rules</code> in order based on the value of <code>Priority</code> for each <code>Rule</code>.</p>			
    # 		       <p>You also specify a default action, either <code>ALLOW</code> or <code>BLOCK</code>. If a web request doesn't match
    # 			any of the <code>Rules</code> in a <code>WebACL</code>, AWS WAF responds to the request with the default action. </p>			
    # 		       <p>To create and configure a <code>WebACL</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create and update the <code>ByteMatchSet</code> objects and other predicates that you want to include in <code>Rules</code>.
    # 				For more information, see <a>CreateByteMatchSet</a>, <a>UpdateByteMatchSet</a>, <a>CreateIPSet</a>, <a>UpdateIPSet</a>,
    # 				<a>CreateSqlInjectionMatchSet</a>, and <a>UpdateSqlInjectionMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Create and update the <code>Rules</code> that you want to include in the <code>WebACL</code>. For more information, see
    # 				<a>CreateRule</a> and <a>UpdateRule</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>CreateWebACL</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateWebACL</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<a>UpdateWebACL</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <a>UpdateWebACL</a> request to specify the <code>Rules</code> that you want to include in the <code>WebACL</code>,
    # 				to specify the default action, and to associate the <code>WebACL</code> with a CloudFront distribution.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWebACLInput}.
    #
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>WebACL</a>. You can't change <code>Name</code> after you create the <code>WebACL</code>.</p>
    #
    # @option params [String] :metric_name
    #   <p>A friendly name or description for the metrics for this <code>WebACL</code>.The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #   	        whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change <code>MetricName</code> after you create the
    #               <code>WebACL</code>.</p>
    #
    # @option params [WafAction] :default_action
    #   <p>The action that you want  AWS WAF to take when a request doesn't match the criteria specified in any of the <code>Rule</code>
    #   			objects that are associated with the <code>WebACL</code>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p></p>
    #
    # @return [Types::CreateWebACLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_web_acl(
    #     name: 'Name', # required
    #     metric_name: 'MetricName', # required
    #     default_action: {
    #       type: 'BLOCK' # required - accepts ["BLOCK", "ALLOW", "COUNT"]
    #     }, # required
    #     change_token: 'ChangeToken', # required
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
    #   resp.data #=> Types::CreateWebACLOutput
    #   resp.data.web_acl #=> Types::WebACL
    #   resp.data.web_acl.web_acl_id #=> String
    #   resp.data.web_acl.name #=> String
    #   resp.data.web_acl.metric_name #=> String
    #   resp.data.web_acl.default_action #=> Types::WafAction
    #   resp.data.web_acl.default_action.type #=> String, one of ["BLOCK", "ALLOW", "COUNT"]
    #   resp.data.web_acl.rules #=> Array<ActivatedRule>
    #   resp.data.web_acl.rules[0] #=> Types::ActivatedRule
    #   resp.data.web_acl.rules[0].priority #=> Integer
    #   resp.data.web_acl.rules[0].rule_id #=> String
    #   resp.data.web_acl.rules[0].action #=> Types::WafAction
    #   resp.data.web_acl.rules[0].override_action #=> Types::WafOverrideAction
    #   resp.data.web_acl.rules[0].override_action.type #=> String, one of ["NONE", "COUNT"]
    #   resp.data.web_acl.rules[0].type #=> String, one of ["REGULAR", "RATE_BASED", "GROUP"]
    #   resp.data.web_acl.rules[0].excluded_rules #=> Array<ExcludedRule>
    #   resp.data.web_acl.rules[0].excluded_rules[0] #=> Types::ExcludedRule
    #   resp.data.web_acl.rules[0].excluded_rules[0].rule_id #=> String
    #   resp.data.web_acl.web_acl_arn #=> String
    #   resp.data.change_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFStaleDataException, Errors::WAFDisallowedNameException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInternalErrorException, Errors::WAFTagOperationException, Errors::WAFBadRequestException, Errors::WAFInvalidAccountException]),
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

    # <p>Creates an AWS CloudFormation WAFV2 template for the specified web ACL in the specified Amazon S3 bucket.
    #            Then, in CloudFormation, you create a stack from the template, to create the web ACL and its resources in AWS WAFV2.
    #            Use this to migrate your AWS WAF Classic web ACL to the latest version of AWS WAF.</p>
    #          <p>This is part of a larger migration procedure for web ACLs from AWS WAF Classic to the latest version of AWS WAF.
    #            For the full procedure, including caveats and manual steps to complete
    #            the migration and switch over to the new web ACL, see
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-migrating-from-classic.html">Migrating your AWS WAF Classic resources to AWS WAF</a> in the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF
    #   Developer Guide</a>.  </p>
    #
    # @param [Hash] params
    #   See {Types::CreateWebACLMigrationStackInput}.
    #
    # @option params [String] :web_acl_id
    #   <p>The UUID of the WAF Classic web ACL that you want to migrate to WAF v2.</p>
    #
    # @option params [String] :s3_bucket_name
    #   <p>The name of the Amazon S3 bucket to store the CloudFormation template in. The S3 bucket must be
    #              configured as follows for the migration:  </p>
    #            <ul>
    #               <li>
    #                  <p>The bucket name must start with <code>aws-waf-migration-</code>. For example, <code>aws-waf-migration-my-web-acl</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The bucket must be in the Region where you are deploying the template. For example, for a web ACL in us-west-2, you must use an Amazon S3 bucket in us-west-2 and you must deploy the template stack to us-west-2. </p>
    #               </li>
    #               <li>
    #                  <p>The bucket policies must permit the migration process to write data. For listings of the
    #          bucket policies, see the Examples section. </p>
    #              </li>
    #            </ul>
    #
    # @option params [Boolean] :ignore_unsupported_type
    #   <p>Indicates whether to exclude entities that can't be migrated or to stop the migration.
    #              Set this to true to ignore unsupported entities in the web ACL during the migration. Otherwise, if AWS WAF encounters unsupported
    #              entities, it stops the process and throws an exception. </p>
    #
    # @return [Types::CreateWebACLMigrationStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_web_acl_migration_stack(
    #     web_acl_id: 'WebACLId', # required
    #     s3_bucket_name: 'S3BucketName', # required
    #     ignore_unsupported_type: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWebACLMigrationStackOutput
    #   resp.data.s3_object_url #=> String
    #
    def create_web_acl_migration_stack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWebACLMigrationStackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWebACLMigrationStackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWebACLMigrationStack
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidOperationException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFEntityMigrationException, Errors::WAFNonexistentItemException]),
        data_parser: Parsers::CreateWebACLMigrationStack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWebACLMigrationStack,
        stubs: @stubs,
        params_class: Params::CreateWebACLMigrationStackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_web_acl_migration_stack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Creates an <a>XssMatchSet</a>, which you use to allow, block, or count requests that contain cross-site scripting attacks
    # 			in the specified part of web requests. AWS WAF searches for character sequences that are likely to be malicious strings.</p>
    # 		       <p>To create and configure an <code>XssMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>CreateXssMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateXssMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<a>UpdateXssMatchSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <a>UpdateXssMatchSet</a> request to specify the parts of web requests in which you want to
    # 				allow, block, or count cross-site scripting attacks.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateXssMatchSetInput}.
    #
    # @option params [String] :name
    #   <p>A friendly name or description for the <a>XssMatchSet</a> that you're creating. You can't change <code>Name</code>
    #   			after you create the <code>XssMatchSet</code>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::CreateXssMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_xss_match_set(
    #     name: 'Name', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateXssMatchSetOutput
    #   resp.data.xss_match_set #=> Types::XssMatchSet
    #   resp.data.xss_match_set.xss_match_set_id #=> String
    #   resp.data.xss_match_set.name #=> String
    #   resp.data.xss_match_set.xss_match_tuples #=> Array<XssMatchTuple>
    #   resp.data.xss_match_set.xss_match_tuples[0] #=> Types::XssMatchTuple
    #   resp.data.xss_match_set.xss_match_tuples[0].field_to_match #=> Types::FieldToMatch
    #   resp.data.xss_match_set.xss_match_tuples[0].field_to_match.type #=> String, one of ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #   resp.data.xss_match_set.xss_match_tuples[0].field_to_match.data #=> String
    #   resp.data.xss_match_set.xss_match_tuples[0].text_transformation #=> String, one of ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #   resp.data.change_token #=> String
    #
    def create_xss_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateXssMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateXssMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateXssMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFStaleDataException, Errors::WAFDisallowedNameException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::CreateXssMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateXssMatchSet,
        stubs: @stubs,
        params_class: Params::CreateXssMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_xss_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Permanently deletes a <a>ByteMatchSet</a>. You can't delete a <code>ByteMatchSet</code> if it's still used in any <code>Rules</code>
    # 			or if it still includes any <a>ByteMatchTuple</a> objects (any filters).</p>		
    # 		       <p>If you just want to remove a <code>ByteMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p>		
    # 		       <p>To permanently delete a <code>ByteMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>ByteMatchSet</code> to remove filters, if any. For more information, see <a>UpdateByteMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>DeleteByteMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteByteMatchSet</code> request.</p>
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::DeleteByteMatchSetInput}.
    #
    # @option params [String] :byte_match_set_id
    #   <p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to delete. <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by
    #   			<a>ListByteMatchSets</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::DeleteByteMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_byte_match_set(
    #     byte_match_set_id: 'ByteMatchSetId', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteByteMatchSetOutput
    #   resp.data.change_token #=> String
    #
    def delete_byte_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteByteMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteByteMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteByteMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFNonEmptyEntityException, Errors::WAFStaleDataException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::DeleteByteMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteByteMatchSet,
        stubs: @stubs,
        params_class: Params::DeleteByteMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_byte_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Permanently deletes a <a>GeoMatchSet</a>. You can't delete a <code>GeoMatchSet</code> if it's still used in any <code>Rules</code> or
    # 			if it still includes any countries.</p>
    # 		       <p>If you just want to remove a <code>GeoMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p>
    # 		       <p>To permanently delete a <code>GeoMatchSet</code> from AWS WAF, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>GeoMatchSet</code> to remove any countries. For more information, see <a>UpdateGeoMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>DeleteGeoMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteGeoMatchSet</code> request.</p>
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::DeleteGeoMatchSetInput}.
    #
    # @option params [String] :geo_match_set_id
    #   <p>The <code>GeoMatchSetID</code> of the <a>GeoMatchSet</a> that you want to delete. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by
    #   			<a>ListGeoMatchSets</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::DeleteGeoMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_geo_match_set(
    #     geo_match_set_id: 'GeoMatchSetId', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGeoMatchSetOutput
    #   resp.data.change_token #=> String
    #
    def delete_geo_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGeoMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGeoMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGeoMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFNonEmptyEntityException, Errors::WAFStaleDataException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::DeleteGeoMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGeoMatchSet,
        stubs: @stubs,
        params_class: Params::DeleteGeoMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_geo_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Permanently deletes an <a>IPSet</a>. You can't delete an <code>IPSet</code> if it's still used in any <code>Rules</code> or
    # 			if it still includes any IP addresses.</p>
    # 		       <p>If you just want to remove an <code>IPSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p>
    # 		       <p>To permanently delete an <code>IPSet</code> from AWS WAF, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>IPSet</code> to remove IP address ranges, if any. For more information, see <a>UpdateIPSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>DeleteIPSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteIPSet</code> request.</p>
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::DeleteIPSetInput}.
    #
    # @option params [String] :ip_set_id
    #   <p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to delete. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by
    #   			<a>ListIPSets</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::DeleteIPSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ip_set(
    #     ip_set_id: 'IPSetId', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIPSetOutput
    #   resp.data.change_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFNonEmptyEntityException, Errors::WAFStaleDataException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Permanently deletes the <a>LoggingConfiguration</a> from the specified web
    #          ACL.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLoggingConfigurationInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL from which you want to delete the <a>LoggingConfiguration</a>.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFStaleDataException, Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Permanently deletes an IAM policy from the specified RuleGroup.</p>
    #          <p>The user making the request must be the owner of the RuleGroup.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePermissionPolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the RuleGroup from which you want to delete the policy.</p>
    #            <p>The user making the request must be the owner of the RuleGroup.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFStaleDataException, Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Permanently deletes a <a>RateBasedRule</a>. You can't delete a rule if
    #          it's still used in any <code>WebACL</code> objects or if it still includes any predicates,
    #          such as <code>ByteMatchSet</code> objects.</p>
    #          <p>If you just want to remove a rule from a <code>WebACL</code>, use <a>UpdateWebACL</a>.</p>
    #          <p>To permanently delete a <code>RateBasedRule</code> from AWS WAF, perform the following
    #          steps:</p>
    #          <ol>
    #             <li>
    #                <p>Update the <code>RateBasedRule</code> to remove predicates, if any. For more
    #                information, see <a>UpdateRateBasedRule</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide
    #                in the <code>ChangeToken</code> parameter of a <code>DeleteRateBasedRule</code>
    #                request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteRateBasedRule</code> request.</p>
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::DeleteRateBasedRuleInput}.
    #
    # @option params [String] :rule_id
    #   <p>The <code>RuleId</code> of the <a>RateBasedRule</a> that you want to
    #            delete. <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by
    #               <a>ListRateBasedRules</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::DeleteRateBasedRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rate_based_rule(
    #     rule_id: 'RuleId', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRateBasedRuleOutput
    #   resp.data.change_token #=> String
    #
    def delete_rate_based_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRateBasedRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRateBasedRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRateBasedRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFNonEmptyEntityException, Errors::WAFStaleDataException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFTagOperationException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::DeleteRateBasedRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRateBasedRule,
        stubs: @stubs,
        params_class: Params::DeleteRateBasedRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_rate_based_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Permanently deletes a <a>RegexMatchSet</a>. You can't delete a <code>RegexMatchSet</code> if it's still used in any <code>Rules</code>
    #         or if it still includes any <code>RegexMatchTuples</code> objects (any filters).</p>		
    # 		       <p>If you just want to remove a <code>RegexMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p>		
    # 		       <p>To permanently delete a <code>RegexMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>RegexMatchSet</code> to remove filters, if any. For more information, see <a>UpdateRegexMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>DeleteRegexMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteRegexMatchSet</code> request.</p>
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::DeleteRegexMatchSetInput}.
    #
    # @option params [String] :regex_match_set_id
    #   <p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to delete. <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by
    #   			<a>ListRegexMatchSets</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::DeleteRegexMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_regex_match_set(
    #     regex_match_set_id: 'RegexMatchSetId', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRegexMatchSetOutput
    #   resp.data.change_token #=> String
    #
    def delete_regex_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRegexMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRegexMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRegexMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFNonEmptyEntityException, Errors::WAFStaleDataException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::DeleteRegexMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRegexMatchSet,
        stubs: @stubs,
        params_class: Params::DeleteRegexMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_regex_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Permanently deletes a <a>RegexPatternSet</a>. You can't delete a <code>RegexPatternSet</code> if it's still used in any <code>RegexMatchSet</code>
    #          or if the <code>RegexPatternSet</code> is not empty. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRegexPatternSetInput}.
    #
    # @option params [String] :regex_pattern_set_id
    #   <p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to delete. <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by
    #   			<a>ListRegexPatternSets</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::DeleteRegexPatternSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_regex_pattern_set(
    #     regex_pattern_set_id: 'RegexPatternSetId', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRegexPatternSetOutput
    #   resp.data.change_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFNonEmptyEntityException, Errors::WAFStaleDataException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Permanently deletes a <a>Rule</a>. You can't delete a <code>Rule</code> if it's still used in any <code>WebACL</code>
    # 			objects or if it still includes any predicates, such as <code>ByteMatchSet</code> objects.</p>
    # 		       <p>If you just want to remove a <code>Rule</code> from a <code>WebACL</code>, use <a>UpdateWebACL</a>.</p>
    # 		       <p>To permanently delete a <code>Rule</code> from AWS WAF, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>Rule</code> to remove predicates, if any. For more information, see <a>UpdateRule</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>DeleteRule</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteRule</code> request.</p>
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::DeleteRuleInput}.
    #
    # @option params [String] :rule_id
    #   <p>The <code>RuleId</code> of the <a>Rule</a> that you want to delete. <code>RuleId</code> is returned by <a>CreateRule</a> and by
    #   			<a>ListRules</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::DeleteRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule(
    #     rule_id: 'RuleId', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRuleOutput
    #   resp.data.change_token #=> String
    #
    def delete_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFNonEmptyEntityException, Errors::WAFStaleDataException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFTagOperationException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::DeleteRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRule,
        stubs: @stubs,
        params_class: Params::DeleteRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Permanently deletes a <a>RuleGroup</a>. You can't delete a <code>RuleGroup</code> if it's still used in any <code>WebACL</code>
    #          objects or if it still includes any rules.</p>
    #          <p>If you just want to remove a <code>RuleGroup</code> from a <code>WebACL</code>, use <a>UpdateWebACL</a>.</p>
    #          <p>To permanently delete a <code>RuleGroup</code> from AWS WAF, perform the following steps:</p>
    #          <ol>
    #             <li>
    #                <p>Update the <code>RuleGroup</code> to remove rules, if any. For more information, see <a>UpdateRuleGroup</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    #                <code>DeleteRuleGroup</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteRuleGroup</code> request.</p>
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::DeleteRuleGroupInput}.
    #
    # @option params [String] :rule_group_id
    #   <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to delete. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by
    #            <a>ListRuleGroups</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::DeleteRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule_group(
    #     rule_group_id: 'RuleGroupId', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRuleGroupOutput
    #   resp.data.change_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFNonEmptyEntityException, Errors::WAFInvalidOperationException, Errors::WAFStaleDataException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFTagOperationException, Errors::WAFNonexistentItemException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Permanently deletes a <a>SizeConstraintSet</a>. You can't delete a <code>SizeConstraintSet</code> if it's still used in any <code>Rules</code>
    # 			or if it still includes any <a>SizeConstraint</a> objects (any filters).</p>		
    # 		       <p>If you just want to remove a <code>SizeConstraintSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p>		
    # 		       <p>To permanently delete a <code>SizeConstraintSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>SizeConstraintSet</code> to remove filters, if any. For more information, see <a>UpdateSizeConstraintSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>DeleteSizeConstraintSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteSizeConstraintSet</code> request.</p>
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::DeleteSizeConstraintSetInput}.
    #
    # @option params [String] :size_constraint_set_id
    #   <p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to delete. <code>SizeConstraintSetId</code>
    #   			is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::DeleteSizeConstraintSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_size_constraint_set(
    #     size_constraint_set_id: 'SizeConstraintSetId', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSizeConstraintSetOutput
    #   resp.data.change_token #=> String
    #
    def delete_size_constraint_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSizeConstraintSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSizeConstraintSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSizeConstraintSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFNonEmptyEntityException, Errors::WAFStaleDataException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::DeleteSizeConstraintSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSizeConstraintSet,
        stubs: @stubs,
        params_class: Params::DeleteSizeConstraintSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_size_constraint_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Permanently deletes a <a>SqlInjectionMatchSet</a>. You can't delete a <code>SqlInjectionMatchSet</code> if it's
    # 			still used in any <code>Rules</code> or if it still contains any <a>SqlInjectionMatchTuple</a> objects.</p>
    # 		       <p>If you just want to remove a <code>SqlInjectionMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p>
    # 		       <p>To permanently delete a <code>SqlInjectionMatchSet</code> from AWS WAF, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>SqlInjectionMatchSet</code> to remove filters, if any. For more information, see
    # 				<a>UpdateSqlInjectionMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>DeleteSqlInjectionMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteSqlInjectionMatchSet</code> request.</p>
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::DeleteSqlInjectionMatchSetInput}.
    #
    # @option params [String] :sql_injection_match_set_id
    #   <p>The <code>SqlInjectionMatchSetId</code> of the <a>SqlInjectionMatchSet</a> that you want to delete.
    #   			<code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::DeleteSqlInjectionMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sql_injection_match_set(
    #     sql_injection_match_set_id: 'SqlInjectionMatchSetId', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSqlInjectionMatchSetOutput
    #   resp.data.change_token #=> String
    #
    def delete_sql_injection_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSqlInjectionMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSqlInjectionMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSqlInjectionMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFNonEmptyEntityException, Errors::WAFStaleDataException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::DeleteSqlInjectionMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSqlInjectionMatchSet,
        stubs: @stubs,
        params_class: Params::DeleteSqlInjectionMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_sql_injection_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Permanently deletes a <a>WebACL</a>. You can't delete a <code>WebACL</code> if it still contains any <code>Rules</code>.</p>
    # 		       <p>To delete a <code>WebACL</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>WebACL</code> to remove <code>Rules</code>, if any. For more information, see <a>UpdateWebACL</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>DeleteWebACL</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteWebACL</code> request.</p>
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::DeleteWebACLInput}.
    #
    # @option params [String] :web_acl_id
    #   <p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to delete. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by
    #   			<a>ListWebACLs</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::DeleteWebACLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_web_acl(
    #     web_acl_id: 'WebACLId', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWebACLOutput
    #   resp.data.change_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFNonEmptyEntityException, Errors::WAFStaleDataException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFTagOperationException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Permanently deletes an <a>XssMatchSet</a>. You can't delete an <code>XssMatchSet</code> if it's
    # 			still used in any <code>Rules</code> or if it still contains any <a>XssMatchTuple</a> objects.</p>
    # 		       <p>If you just want to remove an <code>XssMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p>
    # 		       <p>To permanently delete an <code>XssMatchSet</code> from AWS WAF, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>XssMatchSet</code> to remove filters, if any. For more information, see
    # 				<a>UpdateXssMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a
    # 				<code>DeleteXssMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteXssMatchSet</code> request.</p>
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::DeleteXssMatchSetInput}.
    #
    # @option params [String] :xss_match_set_id
    #   <p>The <code>XssMatchSetId</code> of the <a>XssMatchSet</a> that you want to delete.
    #   			<code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::DeleteXssMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_xss_match_set(
    #     xss_match_set_id: 'XssMatchSetId', # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteXssMatchSetOutput
    #   resp.data.change_token #=> String
    #
    def delete_xss_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteXssMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteXssMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteXssMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFNonEmptyEntityException, Errors::WAFStaleDataException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::DeleteXssMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteXssMatchSet,
        stubs: @stubs,
        params_class: Params::DeleteXssMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_xss_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic Regional</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Removes a web ACL from the specified resource, either an application load balancer or Amazon API Gateway stage.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateWebACLInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource from which the web ACL is being removed, either an application load balancer or Amazon API Gateway stage.</p>
    #            <p>The ARN should be in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon API Gateway stage: <code>arn:aws:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returns the <a>ByteMatchSet</a> specified by <code>ByteMatchSetId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetByteMatchSetInput}.
    #
    # @option params [String] :byte_match_set_id
    #   <p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to get. <code>ByteMatchSetId</code> is returned by
    #   			<a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>
    #
    # @return [Types::GetByteMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_byte_match_set(
    #     byte_match_set_id: 'ByteMatchSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetByteMatchSetOutput
    #   resp.data.byte_match_set #=> Types::ByteMatchSet
    #   resp.data.byte_match_set.byte_match_set_id #=> String
    #   resp.data.byte_match_set.name #=> String
    #   resp.data.byte_match_set.byte_match_tuples #=> Array<ByteMatchTuple>
    #   resp.data.byte_match_set.byte_match_tuples[0] #=> Types::ByteMatchTuple
    #   resp.data.byte_match_set.byte_match_tuples[0].field_to_match #=> Types::FieldToMatch
    #   resp.data.byte_match_set.byte_match_tuples[0].field_to_match.type #=> String, one of ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #   resp.data.byte_match_set.byte_match_tuples[0].field_to_match.data #=> String
    #   resp.data.byte_match_set.byte_match_tuples[0].target_string #=> String
    #   resp.data.byte_match_set.byte_match_tuples[0].text_transformation #=> String, one of ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #   resp.data.byte_match_set.byte_match_tuples[0].positional_constraint #=> String, one of ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"]
    #
    def get_byte_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetByteMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetByteMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetByteMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::GetByteMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetByteMatchSet,
        stubs: @stubs,
        params_class: Params::GetByteMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_byte_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>When you want to create, update, or delete AWS WAF objects, get a change token and include the change token in the create, update, or delete request. Change tokens ensure that your application doesn't submit conflicting requests to AWS WAF.</p>
    # 		       <p>Each create, update, or delete request must use a unique change token. If your application submits a <code>GetChangeToken</code> request
    # 			and then submits a second <code>GetChangeToken</code> request before submitting a create, update, or delete request, the second
    # 			<code>GetChangeToken</code> request returns the same value as the first <code>GetChangeToken</code> request.</p>
    # 		       <p>When you use a change token in a create, update, or delete request, the status of the change token changes to <code>PENDING</code>,
    # 			which indicates that AWS WAF is propagating the change to all AWS WAF servers. Use <code>GetChangeTokenStatus</code> to determine the
    # 			status of your change token.</p>
    #
    # @param [Hash] params
    #   See {Types::GetChangeTokenInput}.
    #
    # @return [Types::GetChangeTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_change_token()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetChangeTokenOutput
    #   resp.data.change_token #=> String
    #
    def get_change_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetChangeTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetChangeTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetChangeToken
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException]),
        data_parser: Parsers::GetChangeToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetChangeToken,
        stubs: @stubs,
        params_class: Params::GetChangeTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_change_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returns the status of a <code>ChangeToken</code> that you got by calling <a>GetChangeToken</a>. <code>ChangeTokenStatus</code> is
    # 			one of the following values:</p>
    # 		       <ul>
    #             <li>
    #                <p>
    #                   <code>PROVISIONED</code>: You requested the change token by calling <code>GetChangeToken</code>, but you haven't used it yet
    # 				in a call to create, update, or delete an AWS WAF object.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PENDING</code>: AWS WAF is propagating the create, update, or delete request to all AWS WAF servers.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>INSYNC</code>: Propagation is complete.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetChangeTokenStatusInput}.
    #
    # @option params [String] :change_token
    #   <p>The change token for which you want to get the status. This change token was previously returned in the <code>GetChangeToken</code> response.</p>
    #
    # @return [Types::GetChangeTokenStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_change_token_status(
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetChangeTokenStatusOutput
    #   resp.data.change_token_status #=> String, one of ["PROVISIONED", "PENDING", "INSYNC"]
    #
    def get_change_token_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetChangeTokenStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetChangeTokenStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetChangeTokenStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException]),
        data_parser: Parsers::GetChangeTokenStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetChangeTokenStatus,
        stubs: @stubs,
        params_class: Params::GetChangeTokenStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_change_token_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns the <a>GeoMatchSet</a> that is specified by <code>GeoMatchSetId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGeoMatchSetInput}.
    #
    # @option params [String] :geo_match_set_id
    #   <p>The <code>GeoMatchSetId</code> of the <a>GeoMatchSet</a> that you want to get. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by
    #   			<a>ListGeoMatchSets</a>.</p>
    #
    # @return [Types::GetGeoMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_geo_match_set(
    #     geo_match_set_id: 'GeoMatchSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGeoMatchSetOutput
    #   resp.data.geo_match_set #=> Types::GeoMatchSet
    #   resp.data.geo_match_set.geo_match_set_id #=> String
    #   resp.data.geo_match_set.name #=> String
    #   resp.data.geo_match_set.geo_match_constraints #=> Array<GeoMatchConstraint>
    #   resp.data.geo_match_set.geo_match_constraints[0] #=> Types::GeoMatchConstraint
    #   resp.data.geo_match_set.geo_match_constraints[0].type #=> String, one of ["Country"]
    #   resp.data.geo_match_set.geo_match_constraints[0].value #=> String, one of ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"]
    #
    def get_geo_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGeoMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGeoMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGeoMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::GetGeoMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGeoMatchSet,
        stubs: @stubs,
        params_class: Params::GetGeoMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_geo_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returns the <a>IPSet</a> that is specified by <code>IPSetId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIPSetInput}.
    #
    # @option params [String] :ip_set_id
    #   <p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to get. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by
    #   			<a>ListIPSets</a>.</p>
    #
    # @return [Types::GetIPSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ip_set(
    #     ip_set_id: 'IPSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIPSetOutput
    #   resp.data.ip_set #=> Types::IPSet
    #   resp.data.ip_set.ip_set_id #=> String
    #   resp.data.ip_set.name #=> String
    #   resp.data.ip_set.ip_set_descriptors #=> Array<IPSetDescriptor>
    #   resp.data.ip_set.ip_set_descriptors[0] #=> Types::IPSetDescriptor
    #   resp.data.ip_set.ip_set_descriptors[0].type #=> String, one of ["IPV4", "IPV6"]
    #   resp.data.ip_set.ip_set_descriptors[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns the <a>LoggingConfiguration</a> for the specified web ACL.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLoggingConfigurationInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL for which you want to get the <a>LoggingConfiguration</a>.</p>
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
    #   resp.data.logging_configuration.redacted_fields[0].type #=> String, one of ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #   resp.data.logging_configuration.redacted_fields[0].data #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns the IAM policy attached to the RuleGroup.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPermissionPolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the RuleGroup for which you want to get the policy.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns the <a>RateBasedRule</a> that is specified by the
    #             <code>RuleId</code> that you included in the <code>GetRateBasedRule</code>
    #          request.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRateBasedRuleInput}.
    #
    # @option params [String] :rule_id
    #   <p>The <code>RuleId</code> of the <a>RateBasedRule</a> that you want to get.
    #               <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by <a>ListRateBasedRules</a>.</p>
    #
    # @return [Types::GetRateBasedRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rate_based_rule(
    #     rule_id: 'RuleId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRateBasedRuleOutput
    #   resp.data.rule #=> Types::RateBasedRule
    #   resp.data.rule.rule_id #=> String
    #   resp.data.rule.name #=> String
    #   resp.data.rule.metric_name #=> String
    #   resp.data.rule.match_predicates #=> Array<Predicate>
    #   resp.data.rule.match_predicates[0] #=> Types::Predicate
    #   resp.data.rule.match_predicates[0].negated #=> Boolean
    #   resp.data.rule.match_predicates[0].type #=> String, one of ["IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"]
    #   resp.data.rule.match_predicates[0].data_id #=> String
    #   resp.data.rule.rate_key #=> String, one of ["IP"]
    #   resp.data.rule.rate_limit #=> Integer
    #
    def get_rate_based_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRateBasedRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRateBasedRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRateBasedRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::GetRateBasedRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRateBasedRule,
        stubs: @stubs,
        params_class: Params::GetRateBasedRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_rate_based_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns an array of IP addresses currently being blocked by the <a>RateBasedRule</a> that is specified by the <code>RuleId</code>. The maximum
    #          number of managed keys that will be blocked is 10,000. If more than 10,000 addresses exceed
    #          the rate limit, the 10,000 addresses with the highest rates will be blocked.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRateBasedRuleManagedKeysInput}.
    #
    # @option params [String] :rule_id
    #   <p>The <code>RuleId</code> of the <a>RateBasedRule</a> for which you want to
    #            get a list of <code>ManagedKeys</code>. <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by <a>ListRateBasedRules</a>.</p>
    #
    # @option params [String] :next_marker
    #   <p>A null value and not currently used. Do not include this in your request.</p>
    #
    # @return [Types::GetRateBasedRuleManagedKeysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rate_based_rule_managed_keys(
    #     rule_id: 'RuleId', # required
    #     next_marker: 'NextMarker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRateBasedRuleManagedKeysOutput
    #   resp.data.managed_keys #=> Array<String>
    #   resp.data.managed_keys[0] #=> String
    #   resp.data.next_marker #=> String
    #
    def get_rate_based_rule_managed_keys(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRateBasedRuleManagedKeysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRateBasedRuleManagedKeysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRateBasedRuleManagedKeys
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::GetRateBasedRuleManagedKeys
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRateBasedRuleManagedKeys,
        stubs: @stubs,
        params_class: Params::GetRateBasedRuleManagedKeysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_rate_based_rule_managed_keys
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns the <a>RegexMatchSet</a> specified by <code>RegexMatchSetId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRegexMatchSetInput}.
    #
    # @option params [String] :regex_match_set_id
    #   <p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to get. <code>RegexMatchSetId</code> is returned by
    #   			<a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>
    #
    # @return [Types::GetRegexMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_regex_match_set(
    #     regex_match_set_id: 'RegexMatchSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRegexMatchSetOutput
    #   resp.data.regex_match_set #=> Types::RegexMatchSet
    #   resp.data.regex_match_set.regex_match_set_id #=> String
    #   resp.data.regex_match_set.name #=> String
    #   resp.data.regex_match_set.regex_match_tuples #=> Array<RegexMatchTuple>
    #   resp.data.regex_match_set.regex_match_tuples[0] #=> Types::RegexMatchTuple
    #   resp.data.regex_match_set.regex_match_tuples[0].field_to_match #=> Types::FieldToMatch
    #   resp.data.regex_match_set.regex_match_tuples[0].field_to_match.type #=> String, one of ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #   resp.data.regex_match_set.regex_match_tuples[0].field_to_match.data #=> String
    #   resp.data.regex_match_set.regex_match_tuples[0].text_transformation #=> String, one of ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #   resp.data.regex_match_set.regex_match_tuples[0].regex_pattern_set_id #=> String
    #
    def get_regex_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRegexMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRegexMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRegexMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::GetRegexMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRegexMatchSet,
        stubs: @stubs,
        params_class: Params::GetRegexMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_regex_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #         <p>Returns the <a>RegexPatternSet</a> specified by <code>RegexPatternSetId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRegexPatternSetInput}.
    #
    # @option params [String] :regex_pattern_set_id
    #   <p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to get. <code>RegexPatternSetId</code> is returned by
    #   			<a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>
    #
    # @return [Types::GetRegexPatternSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_regex_pattern_set(
    #     regex_pattern_set_id: 'RegexPatternSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRegexPatternSetOutput
    #   resp.data.regex_pattern_set #=> Types::RegexPatternSet
    #   resp.data.regex_pattern_set.regex_pattern_set_id #=> String
    #   resp.data.regex_pattern_set.name #=> String
    #   resp.data.regex_pattern_set.regex_pattern_strings #=> Array<String>
    #   resp.data.regex_pattern_set.regex_pattern_strings[0] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returns the <a>Rule</a> that is specified by the <code>RuleId</code> that you included in the <code>GetRule</code> request.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRuleInput}.
    #
    # @option params [String] :rule_id
    #   <p>The <code>RuleId</code> of the <a>Rule</a> that you want to get. <code>RuleId</code> is returned by <a>CreateRule</a> and by
    #   			<a>ListRules</a>.</p>
    #
    # @return [Types::GetRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rule(
    #     rule_id: 'RuleId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRuleOutput
    #   resp.data.rule #=> Types::Rule
    #   resp.data.rule.rule_id #=> String
    #   resp.data.rule.name #=> String
    #   resp.data.rule.metric_name #=> String
    #   resp.data.rule.predicates #=> Array<Predicate>
    #   resp.data.rule.predicates[0] #=> Types::Predicate
    #   resp.data.rule.predicates[0].negated #=> Boolean
    #   resp.data.rule.predicates[0].type #=> String, one of ["IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"]
    #   resp.data.rule.predicates[0].data_id #=> String
    #
    def get_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::GetRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRule,
        stubs: @stubs,
        params_class: Params::GetRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns the <a>RuleGroup</a> that is specified by the <code>RuleGroupId</code> that you included in the <code>GetRuleGroup</code> request.</p>
    # 	        <p>To view the rules in a rule group, use <a>ListActivatedRulesInRuleGroup</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRuleGroupInput}.
    #
    # @option params [String] :rule_group_id
    #   <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to get. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by
    #            <a>ListRuleGroups</a>.</p>
    #
    # @return [Types::GetRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rule_group(
    #     rule_group_id: 'RuleGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRuleGroupOutput
    #   resp.data.rule_group #=> Types::RuleGroup
    #   resp.data.rule_group.rule_group_id #=> String
    #   resp.data.rule_group.name #=> String
    #   resp.data.rule_group.metric_name #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Gets detailed information about a specified number of requests--a sample--that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received during a time range that you choose. You can specify a sample size of up to 500 requests, and you can specify any time range in the previous three hours.</p>
    # 		       <p>
    #             <code>GetSampledRequests</code> returns a time range, which is usually the time range that you specified. However, if your resource
    # 			(such as a CloudFront distribution) received 5,000 requests before the specified time range elapsed, <code>GetSampledRequests</code>
    # 			returns an updated time range. This new time range indicates the actual period during which AWS WAF selected the requests in the sample.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSampledRequestsInput}.
    #
    # @option params [String] :web_acl_id
    #   <p>The <code>WebACLId</code> of the <code>WebACL</code> for which you want <code>GetSampledRequests</code> to return a sample of requests.</p>
    #
    # @option params [String] :rule_id
    #   <p>
    #               <code>RuleId</code> is one of three values:</p>
    #   			      <ul>
    #               <li>
    #   				           <p>The <code>RuleId</code> of the <code>Rule</code> or the <code>RuleGroupId</code> of the <code>RuleGroup</code> for which you want <code>GetSampledRequests</code> to return a sample of requests.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Default_Action</code>, which causes <code>GetSampledRequests</code> to return a sample of the requests that
    #   					didn't match any of the rules in the specified <code>WebACL</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [TimeWindow] :time_window
    #   <p>The start date and time and the end date and time of the range for which you want <code>GetSampledRequests</code> to return a
    #                           sample of requests. You must specify the times in Coordinated Universal Time (UTC) format. UTC format includes the special
    #                           designator, <code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>. You can specify any time range in the previous three hours.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The number of requests that you want AWS WAF to return from among the first 5,000 requests that your AWS resource received
    #   			during the time range. If your resource received fewer requests than the value of <code>MaxItems</code>, <code>GetSampledRequests</code>
    #   			returns information about all of them. </p>
    #
    # @return [Types::GetSampledRequestsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sampled_requests(
    #     web_acl_id: 'WebAclId', # required
    #     rule_id: 'RuleId', # required
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
    #   resp.data.sampled_requests[0].rule_within_rule_group #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returns the <a>SizeConstraintSet</a> specified by <code>SizeConstraintSetId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSizeConstraintSetInput}.
    #
    # @option params [String] :size_constraint_set_id
    #   <p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to get. <code>SizeConstraintSetId</code> is returned by
    #   			<a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
    #
    # @return [Types::GetSizeConstraintSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_size_constraint_set(
    #     size_constraint_set_id: 'SizeConstraintSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSizeConstraintSetOutput
    #   resp.data.size_constraint_set #=> Types::SizeConstraintSet
    #   resp.data.size_constraint_set.size_constraint_set_id #=> String
    #   resp.data.size_constraint_set.name #=> String
    #   resp.data.size_constraint_set.size_constraints #=> Array<SizeConstraint>
    #   resp.data.size_constraint_set.size_constraints[0] #=> Types::SizeConstraint
    #   resp.data.size_constraint_set.size_constraints[0].field_to_match #=> Types::FieldToMatch
    #   resp.data.size_constraint_set.size_constraints[0].field_to_match.type #=> String, one of ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #   resp.data.size_constraint_set.size_constraints[0].field_to_match.data #=> String
    #   resp.data.size_constraint_set.size_constraints[0].text_transformation #=> String, one of ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #   resp.data.size_constraint_set.size_constraints[0].comparison_operator #=> String, one of ["EQ", "NE", "LE", "LT", "GE", "GT"]
    #   resp.data.size_constraint_set.size_constraints[0].size #=> Integer
    #
    def get_size_constraint_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSizeConstraintSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSizeConstraintSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSizeConstraintSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::GetSizeConstraintSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSizeConstraintSet,
        stubs: @stubs,
        params_class: Params::GetSizeConstraintSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_size_constraint_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returns the <a>SqlInjectionMatchSet</a> that is specified by <code>SqlInjectionMatchSetId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSqlInjectionMatchSetInput}.
    #
    # @option params [String] :sql_injection_match_set_id
    #   <p>The <code>SqlInjectionMatchSetId</code> of the <a>SqlInjectionMatchSet</a> that you want to get. <code>SqlInjectionMatchSetId</code>
    #   			is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
    #
    # @return [Types::GetSqlInjectionMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sql_injection_match_set(
    #     sql_injection_match_set_id: 'SqlInjectionMatchSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSqlInjectionMatchSetOutput
    #   resp.data.sql_injection_match_set #=> Types::SqlInjectionMatchSet
    #   resp.data.sql_injection_match_set.sql_injection_match_set_id #=> String
    #   resp.data.sql_injection_match_set.name #=> String
    #   resp.data.sql_injection_match_set.sql_injection_match_tuples #=> Array<SqlInjectionMatchTuple>
    #   resp.data.sql_injection_match_set.sql_injection_match_tuples[0] #=> Types::SqlInjectionMatchTuple
    #   resp.data.sql_injection_match_set.sql_injection_match_tuples[0].field_to_match #=> Types::FieldToMatch
    #   resp.data.sql_injection_match_set.sql_injection_match_tuples[0].field_to_match.type #=> String, one of ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #   resp.data.sql_injection_match_set.sql_injection_match_tuples[0].field_to_match.data #=> String
    #   resp.data.sql_injection_match_set.sql_injection_match_tuples[0].text_transformation #=> String, one of ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #
    def get_sql_injection_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSqlInjectionMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSqlInjectionMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSqlInjectionMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::GetSqlInjectionMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSqlInjectionMatchSet,
        stubs: @stubs,
        params_class: Params::GetSqlInjectionMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sql_injection_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returns the <a>WebACL</a> that is specified by <code>WebACLId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWebACLInput}.
    #
    # @option params [String] :web_acl_id
    #   <p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to get. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by
    #   			<a>ListWebACLs</a>.</p>
    #
    # @return [Types::GetWebACLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_web_acl(
    #     web_acl_id: 'WebACLId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWebACLOutput
    #   resp.data.web_acl #=> Types::WebACL
    #   resp.data.web_acl.web_acl_id #=> String
    #   resp.data.web_acl.name #=> String
    #   resp.data.web_acl.metric_name #=> String
    #   resp.data.web_acl.default_action #=> Types::WafAction
    #   resp.data.web_acl.default_action.type #=> String, one of ["BLOCK", "ALLOW", "COUNT"]
    #   resp.data.web_acl.rules #=> Array<ActivatedRule>
    #   resp.data.web_acl.rules[0] #=> Types::ActivatedRule
    #   resp.data.web_acl.rules[0].priority #=> Integer
    #   resp.data.web_acl.rules[0].rule_id #=> String
    #   resp.data.web_acl.rules[0].action #=> Types::WafAction
    #   resp.data.web_acl.rules[0].override_action #=> Types::WafOverrideAction
    #   resp.data.web_acl.rules[0].override_action.type #=> String, one of ["NONE", "COUNT"]
    #   resp.data.web_acl.rules[0].type #=> String, one of ["REGULAR", "RATE_BASED", "GROUP"]
    #   resp.data.web_acl.rules[0].excluded_rules #=> Array<ExcludedRule>
    #   resp.data.web_acl.rules[0].excluded_rules[0] #=> Types::ExcludedRule
    #   resp.data.web_acl.rules[0].excluded_rules[0].rule_id #=> String
    #   resp.data.web_acl.web_acl_arn #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic Regional</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns the web ACL for the specified resource, either an application load balancer or Amazon API Gateway stage.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWebACLForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource for which to get the web ACL, either an application load balancer or Amazon API Gateway stage.</p>
    #            <p>The ARN should be in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon API Gateway stage: <code>arn:aws:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
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
    #   resp.data.web_acl_summary #=> Types::WebACLSummary
    #   resp.data.web_acl_summary.web_acl_id #=> String
    #   resp.data.web_acl_summary.name #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFUnavailableEntityException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returns the <a>XssMatchSet</a> that is specified by <code>XssMatchSetId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetXssMatchSetInput}.
    #
    # @option params [String] :xss_match_set_id
    #   <p>The <code>XssMatchSetId</code> of the <a>XssMatchSet</a> that you want to get. <code>XssMatchSetId</code>
    #   			is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
    #
    # @return [Types::GetXssMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_xss_match_set(
    #     xss_match_set_id: 'XssMatchSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetXssMatchSetOutput
    #   resp.data.xss_match_set #=> Types::XssMatchSet
    #   resp.data.xss_match_set.xss_match_set_id #=> String
    #   resp.data.xss_match_set.name #=> String
    #   resp.data.xss_match_set.xss_match_tuples #=> Array<XssMatchTuple>
    #   resp.data.xss_match_set.xss_match_tuples[0] #=> Types::XssMatchTuple
    #   resp.data.xss_match_set.xss_match_tuples[0].field_to_match #=> Types::FieldToMatch
    #   resp.data.xss_match_set.xss_match_tuples[0].field_to_match.type #=> String, one of ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #   resp.data.xss_match_set.xss_match_tuples[0].field_to_match.data #=> String
    #   resp.data.xss_match_set.xss_match_tuples[0].text_transformation #=> String, one of ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #
    def get_xss_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetXssMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetXssMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetXssMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::GetXssMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetXssMatchSet,
        stubs: @stubs,
        params_class: Params::GetXssMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_xss_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns an array of <a>ActivatedRule</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListActivatedRulesInRuleGroupInput}.
    #
    # @option params [String] :rule_group_id
    #   <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> for which you want to get a list of <a>ActivatedRule</a> objects.</p>
    #
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>ActivatedRules</code> than the value of <code>Limit</code>,
    #            AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ActivatedRules</code>.
    #            For the second and subsequent <code>ListActivatedRulesInRuleGroup</code> requests, specify the value of <code>NextMarker</code>
    #            from the previous response to get information about another batch of <code>ActivatedRules</code>.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>ActivatedRules</code> that you want AWS WAF to return for this request. If you have more <code>ActivatedRules</code> than the number that you specify for <code>Limit</code>, the response includes a
    #            <code>NextMarker</code> value that you can use to get another batch of <code>ActivatedRules</code>.</p>
    #
    # @return [Types::ListActivatedRulesInRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_activated_rules_in_rule_group(
    #     rule_group_id: 'RuleGroupId',
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListActivatedRulesInRuleGroupOutput
    #   resp.data.next_marker #=> String
    #   resp.data.activated_rules #=> Array<ActivatedRule>
    #   resp.data.activated_rules[0] #=> Types::ActivatedRule
    #   resp.data.activated_rules[0].priority #=> Integer
    #   resp.data.activated_rules[0].rule_id #=> String
    #   resp.data.activated_rules[0].action #=> Types::WafAction
    #   resp.data.activated_rules[0].action.type #=> String, one of ["BLOCK", "ALLOW", "COUNT"]
    #   resp.data.activated_rules[0].override_action #=> Types::WafOverrideAction
    #   resp.data.activated_rules[0].override_action.type #=> String, one of ["NONE", "COUNT"]
    #   resp.data.activated_rules[0].type #=> String, one of ["REGULAR", "RATE_BASED", "GROUP"]
    #   resp.data.activated_rules[0].excluded_rules #=> Array<ExcludedRule>
    #   resp.data.activated_rules[0].excluded_rules[0] #=> Types::ExcludedRule
    #   resp.data.activated_rules[0].excluded_rules[0].rule_id #=> String
    #
    def list_activated_rules_in_rule_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListActivatedRulesInRuleGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListActivatedRulesInRuleGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListActivatedRulesInRuleGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException]),
        data_parser: Parsers::ListActivatedRulesInRuleGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListActivatedRulesInRuleGroup,
        stubs: @stubs,
        params_class: Params::ListActivatedRulesInRuleGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_activated_rules_in_rule_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returns an array of <a>ByteMatchSetSummary</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListByteMatchSetsInput}.
    #
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>ByteMatchSets</code> than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ByteMatchSets</code>.
    #   			For the second and subsequent <code>ListByteMatchSets</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of <code>ByteMatchSets</code>.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>ByteMatchSet</code> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>ByteMatchSets</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>ByteMatchSet</code> objects.</p>
    #
    # @return [Types::ListByteMatchSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_byte_match_sets(
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListByteMatchSetsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.byte_match_sets #=> Array<ByteMatchSetSummary>
    #   resp.data.byte_match_sets[0] #=> Types::ByteMatchSetSummary
    #   resp.data.byte_match_sets[0].byte_match_set_id #=> String
    #   resp.data.byte_match_sets[0].name #=> String
    #
    def list_byte_match_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListByteMatchSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListByteMatchSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListByteMatchSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::ListByteMatchSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListByteMatchSets,
        stubs: @stubs,
        params_class: Params::ListByteMatchSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_byte_match_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns an array of <a>GeoMatchSetSummary</a> objects in the response.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGeoMatchSetsInput}.
    #
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>GeoMatchSet</code>s than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>GeoMatchSet</code> objects.
    #   			For the second and subsequent <code>ListGeoMatchSets</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of <code>GeoMatchSet</code> objects.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>GeoMatchSet</code> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>GeoMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>GeoMatchSet</code> objects.</p>
    #
    # @return [Types::ListGeoMatchSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_geo_match_sets(
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGeoMatchSetsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.geo_match_sets #=> Array<GeoMatchSetSummary>
    #   resp.data.geo_match_sets[0] #=> Types::GeoMatchSetSummary
    #   resp.data.geo_match_sets[0].geo_match_set_id #=> String
    #   resp.data.geo_match_sets[0].name #=> String
    #
    def list_geo_match_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGeoMatchSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGeoMatchSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGeoMatchSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::ListGeoMatchSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGeoMatchSets,
        stubs: @stubs,
        params_class: Params::ListGeoMatchSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_geo_match_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returns an array of <a>IPSetSummary</a> objects in the response.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIPSetsInput}.
    #
    # @option params [String] :next_marker
    #   <p>AWS WAF returns a <code>NextMarker</code> value in the response that allows you to
    #            list another group of <code>IPSets</code>. For the second and subsequent
    #               <code>ListIPSets</code> requests, specify the value of <code>NextMarker</code> from the
    #            previous response to get information about another batch of <code>IPSets</code>.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>IPSet</code> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>IPSet</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>IPSet</code> objects.</p>
    #
    # @return [Types::ListIPSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ip_sets(
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
    #   resp.data.ip_sets[0].ip_set_id #=> String
    #   resp.data.ip_sets[0].name #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns an array of <a>LoggingConfiguration</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLoggingConfigurationsInput}.
    #
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>LoggingConfigurations</code> than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>LoggingConfigurations</code>.
    #   			For the second and subsequent <code>ListLoggingConfigurations</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of <code>ListLoggingConfigurations</code>.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>LoggingConfigurations</code> that you want AWS WAF to return for this request. If you have more <code>LoggingConfigurations</code> than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>LoggingConfigurations</code>.</p>
    #
    # @return [Types::ListLoggingConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_logging_configurations(
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
    #   resp.data.logging_configurations[0].redacted_fields[0].type #=> String, one of ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #   resp.data.logging_configurations[0].redacted_fields[0].data #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns an array of <a>RuleSummary</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRateBasedRulesInput}.
    #
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>Rules</code>
    #            than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the
    #            response that allows you to list another group of <code>Rules</code>. For the second and
    #            subsequent <code>ListRateBasedRules</code> requests, specify the value of
    #               <code>NextMarker</code> from the previous response to get information about another
    #            batch of <code>Rules</code>.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>Rules</code> that you want AWS WAF to return for this
    #            request. If you have more <code>Rules</code> than the number that you specify for
    #               <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can
    #            use to get another batch of <code>Rules</code>.</p>
    #
    # @return [Types::ListRateBasedRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rate_based_rules(
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRateBasedRulesOutput
    #   resp.data.next_marker #=> String
    #   resp.data.rules #=> Array<RuleSummary>
    #   resp.data.rules[0] #=> Types::RuleSummary
    #   resp.data.rules[0].rule_id #=> String
    #   resp.data.rules[0].name #=> String
    #
    def list_rate_based_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRateBasedRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRateBasedRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRateBasedRules
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::ListRateBasedRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRateBasedRules,
        stubs: @stubs,
        params_class: Params::ListRateBasedRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_rate_based_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns an array of <a>RegexMatchSetSummary</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRegexMatchSetsInput}.
    #
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>RegexMatchSet</code> objects than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ByteMatchSets</code>.
    #   			For the second and subsequent <code>ListRegexMatchSets</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of <code>RegexMatchSet</code> objects.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>RegexMatchSet</code> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>RegexMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>RegexMatchSet</code> objects.</p>
    #
    # @return [Types::ListRegexMatchSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_regex_match_sets(
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRegexMatchSetsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.regex_match_sets #=> Array<RegexMatchSetSummary>
    #   resp.data.regex_match_sets[0] #=> Types::RegexMatchSetSummary
    #   resp.data.regex_match_sets[0].regex_match_set_id #=> String
    #   resp.data.regex_match_sets[0].name #=> String
    #
    def list_regex_match_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRegexMatchSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRegexMatchSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRegexMatchSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::ListRegexMatchSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRegexMatchSets,
        stubs: @stubs,
        params_class: Params::ListRegexMatchSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_regex_match_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns an array of <a>RegexPatternSetSummary</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRegexPatternSetsInput}.
    #
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>RegexPatternSet</code> objects than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>RegexPatternSet</code> objects.
    #   			For the second and subsequent <code>ListRegexPatternSets</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of <code>RegexPatternSet</code> objects.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>RegexPatternSet</code> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>RegexPatternSet</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>RegexPatternSet</code> objects.</p>
    #
    # @return [Types::ListRegexPatternSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_regex_pattern_sets(
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
    #   resp.data.regex_pattern_sets[0].regex_pattern_set_id #=> String
    #   resp.data.regex_pattern_sets[0].name #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic Regional</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns an array of resources associated with the specified web ACL.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResourcesForWebACLInput}.
    #
    # @option params [String] :web_acl_id
    #   <p>The unique identifier (ID) of the web ACL for which to list the associated resources.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of resource to list, either an application load balancer or Amazon API Gateway.</p>
    #
    # @return [Types::ListResourcesForWebACLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources_for_web_acl(
    #     web_acl_id: 'WebACLId', # required
    #     resource_type: 'APPLICATION_LOAD_BALANCER' # accepts ["APPLICATION_LOAD_BALANCER", "API_GATEWAY"]
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns an array of <a>RuleGroup</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRuleGroupsInput}.
    #
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>RuleGroups</code> than the value of <code>Limit</code>,
    #            AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>RuleGroups</code>.
    #            For the second and subsequent <code>ListRuleGroups</code> requests, specify the value of <code>NextMarker</code>
    #            from the previous response to get information about another batch of <code>RuleGroups</code>.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>RuleGroups</code> that you want AWS WAF to return for this request. If you have more <code>RuleGroups</code> than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>RuleGroups</code>.</p>
    #
    # @return [Types::ListRuleGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_groups(
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
    #   resp.data.rule_groups[0].rule_group_id #=> String
    #   resp.data.rule_groups[0].name #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returns an array of <a>RuleSummary</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRulesInput}.
    #
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>Rules</code> than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>Rules</code>.
    #   			For the second and subsequent <code>ListRules</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of <code>Rules</code>.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>Rules</code> that you want AWS WAF to return for this request. If you have more 			<code>Rules</code> than the number that you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>
    #
    # @return [Types::ListRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rules(
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRulesOutput
    #   resp.data.next_marker #=> String
    #   resp.data.rules #=> Array<RuleSummary>
    #   resp.data.rules[0] #=> Types::RuleSummary
    #   resp.data.rules[0].rule_id #=> String
    #   resp.data.rules[0].name #=> String
    #
    def list_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRules
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::ListRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRules,
        stubs: @stubs,
        params_class: Params::ListRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returns an array of <a>SizeConstraintSetSummary</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSizeConstraintSetsInput}.
    #
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>SizeConstraintSets</code> than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>SizeConstraintSets</code>.
    #   			For the second and subsequent <code>ListSizeConstraintSets</code> requests, specify the value of <code>NextMarker</code> 			from the previous response to get information about another batch of <code>SizeConstraintSets</code>.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>SizeConstraintSet</code> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>SizeConstraintSets</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>SizeConstraintSet</code> objects.</p>
    #
    # @return [Types::ListSizeConstraintSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_size_constraint_sets(
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSizeConstraintSetsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.size_constraint_sets #=> Array<SizeConstraintSetSummary>
    #   resp.data.size_constraint_sets[0] #=> Types::SizeConstraintSetSummary
    #   resp.data.size_constraint_sets[0].size_constraint_set_id #=> String
    #   resp.data.size_constraint_sets[0].name #=> String
    #
    def list_size_constraint_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSizeConstraintSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSizeConstraintSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSizeConstraintSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::ListSizeConstraintSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSizeConstraintSets,
        stubs: @stubs,
        params_class: Params::ListSizeConstraintSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_size_constraint_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returns an array of <a>SqlInjectionMatchSet</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSqlInjectionMatchSetsInput}.
    #
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <a>SqlInjectionMatchSet</a> objects than the value of
    #   			<code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of
    #   			<code>SqlInjectionMatchSets</code>. For the second and subsequent <code>ListSqlInjectionMatchSets</code> requests, specify the
    #   			value of <code>NextMarker</code> from the previous response to get information about another batch of <code>SqlInjectionMatchSets</code>.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of <a>SqlInjectionMatchSet</a> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>SqlInjectionMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>
    #
    # @return [Types::ListSqlInjectionMatchSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sql_injection_match_sets(
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSqlInjectionMatchSetsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.sql_injection_match_sets #=> Array<SqlInjectionMatchSetSummary>
    #   resp.data.sql_injection_match_sets[0] #=> Types::SqlInjectionMatchSetSummary
    #   resp.data.sql_injection_match_sets[0].sql_injection_match_set_id #=> String
    #   resp.data.sql_injection_match_sets[0].name #=> String
    #
    def list_sql_injection_match_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSqlInjectionMatchSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSqlInjectionMatchSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSqlInjectionMatchSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::ListSqlInjectionMatchSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSqlInjectionMatchSets,
        stubs: @stubs,
        params_class: Params::ListSqlInjectionMatchSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_sql_injection_match_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returns an array of <a>RuleGroup</a> objects that you are subscribed to.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSubscribedRuleGroupsInput}.
    #
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>ByteMatchSets</code>subscribed rule groups than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of subscribed rule groups.
    #   			For the second and subsequent <code>ListSubscribedRuleGroupsRequest</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of subscribed rule groups.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of subscribed rule groups that you want AWS WAF to return for this request. If you have more
    #   			objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of objects.</p>
    #
    # @return [Types::ListSubscribedRuleGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscribed_rule_groups(
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSubscribedRuleGroupsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.rule_groups #=> Array<SubscribedRuleGroupSummary>
    #   resp.data.rule_groups[0] #=> Types::SubscribedRuleGroupSummary
    #   resp.data.rule_groups[0].rule_group_id #=> String
    #   resp.data.rule_groups[0].name #=> String
    #   resp.data.rule_groups[0].metric_name #=> String
    #
    def list_subscribed_rule_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSubscribedRuleGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSubscribedRuleGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSubscribedRuleGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException]),
        data_parser: Parsers::ListSubscribedRuleGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSubscribedRuleGroups,
        stubs: @stubs,
        params_class: Params::ListSubscribedRuleGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_subscribed_rule_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #         <p>Retrieves the tags associated with the specified AWS resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing. For example, you might set the tag key to "customer" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.</p>
    #         <p>Tagging is only available through the API, SDKs, and CLI. You can't manage or view tags through the AWS WAF Classic console. You can tag the AWS resources that you manage through AWS WAF Classic: web ACLs, rule groups, and rules.  </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :next_marker
    #   <p></p>
    #
    # @option params [Integer] :limit
    #   <p></p>
    #
    # @option params [String] :resource_arn
    #   <p></p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInternalErrorException, Errors::WAFTagOperationException, Errors::WAFNonexistentItemException, Errors::WAFBadRequestException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returns an array of <a>WebACLSummary</a> objects in the response.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWebACLsInput}.
    #
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>WebACL</code> objects than the number that you specify
    #   			for <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of
    #   			<code>WebACL</code> objects. For the second and subsequent <code>ListWebACLs</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of <code>WebACL</code> objects.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>WebACL</code> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>WebACL</code> objects than the number that you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>WebACL</code> objects.</p>
    #
    # @return [Types::ListWebACLsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_web_ac_ls(
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
    #   resp.data.web_ac_ls[0].web_acl_id #=> String
    #   resp.data.web_ac_ls[0].name #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returns an array of <a>XssMatchSet</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListXssMatchSetsInput}.
    #
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <a>XssMatchSet</a> objects than the value of
    #   			<code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of
    #   			<code>XssMatchSets</code>. For the second and subsequent <code>ListXssMatchSets</code> requests, specify the
    #   			value of <code>NextMarker</code> from the previous response to get information about another batch of <code>XssMatchSets</code>.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of <a>XssMatchSet</a> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>XssMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>
    #
    # @return [Types::ListXssMatchSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_xss_match_sets(
    #     next_marker: 'NextMarker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListXssMatchSetsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.xss_match_sets #=> Array<XssMatchSetSummary>
    #   resp.data.xss_match_sets[0] #=> Types::XssMatchSetSummary
    #   resp.data.xss_match_sets[0].xss_match_set_id #=> String
    #   resp.data.xss_match_sets[0].name #=> String
    #
    def list_xss_match_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListXssMatchSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListXssMatchSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListXssMatchSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInternalErrorException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::ListXssMatchSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListXssMatchSets,
        stubs: @stubs,
        params_class: Params::ListXssMatchSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_xss_match_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Associates a <a>LoggingConfiguration</a> with a specified web ACL.</p>
    # 	        <p>You can access information about all traffic that AWS WAF inspects using the following
    #          steps:</p>
    # 	        <ol>
    #             <li>
    #                <p>Create an Amazon Kinesis Data
    #                Firehose. </p>
    # 	              <p>Create the data firehose with a PUT source and in the region that you are operating. However, if you are capturing logs for Amazon CloudFront, always create the firehose in US East (N. Virginia). </p>
    # 	              <note>
    #                   <p>Do not create the data firehose using a <code>Kinesis stream</code> as your source.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>Associate that firehose to your web ACL using a <code>PutLoggingConfiguration</code> request.</p>
    #             </li>
    #          </ol>
    # 	
    #          <p>When you successfully enable logging using a <code>PutLoggingConfiguration</code> request, AWS WAF will create a service linked role with the necessary permissions to write logs to the Amazon Kinesis Data Firehose.  For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging.html">Logging Web ACL Traffic Information</a> in the <i>AWS WAF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutLoggingConfigurationInput}.
    #
    # @option params [LoggingConfiguration] :logging_configuration
    #   <p>The Amazon Kinesis Data Firehose that contains the inspected traffic
    #            information, the redacted fields details, and the Amazon Resource Name (ARN) of the web ACL
    #            to monitor.</p>
    #            <note>
    #               <p>When specifying <code>Type</code> in <code>RedactedFields</code>, you must use one of
    #               the following values: <code>URI</code>, <code>QUERY_STRING</code>, <code>HEADER</code>,
    #               or <code>METHOD</code>.</p>
    #            </note>
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
    #           type: 'URI', # required - accepts ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #           data: 'Data'
    #         }
    #       ]
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
    #   resp.data.logging_configuration.redacted_fields[0].type #=> String, one of ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #   resp.data.logging_configuration.redacted_fields[0].data #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFServiceLinkedRoleErrorException, Errors::WAFStaleDataException, Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Attaches an IAM policy to the specified resource. The only supported use for this action is to share a RuleGroup across accounts.</p>
    #          <p>The <code>PutPermissionPolicy</code> is subject to the following restrictions:</p>
    #          <ul>
    #             <li>
    #                <p>You can attach only one policy with each <code>PutPermissionPolicy</code> request.</p>
    #             </li>
    #             <li>
    #                <p>The policy must include an <code>Effect</code>, <code>Action</code> and <code>Principal</code>. </p>
    #             </li>
    #             <li>
    #
    #                <p>
    #                   <code>Effect</code> must specify <code>Allow</code>.</p>
    #             </li>
    #             <li>
    #                <p>The <code>Action</code> in the policy must be <code>waf:UpdateWebACL</code>, <code>waf-regional:UpdateWebACL</code>, <code>waf:GetRuleGroup</code> and <code>waf-regional:GetRuleGroup</code> . Any extra or wildcard actions in the policy will be rejected.</p>
    #             </li>
    #             <li>
    #                <p>The policy cannot include a <code>Resource</code> parameter.</p>
    #             </li>
    #             <li>
    #                <p>The ARN in the request must be a valid WAF RuleGroup ARN and the RuleGroup must exist in the same region.</p>
    #             </li>
    #             <li>
    #                <p>The user making the request must be the owner of the RuleGroup.</p>
    #             </li>
    #             <li>
    #                <p>Your policy must be composed using IAM Policy version 2012-10-17.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">IAM Policies</a>.  </p>
    #
    #          <p>An example of a valid policy parameter is shown in the Examples section below.</p>
    #
    # @param [Hash] params
    #   See {Types::PutPermissionPolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the RuleGroup to which you want to attach the policy.</p>
    #
    # @option params [String] :policy
    #   <p>The policy to attach to the specified RuleGroup.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFStaleDataException, Errors::WAFInternalErrorException, Errors::WAFNonexistentItemException, Errors::WAFInvalidPermissionPolicyException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #         <p>Associates tags with the specified AWS resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing. For example, you might set the tag key to "customer" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.</p>
    #         <p>Tagging is only available through the API, SDKs, and CLI. You can't manage or view tags through the AWS WAF Classic console. You can use this action to tag the AWS resources that you manage through AWS WAF Classic: web ACLs, rule groups, and rules.  </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p></p>
    #
    # @option params [Array<Tag>] :tags
    #   <p></p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInternalErrorException, Errors::WAFTagOperationException, Errors::WAFNonexistentItemException, Errors::WAFBadRequestException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p></p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p></p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p></p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidParameterException, Errors::WAFTagOperationInternalErrorException, Errors::WAFInternalErrorException, Errors::WAFTagOperationException, Errors::WAFNonexistentItemException, Errors::WAFBadRequestException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Inserts or deletes <a>ByteMatchTuple</a> objects (filters) in a <a>ByteMatchSet</a>. For each <code>ByteMatchTuple</code> object,
    # 			you specify the following values: </p>
    # 		       <ul>
    #             <li>
    #                <p>Whether to insert or delete the object from the array. If you want to change a <code>ByteMatchSetUpdate</code> object,
    # 				you delete the existing object and add a new one.</p>
    #             </li>
    #             <li>
    #                <p>The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the <code>User-Agent</code> header. </p>
    #             </li>
    #             <li>
    #                <p>The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to look for. For more information, including how you specify
    # 				the values for the AWS WAF API and the AWS CLI or SDKs, see <code>TargetString</code> in the <a>ByteMatchTuple</a> data type. </p>
    #             </li>
    #             <li>
    #                <p>Where to look, such as at the beginning or the end of a query string.</p>
    #             </li>
    #             <li>
    #                <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p>
    #             </li>
    #          </ul>
    # 		       <p>For example, you can add a <code>ByteMatchSetUpdate</code> object that matches web requests in which <code>User-Agent</code> headers contain
    # 			the string <code>BadBot</code>. You can then configure AWS WAF to block those requests.</p>		
    # 		       <p>To create and configure a <code>ByteMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create a <code>ByteMatchSet.</code> For more information, see <a>CreateByteMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<code>UpdateByteMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateByteMatchSet</code> request to specify the part of the request that you want AWS WAF to inspect
    # 				(for example, the header or the URI) and the value that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateByteMatchSetInput}.
    #
    # @option params [String] :byte_match_set_id
    #   <p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to update. <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by
    #   			<a>ListByteMatchSets</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @option params [Array<ByteMatchSetUpdate>] :updates
    #   <p>An array of <code>ByteMatchSetUpdate</code> objects that you want to insert into or delete from a <a>ByteMatchSet</a>.
    #   			For more information, see the applicable data types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>ByteMatchSetUpdate</a>: Contains <code>Action</code> and <code>ByteMatchTuple</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>ByteMatchTuple</a>: Contains <code>FieldToMatch</code>, <code>PositionalConstraint</code>, <code>TargetString</code>,
    #   				and <code>TextTransformation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateByteMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_byte_match_set(
    #     byte_match_set_id: 'ByteMatchSetId', # required
    #     change_token: 'ChangeToken', # required
    #     updates: [
    #       {
    #         action: 'INSERT', # required - accepts ["INSERT", "DELETE"]
    #         byte_match_tuple: {
    #           field_to_match: {
    #             type: 'URI', # required - accepts ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #             data: 'Data'
    #           }, # required
    #           target_string: 'TargetString', # required
    #           text_transformation: 'NONE', # required - accepts ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #           positional_constraint: 'EXACTLY' # required - accepts ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"]
    #         } # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateByteMatchSetOutput
    #   resp.data.change_token #=> String
    #
    def update_byte_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateByteMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateByteMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateByteMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidOperationException, Errors::WAFStaleDataException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFNonexistentContainerException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::UpdateByteMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateByteMatchSet,
        stubs: @stubs,
        params_class: Params::UpdateByteMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_byte_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Inserts or deletes <a>GeoMatchConstraint</a> objects in an <code>GeoMatchSet</code>. For each <code>GeoMatchConstraint</code> object,
    # 			you specify the following values: </p>
    # 		       <ul>
    #             <li>
    #                       <p>Whether to insert or delete the object from the array. If you want to change an <code>GeoMatchConstraint</code> object, you delete the existing object and add a new one.</p>
    #                   </li>
    #             <li>
    # 				           <p>The <code>Type</code>. The only valid value for <code>Type</code> is <code>Country</code>.</p>
    # 				        </li>
    #             <li>
    #                <p>The <code>Value</code>, which is a two character code for the country to add to the <code>GeoMatchConstraint</code> object. Valid codes are listed in <a>GeoMatchConstraint$Value</a>.</p>
    #             </li>
    #          </ul>
    # 		    	
    # 		       <p>To create and configure an <code>GeoMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Submit a <a>CreateGeoMatchSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<a>UpdateGeoMatchSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateGeoMatchSet</code> request to specify the country that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>When you update an <code>GeoMatchSet</code>, you specify the country that you want to add and/or the country that you want to delete.
    # 			If you want to change a country, you delete the existing country and add the new one.</p>		
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGeoMatchSetInput}.
    #
    # @option params [String] :geo_match_set_id
    #   <p>The <code>GeoMatchSetId</code> of the <a>GeoMatchSet</a> that you want to update. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by
    #   			<a>ListGeoMatchSets</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @option params [Array<GeoMatchSetUpdate>] :updates
    #   <p>An array of <code>GeoMatchSetUpdate</code> objects that you want to insert into or delete from an <a>GeoMatchSet</a>.
    #   			For more information, see the applicable data types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>GeoMatchSetUpdate</a>: Contains <code>Action</code> and <code>GeoMatchConstraint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>GeoMatchConstraint</a>: Contains <code>Type</code> and <code>Value</code>
    #                  </p>
    #   			            <p>You can have only one <code>Type</code> and <code>Value</code> per <code>GeoMatchConstraint</code>. To add multiple countries, include multiple <code>GeoMatchSetUpdate</code> objects in your request.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateGeoMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_geo_match_set(
    #     geo_match_set_id: 'GeoMatchSetId', # required
    #     change_token: 'ChangeToken', # required
    #     updates: [
    #       {
    #         action: 'INSERT', # required - accepts ["INSERT", "DELETE"]
    #         geo_match_constraint: {
    #           type: 'Country', # required - accepts ["Country"]
    #           value: 'AF' # required - accepts ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"]
    #         } # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGeoMatchSetOutput
    #   resp.data.change_token #=> String
    #
    def update_geo_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGeoMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGeoMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGeoMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidOperationException, Errors::WAFStaleDataException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFNonexistentContainerException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::UpdateGeoMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGeoMatchSet,
        stubs: @stubs,
        params_class: Params::UpdateGeoMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_geo_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Inserts or deletes <a>IPSetDescriptor</a> objects in an
    #          <code>IPSet</code>. For each <code>IPSetDescriptor</code> object, you specify the following
    #          values: </p>
    #          <ul>
    #             <li>
    #                <p>Whether to insert or delete the object from the array. If you want to change an
    #                   <code>IPSetDescriptor</code> object, you delete the existing object and add a new
    #                one.</p>
    #             </li>
    #             <li>
    #                <p>The IP address version, <code>IPv4</code> or <code>IPv6</code>. </p>
    #             </li>
    #             <li>
    #                <p>The IP address in CIDR notation, for example, <code>192.0.2.0/24</code> (for
    #                the range of IP addresses from <code>192.0.2.0</code> to <code>192.0.2.255</code>) or
    #                   <code>192.0.2.44/32</code> (for the individual IP address
    #                <code>192.0.2.44</code>). </p>
    #             </li>
    #          </ul>
    #          <p>AWS WAF supports IPv4 address ranges: /8 and any range between /16 through /32. AWS
    #          WAF supports IPv6 address ranges: /24, /32, /48, /56, /64, and /128. For more
    #          information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless
    #             Inter-Domain Routing</a>.</p>
    #          <p>IPv6 addresses can be represented using any of the following formats:</p>
    #          <ul>
    #             <li>
    #                <p>1111:0000:0000:0000:0000:0000:0000:0111/128</p>
    #             </li>
    #             <li>
    #                <p>1111:0:0:0:0:0:0:0111/128</p>
    #             </li>
    #             <li>
    #                <p>1111::0111/128</p>
    #             </li>
    #             <li>
    #                <p>1111::111/128</p>
    #             </li>
    #          </ul>
    #          <p>You use an <code>IPSet</code> to specify which web requests you want to allow or
    #          block based on the IP addresses that the requests originated from. For example, if you're
    #          receiving a lot of requests from one or a small number of IP addresses and you want to
    #          block the requests, you can create an <code>IPSet</code> that specifies those IP addresses,
    #          and then configure AWS WAF to block the requests. </p>
    #          <p>To create and configure an <code>IPSet</code>, perform the following steps:</p>
    #          <ol>
    #             <li>
    #                <p>Submit a <a>CreateIPSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide
    #                in the <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a>
    #                request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateIPSet</code> request to specify the IP addresses that you
    #                want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    #          <p>When you update an <code>IPSet</code>, you specify the IP addresses that you want to
    #          add and/or the IP addresses that you want to delete. If you want to change an IP address,
    #          you delete the existing IP address and add the new one.</p>
    #          <p>You can insert a maximum of 1000 addresses in a single
    #          request.</p>
    #          <p>For more information about how to use the AWS WAF API to allow or block HTTP
    #          requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
    #             Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIPSetInput}.
    #
    # @option params [String] :ip_set_id
    #   <p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to update. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by
    #   			<a>ListIPSets</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @option params [Array<IPSetUpdate>] :updates
    #   <p>An array of <code>IPSetUpdate</code> objects that you want to insert into or delete from an <a>IPSet</a>.
    #   			For more information, see the applicable data types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>IPSetUpdate</a>: Contains <code>Action</code> and <code>IPSetDescriptor</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>IPSetDescriptor</a>: Contains <code>Type</code> and <code>Value</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   	        <p>You can insert a maximum of 1000 addresses in a single request.</p>
    #
    # @return [Types::UpdateIPSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ip_set(
    #     ip_set_id: 'IPSetId', # required
    #     change_token: 'ChangeToken', # required
    #     updates: [
    #       {
    #         action: 'INSERT', # required - accepts ["INSERT", "DELETE"]
    #         ip_set_descriptor: {
    #           type: 'IPV4', # required - accepts ["IPV4", "IPV6"]
    #           value: 'Value' # required
    #         } # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIPSetOutput
    #   resp.data.change_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidOperationException, Errors::WAFStaleDataException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFNonexistentContainerException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Inserts or deletes <a>Predicate</a> objects in a rule and updates the
    #             <code>RateLimit</code> in the rule. </p>
    #          <p>Each <code>Predicate</code> object identifies a predicate, such as a <a>ByteMatchSet</a> or an <a>IPSet</a>, that specifies the web requests
    #          that you want to block or count. The <code>RateLimit</code> specifies the number of
    #          requests every five minutes that triggers the rule.</p>
    #          <p>If you add more than one predicate to a <code>RateBasedRule</code>, a request must
    #          match all the predicates and exceed the <code>RateLimit</code> to be counted or blocked.
    #          For example, suppose you add the following to a <code>RateBasedRule</code>:</p>
    #          <ul>
    #             <li>
    #                <p>An <code>IPSet</code> that matches the IP address <code>192.0.2.44/32</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A <code>ByteMatchSet</code> that matches <code>BadBot</code> in the
    #                   <code>User-Agent</code> header</p>
    #             </li>
    #          </ul>
    #          <p>Further, you specify a
    #             <code>RateLimit</code> of 1,000.</p>
    #          <p>You then add the <code>RateBasedRule</code> to a <code>WebACL</code> and specify that
    #          you want to block requests that satisfy the rule. For a request to be blocked, it must come
    #          from the IP address 192.0.2.44 <i>and</i> the <code>User-Agent</code> header
    #          in the request must contain the value <code>BadBot</code>. Further, requests that match
    #          these two conditions much be received at a rate of more than 1,000 every five minutes. If
    #          the rate drops below this limit, AWS WAF no longer blocks the requests.</p>
    # 		
    # 		       <p>As a second example, suppose you want to limit requests to a particular page on your site. To do this, you could add the following to a
    #             <code>RateBasedRule</code>:</p>
    # 			
    # 			
    #          <ul>
    #             <li>
    #                <p>A <code>ByteMatchSet</code> with <code>FieldToMatch</code> of <code>URI</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A <code>PositionalConstraint</code> of <code>STARTS_WITH</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A <code>TargetString</code> of <code>login</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Further, you specify a <code>RateLimit</code> of 1,000.</p>
    #          <p>By adding this <code>RateBasedRule</code> to a <code>WebACL</code>, you could limit requests to your login page without affecting the rest of your site.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRateBasedRuleInput}.
    #
    # @option params [String] :rule_id
    #   <p>The <code>RuleId</code> of the <code>RateBasedRule</code> that you want to update.
    #               <code>RuleId</code> is returned by <code>CreateRateBasedRule</code> and by <a>ListRateBasedRules</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @option params [Array<RuleUpdate>] :updates
    #   <p>An array of <code>RuleUpdate</code> objects that you want to insert into or delete
    #            from a <a>RateBasedRule</a>. </p>
    #
    # @option params [Integer] :rate_limit
    #   <p>The maximum number of requests, which have an identical value in the field specified by the <code>RateKey</code>, allowed in a
    #            five-minute period. If the number of requests exceeds the <code>RateLimit</code> and the other
    #            predicates specified in the rule are also met,
    #            AWS WAF triggers the action that is specified for this rule.</p>
    #
    # @return [Types::UpdateRateBasedRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rate_based_rule(
    #     rule_id: 'RuleId', # required
    #     change_token: 'ChangeToken', # required
    #     updates: [
    #       {
    #         action: 'INSERT', # required - accepts ["INSERT", "DELETE"]
    #         predicate: {
    #           negated: false, # required
    #           type: 'IPMatch', # required - accepts ["IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"]
    #           data_id: 'DataId' # required
    #         } # required
    #       }
    #     ], # required
    #     rate_limit: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRateBasedRuleOutput
    #   resp.data.change_token #=> String
    #
    def update_rate_based_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRateBasedRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRateBasedRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRateBasedRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidOperationException, Errors::WAFStaleDataException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFNonexistentContainerException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::UpdateRateBasedRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRateBasedRule,
        stubs: @stubs,
        params_class: Params::UpdateRateBasedRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_rate_based_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Inserts or deletes <a>RegexMatchTuple</a> objects (filters) in a <a>RegexMatchSet</a>. For each <code>RegexMatchSetUpdate</code> object,
    # 			you specify the following values: </p>
    # 		       <ul>
    #             <li>
    #                <p>Whether to insert or delete the object from the array. If you want to change a <code>RegexMatchSetUpdate</code> object,
    # 				you delete the existing object and add a new one.</p>
    #             </li>
    #             <li>
    #                <p>The part of a web request that you want AWS WAF to inspectupdate, such as a query string or the value of the <code>User-Agent</code> header. </p>
    #             </li>
    #             <li>
    #                <p>The identifier of the pattern (a regular expression) that you want AWS WAF to look for. For more information, see <a>RegexPatternSet</a>. </p>
    #             </li>
    #             <li>
    #                <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p>
    #             </li>
    #          </ul>
    # 		       <p> For example, you can create a <code>RegexPatternSet</code> that matches any requests with <code>User-Agent</code> headers
    #          that contain the string <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those requests.</p>		
    # 		       <p>To create and configure a <code>RegexMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create a <code>RegexMatchSet.</code> For more information, see <a>CreateRegexMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<code>UpdateRegexMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateRegexMatchSet</code> request to specify the part of the request that you want AWS WAF to inspect
    # 				(for example, the header or the URI) and the identifier of the <code>RegexPatternSet</code> that contain the regular expression patters you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRegexMatchSetInput}.
    #
    # @option params [String] :regex_match_set_id
    #   <p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to update. <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by
    #   			<a>ListRegexMatchSets</a>.</p>
    #
    # @option params [Array<RegexMatchSetUpdate>] :updates
    #   <p>An array of <code>RegexMatchSetUpdate</code> objects that you want to insert into or delete from a <a>RegexMatchSet</a>.
    #   			For more information, see <a>RegexMatchTuple</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::UpdateRegexMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_regex_match_set(
    #     regex_match_set_id: 'RegexMatchSetId', # required
    #     updates: [
    #       {
    #         action: 'INSERT', # required - accepts ["INSERT", "DELETE"]
    #         regex_match_tuple: {
    #           field_to_match: {
    #             type: 'URI', # required - accepts ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #             data: 'Data'
    #           }, # required
    #           text_transformation: 'NONE', # required - accepts ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #           regex_pattern_set_id: 'RegexPatternSetId' # required
    #         } # required
    #       }
    #     ], # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRegexMatchSetOutput
    #   resp.data.change_token #=> String
    #
    def update_regex_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRegexMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRegexMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRegexMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidOperationException, Errors::WAFStaleDataException, Errors::WAFDisallowedNameException, Errors::WAFLimitsExceededException, Errors::WAFInternalErrorException, Errors::WAFNonexistentContainerException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::UpdateRegexMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRegexMatchSet,
        stubs: @stubs,
        params_class: Params::UpdateRegexMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_regex_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Inserts or deletes <code>RegexPatternString</code> objects in a <a>RegexPatternSet</a>. For each <code>RegexPatternString</code> object,
    # 			you specify the following values: </p>
    # 		       <ul>
    #             <li>
    # 			            <p>Whether to insert or delete the <code>RegexPatternString</code>.</p>
    #             </li>
    #             <li>
    #                <p>The regular expression pattern that you want to insert or delete. For more information, see <a>RegexPatternSet</a>. </p>
    #             </li>
    #          </ul>
    # 		       <p> For example, you can create a <code>RegexPatternString</code> such as <code>B[a@]dB[o0]t</code>. AWS WAF will match this <code>RegexPatternString</code> to:</p>
    #                 <ul>
    #             <li>
    # 				           <p>BadBot</p>
    # 				        </li>
    #             <li>
    # 				           <p>BadB0t</p>
    # 				        </li>
    #             <li>
    # 				           <p>B@dBot</p>
    # 				        </li>
    #             <li>
    # 				           <p>B@dB0t</p>
    # 				        </li>
    #          </ul>
    # 		       <p>To create and configure a <code>RegexPatternSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create a <code>RegexPatternSet.</code> For more information, see <a>CreateRegexPatternSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<code>UpdateRegexPatternSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateRegexPatternSet</code> request to specify the regular expression pattern that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRegexPatternSetInput}.
    #
    # @option params [String] :regex_pattern_set_id
    #   <p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to update. <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by
    #   			<a>ListRegexPatternSets</a>.</p>
    #
    # @option params [Array<RegexPatternSetUpdate>] :updates
    #   <p>An array of <code>RegexPatternSetUpdate</code> objects that you want to insert into or delete from a <a>RegexPatternSet</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::UpdateRegexPatternSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_regex_pattern_set(
    #     regex_pattern_set_id: 'RegexPatternSetId', # required
    #     updates: [
    #       {
    #         action: 'INSERT', # required - accepts ["INSERT", "DELETE"]
    #         regex_pattern_string: 'RegexPatternString' # required
    #       }
    #     ], # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRegexPatternSetOutput
    #   resp.data.change_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidOperationException, Errors::WAFStaleDataException, Errors::WAFLimitsExceededException, Errors::WAFInternalErrorException, Errors::WAFInvalidRegexPatternException, Errors::WAFNonexistentContainerException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Inserts or deletes <a>Predicate</a> objects in a <code>Rule</code>. Each
    #             <code>Predicate</code> object identifies a predicate, such as a <a>ByteMatchSet</a> or an <a>IPSet</a>, that specifies the web requests
    #          that you want to allow, block, or count. If you add more than one predicate to a
    #             <code>Rule</code>, a request must match all of the specifications to be allowed,
    #          blocked, or counted. For example, suppose
    #          that
    #          you add the following to a <code>Rule</code>: </p>		
    # 		       <ul>
    #             <li>
    #                <p>A <code>ByteMatchSet</code> that matches the value <code>BadBot</code> in the <code>User-Agent</code> header</p>
    #             </li>
    #             <li>
    #                <p>An <code>IPSet</code> that matches the IP address <code>192.0.2.44</code>
    #                </p>
    #             </li>
    #          </ul>		
    # 		       <p>You then add the <code>Rule</code> to a <code>WebACL</code> and specify that you want to block requests that satisfy the <code>Rule</code>.
    # 			For a request to be blocked, the <code>User-Agent</code> header in the request must contain the value <code>BadBot</code>
    # 			         <i>and</i> the request must originate from the IP address 192.0.2.44.</p>		
    # 		       <p>To create and configure a <code>Rule</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create and update the predicates that you want to include in the <code>Rule</code>.</p>
    #             </li>
    #             <li>
    #                <p>Create the <code>Rule</code>. See <a>CreateRule</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<a>UpdateRule</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateRule</code> request to add predicates to the <code>Rule</code>.</p>
    #             </li>
    #             <li>
    #                <p>Create and update a <code>WebACL</code> that contains the <code>Rule</code>. See <a>CreateWebACL</a>.</p>
    #             </li>
    #          </ol>
    # 		       <p>If you want to replace one <code>ByteMatchSet</code> or <code>IPSet</code> with another, you delete the existing one and
    # 			add the new one.</p>		
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRuleInput}.
    #
    # @option params [String] :rule_id
    #   <p>The <code>RuleId</code> of the <code>Rule</code> that you want to update. <code>RuleId</code> is returned by
    #   			<code>CreateRule</code> and by <a>ListRules</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @option params [Array<RuleUpdate>] :updates
    #   <p>An array of <code>RuleUpdate</code> objects that you want to insert into or delete from a
    #   			<a>Rule</a>. For more information, see the applicable data types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>RuleUpdate</a>: Contains <code>Action</code> and <code>Predicate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>Predicate</a>: Contains <code>DataId</code>, <code>Negated</code>, and <code>Type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule(
    #     rule_id: 'RuleId', # required
    #     change_token: 'ChangeToken', # required
    #     updates: [
    #       {
    #         action: 'INSERT', # required - accepts ["INSERT", "DELETE"]
    #         predicate: {
    #           negated: false, # required
    #           type: 'IPMatch', # required - accepts ["IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"]
    #           data_id: 'DataId' # required
    #         } # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRuleOutput
    #   resp.data.change_token #=> String
    #
    def update_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidOperationException, Errors::WAFStaleDataException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFNonexistentContainerException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::UpdateRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRule,
        stubs: @stubs,
        params_class: Params::UpdateRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Inserts or deletes <a>ActivatedRule</a> objects in a <code>RuleGroup</code>.</p>
    # 	        <p>You can only insert <code>REGULAR</code> rules into a rule group.</p>
    #          <p>You can have a maximum of ten rules per rule group.</p>
    # 	  	
    #      	
    #          <p>To create and configure a <code>RuleGroup</code>, perform the following steps:</p>
    #          <ol>
    #             <li>
    #                <p>Create and update the <code>Rules</code> that you want to include in the <code>RuleGroup</code>. See <a>CreateRule</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    #                <a>UpdateRuleGroup</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateRuleGroup</code> request to add <code>Rules</code> to the <code>RuleGroup</code>.</p>
    #             </li>
    #             <li>
    #                <p>Create and update a <code>WebACL</code> that contains the <code>RuleGroup</code>. See <a>CreateWebACL</a>.</p>
    #             </li>
    #          </ol>
    #          <p>If you want to replace one <code>Rule</code> with another, you delete the existing one and
    #          add the new one.</p>		
    #          <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    #          <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRuleGroupInput}.
    #
    # @option params [String] :rule_group_id
    #   <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to update. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by
    #            <a>ListRuleGroups</a>.</p>
    #
    # @option params [Array<RuleGroupUpdate>] :updates
    #   <p>An array of <code>RuleGroupUpdate</code> objects that you want to insert into or delete from a
    #            <a>RuleGroup</a>.</p>
    #   		       <p>You can only insert <code>REGULAR</code> rules into a rule group.</p>
    #   		       <p>
    #               <code>ActivatedRule|OverrideAction</code> applies only when updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this case you do not use <code>ActivatedRule|Action</code>.  For all other update requests, <code>ActivatedRule|Action</code> is used instead of <code>ActivatedRule|OverrideAction</code>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @return [Types::UpdateRuleGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule_group(
    #     rule_group_id: 'RuleGroupId', # required
    #     updates: [
    #       {
    #         action: 'INSERT', # required - accepts ["INSERT", "DELETE"]
    #         activated_rule: {
    #           priority: 1, # required
    #           rule_id: 'RuleId', # required
    #           action: {
    #             type: 'BLOCK' # required - accepts ["BLOCK", "ALLOW", "COUNT"]
    #           },
    #           override_action: {
    #             type: 'NONE' # required - accepts ["NONE", "COUNT"]
    #           },
    #           type: 'REGULAR', # accepts ["REGULAR", "RATE_BASED", "GROUP"]
    #           excluded_rules: [
    #             {
    #               rule_id: 'RuleId' # required
    #             }
    #           ]
    #         } # required
    #       }
    #     ], # required
    #     change_token: 'ChangeToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRuleGroupOutput
    #   resp.data.change_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidOperationException, Errors::WAFStaleDataException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFNonexistentContainerException, Errors::WAFNonexistentItemException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Inserts or deletes <a>SizeConstraint</a> objects (filters) in a <a>SizeConstraintSet</a>. For each <code>SizeConstraint</code> object,
    # 			you specify the following values: </p>
    # 		       <ul>
    #             <li>
    #                <p>Whether to insert or delete the object from the array. If you want to change a <code>SizeConstraintSetUpdate</code> object,
    # 				you delete the existing object and add a new one.</p>
    #             </li>
    #             <li>
    #                <p>The part of a web request that you want AWS WAF to evaluate, such as the length of a query string or the length of the
    # 				<code>User-Agent</code> header.</p>
    #             </li>
    #             <li>
    #                <p>Whether to perform any transformations on the request, such as converting it to lowercase, before checking its length.
    # 				Note that transformations of the request body are not supported because the AWS resource forwards only the first <code>8192</code> bytes
    # 				of your request to AWS WAF.</p>
    # 				           <p>You can only specify a single type of TextTransformation.</p>
    #             </li>
    #             <li>
    #                <p>A <code>ComparisonOperator</code> used for evaluating the selected part of the request against the specified <code>Size</code>, such as
    # 				equals, greater than, less than, and so on.</p>
    #             </li>
    #             <li>
    #                <p>The length, in bytes, that you want AWS WAF to watch for in selected part of the request. The length is computed after applying the transformation.</p>
    #             </li>
    #          </ul>
    # 		       <p>For example, you can add a <code>SizeConstraintSetUpdate</code> object that matches web requests in which the length of the
    # 			<code>User-Agent</code> header is greater than 100 bytes. You can then configure AWS WAF to block those requests.</p>
    # 		  	    <p>To create and configure a <code>SizeConstraintSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create a <code>SizeConstraintSet.</code> For more information, see <a>CreateSizeConstraintSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<code>UpdateSizeConstraintSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateSizeConstraintSet</code> request to specify the part of the request that you want AWS WAF to inspect
    # 				(for example, the header or the URI) and the value that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSizeConstraintSetInput}.
    #
    # @option params [String] :size_constraint_set_id
    #   <p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to update. <code>SizeConstraintSetId</code>
    #   			is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @option params [Array<SizeConstraintSetUpdate>] :updates
    #   <p>An array of <code>SizeConstraintSetUpdate</code> objects that you want to insert into or delete from a <a>SizeConstraintSet</a>.
    #   			For more information, see the applicable data types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>SizeConstraintSetUpdate</a>: Contains <code>Action</code> and <code>SizeConstraint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>SizeConstraint</a>: Contains <code>FieldToMatch</code>, <code>TextTransformation</code>, <code>ComparisonOperator</code>,
    #   				and <code>Size</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateSizeConstraintSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_size_constraint_set(
    #     size_constraint_set_id: 'SizeConstraintSetId', # required
    #     change_token: 'ChangeToken', # required
    #     updates: [
    #       {
    #         action: 'INSERT', # required - accepts ["INSERT", "DELETE"]
    #         size_constraint: {
    #           field_to_match: {
    #             type: 'URI', # required - accepts ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #             data: 'Data'
    #           }, # required
    #           text_transformation: 'NONE', # required - accepts ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #           comparison_operator: 'EQ', # required - accepts ["EQ", "NE", "LE", "LT", "GE", "GT"]
    #           size: 1 # required
    #         } # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSizeConstraintSetOutput
    #   resp.data.change_token #=> String
    #
    def update_size_constraint_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSizeConstraintSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSizeConstraintSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSizeConstraintSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidOperationException, Errors::WAFStaleDataException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFNonexistentContainerException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::UpdateSizeConstraintSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSizeConstraintSet,
        stubs: @stubs,
        params_class: Params::UpdateSizeConstraintSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_size_constraint_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Inserts or deletes <a>SqlInjectionMatchTuple</a> objects (filters) in a <a>SqlInjectionMatchSet</a>.
    # 			For each <code>SqlInjectionMatchTuple</code> object, you specify the following values:</p>
    # 		       <ul>
    #             <li>
    #                <p>
    #                   <code>Action</code>: Whether to insert the object into or delete the object from the array. To change a
    # 				<code>SqlInjectionMatchTuple</code>, you delete the existing object and add a new one.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FieldToMatch</code>: The part of web requests that you want AWS WAF to inspect and, if you want AWS WAF to inspect a header or custom query parameter,
    # 				the name of the header or parameter.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TextTransformation</code>: Which text transformation, if any, to perform on the web request before
    # 				inspecting the request for snippets of malicious SQL code.</p>
    # 				           <p>You can only specify a single type of  TextTransformation.</p>
    #             </li>
    #          </ul>
    # 		       <p>You use <code>SqlInjectionMatchSet</code> objects to specify which CloudFront
    #          requests that
    #          you want to allow, block, or count. For example, if you're receiving
    #          requests that contain snippets of SQL code in the query string and you want to block the
    #          requests, you can create a <code>SqlInjectionMatchSet</code> with the applicable settings,
    #          and then configure AWS WAF to block the requests. </p>
    # 		       <p>To create and configure a <code>SqlInjectionMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Submit a <a>CreateSqlInjectionMatchSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<a>UpdateIPSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateSqlInjectionMatchSet</code> request to specify the parts of web requests that you want AWS WAF to
    # 				inspect for snippets of SQL code.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSqlInjectionMatchSetInput}.
    #
    # @option params [String] :sql_injection_match_set_id
    #   <p>The <code>SqlInjectionMatchSetId</code> of the <code>SqlInjectionMatchSet</code> that you want to update.
    #   			<code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @option params [Array<SqlInjectionMatchSetUpdate>] :updates
    #   <p>An array of <code>SqlInjectionMatchSetUpdate</code> objects that you want to insert into or delete from a
    #   			<a>SqlInjectionMatchSet</a>. For more information, see the applicable data types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>SqlInjectionMatchSetUpdate</a>: Contains <code>Action</code> and <code>SqlInjectionMatchTuple</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>SqlInjectionMatchTuple</a>: Contains <code>FieldToMatch</code> and <code>TextTransformation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateSqlInjectionMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sql_injection_match_set(
    #     sql_injection_match_set_id: 'SqlInjectionMatchSetId', # required
    #     change_token: 'ChangeToken', # required
    #     updates: [
    #       {
    #         action: 'INSERT', # required - accepts ["INSERT", "DELETE"]
    #         sql_injection_match_tuple: {
    #           field_to_match: {
    #             type: 'URI', # required - accepts ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #             data: 'Data'
    #           }, # required
    #           text_transformation: 'NONE' # required - accepts ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #         } # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSqlInjectionMatchSetOutput
    #   resp.data.change_token #=> String
    #
    def update_sql_injection_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSqlInjectionMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSqlInjectionMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSqlInjectionMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidOperationException, Errors::WAFStaleDataException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFNonexistentContainerException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::UpdateSqlInjectionMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSqlInjectionMatchSet,
        stubs: @stubs,
        params_class: Params::UpdateSqlInjectionMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_sql_injection_match_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Inserts or deletes <a>ActivatedRule</a> objects in a <code>WebACL</code>. Each <code>Rule</code> identifies
    # 			web requests that you want to allow, block, or count. When you update a <code>WebACL</code>, you specify the following values:</p>
    # 		       <ul>
    #             <li>
    #                <p>A default action for the <code>WebACL</code>, either <code>ALLOW</code> or <code>BLOCK</code>.
    # 				AWS WAF performs the default action if a request doesn't match the criteria in any of the <code>Rules</code> in a <code>WebACL</code>.</p>
    #             </li>
    #             <li>
    #                <p>The <code>Rules</code> that you want to add
    #                or
    #                delete. If you want to replace one <code>Rule</code> with another, you delete the
    #                existing <code>Rule</code> and add the new one.</p>
    #             </li>
    #             <li>
    #                <p>For each <code>Rule</code>, whether you want AWS WAF to allow requests, block requests, or count requests that match
    # 				the conditions in the <code>Rule</code>.</p>
    #             </li>
    #             <li>
    #                <p>The order in which you want AWS WAF to evaluate the <code>Rules</code> in a
    #                   <code>WebACL</code>. If you add more than one <code>Rule</code> to a
    #                   <code>WebACL</code>, AWS WAF evaluates each request against the <code>Rules</code>
    #                in order based on the value of <code>Priority</code>. (The <code>Rule</code> that has
    #                the lowest value for <code>Priority</code> is evaluated first.) When a web request
    #                matches all
    #                the
    #                predicates (such as <code>ByteMatchSets</code> and <code>IPSets</code>) in a
    #                   <code>Rule</code>, AWS WAF immediately takes the corresponding action, allow or
    #                block, and doesn't evaluate the request against the remaining <code>Rules</code> in
    #                the <code>WebACL</code>, if any. </p>
    #             </li>
    #          </ul>
    # 		
    # 		       <p>To create and configure a <code>WebACL</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create and update the predicates that you want to include in <code>Rules</code>.
    # 				For more information, see <a>CreateByteMatchSet</a>, <a>UpdateByteMatchSet</a>, <a>CreateIPSet</a>, <a>UpdateIPSet</a>,
    # 				<a>CreateSqlInjectionMatchSet</a>, and <a>UpdateSqlInjectionMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Create and update the <code>Rules</code> that you want to include in the <code>WebACL</code>. For more information, see
    # 				<a>CreateRule</a> and <a>UpdateRule</a>.</p>
    #             </li>
    #             <li>
    #                <p>Create a <code>WebACL</code>. See <a>CreateWebACL</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<a>UpdateWebACL</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateWebACL</code> request to specify the <code>Rules</code>
    #                that you want to include in the <code>WebACL</code>, to specify the default action,
    #                and to associate the <code>WebACL</code> with a CloudFront distribution. </p>
    #                <p>The <code>ActivatedRule</code> can be a rule group. If you specify a rule group
    #                as your
    #                <code>ActivatedRule</code>
    #                ,
    #                you can exclude specific rules from that rule group.</p>
    #                <p>If you already have a rule group associated with a web ACL and want to submit
    #                an <code>UpdateWebACL</code> request to exclude certain rules from that rule group,
    #                you must first remove the rule group from the web ACL, the re-insert it again,
    #                specifying the excluded rules.
    #                For details,
    #                see
    #                   <a>ActivatedRule$ExcludedRules</a>
    #                .
    #                </p>
    #             </li>
    #          </ol>
    #          <p>Be aware that if you try to add a RATE_BASED rule to a web ACL without setting the rule type when first creating the rule, the  <a>UpdateWebACL</a> request will fail because the request tries to add a REGULAR rule (the default rule type) with the specified ID, which does not exist. 		</p>			
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateWebACLInput}.
    #
    # @option params [String] :web_acl_id
    #   <p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to update. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by
    #   			<a>ListWebACLs</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @option params [Array<WebACLUpdate>] :updates
    #   <p>An array of updates to make to the <a>WebACL</a>.</p>		
    #   		       <p>An array of <code>WebACLUpdate</code> objects that you want to insert into or delete from a
    #   			<a>WebACL</a>. For more information, see the applicable data types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>WebACLUpdate</a>: Contains <code>Action</code> and <code>ActivatedRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>ActivatedRule</a>: Contains <code>Action</code>,
    #                     <code>OverrideAction</code>, <code>Priority</code>, <code>RuleId</code>, and
    #                     <code>Type</code>. <code>ActivatedRule|OverrideAction</code> applies only when
    #                  updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this
    #                  case,
    #                  you do not use <code>ActivatedRule|Action</code>. For all other update requests,
    #                     <code>ActivatedRule|Action</code> is used instead of
    #                     <code>ActivatedRule|OverrideAction</code>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>WafAction</a>: Contains <code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [WafAction] :default_action
    #   <p>A default action for the web ACL, either ALLOW or BLOCK. AWS WAF performs the default
    #            action if a request doesn't match the criteria in any of the rules in a web ACL.</p>
    #
    # @return [Types::UpdateWebACLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_web_acl(
    #     web_acl_id: 'WebACLId', # required
    #     change_token: 'ChangeToken', # required
    #     updates: [
    #       {
    #         action: 'INSERT', # required - accepts ["INSERT", "DELETE"]
    #         activated_rule: {
    #           priority: 1, # required
    #           rule_id: 'RuleId', # required
    #           action: {
    #             type: 'BLOCK' # required - accepts ["BLOCK", "ALLOW", "COUNT"]
    #           },
    #           override_action: {
    #             type: 'NONE' # required - accepts ["NONE", "COUNT"]
    #           },
    #           type: 'REGULAR', # accepts ["REGULAR", "RATE_BASED", "GROUP"]
    #           excluded_rules: [
    #             {
    #               rule_id: 'RuleId' # required
    #             }
    #           ]
    #         } # required
    #       }
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWebACLOutput
    #   resp.data.change_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidOperationException, Errors::WAFStaleDataException, Errors::WAFLimitsExceededException, Errors::WAFSubscriptionNotFoundException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFReferencedItemException, Errors::WAFNonexistentContainerException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Inserts or deletes <a>XssMatchTuple</a> objects (filters) in an <a>XssMatchSet</a>.
    # 			For each <code>XssMatchTuple</code> object, you specify the following values:</p>
    # 		       <ul>
    #             <li>
    #                <p>
    #                   <code>Action</code>: Whether to insert the object into or delete the object from the
    #                array. To change an
    #                <code>XssMatchTuple</code>, you delete the existing object and add a new
    #                one.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FieldToMatch</code>: The part of web requests that you want AWS WAF to inspect and, if you want AWS WAF to inspect a header or custom query parameter,
    # 				the name of the header or parameter.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TextTransformation</code>: Which text transformation, if any, to perform on the web request before
    # 				inspecting the request for cross-site scripting attacks.</p>
    # 				           <p>You can only specify a single type of TextTransformation.</p>
    #             </li>
    #          </ul>
    # 		       <p>You use <code>XssMatchSet</code> objects to specify which CloudFront requests
    #          that
    #          you want to allow, block, or count. For example, if you're receiving
    #          requests that contain cross-site scripting attacks in the request body and you want to
    #          block the requests, you can create an <code>XssMatchSet</code> with the applicable
    #          settings, and then configure AWS WAF to block the requests. </p>		
    # 		       <p>To create and configure an <code>XssMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Submit a <a>CreateXssMatchSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an
    # 				<a>UpdateIPSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateXssMatchSet</code> request to specify the parts of web requests that you want AWS WAF to
    # 				inspect for cross-site scripting attacks.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateXssMatchSetInput}.
    #
    # @option params [String] :xss_match_set_id
    #   <p>The <code>XssMatchSetId</code> of the <code>XssMatchSet</code> that you want to update.
    #   			<code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
    #
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    # @option params [Array<XssMatchSetUpdate>] :updates
    #   <p>An array of <code>XssMatchSetUpdate</code> objects that you want to insert into or
    #            delete from an
    #            <a>XssMatchSet</a>. For more information, see the applicable data
    #            types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>XssMatchSetUpdate</a>: Contains <code>Action</code> and <code>XssMatchTuple</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>XssMatchTuple</a>: Contains <code>FieldToMatch</code> and <code>TextTransformation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateXssMatchSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_xss_match_set(
    #     xss_match_set_id: 'XssMatchSetId', # required
    #     change_token: 'ChangeToken', # required
    #     updates: [
    #       {
    #         action: 'INSERT', # required - accepts ["INSERT", "DELETE"]
    #         xss_match_tuple: {
    #           field_to_match: {
    #             type: 'URI', # required - accepts ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #             data: 'Data'
    #           }, # required
    #           text_transformation: 'NONE' # required - accepts ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #         } # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateXssMatchSetOutput
    #   resp.data.change_token #=> String
    #
    def update_xss_match_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateXssMatchSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateXssMatchSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateXssMatchSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::WAFInvalidOperationException, Errors::WAFStaleDataException, Errors::WAFLimitsExceededException, Errors::WAFInvalidParameterException, Errors::WAFInternalErrorException, Errors::WAFNonexistentContainerException, Errors::WAFNonexistentItemException, Errors::WAFInvalidAccountException]),
        data_parser: Parsers::UpdateXssMatchSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateXssMatchSet,
        stubs: @stubs,
        params_class: Params::UpdateXssMatchSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_xss_match_set
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
