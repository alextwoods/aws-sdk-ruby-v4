# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WAFV2
  module Types

    # <p>A single action condition for a <a>Condition</a> in a logging filter.</p>
    #
    # @!attribute action
    #   <p>The action setting that a log record must contain in order to meet the condition.
    #         </p>
    #
    #   Enum, one of: ["ALLOW", "BLOCK", "COUNT", "CAPTCHA", "EXCLUDED_AS_COUNT"]
    #
    #   @return [String]
    #
    ActionCondition = ::Struct.new(
      :action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ActionValue
    #
    module ActionValue
      # No documentation available.
      #
      ALLOW = "ALLOW"

      # No documentation available.
      #
      BLOCK = "BLOCK"

      # No documentation available.
      #
      COUNT = "COUNT"

      # No documentation available.
      #
      CAPTCHA = "CAPTCHA"

      # No documentation available.
      #
      EXCLUDED_AS_COUNT = "EXCLUDED_AS_COUNT"
    end

    # <p>Inspect all of the elements that WAF has parsed and extracted from the web request
    #          component that you've identified in your <a>FieldToMatch</a> specifications.
    #       </p>
    #          <p>This is used only in the <a>FieldToMatch</a> specification for some web request component types. </p>
    #          <p>JSON specification: <code>"All": {}</code>
    #          </p>
    #
    All = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Inspect all query arguments of the web request. </p>
    #            <p>This is used only in the <a>FieldToMatch</a> specification for some web request component types. </p>
    #          <p>JSON specification: <code>"AllQueryArguments": {}</code>
    #          </p>
    #
    AllQueryArguments = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies that WAF should allow the request and optionally defines additional
    #          custom handling for the request.</p>
    #          <p>This is used in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>
    #
    # @!attribute custom_request_handling
    #   <p>Defines custom handling for the web request.</p>
    #            <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    #   @return [CustomRequestHandling]
    #
    AllowAction = ::Struct.new(
      :custom_request_handling,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A logical rule statement used to combine other rule statements with AND logic. You provide more than one <a>Statement</a> within the <code>AndStatement</code>. </p>
    #
    # @!attribute statements
    #   <p>The statements to combine with AND logic. You can use any statements that can be nested.
    #         </p>
    #
    #   @return [Array<Statement>]
    #
    AndStatement = ::Struct.new(
      :statements,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL that you want to associate with the
    #            resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
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
    #   @return [String]
    #
    AssociateWebACLInput = ::Struct.new(
      :web_acl_arn,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateWebACLOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies that WAF should block the request and optionally defines additional
    #          custom handling for the response to the web request.</p>
    #          <p>This is used in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>
    #
    # @!attribute custom_response
    #   <p>Defines a custom response for the web request.</p>
    #            <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    #   @return [CustomResponse]
    #
    BlockAction = ::Struct.new(
      :custom_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Inspect the body of the web request. The body immediately follows the request headers.</p>
    #          <p>This is used to indicate the web request component for WAF to inspect, in the <a>FieldToMatch</a> specification. </p>
    #
    # @!attribute oversize_handling
    #   <p>What WAF should do if the body is larger than WAF can inspect.
    #       WAF does not support inspecting the entire contents of the body of a web request
    #         when the body exceeds 8 KB (8192 bytes). Only the first 8 KB of the request body are forwarded to
    #       WAF by the underlying host service. </p>
    #            <p>The options for oversize handling are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE</code> - Inspect the body normally, according to the rule inspection criteria. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF
    #                  applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule
    #                  statement.</p>
    #               </li>
    #            </ul>
    #            <p>You can combine the <code>MATCH</code> or <code>NO_MATCH</code>
    #         settings for oversize handling with your rule and web ACL action settings, so that you block any request whose body is over 8 KB. </p>
    #            <p>Default: <code>CONTINUE</code>
    #            </p>
    #
    #   Enum, one of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #
    #   @return [String]
    #
    Body = ::Struct.new(
      :oversize_handling,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BodyParsingFallbackBehavior
    #
    module BodyParsingFallbackBehavior
      # No documentation available.
      #
      MATCH = "MATCH"

      # No documentation available.
      #
      NO_MATCH = "NO_MATCH"

      # No documentation available.
      #
      EVALUATE_AS_STRING = "EVALUATE_AS_STRING"
    end

    # <p>A rule statement that defines a string match search for WAF to apply to web requests. The byte match statement provides the bytes to search for, the location in requests that you want WAF to search, and other settings. The bytes to search for are typically a string that corresponds with ASCII characters. In the WAF console and the developer guide, this is refered to as a string match statement.</p>
    #
    # @!attribute search_string
    #   <p>A string value that you want WAF to search for. WAF searches only in the part of
    #            web requests that you designate for inspection in <a>FieldToMatch</a>. The
    #            maximum length of the value is 50 bytes.</p>
    #            <p>Valid values depend on the component that you specify for inspection in
    #               <code>FieldToMatch</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Method</code>: The HTTP method that you want WAF to search for. This
    #                  indicates the type of operation specified in the request. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UriPath</code>: The value that you want WAF to search for in the URI path,
    #                  for example, <code>/images/daily-ad.jpg</code>. </p>
    #               </li>
    #            </ul>
    #            <p>If <code>SearchString</code> includes alphabetic characters A-Z and a-z, note that the
    #            value is case sensitive.</p>
    #            <p>
    #               <b>If you're using the WAF API</b>
    #            </p>
    #            <p>Specify a base64-encoded version of the value. The maximum length of the value before
    #            you base64-encode it is 50 bytes.</p>
    #            <p>For example, suppose the value of <code>Type</code> is <code>HEADER</code> and the value
    #            of <code>Data</code> is <code>User-Agent</code>. If you want to search the
    #               <code>User-Agent</code> header for the value <code>BadBot</code>, you base64-encode
    #               <code>BadBot</code> using MIME base64-encoding and include the resulting value,
    #               <code>QmFkQm90</code>, in the value of <code>SearchString</code>.</p>
    #            <p>
    #               <b>If you're using the CLI or one of the Amazon Web Services SDKs</b>
    #            </p>
    #            <p>The value that you want WAF to search for. The SDK automatically base64 encodes the
    #            value.</p>
    #
    #   @return [String]
    #
    # @!attribute field_to_match
    #   <p>The part of the web request that you want WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>
    #
    #   @return [FieldToMatch]
    #
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
    #            If you specify one or more transformations in a rule statement, WAF performs all transformations on the
    #            content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>
    #
    #   @return [Array<TextTransformation>]
    #
    # @!attribute positional_constraint
    #   <p>The area within the portion of the web request that you want WAF to search for
    #               <code>SearchString</code>. Valid values include the following:</p>
    #            <p>
    #               <b>CONTAINS</b>
    #            </p>
    #            <p>The specified part of the web request must include the value of
    #               <code>SearchString</code>, but the location doesn't matter.</p>
    #            <p>
    #               <b>CONTAINS_WORD</b>
    #            </p>
    #            <p>The specified part of the web request must include the value of
    #               <code>SearchString</code>, and <code>SearchString</code> must contain only alphanumeric
    #            characters or underscore (A-Z, a-z, 0-9, or _). In addition, <code>SearchString</code> must
    #            be a word, which means that both of the following are true:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SearchString</code> is at the beginning of the specified part of the web
    #                  request or is preceded by a character other than an alphanumeric character or
    #                  underscore (_). Examples include the value of a header and
    #                  <code>;BadBot</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SearchString</code> is at the end of the specified part of the web request or
    #                  is followed by a character other than an alphanumeric character or underscore (_),
    #                  for example, <code>BadBot;</code> and <code>-BadBot;</code>.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>EXACTLY</b>
    #            </p>
    #            <p>The value of the specified part of the web request must exactly match the value of
    #               <code>SearchString</code>.</p>
    #            <p>
    #               <b>STARTS_WITH</b>
    #            </p>
    #            <p>The value of <code>SearchString</code> must appear at the beginning of the specified
    #            part of the web request.</p>
    #            <p>
    #               <b>ENDS_WITH</b>
    #            </p>
    #            <p>The value of <code>SearchString</code> must appear at the end of the specified part of
    #            the web request.</p>
    #
    #   Enum, one of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"]
    #
    #   @return [String]
    #
    ByteMatchStatement = ::Struct.new(
      :search_string,
      :field_to_match,
      :text_transformations,
      :positional_constraint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies that WAF should run a <code>CAPTCHA</code> check against the request: </p>
    #          <ul>
    #             <li>
    #                <p>If the request includes a valid, unexpired <code>CAPTCHA</code> token,
    #                WAF allows the web request inspection to
    #                    proceed to the next rule, similar to a <code>CountAction</code>. </p>
    #            </li>
    #             <li>
    #                <p>If the request doesn't include a valid, unexpired <code>CAPTCHA</code> token, WAF
    #                    discontinues the web ACL evaluation of the request and blocks it from going to its intended destination.</p>
    #                <p>WAF generates a response that it sends back to the client, which includes the following: </p>
    #                <ul>
    #                   <li>
    #                        <p>The header <code>x-amzn-waf-action</code> with a value of <code>captcha</code>. </p>
    #                    </li>
    #                   <li>
    #                        <p>The HTTP status code <code>405 Method Not Allowed</code>. </p>
    #                    </li>
    #                   <li>
    #                        <p>If the request contains an <code>Accept</code> header with a value of <code>text/html</code>, the response includes a <code>CAPTCHA</code> challenge. </p>
    #                    </li>
    #                </ul>
    #            </li>
    #          </ul>
    #          <p>You can configure the expiration time
    #                in the <code>CaptchaConfig</code>
    #             <code>ImmunityTimeProperty</code> setting at the rule and web ACL level. The rule setting overrides the web ACL setting. </p>
    #          <p>This action option is available for rules. It isn't available for web ACL default actions. </p>
    #          <p>This is used in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>
    #
    # @!attribute custom_request_handling
    #   <p>Defines custom handling for the web request.</p>
    #            <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    #   @return [CustomRequestHandling]
    #
    CaptchaAction = ::Struct.new(
      :custom_request_handling,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies how WAF should handle <code>CAPTCHA</code> evaluations. This is available at the web ACL level and in each rule.  </p>
    #
    # @!attribute immunity_time_property
    #   <p>Determines how long a <code>CAPTCHA</code> token remains valid after the client successfully solves a <code>CAPTCHA</code> puzzle. </p>
    #
    #   @return [ImmunityTimeProperty]
    #
    CaptchaConfig = ::Struct.new(
      :immunity_time_property,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result from the inspection of the web request for a valid <code>CAPTCHA</code> token. </p>
    #
    # @!attribute response_code
    #   <p>The HTTP response code indicating the status of the <code>CAPTCHA</code> token in the web request. If the token is missing, invalid, or expired, this code is <code>405 Method Not Allowed</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute solve_timestamp
    #   <p>The time that the <code>CAPTCHA</code> puzzle was solved for the supplied token. </p>
    #
    #   @return [Integer]
    #
    # @!attribute failure_reason
    #   <p>The reason for failure, populated when the evaluation of the token fails.</p>
    #
    #   Enum, one of: ["TOKEN_MISSING", "TOKEN_EXPIRED"]
    #
    #   @return [String]
    #
    CaptchaResponse = ::Struct.new(
      :response_code,
      :solve_timestamp,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>An array of <a>Rule</a> that you're configuring to use in a rule group or web
    #            ACL. </p>
    #
    #   @return [Array<Rule>]
    #
    CheckCapacityInput = ::Struct.new(
      :scope,
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute capacity
    #   <p>The capacity required by the rules and scope.</p>
    #
    #   @return [Integer]
    #
    CheckCapacityOutput = ::Struct.new(
      :capacity,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.capacity ||= 0
      end
    end

    # Includes enum constants for ComparisonOperator
    #
    module ComparisonOperator
      # No documentation available.
      #
      EQ = "EQ"

      # No documentation available.
      #
      NE = "NE"

      # No documentation available.
      #
      LE = "LE"

      # No documentation available.
      #
      LT = "LT"

      # No documentation available.
      #
      GE = "GE"

      # No documentation available.
      #
      GT = "GT"
    end

    # <p>A single match condition for a <a>Filter</a>.</p>
    #
    # @!attribute action_condition
    #   <p>A single action condition.</p>
    #
    #   @return [ActionCondition]
    #
    # @!attribute label_name_condition
    #   <p>A single label name condition.</p>
    #
    #   @return [LabelNameCondition]
    #
    Condition = ::Struct.new(
      :action_condition,
      :label_name_condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The filter to use to identify the subset of cookies to inspect in a web request. </p>
    #          <p>You must specify exactly one setting: either <code>All</code>, <code>IncludedCookies</code>, or <code>ExcludedCookies</code>.</p>
    #          <p>Example JSON: <code>"CookieMatchPattern": { "IncludedCookies": {"KeyToInclude1", "KeyToInclude2", "KeyToInclude3"} }</code>
    #          </p>
    #
    # @!attribute all
    #   <p>Inspect all cookies. </p>
    #
    #   @return [All]
    #
    # @!attribute included_cookies
    #   <p>Inspect only the cookies that have a key that matches one of the strings specified here. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute excluded_cookies
    #   <p>Inspect only the cookies whose keys don't match any of the strings specified here. </p>
    #
    #   @return [Array<String>]
    #
    CookieMatchPattern = ::Struct.new(
      :all,
      :included_cookies,
      :excluded_cookies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Inspect the cookies in the web request. You can specify the parts of the cookies to inspect and you can narrow
    #    the set of cookies to inspect by including or excluding specific keys.</p>
    #          <p>This is used to indicate the web request component for WAF to inspect, in the <a>FieldToMatch</a> specification. </p>
    #          <p>Example JSON: <code>"Cookies": { "MatchPattern": { "All": {} }, "MatchScope": "KEY", "OversizeHandling": "MATCH" }</code>
    #          </p>
    #
    # @!attribute match_pattern
    #   <p>The filter to use to identify the subset of cookies to inspect in a web request. </p>
    #            <p>You must specify exactly one setting: either <code>All</code>, <code>IncludedCookies</code>, or <code>ExcludedCookies</code>.</p>
    #            <p>Example JSON: <code>"CookieMatchPattern": { "IncludedCookies": {"KeyToInclude1", "KeyToInclude2", "KeyToInclude3"} }</code>
    #            </p>
    #
    #   @return [CookieMatchPattern]
    #
    # @!attribute match_scope
    #   <p>The parts of the cookies to inspect with the rule inspection criteria. If you
    #            specify <code>All</code>, WAF inspects both keys and values. </p>
    #
    #   Enum, one of: ["ALL", "KEY", "VALUE"]
    #
    #   @return [String]
    #
    # @!attribute oversize_handling
    #   <p>What WAF should do if the cookies of the request are larger than WAF can inspect.
    #       WAF does not support inspecting the entire contents of request cookies
    #         when they exceed 8 KB (8192 bytes) or 200 total cookies. The underlying host service forwards a maximum of 200 cookies
    #         and at most 8 KB of cookie contents to WAF. </p>
    #            <p>The options for oversize handling are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE</code> - Inspect the cookies normally, according to the rule inspection criteria. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF
    #                  applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule
    #                  statement.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #
    #   @return [String]
    #
    Cookies = ::Struct.new(
      :match_pattern,
      :match_scope,
      :oversize_handling,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies that WAF should count the request. Optionally defines additional custom
    #          handling for the request.</p>
    #          <p>This is used in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>
    #
    # @!attribute custom_request_handling
    #   <p>Defines custom handling for the web request.</p>
    #            <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    #   @return [CustomRequestHandling]
    #
    CountAction = ::Struct.new(
      :custom_request_handling,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CountryCode
    #
    module CountryCode
      # No documentation available.
      #
      AF = "AF"

      # No documentation available.
      #
      AX = "AX"

      # No documentation available.
      #
      AL = "AL"

      # No documentation available.
      #
      DZ = "DZ"

      # No documentation available.
      #
      AS = "AS"

      # No documentation available.
      #
      AD = "AD"

      # No documentation available.
      #
      AO = "AO"

      # No documentation available.
      #
      AI = "AI"

      # No documentation available.
      #
      AQ = "AQ"

      # No documentation available.
      #
      AG = "AG"

      # No documentation available.
      #
      AR = "AR"

      # No documentation available.
      #
      AM = "AM"

      # No documentation available.
      #
      AW = "AW"

      # No documentation available.
      #
      AU = "AU"

      # No documentation available.
      #
      AT = "AT"

      # No documentation available.
      #
      AZ = "AZ"

      # No documentation available.
      #
      BS = "BS"

      # No documentation available.
      #
      BH = "BH"

      # No documentation available.
      #
      BD = "BD"

      # No documentation available.
      #
      BB = "BB"

      # No documentation available.
      #
      BY = "BY"

      # No documentation available.
      #
      BE = "BE"

      # No documentation available.
      #
      BZ = "BZ"

      # No documentation available.
      #
      BJ = "BJ"

      # No documentation available.
      #
      BM = "BM"

      # No documentation available.
      #
      BT = "BT"

      # No documentation available.
      #
      BO = "BO"

      # No documentation available.
      #
      BQ = "BQ"

      # No documentation available.
      #
      BA = "BA"

      # No documentation available.
      #
      BW = "BW"

      # No documentation available.
      #
      BV = "BV"

      # No documentation available.
      #
      BR = "BR"

      # No documentation available.
      #
      IO = "IO"

      # No documentation available.
      #
      BN = "BN"

      # No documentation available.
      #
      BG = "BG"

      # No documentation available.
      #
      BF = "BF"

      # No documentation available.
      #
      BI = "BI"

      # No documentation available.
      #
      KH = "KH"

      # No documentation available.
      #
      CM = "CM"

      # No documentation available.
      #
      CA = "CA"

      # No documentation available.
      #
      CV = "CV"

      # No documentation available.
      #
      KY = "KY"

      # No documentation available.
      #
      CF = "CF"

      # No documentation available.
      #
      TD = "TD"

      # No documentation available.
      #
      CL = "CL"

      # No documentation available.
      #
      CN = "CN"

      # No documentation available.
      #
      CX = "CX"

      # No documentation available.
      #
      CC = "CC"

      # No documentation available.
      #
      CO = "CO"

      # No documentation available.
      #
      KM = "KM"

      # No documentation available.
      #
      CG = "CG"

      # No documentation available.
      #
      CD = "CD"

      # No documentation available.
      #
      CK = "CK"

      # No documentation available.
      #
      CR = "CR"

      # No documentation available.
      #
      CI = "CI"

      # No documentation available.
      #
      HR = "HR"

      # No documentation available.
      #
      CU = "CU"

      # No documentation available.
      #
      CW = "CW"

      # No documentation available.
      #
      CY = "CY"

      # No documentation available.
      #
      CZ = "CZ"

      # No documentation available.
      #
      DK = "DK"

      # No documentation available.
      #
      DJ = "DJ"

      # No documentation available.
      #
      DM = "DM"

      # No documentation available.
      #
      DO = "DO"

      # No documentation available.
      #
      EC = "EC"

      # No documentation available.
      #
      EG = "EG"

      # No documentation available.
      #
      SV = "SV"

      # No documentation available.
      #
      GQ = "GQ"

      # No documentation available.
      #
      ER = "ER"

      # No documentation available.
      #
      EE = "EE"

      # No documentation available.
      #
      ET = "ET"

      # No documentation available.
      #
      FK = "FK"

      # No documentation available.
      #
      FO = "FO"

      # No documentation available.
      #
      FJ = "FJ"

      # No documentation available.
      #
      FI = "FI"

      # No documentation available.
      #
      FR = "FR"

      # No documentation available.
      #
      GF = "GF"

      # No documentation available.
      #
      PF = "PF"

      # No documentation available.
      #
      TF = "TF"

      # No documentation available.
      #
      GA = "GA"

      # No documentation available.
      #
      GM = "GM"

      # No documentation available.
      #
      GE = "GE"

      # No documentation available.
      #
      DE = "DE"

      # No documentation available.
      #
      GH = "GH"

      # No documentation available.
      #
      GI = "GI"

      # No documentation available.
      #
      GR = "GR"

      # No documentation available.
      #
      GL = "GL"

      # No documentation available.
      #
      GD = "GD"

      # No documentation available.
      #
      GP = "GP"

      # No documentation available.
      #
      GU = "GU"

      # No documentation available.
      #
      GT = "GT"

      # No documentation available.
      #
      GG = "GG"

      # No documentation available.
      #
      GN = "GN"

      # No documentation available.
      #
      GW = "GW"

      # No documentation available.
      #
      GY = "GY"

      # No documentation available.
      #
      HT = "HT"

      # No documentation available.
      #
      HM = "HM"

      # No documentation available.
      #
      VA = "VA"

      # No documentation available.
      #
      HN = "HN"

      # No documentation available.
      #
      HK = "HK"

      # No documentation available.
      #
      HU = "HU"

      # No documentation available.
      #
      IS = "IS"

      # No documentation available.
      #
      IN = "IN"

      # No documentation available.
      #
      ID = "ID"

      # No documentation available.
      #
      IR = "IR"

      # No documentation available.
      #
      IQ = "IQ"

      # No documentation available.
      #
      IE = "IE"

      # No documentation available.
      #
      IM = "IM"

      # No documentation available.
      #
      IL = "IL"

      # No documentation available.
      #
      IT = "IT"

      # No documentation available.
      #
      JM = "JM"

      # No documentation available.
      #
      JP = "JP"

      # No documentation available.
      #
      JE = "JE"

      # No documentation available.
      #
      JO = "JO"

      # No documentation available.
      #
      KZ = "KZ"

      # No documentation available.
      #
      KE = "KE"

      # No documentation available.
      #
      KI = "KI"

      # No documentation available.
      #
      KP = "KP"

      # No documentation available.
      #
      KR = "KR"

      # No documentation available.
      #
      KW = "KW"

      # No documentation available.
      #
      KG = "KG"

      # No documentation available.
      #
      LA = "LA"

      # No documentation available.
      #
      LV = "LV"

      # No documentation available.
      #
      LB = "LB"

      # No documentation available.
      #
      LS = "LS"

      # No documentation available.
      #
      LR = "LR"

      # No documentation available.
      #
      LY = "LY"

      # No documentation available.
      #
      LI = "LI"

      # No documentation available.
      #
      LT = "LT"

      # No documentation available.
      #
      LU = "LU"

      # No documentation available.
      #
      MO = "MO"

      # No documentation available.
      #
      MK = "MK"

      # No documentation available.
      #
      MG = "MG"

      # No documentation available.
      #
      MW = "MW"

      # No documentation available.
      #
      MY = "MY"

      # No documentation available.
      #
      MV = "MV"

      # No documentation available.
      #
      ML = "ML"

      # No documentation available.
      #
      MT = "MT"

      # No documentation available.
      #
      MH = "MH"

      # No documentation available.
      #
      MQ = "MQ"

      # No documentation available.
      #
      MR = "MR"

      # No documentation available.
      #
      MU = "MU"

      # No documentation available.
      #
      YT = "YT"

      # No documentation available.
      #
      MX = "MX"

      # No documentation available.
      #
      FM = "FM"

      # No documentation available.
      #
      MD = "MD"

      # No documentation available.
      #
      MC = "MC"

      # No documentation available.
      #
      MN = "MN"

      # No documentation available.
      #
      ME = "ME"

      # No documentation available.
      #
      MS = "MS"

      # No documentation available.
      #
      MA = "MA"

      # No documentation available.
      #
      MZ = "MZ"

      # No documentation available.
      #
      MM = "MM"

      # No documentation available.
      #
      NA = "NA"

      # No documentation available.
      #
      NR = "NR"

      # No documentation available.
      #
      NP = "NP"

      # No documentation available.
      #
      NL = "NL"

      # No documentation available.
      #
      NC = "NC"

      # No documentation available.
      #
      NZ = "NZ"

      # No documentation available.
      #
      NI = "NI"

      # No documentation available.
      #
      NE = "NE"

      # No documentation available.
      #
      NG = "NG"

      # No documentation available.
      #
      NU = "NU"

      # No documentation available.
      #
      NF = "NF"

      # No documentation available.
      #
      MP = "MP"

      # No documentation available.
      #
      NO = "NO"

      # No documentation available.
      #
      OM = "OM"

      # No documentation available.
      #
      PK = "PK"

      # No documentation available.
      #
      PW = "PW"

      # No documentation available.
      #
      PS = "PS"

      # No documentation available.
      #
      PA = "PA"

      # No documentation available.
      #
      PG = "PG"

      # No documentation available.
      #
      PY = "PY"

      # No documentation available.
      #
      PE = "PE"

      # No documentation available.
      #
      PH = "PH"

      # No documentation available.
      #
      PN = "PN"

      # No documentation available.
      #
      PL = "PL"

      # No documentation available.
      #
      PT = "PT"

      # No documentation available.
      #
      PR = "PR"

      # No documentation available.
      #
      QA = "QA"

      # No documentation available.
      #
      RE = "RE"

      # No documentation available.
      #
      RO = "RO"

      # No documentation available.
      #
      RU = "RU"

      # No documentation available.
      #
      RW = "RW"

      # No documentation available.
      #
      BL = "BL"

      # No documentation available.
      #
      SH = "SH"

      # No documentation available.
      #
      KN = "KN"

      # No documentation available.
      #
      LC = "LC"

      # No documentation available.
      #
      MF = "MF"

      # No documentation available.
      #
      PM = "PM"

      # No documentation available.
      #
      VC = "VC"

      # No documentation available.
      #
      WS = "WS"

      # No documentation available.
      #
      SM = "SM"

      # No documentation available.
      #
      ST = "ST"

      # No documentation available.
      #
      SA = "SA"

      # No documentation available.
      #
      SN = "SN"

      # No documentation available.
      #
      RS = "RS"

      # No documentation available.
      #
      SC = "SC"

      # No documentation available.
      #
      SL = "SL"

      # No documentation available.
      #
      SG = "SG"

      # No documentation available.
      #
      SX = "SX"

      # No documentation available.
      #
      SK = "SK"

      # No documentation available.
      #
      SI = "SI"

      # No documentation available.
      #
      SB = "SB"

      # No documentation available.
      #
      SO = "SO"

      # No documentation available.
      #
      ZA = "ZA"

      # No documentation available.
      #
      GS = "GS"

      # No documentation available.
      #
      SS = "SS"

      # No documentation available.
      #
      ES = "ES"

      # No documentation available.
      #
      LK = "LK"

      # No documentation available.
      #
      SD = "SD"

      # No documentation available.
      #
      SR = "SR"

      # No documentation available.
      #
      SJ = "SJ"

      # No documentation available.
      #
      SZ = "SZ"

      # No documentation available.
      #
      SE = "SE"

      # No documentation available.
      #
      CH = "CH"

      # No documentation available.
      #
      SY = "SY"

      # No documentation available.
      #
      TW = "TW"

      # No documentation available.
      #
      TJ = "TJ"

      # No documentation available.
      #
      TZ = "TZ"

      # No documentation available.
      #
      TH = "TH"

      # No documentation available.
      #
      TL = "TL"

      # No documentation available.
      #
      TG = "TG"

      # No documentation available.
      #
      TK = "TK"

      # No documentation available.
      #
      TO = "TO"

      # No documentation available.
      #
      TT = "TT"

      # No documentation available.
      #
      TN = "TN"

      # No documentation available.
      #
      TR = "TR"

      # No documentation available.
      #
      TM = "TM"

      # No documentation available.
      #
      TC = "TC"

      # No documentation available.
      #
      TV = "TV"

      # No documentation available.
      #
      UG = "UG"

      # No documentation available.
      #
      UA = "UA"

      # No documentation available.
      #
      AE = "AE"

      # No documentation available.
      #
      GB = "GB"

      # No documentation available.
      #
      US = "US"

      # No documentation available.
      #
      UM = "UM"

      # No documentation available.
      #
      UY = "UY"

      # No documentation available.
      #
      UZ = "UZ"

      # No documentation available.
      #
      VU = "VU"

      # No documentation available.
      #
      VE = "VE"

      # No documentation available.
      #
      VN = "VN"

      # No documentation available.
      #
      VG = "VG"

      # No documentation available.
      #
      VI = "VI"

      # No documentation available.
      #
      WF = "WF"

      # No documentation available.
      #
      EH = "EH"

      # No documentation available.
      #
      YE = "YE"

      # No documentation available.
      #
      ZM = "ZM"

      # No documentation available.
      #
      ZW = "ZW"

      # No documentation available.
      #
      XK = "XK"
    end

    # @!attribute name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the IP set that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute ip_address_version
    #   <p>The version of the IP addresses, either <code>IPV4</code> or <code>IPV6</code>. </p>
    #
    #   Enum, one of: ["IPV4", "IPV6"]
    #
    #   @return [String]
    #
    # @!attribute addresses
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
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateIPSetInput = ::Struct.new(
      :name,
      :scope,
      :description,
      :ip_address_version,
      :addresses,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summary
    #   <p>High-level information about an <a>IPSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage an <code>IPSet</code>, and the ARN, that you provide to the <a>IPSetReferenceStatement</a> to use the address set in a <a>Rule</a>.</p>
    #
    #   @return [IPSetSummary]
    #
    CreateIPSetOutput = ::Struct.new(
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the set that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute regular_expression_list
    #   <p>Array of regular expression strings. </p>
    #
    #   @return [Array<Regex>]
    #
    # @!attribute tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateRegexPatternSetInput = ::Struct.new(
      :name,
      :scope,
      :description,
      :regular_expression_list,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summary
    #   <p>High-level information about a <a>RegexPatternSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RegexPatternSet</code>, and the ARN, that you provide to the <a>RegexPatternSetReferenceStatement</a> to use the pattern set in a <a>Rule</a>.</p>
    #
    #   @return [RegexPatternSetSummary]
    #
    CreateRegexPatternSetOutput = ::Struct.new(
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute capacity
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
    #   @return [Integer]
    #
    # @!attribute description
    #   <p>A description of the rule group that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to allow, block, or count. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #
    #   @return [Array<Rule>]
    #
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #
    #   @return [VisibilityConfig]
    #
    # @!attribute tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the rule group, and then use them in the rules that you define in the rule group. </p>
    #            <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    #   @return [Hash<String, CustomResponseBody>]
    #
    CreateRuleGroupInput = ::Struct.new(
      :name,
      :scope,
      :capacity,
      :description,
      :rules,
      :visibility_config,
      :tags,
      :custom_response_bodies,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.capacity ||= 0
      end
    end

    # @!attribute summary
    #   <p>High-level information about a <a>RuleGroup</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RuleGroup</code>, and the ARN, that you provide to the <a>RuleGroupReferenceStatement</a> to use the rule group in a <a>Rule</a>.</p>
    #
    #   @return [RuleGroupSummary]
    #
    CreateRuleGroupOutput = ::Struct.new(
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute default_action
    #   <p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>
    #
    #   @return [DefaultAction]
    #
    # @!attribute description
    #   <p>A description of the web ACL that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to allow, block, or count. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #
    #   @return [Array<Rule>]
    #
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #
    #   @return [VisibilityConfig]
    #
    # @!attribute tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the web ACL, and then use them in the rules and default actions that you define in the web ACL. </p>
    #            <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    #   @return [Hash<String, CustomResponseBody>]
    #
    # @!attribute captcha_config
    #   <p>Specifies how WAF should handle <code>CAPTCHA</code> evaluations for rules that don't have their own <code>CaptchaConfig</code> settings. If you don't specify this, WAF uses its default settings for <code>CaptchaConfig</code>. </p>
    #
    #   @return [CaptchaConfig]
    #
    CreateWebACLInput = ::Struct.new(
      :name,
      :scope,
      :default_action,
      :description,
      :rules,
      :visibility_config,
      :tags,
      :custom_response_bodies,
      :captcha_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summary
    #   <p>High-level information about a <a>WebACL</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>WebACL</code>, and the ARN, that you provide to operations like <a>AssociateWebACL</a>.</p>
    #
    #   @return [WebACLSummary]
    #
    CreateWebACLOutput = ::Struct.new(
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A custom header for custom request and response handling. This is used in <a>CustomResponse</a> and <a>CustomRequestHandling</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the custom header. </p>
    #            <p>For custom request header insertion, when WAF inserts the header into the request,
    #            it prefixes this name <code>x-amzn-waf-</code>, to avoid confusion with the headers that
    #            are already in the request. For example, for the header name <code>sample</code>, WAF
    #            inserts the header <code>x-amzn-waf-sample</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the custom header.</p>
    #
    #   @return [String]
    #
    CustomHTTPHeader = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Custom request handling behavior that inserts custom headers into a web request. You can
    #          add custom request handling for the rule actions allow and count. </p>
    #          <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #          <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    # @!attribute insert_headers
    #   <p>The HTTP headers to insert into the request. Duplicate header names are not allowed. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    #   @return [Array<CustomHTTPHeader>]
    #
    CustomRequestHandling = ::Struct.new(
      :insert_headers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A custom response to send to the client. You can define a custom response for rule
    #          actions and default web ACL actions that are set to <a>BlockAction</a>. </p>
    #          <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #          <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    # @!attribute response_code
    #   <p>The HTTP status code to return to the client. </p>
    #            <p>For a list of status codes that you can use in your custom reqponses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/customizing-the-response-status-codes.html">Supported status codes for custom response</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute custom_response_body_key
    #   <p>References the response body that you want WAF to return to the web request
    #            client. You can define a custom response for a rule action or a default web ACL action that
    #            is set to block. To do this, you first define the response body key and value in the
    #               <code>CustomResponseBodies</code> setting for the <a>WebACL</a> or <a>RuleGroup</a> where you want to use it. Then, in the rule action or web ACL
    #            default action <code>BlockAction</code> setting, you reference the response body using this
    #            key. </p>
    #
    #   @return [String]
    #
    # @!attribute response_headers
    #   <p>The HTTP headers to use in the response. Duplicate header names are not allowed. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    #   @return [Array<CustomHTTPHeader>]
    #
    CustomResponse = ::Struct.new(
      :response_code,
      :custom_response_body_key,
      :response_headers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response body to use in a custom response to a web request. This is referenced by
    #          key from <a>CustomResponse</a>
    #             <code>CustomResponseBodyKey</code>.</p>
    #
    # @!attribute content_type
    #   <p>The type of content in the payload that you are defining in the <code>Content</code>
    #            string.</p>
    #
    #   Enum, one of: ["TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"]
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The payload of the custom response. </p>
    #            <p>You can use JSON escape strings in JSON content. To do this, you must specify JSON
    #            content in the <code>ContentType</code> setting. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    #   @return [String]
    #
    CustomResponseBody = ::Struct.new(
      :content_type,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>In a <a>WebACL</a>, this is the action that you want WAF to perform
    #          when a web request doesn't match any of the rules in the <code>WebACL</code>. The default
    #          action must be a terminating action, so you can't use count.</p>
    #
    # @!attribute block
    #   <p>Specifies that WAF should block requests by default. </p>
    #
    #   @return [BlockAction]
    #
    # @!attribute allow
    #   <p>Specifies that WAF should allow requests by default.</p>
    #
    #   @return [AllowAction]
    #
    DefaultAction = ::Struct.new(
      :block,
      :allow,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL.</p>
    #
    #   @return [String]
    #
    # @!attribute web_acl_lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    DeleteFirewallManagerRuleGroupsInput = ::Struct.new(
      :web_acl_arn,
      :web_acl_lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_web_acl_lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    DeleteFirewallManagerRuleGroupsOutput = ::Struct.new(
      :next_web_acl_lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    DeleteIPSetInput = ::Struct.new(
      :name,
      :scope,
      :id,
      :lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteIPSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL from which you want to delete the
    #          <a>LoggingConfiguration</a>.</p>
    #
    #   @return [String]
    #
    DeleteLoggingConfigurationInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLoggingConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group from which you want to delete the
    #            policy.</p>
    #            <p>You must be the owner of the rule group to perform this operation.</p>
    #
    #   @return [String]
    #
    DeletePermissionPolicyInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePermissionPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    DeleteRegexPatternSetInput = ::Struct.new(
      :name,
      :scope,
      :id,
      :lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRegexPatternSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    DeleteRuleGroupInput = ::Struct.new(
      :name,
      :scope,
      :id,
      :lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRuleGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    DeleteWebACLInput = ::Struct.new(
      :name,
      :scope,
      :id,
      :lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWebACLOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vendor_name
    #   <p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>The version of the rule group. You can only use a version that is not
    #          scheduled for expiration. If you don't provide this, WAF uses the vendor's default version.
    #         </p>
    #
    #   @return [String]
    #
    DescribeManagedRuleGroupInput = ::Struct.new(
      :vendor_name,
      :name,
      :scope,
      :version_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute version_name
    #   <p>The managed rule group's version. </p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon resource name (ARN) of the Amazon Simple Notification Service SNS topic that's used to record changes
    #            to the managed rule group. You can subscribe to the SNS topic to receive notifications when
    #            the managed rule group is modified, such as for new versions and for version expiration.
    #            For more information, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/welcome.html">Amazon Simple Notification Service Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute capacity
    #   <p>The web ACL capacity units (WCUs) required for this rule group. WAF uses web ACL
    #            capacity units (WCU) to calculate and control the operating resources that are used to run
    #            your rules, rule groups, and web ACLs. WAF calculates capacity differently for each rule
    #            type, to reflect each rule's relative cost. Rule group capacity is fixed at creation, so
    #            users can plan their web ACL WCU usage when they use a rule group. The WCU limit for web
    #            ACLs is 1,500. </p>
    #
    #   @return [Integer]
    #
    # @!attribute rules
    #   <p></p>
    #
    #   @return [Array<RuleSummary>]
    #
    # @!attribute label_namespace
    #   <p>The label namespace prefix for this rule group. All labels added by rules in this rule group have this prefix. </p>
    #            <ul>
    #               <li>
    #                  <p>The syntax for the label namespace prefix for a managed rule group is the following: </p>
    #                  <p>
    #                     <code>awswaf:managed:<vendor>:<rule group name></code>:</p>
    #               </li>
    #               <li>
    #                  <p>When a rule with a label matches a web request, WAF adds the fully qualified label to the request. A fully qualified label is made up of the label namespace from the rule group or web ACL where the rule is defined and the label from the rule, separated by a colon: </p>
    #                  <p>
    #                     <code><label namespace>:<label from rule></code>
    #                  </p>
    #
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute available_labels
    #   <p>The labels that one or more rules in this rule group add to matching web requests. These labels are defined in the <code>RuleLabels</code> for a <a>Rule</a>.</p>
    #
    #   @return [Array<LabelSummary>]
    #
    # @!attribute consumed_labels
    #   <p>The labels that one or more rules in this rule group match against in label match statements. These labels are defined in a <code>LabelMatchStatement</code> specification, in the <a>Statement</a> definition of a rule.  </p>
    #
    #   @return [Array<LabelSummary>]
    #
    DescribeManagedRuleGroupOutput = ::Struct.new(
      :version_name,
      :sns_topic_arn,
      :capacity,
      :rules,
      :label_namespace,
      :available_labels,
      :consumed_labels,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.capacity ||= 0
      end
    end

    # @!attribute resource_arn
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
    #   @return [String]
    #
    DisassociateWebACLInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateWebACLOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a single rule in a rule group whose action you want to override to <code>Count</code>. When you exclude a rule,
    #            WAF evaluates it exactly as it would if the rule action setting were <code>Count</code>. This is a useful option for
    #            testing the rules in a rule group without modifying how they handle your web traffic. </p>
    #
    # @!attribute name
    #   <p>The name of the rule whose action you want to override to <code>Count</code>.</p>
    #
    #   @return [String]
    #
    ExcludedRule = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FailureReason
    #
    module FailureReason
      # No documentation available.
      #
      TOKEN_MISSING = "TOKEN_MISSING"

      # No documentation available.
      #
      TOKEN_EXPIRED = "TOKEN_EXPIRED"
    end

    # Includes enum constants for FallbackBehavior
    #
    module FallbackBehavior
      # No documentation available.
      #
      MATCH = "MATCH"

      # No documentation available.
      #
      NO_MATCH = "NO_MATCH"
    end

    # <p>The part of the web request that you want WAF to inspect. Include the single <code>FieldToMatch</code> type that you want to inspect, with additional specifications as needed, according to the type. You specify a single request component in <code>FieldToMatch</code> for each rule statement that requires it. To inspect more than one component of the web request, create a separate rule statement for each component.</p>
    #          <p>Example JSON for a <code>QueryString</code> field to match: </p>
    #          <p>
    #             <code>    "FieldToMatch": { "QueryString": {} }</code>
    #          </p>
    #          <p>Example JSON for a <code>Method</code> field to match specification:</p>
    #          <p>
    #             <code>    "FieldToMatch": { "Method": { "Name": "DELETE" } }</code>
    #          </p>
    #
    # @!attribute single_header
    #   <p>Inspect a single header. Provide the name of the header to inspect, for example,
    #               <code>User-Agent</code> or <code>Referer</code>. This setting isn't case
    #            sensitive.</p>
    #            <p>Example JSON: <code>"SingleHeader": { "Name": "haystack" }</code>
    #            </p>
    #            <p>Alternately, you can filter and inspect all headers with the <code>Headers</code>
    #               <code>FieldToMatch</code> setting. </p>
    #
    #   @return [SingleHeader]
    #
    # @!attribute single_query_argument
    #   <p>Inspect a single query argument. Provide the name of the query argument to inspect, such
    #            as <i>UserName</i> or <i>SalesRegion</i>. The name can be up to
    #            30 characters long and isn't case sensitive. </p>
    #            <p>Example JSON: <code>"SingleQueryArgument": { "Name": "myArgument" }</code>
    #            </p>
    #
    #   @return [SingleQueryArgument]
    #
    # @!attribute all_query_arguments
    #   <p>Inspect all query arguments. </p>
    #
    #   @return [AllQueryArguments]
    #
    # @!attribute uri_path
    #   <p>Inspect the request URI path. This is the part of the web request that identifies a
    #            resource, for example, <code>/images/daily-ad.jpg</code>.</p>
    #
    #   @return [UriPath]
    #
    # @!attribute query_string
    #   <p>Inspect the query string. This is the part of a URL that appears after a <code>?</code>
    #            character, if any.</p>
    #
    #   @return [QueryString]
    #
    # @!attribute body
    #   <p>Inspect the request body as plain text. The request body immediately follows the request
    #            headers. This is the part of a request that contains any additional data that you want to
    #            send to your web server as the HTTP request body, such as data from a form. </p>
    #            <p>Only the first 8 KB (8192 bytes) of the request body are forwarded to
    #             WAF for inspection by the underlying host service. For information about how to
    #         handle oversized request bodies, see the <code>Body</code> object configuration. </p>
    #
    #   @return [Body]
    #
    # @!attribute member_method
    #   <p>Inspect the HTTP method. The method indicates the type of operation that the request is
    #            asking the origin to perform. </p>
    #
    #   @return [Method]
    #
    # @!attribute json_body
    #   <p>Inspect the request body as JSON. The request body immediately follows the request
    #            headers. This is the part of a request that contains any additional data that you want to
    #            send to your web server as the HTTP request body, such as data from a form. </p>
    #            <p>Only the first 8 KB (8192 bytes) of the request body are forwarded to
    #             WAF for inspection by the underlying host service. For information about how to
    #         handle oversized request bodies, see the <code>JsonBody</code> object configuration. </p>
    #
    #   @return [JsonBody]
    #
    # @!attribute headers
    #   <p>Inspect the request headers. You must configure scope and pattern matching filters
    #              in the <code>Headers</code> object, to define the set of headers to and the parts of the headers that WAF inspects. </p>
    #            <p>Only the first 8 KB (8192 bytes) of a request's headers and only the first 200 headers are forwarded to
    #             WAF for inspection by the underlying host service. You must configure
    #             how to handle any oversize header content in the <code>Headers</code> object. WAF applies the pattern matching filters
    #             to the headers that it receives from the underlying host service. </p>
    #
    #   @return [Headers]
    #
    # @!attribute cookies
    #   <p>Inspect the request cookies. You must configure scope and pattern matching filters
    #              in the <code>Cookies</code> object, to define the set of cookies and the parts of the cookies that WAF inspects. </p>
    #            <p>Only the first 8 KB (8192 bytes) of a request's cookies and only the first 200 cookies are forwarded to
    #             WAF for inspection by the underlying host service. You must configure
    #             how to handle any oversize cookie content in the <code>Cookies</code> object. WAF applies the pattern matching filters
    #             to the cookies that it receives from the underlying host service. </p>
    #
    #   @return [Cookies]
    #
    FieldToMatch = ::Struct.new(
      :single_header,
      :single_query_argument,
      :all_query_arguments,
      :uri_path,
      :query_string,
      :body,
      :member_method,
      :json_body,
      :headers,
      :cookies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A single logging filter, used in <a>LoggingFilter</a>. </p>
    #
    # @!attribute behavior
    #   <p>How to handle logs that satisfy the filter's conditions and requirement. </p>
    #
    #   Enum, one of: ["KEEP", "DROP"]
    #
    #   @return [String]
    #
    # @!attribute requirement
    #   <p>Logic to apply to the filtering conditions. You can specify that, in order to satisfy
    #            the filter, a log must match all conditions or must match at least one condition.</p>
    #
    #   Enum, one of: ["MEETS_ALL", "MEETS_ANY"]
    #
    #   @return [String]
    #
    # @!attribute conditions
    #   <p>Match conditions for the filter.</p>
    #
    #   @return [Array<Condition>]
    #
    Filter = ::Struct.new(
      :behavior,
      :requirement,
      :conditions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FilterBehavior
    #
    module FilterBehavior
      # No documentation available.
      #
      KEEP = "KEEP"

      # No documentation available.
      #
      DROP = "DROP"
    end

    # Includes enum constants for FilterRequirement
    #
    module FilterRequirement
      # No documentation available.
      #
      MEETS_ALL = "MEETS_ALL"

      # No documentation available.
      #
      MEETS_ANY = "MEETS_ANY"
    end

    # <p>A rule group that's defined for an Firewall Manager WAF policy.</p>
    #
    # @!attribute name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>If you define more than one rule group in the first or last Firewall Manager rule groups, WAF
    #            evaluates each request against the rule groups in order, starting from the lowest priority
    #            setting. The priorities don't need to be consecutive, but they must all be
    #            different.</p>
    #
    #   @return [Integer]
    #
    # @!attribute firewall_manager_statement
    #   <p>The processing guidance for an Firewall Manager rule. This is like a regular rule <a>Statement</a>, but it can only contain a rule group reference.</p>
    #
    #   @return [FirewallManagerStatement]
    #
    # @!attribute override_action
    #   <p>The action to use in the place of the action that results from the rule group evaluation. Set the override action to none to leave the result of the rule group alone. Set it to count to override the result to count only. </p>
    #            <p>You can only use this for rule statements that reference a rule group, like <code>RuleGroupReferenceStatement</code> and <code>ManagedRuleGroupStatement</code>. </p>
    #            <note>
    #               <p>This option is usually set to none. It does not affect how the rules in the rule group are evaluated. If you want the rules in the rule group to only count
    #     matches, do not use this and instead exclude those rules in your rule group reference statement settings. </p>
    #            </note>
    #
    #   @return [OverrideAction]
    #
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #
    #   @return [VisibilityConfig]
    #
    FirewallManagerRuleGroup = ::Struct.new(
      :name,
      :priority,
      :firewall_manager_statement,
      :override_action,
      :visibility_config,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # <p>The processing guidance for an Firewall Manager rule. This is like a regular rule <a>Statement</a>, but it can only contain a rule group reference.</p>
    #
    # @!attribute managed_rule_group_statement
    #   <p>A rule statement used to run the rules that are defined in a managed rule group. To use this, provide the vendor name and the name of the rule group in this statement. You can retrieve the required names by calling <a>ListAvailableManagedRuleGroups</a>.</p>
    #            <p>You cannot nest a <code>ManagedRuleGroupStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. It can only be referenced as a top-level statement within a rule.</p>
    #
    #   @return [ManagedRuleGroupStatement]
    #
    # @!attribute rule_group_reference_statement
    #   <p>A rule statement used to run the rules that are defined in a <a>RuleGroup</a>. To use this, create a rule group with your rules, then provide the ARN of the rule group in this statement.</p>
    #            <p>You cannot nest a <code>RuleGroupReferenceStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. You
    #         can only use a rule group reference statement at the top level inside a web ACL. </p>
    #
    #   @return [RuleGroupReferenceStatement]
    #
    FirewallManagerStatement = ::Struct.new(
      :managed_rule_group_statement,
      :rule_group_reference_statement,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    #
    #          <note>
    #             <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #          </note>
    #
    #
    #          <p>This configuration is used for <a>GeoMatchStatement</a> and <a>RateBasedStatement</a>. For <a>IPSetReferenceStatement</a>, use <a>IPSetForwardedIPConfig</a> instead. </p>
    #          <p>WAF only evaluates the first IP address found in the specified HTTP header.
    #       </p>
    #
    # @!attribute header_name
    #   <p>The name of the HTTP header to use for the IP address. For example, to use the X-Forwarded-For (XFF) header, set this to <code>X-Forwarded-For</code>.</p>
    #
    #            <note>
    #               <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute fallback_behavior
    #   <p>The match status to assign to the web request if the request doesn't have a valid IP address in the specified position.</p>
    #
    #            <note>
    #               <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #            </note>
    #
    #            <p>You can specify the following fallback behaviors:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule statement.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["MATCH", "NO_MATCH"]
    #
    #   @return [String]
    #
    ForwardedIPConfig = ::Struct.new(
      :header_name,
      :fallback_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ForwardedIPPosition
    #
    module ForwardedIPPosition
      # No documentation available.
      #
      FIRST = "FIRST"

      # No documentation available.
      #
      LAST = "LAST"

      # No documentation available.
      #
      ANY = "ANY"
    end

    # @!attribute platform
    #   <p>The device platform.</p>
    #
    #   Enum, one of: ["IOS", "ANDROID"]
    #
    #   @return [String]
    #
    # @!attribute release_version
    #   <p>The release version. For the latest available version, specify <code>LATEST</code>.</p>
    #
    #   @return [String]
    #
    GenerateMobileSdkReleaseUrlInput = ::Struct.new(
      :platform,
      :release_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute url
    #   <p>The presigned download URL for the specified SDK release.</p>
    #
    #   @return [String]
    #
    GenerateMobileSdkReleaseUrlOutput = ::Struct.new(
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rule statement used to identify web requests based on country of origin.  </p>
    #
    # @!attribute country_codes
    #   <p>An array of two-character country codes, for example, <code>[ "US", "CN" ]</code>, from
    #            the alpha-2 country ISO codes of the ISO 3166 international standard. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute forwarded_ip_config
    #   <p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    #
    #            <note>
    #               <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #            </note>
    #
    #   @return [ForwardedIPConfig]
    #
    GeoMatchStatement = ::Struct.new(
      :country_codes,
      :forwarded_ip_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    GetIPSetInput = ::Struct.new(
      :name,
      :scope,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ip_set
    #   <p></p>
    #
    #   @return [IPSet]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    GetIPSetOutput = ::Struct.new(
      :ip_set,
      :lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL for which you want to get the
    #          <a>LoggingConfiguration</a>.</p>
    #
    #   @return [String]
    #
    GetLoggingConfigurationInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute logging_configuration
    #   <p>The <a>LoggingConfiguration</a> for the specified web ACL.</p>
    #
    #   @return [LoggingConfiguration]
    #
    GetLoggingConfigurationOutput = ::Struct.new(
      :logging_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    #
    #   @return [String]
    #
    GetManagedRuleSetInput = ::Struct.new(
      :name,
      :scope,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute managed_rule_set
    #   <p>The managed rule set that you requested. </p>
    #
    #   @return [ManagedRuleSet]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    GetManagedRuleSetOutput = ::Struct.new(
      :managed_rule_set,
      :lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute platform
    #   <p>The device platform.</p>
    #
    #   Enum, one of: ["IOS", "ANDROID"]
    #
    #   @return [String]
    #
    # @!attribute release_version
    #   <p>The release version. For the latest available version, specify <code>LATEST</code>.</p>
    #
    #   @return [String]
    #
    GetMobileSdkReleaseInput = ::Struct.new(
      :platform,
      :release_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute mobile_sdk_release
    #   <p>Information for a specified SDK release, including release notes and tags.</p>
    #
    #   @return [MobileSdkRelease]
    #
    GetMobileSdkReleaseOutput = ::Struct.new(
      :mobile_sdk_release,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group for which you want to get the
    #            policy.</p>
    #
    #   @return [String]
    #
    GetPermissionPolicyInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>The IAM policy that is attached to the specified rule group.</p>
    #
    #   @return [String]
    #
    GetPermissionPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute web_acl_name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute web_acl_id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_group_rule_name
    #   <p>The name of the rule group reference statement in your web ACL. This is required only when you have the rate-based rule nested
    #   inside a rule group. </p>
    #
    #   @return [String]
    #
    # @!attribute rule_name
    #   <p>The name of the rate-based rule to get the keys for. If you have the rule defined inside a rule group that you're using in your web ACL, also provide the name of the rule group reference statement in the request parameter <code>RuleGroupRuleName</code>.</p>
    #
    #   @return [String]
    #
    GetRateBasedStatementManagedKeysInput = ::Struct.new(
      :scope,
      :web_acl_name,
      :web_acl_id,
      :rule_group_rule_name,
      :rule_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute managed_keys_ipv4
    #   <p>The keys that are of Internet Protocol version 4 (IPv4). </p>
    #
    #   @return [RateBasedStatementManagedKeysIPSet]
    #
    # @!attribute managed_keys_ipv6
    #   <p>The keys that are of Internet Protocol version 6 (IPv6). </p>
    #
    #   @return [RateBasedStatementManagedKeysIPSet]
    #
    GetRateBasedStatementManagedKeysOutput = ::Struct.new(
      :managed_keys_ipv4,
      :managed_keys_ipv6,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    GetRegexPatternSetInput = ::Struct.new(
      :name,
      :scope,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute regex_pattern_set
    #   <p></p>
    #
    #   @return [RegexPatternSet]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    GetRegexPatternSetOutput = ::Struct.new(
      :regex_pattern_set,
      :lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #
    #   @return [String]
    #
    GetRuleGroupInput = ::Struct.new(
      :name,
      :scope,
      :id,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_group
    #   <p></p>
    #
    #   @return [RuleGroup]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    GetRuleGroupOutput = ::Struct.new(
      :rule_group,
      :lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_acl_arn
    #   <p>The Amazon resource name (ARN) of the <code>WebACL</code> for which you want a sample of
    #            requests.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_metric_name
    #   <p>The metric name assigned to the <code>Rule</code> or <code>RuleGroup</code> for which
    #            you want a sample of requests.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute time_window
    #   <p>The start date and time and the end date and time of the range for which you want
    #               <code>GetSampledRequests</code> to return a sample of requests. You must specify the
    #            times in Coordinated Universal Time (UTC) format. UTC format includes the special
    #            designator, <code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>. You can specify
    #            any time range in the previous three hours. If you specify a start time that's earlier than
    #            three hours ago, WAF sets it to three hours ago.</p>
    #
    #   @return [TimeWindow]
    #
    # @!attribute max_items
    #   <p>The number of requests that you want WAF to return from among the first 5,000
    #            requests that your Amazon Web Services resource received during the time range. If your resource received
    #            fewer requests than the value of <code>MaxItems</code>, <code>GetSampledRequests</code>
    #            returns information about all of them. </p>
    #
    #   @return [Integer]
    #
    GetSampledRequestsInput = ::Struct.new(
      :web_acl_arn,
      :rule_metric_name,
      :scope,
      :time_window,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_items ||= 0
      end
    end

    # @!attribute sampled_requests
    #   <p>A complex type that contains detailed information about each of the requests in the
    #            sample.</p>
    #
    #   @return [Array<SampledHTTPRequest>]
    #
    # @!attribute population_size
    #   <p>The total number of requests from which <code>GetSampledRequests</code> got a sample of
    #               <code>MaxItems</code> requests. If <code>PopulationSize</code> is less than
    #               <code>MaxItems</code>, the sample includes every request that your Amazon Web Services resource
    #            received during the specified time range.</p>
    #
    #   @return [Integer]
    #
    # @!attribute time_window
    #   <p>Usually, <code>TimeWindow</code> is the time range that you specified in the
    #               <code>GetSampledRequests</code> request. However, if your Amazon Web Services resource received more
    #            than 5,000 requests during the time range that you specified in the request,
    #               <code>GetSampledRequests</code> returns the time range for the first 5,000 requests.
    #            Times are in Coordinated Universal Time (UTC) format.</p>
    #
    #   @return [TimeWindow]
    #
    GetSampledRequestsOutput = ::Struct.new(
      :sampled_requests,
      :population_size,
      :time_window,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.population_size ||= 0
      end
    end

    # @!attribute resource_arn
    #   <p>The ARN (Amazon Resource Name) of the resource.</p>
    #
    #   @return [String]
    #
    GetWebACLForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_acl
    #   <p>The web ACL that is associated with the resource. If there is no associated resource,
    #            WAF returns a null web ACL.</p>
    #
    #   @return [WebACL]
    #
    GetWebACLForResourceOutput = ::Struct.new(
      :web_acl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    GetWebACLInput = ::Struct.new(
      :name,
      :scope,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_acl
    #   <p>The web ACL specification. You can modify the settings in this web ACL and use it to
    #            update this web ACL or create a new one.</p>
    #
    #   @return [WebACL]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    # @!attribute application_integration_url
    #   <p>The URL to use in SDK integrations with Amazon Web Services managed rule groups. For example, you can use the integration SDKs with the account takeover prevention managed rule group <code>AWSManagedRulesATPRuleSet</code>. This is only populated if you are using a rule group in your web ACL that integrates with your applications in this way. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html">WAF client application integration</a> in the <i>WAF Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    GetWebACLOutput = ::Struct.new(
      :web_acl,
      :lock_token,
      :application_integration_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Part of the response from <a>GetSampledRequests</a>. This is a complex type
    #          that appears as <code>Headers</code> in the response syntax. <code>HTTPHeader</code>
    #          contains the names and values of all of the headers that appear in one of the web requests.
    #       </p>
    #
    # @!attribute name
    #   <p>The name of the HTTP header.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the HTTP header.</p>
    #
    #   @return [String]
    #
    HTTPHeader = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Part of the response from <a>GetSampledRequests</a>. This is a complex type
    #          that appears as <code>Request</code> in the response syntax. <code>HTTPRequest</code>
    #          contains information about one of the web requests. </p>
    #
    # @!attribute client_ip
    #   <p>The IP address that the request originated from. If the web ACL is associated with a
    #            CloudFront distribution, this is the value of one of the following fields in CloudFront access
    #            logs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>c-ip</code>, if the viewer did not use an HTTP proxy or a load balancer to send
    #                  the request</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-forwarded-for</code>, if the viewer did use an HTTP proxy or a load balancer
    #                  to send the request</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute country
    #   <p>The two-letter country code for the country that the request originated from. For a
    #            current list of country codes, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO 3166-1
    #            alpha-2</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute uri
    #   <p>The URI path of the request, which identifies the resource, for example,
    #               <code>/images/daily-ad.jpg</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute member_method
    #   <p>The HTTP method specified in the sampled web request. </p>
    #
    #   @return [String]
    #
    # @!attribute http_version
    #   <p>The HTTP version specified in the sampled web request, for example,
    #               <code>HTTP/1.1</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute headers
    #   <p>A complex type that contains the name and value for each header in the sampled web
    #            request.</p>
    #
    #   @return [Array<HTTPHeader>]
    #
    HTTPRequest = ::Struct.new(
      :client_ip,
      :country,
      :uri,
      :member_method,
      :http_version,
      :headers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The filter to use to identify the subset of headers to inspect in a web request. </p>
    #          <p>You must specify exactly one setting: either <code>All</code>, <code>IncludedHeaders</code>, or <code>ExcludedHeaders</code>.</p>
    #          <p>Example JSON: <code>"HeaderMatchPattern": { "ExcludedHeaders": {"KeyToExclude1", "KeyToExclude2"} }</code>
    #          </p>
    #
    # @!attribute all
    #   <p>Inspect all headers. </p>
    #
    #   @return [All]
    #
    # @!attribute included_headers
    #   <p>Inspect only the headers that have a key that matches one of the strings specified here. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute excluded_headers
    #   <p>Inspect only the headers whose keys don't match any of the strings specified here. </p>
    #
    #   @return [Array<String>]
    #
    HeaderMatchPattern = ::Struct.new(
      :all,
      :included_headers,
      :excluded_headers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Inspect the headers in the web request. You can specify the parts of the headers to inspect and you can narrow
    #    the set of headers to inspect by including or excluding specific keys.</p>
    #          <p>This is used to indicate the web request component for WAF to inspect, in the <a>FieldToMatch</a> specification. </p>
    #          <p>Alternately, you can use the <code>SingleHeader</code>
    #             <code>FieldToMatch</code> setting to inspect the value of a single header, identified by its key. </p>
    #          <p>Example JSON: <code>"Headers": { "MatchPattern": { "All": {} }, "MatchScope": "KEY", "OversizeHandling": "MATCH" }</code>
    #          </p>
    #
    # @!attribute match_pattern
    #   <p>The filter to use to identify the subset of headers to inspect in a web request. </p>
    #            <p>You must specify exactly one setting: either <code>All</code>, <code>IncludedHeaders</code>, or <code>ExcludedHeaders</code>.</p>
    #            <p>Example JSON: <code>"HeaderMatchPattern": { "ExcludedHeaders": {"KeyToExclude1", "KeyToExclude2"} }</code>
    #            </p>
    #
    #   @return [HeaderMatchPattern]
    #
    # @!attribute match_scope
    #   <p>The parts of the headers to match with the rule inspection criteria. If you
    #            specify <code>All</code>, WAF inspects both keys and values. </p>
    #
    #   Enum, one of: ["ALL", "KEY", "VALUE"]
    #
    #   @return [String]
    #
    # @!attribute oversize_handling
    #   <p>What WAF should do if the headers of the request are larger than WAF can inspect.
    #       WAF does not support inspecting the entire contents of request headers
    #         when they exceed 8 KB (8192 bytes) or 200 total headers. The underlying host service forwards a maximum of 200 headers
    #         and at most 8 KB of header contents to WAF. </p>
    #            <p>The options for oversize handling are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE</code> - Inspect the headers normally, according to the rule inspection criteria. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF
    #                  applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule
    #                  statement.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #
    #   @return [String]
    #
    Headers = ::Struct.new(
      :match_pattern,
      :match_scope,
      :oversize_handling,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IPAddressVersion
    #
    module IPAddressVersion
      # No documentation available.
      #
      IPV4 = "IPV4"

      # No documentation available.
      #
      IPV6 = "IPV6"
    end

    # <p>Contains zero or more IP addresses or blocks of IP addresses specified in Classless
    #          Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges
    #          except for /0. For information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless
    #             Inter-Domain Routing</a>. </p>
    #          <p>WAF assigns an ARN to each <code>IPSet</code> that you create. To use an IP set in a
    #          rule, you provide the ARN to the <a>Rule</a> statement <a>IPSetReferenceStatement</a>. </p>
    #
    # @!attribute name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the IP set that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute ip_address_version
    #   <p>The version of the IP addresses, either <code>IPV4</code> or <code>IPV6</code>. </p>
    #
    #   Enum, one of: ["IPV4", "IPV6"]
    #
    #   @return [String]
    #
    # @!attribute addresses
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
    #   @return [Array<String>]
    #
    IPSet = ::Struct.new(
      :name,
      :id,
      :arn,
      :description,
      :ip_address_version,
      :addresses,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    #
    #          <note>
    #             <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #          </note>
    #
    #
    #          <p>This configuration is used only for <a>IPSetReferenceStatement</a>. For <a>GeoMatchStatement</a> and <a>RateBasedStatement</a>, use <a>ForwardedIPConfig</a> instead. </p>
    #
    # @!attribute header_name
    #   <p>The name of the HTTP header to use for the IP address. For example, to use the X-Forwarded-For (XFF) header, set this to <code>X-Forwarded-For</code>.</p>
    #
    #            <note>
    #               <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute fallback_behavior
    #   <p>The match status to assign to the web request if the request doesn't have a valid IP address in the specified position.</p>
    #
    #            <note>
    #               <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #            </note>
    #
    #            <p>You can specify the following fallback behaviors:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule statement.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["MATCH", "NO_MATCH"]
    #
    #   @return [String]
    #
    # @!attribute position
    #   <p>The position in the header to search for the IP address. The header can contain IP
    #            addresses of the original client and also of proxies. For example, the header value could
    #            be <code>10.1.1.1, 127.0.0.0, 10.10.10.10</code> where the first IP address identifies the
    #            original client and the rest identify proxies that the request went through. </p>
    #            <p>The options for this setting are the following: </p>
    #            <ul>
    #               <li>
    #                  <p>FIRST - Inspect the first IP address in the list of IP addresses in the
    #                  header. This is usually the client's original IP.</p>
    #               </li>
    #               <li>
    #                  <p>LAST - Inspect the last IP address in the list of IP addresses in the
    #                  header.</p>
    #               </li>
    #               <li>
    #                  <p>ANY - Inspect all IP addresses in the header for a match. If the header
    #                  contains more than 10 IP addresses, WAF inspects the last 10.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["FIRST", "LAST", "ANY"]
    #
    #   @return [String]
    #
    IPSetForwardedIPConfig = ::Struct.new(
      :header_name,
      :fallback_behavior,
      :position,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rule statement used to detect web requests coming from particular IP addresses or address ranges. To use this, create an <a>IPSet</a> that specifies the addresses you want to detect, then use the ARN of that set in this statement. To create an IP set, see <a>CreateIPSet</a>.</p>
    #          <p>Each IP set rule statement references an IP set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, WAF automatically updates all rules that reference it.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <a>IPSet</a> that this statement
    #            references.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_set_forwarded_ip_config
    #   <p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    #
    #            <note>
    #               <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #            </note>
    #
    #   @return [IPSetForwardedIPConfig]
    #
    IPSetReferenceStatement = ::Struct.new(
      :arn,
      :ip_set_forwarded_ip_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>High-level information about an <a>IPSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage an <code>IPSet</code>, and the ARN, that you provide to the <a>IPSetReferenceStatement</a> to use the address set in a <a>Rule</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the IP set that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #
    #   @return [String]
    #
    IPSetSummary = ::Struct.new(
      :name,
      :id,
      :description,
      :lock_token,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Determines how long a <code>CAPTCHA</code> token remains valid after the client successfully solves a <code>CAPTCHA</code> puzzle. </p>
    #
    # @!attribute immunity_time
    #   <p>The amount of time, in seconds, that a <code>CAPTCHA</code> token is valid. The default setting is 300.</p>
    #
    #   @return [Integer]
    #
    ImmunityTimeProperty = ::Struct.new(
      :immunity_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Inspect the body of the web request as JSON. The body immediately follows the request
    #          headers. </p>
    #           <p>This is used to indicate the web request component for WAF to inspect, in the <a>FieldToMatch</a> specification. </p>
    #          <p>Use the specifications in this object to indicate which parts of the JSON body to
    #          inspect using the rule's inspection criteria. WAF inspects only the parts of the JSON
    #          that result from the matches that you
    #          indicate.
    #       </p>
    #          <p>Example JSON: <code>"JsonBody": { "MatchPattern": { "All": {} }, "MatchScope": "ALL" }</code>
    #          </p>
    #
    # @!attribute match_pattern
    #   <p>The patterns to look for in the JSON body. WAF inspects the results of these
    #            pattern matches against the rule inspection criteria. </p>
    #
    #   @return [JsonMatchPattern]
    #
    # @!attribute match_scope
    #   <p>The parts of the JSON to match against using the <code>MatchPattern</code>. If you
    #            specify <code>All</code>, WAF matches against keys and values. </p>
    #
    #   Enum, one of: ["ALL", "KEY", "VALUE"]
    #
    #   @return [String]
    #
    # @!attribute invalid_fallback_behavior
    #   <p>What WAF should do if it fails to completely parse the JSON body. The options are
    #            the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EVALUATE_AS_STRING</code> - Inspect the body as plain text. WAF applies
    #                  the text transformations and inspection criteria that you defined for the JSON
    #                  inspection to the body text string.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF
    #                  applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule
    #                  statement.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't provide this setting, WAF parses and evaluates the content only up to the
    #            first parsing failure that it encounters. </p>
    #            <p>WAF does its best to parse the entire JSON body, but might be forced to stop for
    #            reasons such as invalid characters, duplicate keys, truncation, and any content whose root
    #            node isn't an object or an array. </p>
    #            <p>WAF parses the JSON in the following examples as two valid key, value pairs: </p>
    #            <ul>
    #               <li>
    #                  <p>Missing comma: <code>{"key1":"value1""key2":"value2"}</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Missing colon: <code>{"key1":"value1","key2""value2"}</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Extra colons: <code>{"key1"::"value1","key2""value2"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["MATCH", "NO_MATCH", "EVALUATE_AS_STRING"]
    #
    #   @return [String]
    #
    # @!attribute oversize_handling
    #   <p>What WAF should do if the body is larger than WAF can inspect.
    #       WAF does not support inspecting the entire contents of the body of a web request
    #         when the body exceeds 8 KB (8192 bytes). Only the first 8 KB of the request body are forwarded to
    #       WAF by the underlying host service. </p>
    #            <p>The options for oversize handling are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE</code> - Inspect the body normally, according to the rule inspection criteria. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MATCH</code> - Treat the web request as matching the rule statement. WAF
    #                  applies the rule action to the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_MATCH</code> - Treat the web request as not matching the rule
    #                  statement.</p>
    #               </li>
    #            </ul>
    #            <p>You can combine the <code>MATCH</code> or <code>NO_MATCH</code>
    #         settings for oversize handling with your rule and web ACL action settings, so that you block any request whose body is over 8 KB. </p>
    #            <p>Default: <code>CONTINUE</code>
    #            </p>
    #
    #   Enum, one of: ["CONTINUE", "MATCH", "NO_MATCH"]
    #
    #   @return [String]
    #
    JsonBody = ::Struct.new(
      :match_pattern,
      :match_scope,
      :invalid_fallback_behavior,
      :oversize_handling,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The patterns to look for in the JSON body. WAF inspects the results of these
    #          pattern matches against the rule inspection criteria. This is used with the <a>FieldToMatch</a> option <code>JsonBody</code>. </p>
    #
    # @!attribute all
    #   <p>Match all of the elements. See also
    #               <code>MatchScope</code>
    #            in <a>JsonBody</a>. </p>
    #            <p>You must specify either this setting or the <code>IncludedPaths</code> setting, but not
    #            both.</p>
    #
    #   @return [All]
    #
    # @!attribute included_paths
    #   <p>Match only the specified include paths. See also
    #               <code>MatchScope</code>
    #            in <a>JsonBody</a>. </p>
    #            <p>Provide the include paths using JSON Pointer syntax. For example, <code>"IncludedPaths":
    #               ["/dogs/0/name", "/dogs/1/name"]</code>. For information about this syntax, see the
    #            Internet Engineering Task Force (IETF) documentation <a href="https://tools.ietf.org/html/rfc6901">JavaScript Object Notation (JSON)
    #               Pointer</a>. </p>
    #            <p>You must specify either this setting or the <code>All</code> setting, but not
    #            both.</p>
    #            <note>
    #               <p>Don't use this option to include all paths. Instead, use the <code>All</code>
    #               setting. </p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    JsonMatchPattern = ::Struct.new(
      :all,
      :included_paths,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JsonMatchScope
    #
    module JsonMatchScope
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      KEY = "KEY"

      # No documentation available.
      #
      VALUE = "VALUE"
    end

    # <p>A single label container. This is used as an element of a label array in multiple
    #          contexts, for example, in <code>RuleLabels</code> inside a <a>Rule</a> and in
    #             <code>Labels</code> inside a <a>SampledHTTPRequest</a>. </p>
    #
    # @!attribute name
    #   <p>The label string. </p>
    #
    #   @return [String]
    #
    Label = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LabelMatchScope
    #
    module LabelMatchScope
      # No documentation available.
      #
      LABEL = "LABEL"

      # No documentation available.
      #
      NAMESPACE = "NAMESPACE"
    end

    # <p>A rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. </p>
    #          <p>The label match statement provides the label or namespace string to search for. The label string can represent a part or all of the fully qualified label name that had been added to the web request. Fully qualified labels have a prefix, optional namespaces, and label name. The prefix identifies the rule group or web ACL context of the rule that added the label.  If you do not provide the fully qualified name in your label match string, WAF performs the search for labels that were added in the same context as the label match statement. </p>
    #
    # @!attribute scope
    #   <p>Specify whether you want to match using the label name or just the namespace. </p>
    #
    #   Enum, one of: ["LABEL", "NAMESPACE"]
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The string to match against. The setting you provide for this depends on the match
    #            statement's <code>Scope</code> setting: </p>
    #            <ul>
    #               <li>
    #                  <p>If the <code>Scope</code> indicates <code>LABEL</code>, then this specification
    #                  must include the name and can include any number of preceding namespace
    #                  specifications and prefix up to providing the fully qualified label name. </p>
    #               </li>
    #               <li>
    #                  <p>If the <code>Scope</code> indicates <code>NAMESPACE</code>, then this
    #                  specification can include any number of contiguous namespace strings, and can include
    #                  the entire label namespace prefix from the rule group or web ACL where the label
    #                  originates.</p>
    #               </li>
    #            </ul>
    #            <p>Labels are case sensitive and components of a label must be separated by colon, for
    #            example <code>NS1:NS2:name</code>.</p>
    #
    #   @return [String]
    #
    LabelMatchStatement = ::Struct.new(
      :scope,
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A single label name condition for a <a>Condition</a> in a logging
    #          filter.</p>
    #
    # @!attribute label_name
    #   <p>The label name that a log record must contain in order to meet the condition. This must
    #            be a fully qualified label name. Fully qualified labels have a prefix, optional namespaces, and label name. The prefix identifies the rule group or web ACL context of the rule that added the label.  </p>
    #
    #   @return [String]
    #
    LabelNameCondition = ::Struct.new(
      :label_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>List of labels used by one or more of the rules of a <a>RuleGroup</a>. This
    #          summary object is used for the following rule group lists: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AvailableLabels</code> - Labels that rules add to matching requests.
    #                These labels are defined in the <code>RuleLabels</code> for a <a>Rule</a>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ConsumedLabels</code> - Labels that rules match against.
    #                These labels are defined in a <code>LabelMatchStatement</code> specification, in the <a>Statement</a> definition of a rule.  </p>
    #             </li>
    #          </ul>
    #
    # @!attribute name
    #   <p>An individual label specification.</p>
    #
    #   @return [String]
    #
    LabelSummary = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vendor_name
    #   <p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    ListAvailableManagedRuleGroupVersionsInput = ::Struct.new(
      :vendor_name,
      :name,
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute versions
    #   <p>The versions that are currently available for the specified managed rule group. </p>
    #
    #   @return [Array<ManagedRuleGroupVersion>]
    #
    # @!attribute current_default_version
    #   <p>The name of the version that's currently set as the default. </p>
    #
    #   @return [String]
    #
    ListAvailableManagedRuleGroupVersionsOutput = ::Struct.new(
      :next_marker,
      :versions,
      :current_default_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    ListAvailableManagedRuleGroupsInput = ::Struct.new(
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute managed_rule_groups
    #   <p></p>
    #
    #   @return [Array<ManagedRuleGroupSummary>]
    #
    ListAvailableManagedRuleGroupsOutput = ::Struct.new(
      :next_marker,
      :managed_rule_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    ListIPSetsInput = ::Struct.new(
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_sets
    #   <p>Array of IPSets. This may not be the full list of IPSets that you have defined. See the
    #               <code>Limit</code> specification for this request.</p>
    #
    #   @return [Array<IPSetSummary>]
    #
    ListIPSetsOutput = ::Struct.new(
      :next_marker,
      :ip_sets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    ListLoggingConfigurationsInput = ::Struct.new(
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute logging_configurations
    #   <p></p>
    #
    #   @return [Array<LoggingConfiguration>]
    #
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    ListLoggingConfigurationsOutput = ::Struct.new(
      :logging_configurations,
      :next_marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    ListManagedRuleSetsInput = ::Struct.new(
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute managed_rule_sets
    #   <p>Your managed rule sets. </p>
    #
    #   @return [Array<ManagedRuleSetSummary>]
    #
    ListManagedRuleSetsOutput = ::Struct.new(
      :next_marker,
      :managed_rule_sets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute platform
    #   <p>The device platform to retrieve the list for.</p>
    #
    #   Enum, one of: ["IOS", "ANDROID"]
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    ListMobileSdkReleasesInput = ::Struct.new(
      :platform,
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute release_summaries
    #   <p>High level information for the available SDK releases. </p>
    #
    #   @return [Array<ReleaseSummary>]
    #
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    ListMobileSdkReleasesOutput = ::Struct.new(
      :release_summaries,
      :next_marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    ListRegexPatternSetsInput = ::Struct.new(
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute regex_pattern_sets
    #   <p></p>
    #
    #   @return [Array<RegexPatternSetSummary>]
    #
    ListRegexPatternSetsOutput = ::Struct.new(
      :next_marker,
      :regex_pattern_sets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Used for web ACLs that are scoped for regional applications.
    #            A regional application can be an Application Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync GraphQL API. </p>
    #
    #   Enum, one of: ["APPLICATION_LOAD_BALANCER", "API_GATEWAY", "APPSYNC"]
    #
    #   @return [String]
    #
    ListResourcesForWebACLInput = ::Struct.new(
      :web_acl_arn,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arns
    #   <p>The array of Amazon Resource Names (ARNs) of the associated resources.</p>
    #
    #   @return [Array<String>]
    #
    ListResourcesForWebACLOutput = ::Struct.new(
      :resource_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    ListRuleGroupsInput = ::Struct.new(
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_groups
    #   <p></p>
    #
    #   @return [Array<RuleGroupSummary>]
    #
    ListRuleGroupsOutput = ::Struct.new(
      :next_marker,
      :rule_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :next_marker,
      :limit,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_info_for_resource
    #   <p>The collection of tagging definitions for the resource. </p>
    #
    #   @return [TagInfoForResource]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :next_marker,
      :tag_info_for_resource,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of objects that you want WAF to return for this request. If more
    #             objects are available, in the response, WAF provides a
    #            <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #
    #   @return [Integer]
    #
    ListWebACLsInput = ::Struct.new(
      :scope,
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the limit, WAF returns a <code>NextMarker</code>
    #            value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute web_ac_ls
    #   <p></p>
    #
    #   @return [Array<WebACLSummary>]
    #
    ListWebACLsOutput = ::Struct.new(
      :next_marker,
      :web_ac_ls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines an association between logging destinations and a web ACL
    #          resource, for logging from WAF. As part of the association, you can specify parts of
    #          the standard logging fields to keep out of the logs and you can specify filters so that you
    #          log only a subset of the logging records. </p>
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
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL that you want to associate with
    #               <code>LogDestinationConfigs</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute log_destination_configs
    #   <p>The logging destination configuration that you want to associate
    #            with the web ACL.</p>
    #            <note>
    #               <p>You can associate one logging destination to a web ACL.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute redacted_fields
    #   <p>The parts of the request that you want to keep out of the logs. For
    #             example, if you redact the <code>SingleHeader</code> field, the <code>HEADER</code> field in the logs will be <code>xxx</code>. </p>
    #            <note>
    #              <p>You can specify only the following fields for redaction: <code>UriPath</code>, <code>QueryString</code>, <code>SingleHeader</code>, <code>Method</code>, and <code>JsonBody</code>.</p>
    #            </note>
    #
    #   @return [Array<FieldToMatch>]
    #
    # @!attribute managed_by_firewall_manager
    #   <p>Indicates whether the logging configuration was created by Firewall Manager, as part of an
    #            WAF policy configuration. If true, only Firewall Manager can modify or delete the
    #            configuration. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute logging_filter
    #   <p>Filtering that specifies which web requests are kept in the logs and which are dropped.
    #            You can filter on the rule action and on the web request labels that were applied by
    #            matching rules during web ACL evaluation. </p>
    #
    #   @return [LoggingFilter]
    #
    LoggingConfiguration = ::Struct.new(
      :resource_arn,
      :log_destination_configs,
      :redacted_fields,
      :managed_by_firewall_manager,
      :logging_filter,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.managed_by_firewall_manager ||= false
      end
    end

    # <p>Filtering that specifies which web requests are kept in the logs and which are dropped,
    #          defined for a web ACL's <a>LoggingConfiguration</a>. </p>
    #          <p>You can filter on the rule action and on the web request labels that were applied by
    #          matching rules during web ACL evaluation. </p>
    #
    # @!attribute filters
    #   <p>The filters that you want to apply to the logs. </p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute default_behavior
    #   <p>Default handling for logs that don't match any of the specified filtering conditions.
    #         </p>
    #
    #   Enum, one of: ["KEEP", "DROP"]
    #
    #   @return [String]
    #
    LoggingFilter = ::Struct.new(
      :filters,
      :default_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Additional information that's used by a managed rule group. Most managed rule groups don't require this.</p>
    #          <p>Use this for the account takeover prevention managed rule group
    #       <code>AWSManagedRulesATPRuleSet</code>, to provide information about the sign-in page of your application. </p>
    #          <p>You can provide multiple individual <code>ManagedRuleGroupConfig</code> objects for any rule group configuration, for example <code>UsernameField</code> and <code>PasswordField</code>. The configuration that you provide depends on the needs of the managed rule group. For the ATP managed rule group, you provide the following individual configuration objects: <code>LoginPath</code>, <code>PasswordField</code>, <code>PayloadType</code> and <code>UsernameField</code>.</p>
    #
    # @!attribute login_path
    #   <p>The path of the login endpoint for your application. For example, for the URL <code>https://example.com/web/login</code>, you would provide the path <code>/web/login</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute payload_type
    #   <p>The payload type for your login endpoint, either JSON or form encoded.</p>
    #
    #   Enum, one of: ["JSON", "FORM_ENCODED"]
    #
    #   @return [String]
    #
    # @!attribute username_field
    #   <p>Details about your login page username field. </p>
    #
    #   @return [UsernameField]
    #
    # @!attribute password_field
    #   <p>Details about your login page password field. </p>
    #
    #   @return [PasswordField]
    #
    ManagedRuleGroupConfig = ::Struct.new(
      :login_path,
      :payload_type,
      :username_field,
      :password_field,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rule statement used to run the rules that are defined in a managed rule group. To use this, provide the vendor name and the name of the rule group in this statement. You can retrieve the required names by calling <a>ListAvailableManagedRuleGroups</a>.</p>
    #          <p>You cannot nest a <code>ManagedRuleGroupStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. It can only be referenced as a top-level statement within a rule.</p>
    #
    # @!attribute vendor_name
    #   <p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the managed rule group to use. If you specify this, the version setting
    #          is fixed until you change it.
    #         If you don't specify this, WAF uses the vendor's default version, and then keeps the version
    #         at the vendor's default when the vendor updates the managed rule group settings. </p>
    #
    #   @return [String]
    #
    # @!attribute excluded_rules
    #   <p>The rules in the referenced rule group whose actions are set to <code>Count</code>.
    #          When you exclude a rule, WAF evaluates it exactly as it would if the rule action setting were <code>Count</code>.
    #          This is a useful option for testing the rules in a rule group without modifying how they handle your web traffic.</p>
    #
    #   @return [Array<ExcludedRule>]
    #
    # @!attribute scope_down_statement
    #   <p>An optional nested statement that narrows the scope of the web requests that are
    #            evaluated by the managed rule group. Requests are only evaluated by the rule group if they
    #            match the scope-down statement. You can use any nestable <a>Statement</a> in the
    #            scope-down statement, and you can nest statements at any level, the same as you can for a
    #            rule statement. </p>
    #
    #   @return [Statement]
    #
    # @!attribute managed_rule_group_configs
    #   <p>Additional information that's used by a managed rule group. Most managed rule groups don't require this.</p>
    #            <p>Use this for the account takeover prevention managed rule group
    #         <code>AWSManagedRulesATPRuleSet</code>, to provide information about the sign-in page of your application. </p>
    #            <p>You can provide multiple individual <code>ManagedRuleGroupConfig</code> objects for any rule group configuration, for example <code>UsernameField</code> and <code>PasswordField</code>. The configuration that you provide depends on the needs of the managed rule group. For the ATP managed rule group, you provide the following individual configuration objects: <code>LoginPath</code>, <code>PasswordField</code>, <code>PayloadType</code> and <code>UsernameField</code>.</p>
    #
    #   @return [Array<ManagedRuleGroupConfig>]
    #
    ManagedRuleGroupStatement = ::Struct.new(
      :vendor_name,
      :name,
      :version,
      :excluded_rules,
      :scope_down_statement,
      :managed_rule_group_configs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>High-level information about a managed rule group, returned by <a>ListAvailableManagedRuleGroups</a>. This provides information like the name and vendor name, that you provide when you add a <a>ManagedRuleGroupStatement</a> to a web ACL. Managed rule groups include Amazon Web Services Managed Rules rule groups, which are free of charge to WAF customers, and Amazon Web Services Marketplace managed rule groups, which you can subscribe to through Amazon Web Services Marketplace. </p>
    #
    # @!attribute vendor_name
    #   <p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>
    #
    #   @return [String]
    #
    # @!attribute versioning_supported
    #   <p>Indicates whether the managed rule group is versioned. If it is, you can retrieve the versions list by calling <a>ListAvailableManagedRuleGroupVersions</a>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute description
    #   <p>The description of the managed rule group, provided by Amazon Web Services Managed Rules or the Amazon Web Services Marketplace seller who manages it.</p>
    #
    #   @return [String]
    #
    ManagedRuleGroupSummary = ::Struct.new(
      :vendor_name,
      :name,
      :versioning_supported,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.versioning_supported ||= false
      end
    end

    # <p>Describes a single version of a managed rule group. </p>
    #
    # @!attribute name
    #   <p>The version name. </p>
    #
    #   @return [String]
    #
    # @!attribute last_update_timestamp
    #   <p>The date and time that the managed rule group owner updated the rule group version
    #            information. </p>
    #
    #   @return [Time]
    #
    ManagedRuleGroupVersion = ::Struct.new(
      :name,
      :last_update_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of rules that is managed by Amazon Web Services and Amazon Web Services Marketplace sellers to provide versioned managed
    #          rule groups for customers of WAF.</p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    #
    # @!attribute name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the set that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute published_versions
    #   <p>The versions of this managed rule set that are available for use by customers. </p>
    #
    #   @return [Hash<String, ManagedRuleSetVersion>]
    #
    # @!attribute recommended_version
    #   <p>The version that you would like your customers to use.</p>
    #
    #   @return [String]
    #
    # @!attribute label_namespace
    #   <p>The label namespace prefix for the managed rule groups that are offered to customers from this managed rule set. All labels that are added by rules in the managed rule group have this prefix. </p>
    #            <ul>
    #               <li>
    #                  <p>The syntax for the label namespace prefix for a managed rule group is the following: </p>
    #                  <p>
    #                     <code>awswaf:managed:<vendor>:<rule group name></code>:</p>
    #               </li>
    #               <li>
    #                  <p>When a rule with a label matches a web request, WAF adds the fully qualified label to the request. A fully qualified label is made up of the label namespace from the rule group or web ACL where the rule is defined and the label from the rule, separated by a colon: </p>
    #                  <p>
    #                     <code><label namespace>:<label from rule></code>
    #                  </p>
    #
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    ManagedRuleSet = ::Struct.new(
      :name,
      :id,
      :arn,
      :description,
      :published_versions,
      :recommended_version,
      :label_namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>High-level information for a managed rule set. </p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    #
    # @!attribute name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the set that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute label_namespace
    #   <p>The label namespace prefix for the managed rule groups that are offered to customers from this managed rule set. All labels that are added by rules in the managed rule group have this prefix. </p>
    #            <ul>
    #               <li>
    #                  <p>The syntax for the label namespace prefix for a managed rule group is the following: </p>
    #                  <p>
    #                     <code>awswaf:managed:<vendor>:<rule group name></code>:</p>
    #               </li>
    #               <li>
    #                  <p>When a rule with a label matches a web request, WAF adds the fully qualified label to the request. A fully qualified label is made up of the label namespace from the rule group or web ACL where the rule is defined and the label from the rule, separated by a colon: </p>
    #                  <p>
    #                     <code><label namespace>:<label from rule></code>
    #                  </p>
    #
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    ManagedRuleSetSummary = ::Struct.new(
      :name,
      :id,
      :description,
      :lock_token,
      :arn,
      :label_namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information for a single version of a managed rule set. </p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    #
    # @!attribute associated_rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the vendor rule group that's used to define the
    #            published version of your managed rule group. </p>
    #
    #   @return [String]
    #
    # @!attribute capacity
    #   <p>The web ACL capacity units (WCUs) required for this rule group.</p>
    #             <p>WAF uses WCUs to calculate and control the operating
    #            resources that are used to run your rules, rule groups, and web ACLs. WAF
    #            calculates capacity differently for each rule type, to reflect the relative cost of each rule.
    #            Simple rules that cost little to run use fewer WCUs than more complex rules
    #   				that use more processing power.
    #   				Rule group capacity is fixed at creation, which helps users plan their
    #            web ACL WCU usage when they use a rule group.
    #            The WCU limit for web ACLs is 1,500.  </p>
    #
    #   @return [Integer]
    #
    # @!attribute forecasted_lifetime
    #   <p>The amount of time you expect this version of your managed rule group to last, in days.
    #         </p>
    #
    #   @return [Integer]
    #
    # @!attribute publish_timestamp
    #   <p>The time that you first published this version. </p>
    #            <p>Times are in Coordinated Universal Time (UTC) format. UTC format includes the special designator, Z. For example, "2016-09-27T14:50Z". </p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_timestamp
    #   <p>The last time that you updated this version. </p>
    #            <p>Times are in Coordinated Universal Time (UTC) format. UTC format includes the special designator, Z. For example, "2016-09-27T14:50Z". </p>
    #
    #   @return [Time]
    #
    # @!attribute expiry_timestamp
    #   <p>The time that this version is set to expire.</p>
    #            <p>Times are in Coordinated Universal Time (UTC) format. UTC format includes the special designator, Z. For example, "2016-09-27T14:50Z". </p>
    #
    #   @return [Time]
    #
    ManagedRuleSetVersion = ::Struct.new(
      :associated_rule_group_arn,
      :capacity,
      :forecasted_lifetime,
      :publish_timestamp,
      :last_update_timestamp,
      :expiry_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.capacity ||= 0
      end
    end

    # Includes enum constants for MapMatchScope
    #
    module MapMatchScope
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      KEY = "KEY"

      # No documentation available.
      #
      VALUE = "VALUE"
    end

    # <p>Inspect the HTTP method of the web request. The method indicates the type of operation that the request is asking the origin to perform. </p>
    #            <p>This is used only in the <a>FieldToMatch</a> specification for some web request component types. </p>
    #          <p>JSON specification: <code>"Method": {}</code>
    #          </p>
    #
    Method = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information for a release of the mobile SDK, including release notes and tags.</p>
    #          <p>The mobile SDK is not generally available. Customers who have access to the mobile SDK can use it to establish and manage Security Token Service (STS) security tokens for use in HTTP(S) requests from a mobile device to WAF. For more information, see
    # <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html">WAF client application integration</a> in the <i>WAF Developer Guide</i>.</p>
    #
    # @!attribute release_version
    #   <p>The release version. </p>
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   <p>The timestamp of the release. </p>
    #
    #   @return [Time]
    #
    # @!attribute release_notes
    #   <p>Notes describing the release.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags that are associated with the release. </p>
    #
    #   @return [Array<Tag>]
    #
    MobileSdkRelease = ::Struct.new(
      :release_version,
      :timestamp,
      :release_notes,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies that WAF should do nothing. This is used for the <code>OverrideAction</code> setting
    #            on a <a>Rule</a> when the rule uses a rule group reference statement. </p>
    #          <p>This is used in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>
    #          <p>JSON specification: <code>"None": {}</code>
    #          </p>
    #
    NoneAction = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A logical rule statement used to negate the results of another rule statement. You provide one <a>Statement</a> within the <code>NotStatement</code>.</p>
    #
    # @!attribute statement
    #   <p>The statement to negate. You can use any statement that can be nested.</p>
    #
    #   @return [Statement]
    #
    NotStatement = ::Struct.new(
      :statement,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A logical rule statement used to combine other rule statements with OR logic. You provide more than one <a>Statement</a> within the <code>OrStatement</code>. </p>
    #
    # @!attribute statements
    #   <p>The statements to combine with OR logic. You can use any statements that can be
    #            nested.</p>
    #
    #   @return [Array<Statement>]
    #
    OrStatement = ::Struct.new(
      :statements,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The action to use in the place of the action that results from the rule group evaluation. Set the override action to none to leave the result of the rule group alone. Set it to count to override the result to count only. </p>
    #          <p>You can only use this for rule statements that reference a rule group, like <code>RuleGroupReferenceStatement</code> and <code>ManagedRuleGroupStatement</code>. </p>
    #          <note>
    #             <p>This option is usually set to none. It does not affect how the rules in the rule group are evaluated. If you want the rules in the rule group to only count
    #   matches, do not use this and instead exclude those rules in your rule group reference statement settings. </p>
    #          </note>
    #
    # @!attribute count
    #   <p>Override the rule group evaluation result to count only. </p>
    #            <note>
    #               <p>This option is usually set to none. It does not affect how the rules in the rule group are evaluated. If you want the rules in the rule group to only count
    #     matches, do not use this and instead exclude those rules in your rule group reference statement settings. </p>
    #            </note>
    #
    #   @return [CountAction]
    #
    # @!attribute none
    #   <p>Don't override the rule group evaluation result. This is the most common setting.</p>
    #
    #   @return [NoneAction]
    #
    OverrideAction = ::Struct.new(
      :count,
      :none,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OversizeHandling
    #
    module OversizeHandling
      # No documentation available.
      #
      CONTINUE = "CONTINUE"

      # No documentation available.
      #
      MATCH = "MATCH"

      # No documentation available.
      #
      NO_MATCH = "NO_MATCH"
    end

    # Includes enum constants for ParameterExceptionField
    #
    module ParameterExceptionField
      # No documentation available.
      #
      WEB_ACL = "WEB_ACL"

      # No documentation available.
      #
      RULE_GROUP = "RULE_GROUP"

      # No documentation available.
      #
      REGEX_PATTERN_SET = "REGEX_PATTERN_SET"

      # No documentation available.
      #
      IP_SET = "IP_SET"

      # No documentation available.
      #
      MANAGED_RULE_SET = "MANAGED_RULE_SET"

      # No documentation available.
      #
      RULE = "RULE"

      # No documentation available.
      #
      EXCLUDED_RULE = "EXCLUDED_RULE"

      # No documentation available.
      #
      STATEMENT = "STATEMENT"

      # No documentation available.
      #
      BYTE_MATCH_STATEMENT = "BYTE_MATCH_STATEMENT"

      # No documentation available.
      #
      SQLI_MATCH_STATEMENT = "SQLI_MATCH_STATEMENT"

      # No documentation available.
      #
      XSS_MATCH_STATEMENT = "XSS_MATCH_STATEMENT"

      # No documentation available.
      #
      SIZE_CONSTRAINT_STATEMENT = "SIZE_CONSTRAINT_STATEMENT"

      # No documentation available.
      #
      GEO_MATCH_STATEMENT = "GEO_MATCH_STATEMENT"

      # No documentation available.
      #
      RATE_BASED_STATEMENT = "RATE_BASED_STATEMENT"

      # No documentation available.
      #
      RULE_GROUP_REFERENCE_STATEMENT = "RULE_GROUP_REFERENCE_STATEMENT"

      # No documentation available.
      #
      REGEX_PATTERN_REFERENCE_STATEMENT = "REGEX_PATTERN_REFERENCE_STATEMENT"

      # No documentation available.
      #
      IP_SET_REFERENCE_STATEMENT = "IP_SET_REFERENCE_STATEMENT"

      # No documentation available.
      #
      MANAGED_RULE_SET_STATEMENT = "MANAGED_RULE_SET_STATEMENT"

      # No documentation available.
      #
      LABEL_MATCH_STATEMENT = "LABEL_MATCH_STATEMENT"

      # No documentation available.
      #
      AND_STATEMENT = "AND_STATEMENT"

      # No documentation available.
      #
      OR_STATEMENT = "OR_STATEMENT"

      # No documentation available.
      #
      NOT_STATEMENT = "NOT_STATEMENT"

      # No documentation available.
      #
      IP_ADDRESS = "IP_ADDRESS"

      # No documentation available.
      #
      IP_ADDRESS_VERSION = "IP_ADDRESS_VERSION"

      # No documentation available.
      #
      FIELD_TO_MATCH = "FIELD_TO_MATCH"

      # No documentation available.
      #
      TEXT_TRANSFORMATION = "TEXT_TRANSFORMATION"

      # No documentation available.
      #
      SINGLE_QUERY_ARGUMENT = "SINGLE_QUERY_ARGUMENT"

      # No documentation available.
      #
      SINGLE_HEADER = "SINGLE_HEADER"

      # No documentation available.
      #
      DEFAULT_ACTION = "DEFAULT_ACTION"

      # No documentation available.
      #
      RULE_ACTION = "RULE_ACTION"

      # No documentation available.
      #
      ENTITY_LIMIT = "ENTITY_LIMIT"

      # No documentation available.
      #
      OVERRIDE_ACTION = "OVERRIDE_ACTION"

      # No documentation available.
      #
      SCOPE_VALUE = "SCOPE_VALUE"

      # No documentation available.
      #
      RESOURCE_ARN = "RESOURCE_ARN"

      # No documentation available.
      #
      RESOURCE_TYPE = "RESOURCE_TYPE"

      # No documentation available.
      #
      TAGS = "TAGS"

      # No documentation available.
      #
      TAG_KEYS = "TAG_KEYS"

      # No documentation available.
      #
      METRIC_NAME = "METRIC_NAME"

      # No documentation available.
      #
      FIREWALL_MANAGER_STATEMENT = "FIREWALL_MANAGER_STATEMENT"

      # No documentation available.
      #
      FALLBACK_BEHAVIOR = "FALLBACK_BEHAVIOR"

      # No documentation available.
      #
      POSITION = "POSITION"

      # No documentation available.
      #
      FORWARDED_IP_CONFIG = "FORWARDED_IP_CONFIG"

      # No documentation available.
      #
      IP_SET_FORWARDED_IP_CONFIG = "IP_SET_FORWARDED_IP_CONFIG"

      # No documentation available.
      #
      HEADER_NAME = "HEADER_NAME"

      # No documentation available.
      #
      CUSTOM_REQUEST_HANDLING = "CUSTOM_REQUEST_HANDLING"

      # No documentation available.
      #
      RESPONSE_CONTENT_TYPE = "RESPONSE_CONTENT_TYPE"

      # No documentation available.
      #
      CUSTOM_RESPONSE = "CUSTOM_RESPONSE"

      # No documentation available.
      #
      CUSTOM_RESPONSE_BODY = "CUSTOM_RESPONSE_BODY"

      # No documentation available.
      #
      JSON_MATCH_PATTERN = "JSON_MATCH_PATTERN"

      # No documentation available.
      #
      JSON_MATCH_SCOPE = "JSON_MATCH_SCOPE"

      # No documentation available.
      #
      BODY_PARSING_FALLBACK_BEHAVIOR = "BODY_PARSING_FALLBACK_BEHAVIOR"

      # No documentation available.
      #
      LOGGING_FILTER = "LOGGING_FILTER"

      # No documentation available.
      #
      FILTER_CONDITION = "FILTER_CONDITION"

      # No documentation available.
      #
      EXPIRE_TIMESTAMP = "EXPIRE_TIMESTAMP"

      # No documentation available.
      #
      CHANGE_PROPAGATION_STATUS = "CHANGE_PROPAGATION_STATUS"

      # No documentation available.
      #
      ASSOCIABLE_RESOURCE = "ASSOCIABLE_RESOURCE"

      # No documentation available.
      #
      LOG_DESTINATION = "LOG_DESTINATION"

      # No documentation available.
      #
      MANAGED_RULE_GROUP_CONFIG = "MANAGED_RULE_GROUP_CONFIG"

      # No documentation available.
      #
      PAYLOAD_TYPE = "PAYLOAD_TYPE"

      # No documentation available.
      #
      HEADER_MATCH_PATTERN = "HEADER_MATCH_PATTERN"

      # No documentation available.
      #
      COOKIE_MATCH_PATTERN = "COOKIE_MATCH_PATTERN"

      # No documentation available.
      #
      MAP_MATCH_SCOPE = "MAP_MATCH_SCOPE"

      # No documentation available.
      #
      OVERSIZE_HANDLING = "OVERSIZE_HANDLING"
    end

    # <p>Details about your login page password field, used in a <code>ManagedRuleGroupConfig</code>. </p>
    #
    # @!attribute identifier
    #   <p>The name of the password field. For example <code>/form/password</code>.</p>
    #
    #   @return [String]
    #
    PasswordField = ::Struct.new(
      :identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PayloadType
    #
    module PayloadType
      # No documentation available.
      #
      JSON = "JSON"

      # No documentation available.
      #
      FORM_ENCODED = "FORM_ENCODED"
    end

    # Includes enum constants for Platform
    #
    module Platform
      # No documentation available.
      #
      IOS = "IOS"

      # No documentation available.
      #
      ANDROID = "ANDROID"
    end

    # Includes enum constants for PositionalConstraint
    #
    module PositionalConstraint
      # No documentation available.
      #
      EXACTLY = "EXACTLY"

      # No documentation available.
      #
      STARTS_WITH = "STARTS_WITH"

      # No documentation available.
      #
      ENDS_WITH = "ENDS_WITH"

      # No documentation available.
      #
      CONTAINS = "CONTAINS"

      # No documentation available.
      #
      CONTAINS_WORD = "CONTAINS_WORD"
    end

    # @!attribute logging_configuration
    #   <p></p>
    #
    #   @return [LoggingConfiguration]
    #
    PutLoggingConfigurationInput = ::Struct.new(
      :logging_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute logging_configuration
    #   <p></p>
    #
    #   @return [LoggingConfiguration]
    #
    PutLoggingConfigurationOutput = ::Struct.new(
      :logging_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    # @!attribute recommended_version
    #   <p>The version of the named managed rule group that you'd like your customers to choose,
    #            from among your version offerings. </p>
    #
    #   @return [String]
    #
    # @!attribute versions_to_publish
    #   <p>The versions of the named managed rule group that you want to offer to your customers.
    #         </p>
    #
    #   @return [Hash<String, VersionToPublish>]
    #
    PutManagedRuleSetVersionsInput = ::Struct.new(
      :name,
      :scope,
      :id,
      :lock_token,
      :recommended_version,
      :versions_to_publish,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    PutManagedRuleSetVersionsOutput = ::Struct.new(
      :next_lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the <a>RuleGroup</a> to which you want to
    #            attach the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
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
    #   @return [String]
    #
    PutPermissionPolicyInput = ::Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutPermissionPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Inspect the query string of the web request. This is the part of a URL that appears after a <code>?</code> character, if any.</p>
    #            <p>This is used only in the <a>FieldToMatch</a> specification for some web request component types. </p>
    #          <p>JSON specification: <code>"QueryString": {}</code>
    #          </p>
    #
    QueryString = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. You can use this to put a temporary block on requests from an IP address that is sending excessive requests. </p>
    #          <p>WAF tracks and manages web requests separately for each instance of a rate-based rule that you use. For example, if you provide the same rate-based rule settings in two web ACLs, each of the two rule statements represents a separate instance of the rate-based rule and gets its own tracking and management by WAF. If you define a rate-based rule inside a rule group, and then use that rule group in multiple places, each use creates a separate instance of the rate-based rule that gets its own tracking and management by WAF. </p>
    #          <p>When the rule action triggers, WAF blocks additional requests from the IP address until the request rate falls below the limit.</p>
    #          <p>You can optionally nest another statement inside the rate-based statement, to narrow the scope of the rule so that it only counts requests that match the nested statement. For example, based on recent requests that you have seen from an attacker, you might create a rate-based rule with a nested AND rule statement that contains the following nested statements:</p>
    #          <ul>
    #             <li>
    #                <p>An IP match statement with an IP set that specified the address 192.0.2.44.</p>
    #             </li>
    #             <li>
    #                <p>A string match statement that searches in the User-Agent header for the string BadBot.</p>
    #             </li>
    #          </ul>
    #          <p>In this rate-based rule, you also define a rate limit. For this example, the rate limit is 1,000. Requests that meet both of the conditions in the statements are counted. If the count exceeds 1,000 requests per five minutes, the rule action triggers. Requests that do not meet both conditions are not counted towards the rate limit and are not affected by this rule.</p>
    #          <p>You cannot nest a <code>RateBasedStatement</code> inside another statement, for example inside a <code>NotStatement</code> or <code>OrStatement</code>. You can define a <code>RateBasedStatement</code> inside a web ACL and inside a rule group. </p>
    #
    # @!attribute limit
    #   <p>The limit on requests per 5-minute period for a single originating IP address. If the
    #            statement includes a <code>ScopeDownStatement</code>, this limit is applied only to the
    #            requests that match the statement.</p>
    #
    #   @return [Integer]
    #
    # @!attribute aggregate_key_type
    #   <p>Setting that indicates how to aggregate the request counts. The options are the
    #            following:</p>
    #            <ul>
    #               <li>
    #                  <p>IP - Aggregate the request counts on the IP address from the web request
    #                  origin.</p>
    #               </li>
    #               <li>
    #                  <p>FORWARDED_IP - Aggregate the request counts on the first IP address in an
    #                  HTTP header. If you use this, configure the <code>ForwardedIPConfig</code>, to
    #                  specify the header to use. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["IP", "FORWARDED_IP"]
    #
    #   @return [String]
    #
    # @!attribute scope_down_statement
    #   <p>An optional nested statement that narrows the scope of the web requests that are
    #            evaluated by the rate-based statement. Requests are only tracked by the rate-based
    #            statement if they match the scope-down statement. You can use any nestable <a>Statement</a> in the scope-down statement, and you can nest statements at any
    #            level, the same as you can for a rule statement. </p>
    #
    #   @return [Statement]
    #
    # @!attribute forwarded_ip_config
    #   <p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    #
    #            <note>
    #               <p>If the specified header isn't present in the request, WAF doesn't apply the rule to the web request at all.</p>
    #            </note>
    #
    #
    #            <p>This is required if <code>AggregateKeyType</code> is set to
    #            <code>FORWARDED_IP</code>.</p>
    #
    #   @return [ForwardedIPConfig]
    #
    RateBasedStatement = ::Struct.new(
      :limit,
      :aggregate_key_type,
      :scope_down_statement,
      :forwarded_ip_config,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # Includes enum constants for RateBasedStatementAggregateKeyType
    #
    module RateBasedStatementAggregateKeyType
      # No documentation available.
      #
      IP = "IP"

      # No documentation available.
      #
      FORWARDED_IP = "FORWARDED_IP"
    end

    # <p>The set of IP addresses that are currently blocked for a <a>RateBasedStatement</a>.</p>
    #
    # @!attribute ip_address_version
    #   <p>The version of the IP addresses, either <code>IPV4</code> or <code>IPV6</code>. </p>
    #
    #   Enum, one of: ["IPV4", "IPV6"]
    #
    #   @return [String]
    #
    # @!attribute addresses
    #   <p>The IP addresses that are currently blocked.</p>
    #
    #   @return [Array<String>]
    #
    RateBasedStatementManagedKeysIPSet = ::Struct.new(
      :ip_address_version,
      :addresses,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A single regular expression. This is used in a <a>RegexPatternSet</a>.</p>
    #
    # @!attribute regex_string
    #   <p>The string representing the regular expression.</p>
    #
    #   @return [String]
    #
    Regex = ::Struct.new(
      :regex_string,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rule statement used to search web request components for a match against a single regular expression. </p>
    #
    # @!attribute regex_string
    #   <p>The string representing the regular expression.</p>
    #
    #   @return [String]
    #
    # @!attribute field_to_match
    #   <p>The part of the web request that you want WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>
    #
    #   @return [FieldToMatch]
    #
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
    #            If you specify one or more transformations in a rule statement, WAF performs all transformations on the
    #            content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>
    #
    #   @return [Array<TextTransformation>]
    #
    RegexMatchStatement = ::Struct.new(
      :regex_string,
      :field_to_match,
      :text_transformations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains one or more regular expressions. </p>
    #          <p>WAF assigns an ARN to each <code>RegexPatternSet</code> that you create. To use a
    #          set in a rule, you provide the ARN to the <a>Rule</a> statement <a>RegexPatternSetReferenceStatement</a>. </p>
    #
    # @!attribute name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the set that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute regular_expression_list
    #   <p>The regular expression patterns in the set.</p>
    #
    #   @return [Array<Regex>]
    #
    RegexPatternSet = ::Struct.new(
      :name,
      :id,
      :arn,
      :description,
      :regular_expression_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rule statement used to search web request components for matches with regular expressions. To use this, create a <a>RegexPatternSet</a> that specifies the expressions that you want to detect, then use the ARN of that set in this statement. A web request matches the pattern set rule statement if the request component matches any of the patterns in the set. To create a regex pattern set, see <a>CreateRegexPatternSet</a>.</p>
    #          <p>Each regex pattern set rule statement references a regex pattern set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, WAF automatically updates all rules that reference it.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <a>RegexPatternSet</a> that this
    #            statement references.</p>
    #
    #   @return [String]
    #
    # @!attribute field_to_match
    #   <p>The part of the web request that you want WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>
    #
    #   @return [FieldToMatch]
    #
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
    #            If you specify one or more transformations in a rule statement, WAF performs all transformations on the
    #            content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>
    #
    #   @return [Array<TextTransformation>]
    #
    RegexPatternSetReferenceStatement = ::Struct.new(
      :arn,
      :field_to_match,
      :text_transformations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>High-level information about a <a>RegexPatternSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RegexPatternSet</code>, and the ARN, that you provide to the <a>RegexPatternSetReferenceStatement</a> to use the pattern set in a <a>Rule</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the data type instance. You cannot change the name after you create the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the set that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #
    #   @return [String]
    #
    RegexPatternSetSummary = ::Struct.new(
      :name,
      :id,
      :description,
      :lock_token,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>High level information for an SDK release. </p>
    #
    # @!attribute release_version
    #   <p>The release version. </p>
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   <p>The timestamp of the release. </p>
    #
    #   @return [Time]
    #
    ReleaseSummary = ::Struct.new(
      :release_version,
      :timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      APPLICATION_LOAD_BALANCER = "APPLICATION_LOAD_BALANCER"

      # No documentation available.
      #
      API_GATEWAY = "API_GATEWAY"

      # No documentation available.
      #
      APPSYNC = "APPSYNC"
    end

    # Includes enum constants for ResponseContentType
    #
    module ResponseContentType
      # No documentation available.
      #
      TEXT_PLAIN = "TEXT_PLAIN"

      # No documentation available.
      #
      TEXT_HTML = "TEXT_HTML"

      # No documentation available.
      #
      APPLICATION_JSON = "APPLICATION_JSON"
    end

    # <p>A single rule, which you can use in a <a>WebACL</a> or <a>RuleGroup</a> to identify web requests that you want to allow, block, or count.
    #          Each rule includes one top-level <a>Statement</a> that WAF uses to
    #          identify matching web requests, and parameters that govern how WAF handles them. </p>
    #
    # @!attribute name
    #   <p>The name of the rule. You can't change the name of a <code>Rule</code> after you create
    #            it. </p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>If you define more than one <code>Rule</code> in a <code>WebACL</code>, WAF
    #            evaluates each request against the <code>Rules</code> in order based on the value of
    #               <code>Priority</code>. WAF processes rules with lower priority first. The priorities
    #            don't need to be consecutive, but they must all be different.</p>
    #
    #   @return [Integer]
    #
    # @!attribute statement
    #   <p>The WAF processing statement for the rule, for example <a>ByteMatchStatement</a> or <a>SizeConstraintStatement</a>. </p>
    #
    #   @return [Statement]
    #
    # @!attribute action
    #   <p>The action that WAF should take on a web request when it matches the rule statement. Settings at the web ACL level can override the rule action setting. </p>
    #           <p>This is used only for rules whose statements do not reference a rule group. Rule statements that reference a rule group include <code>RuleGroupReferenceStatement</code> and <code>ManagedRuleGroupStatement</code>. </p>
    #            <p>You must specify either this <code>Action</code> setting or the rule <code>OverrideAction</code> setting, but not both:</p>
    #            <ul>
    #               <li>
    #                  <p>If the rule statement does not reference a rule group, use this rule action setting and not the rule override action setting. </p>
    #               </li>
    #               <li>
    #                  <p>If the rule statement references a rule group, use the override action setting and not this action setting.  </p>
    #               </li>
    #            </ul>
    #
    #   @return [RuleAction]
    #
    # @!attribute override_action
    #   <p>The action to use in the place of the action that results from the rule group evaluation. Set the override action to none to leave the result of the rule group alone. Set it to count to override the result to count only. </p>
    #            <p>You can only use this for rule statements that reference a rule group, like <code>RuleGroupReferenceStatement</code> and <code>ManagedRuleGroupStatement</code>. </p>
    #            <note>
    #               <p>This option is usually set to none. It does not affect how the rules in the rule group are evaluated. If you want the rules in the rule group to only count
    #     matches, do not use this and instead exclude those rules in your rule group reference statement settings. </p>
    #            </note>
    #
    #   @return [OverrideAction]
    #
    # @!attribute rule_labels
    #   <p>Labels to apply to web requests that match the rule match statement. WAF applies
    #            fully qualified labels to matching web requests. A fully qualified label is the
    #            concatenation of a label namespace and a rule label. The rule's rule group or web ACL
    #            defines the label namespace. </p>
    #            <p>Rules that run after this rule in the web ACL can match against these labels using a
    #               <code>LabelMatchStatement</code>.</p>
    #            <p>For each label, provide a case-sensitive string containing optional namespaces and a
    #            label name, according to the following guidelines:</p>
    #            <ul>
    #               <li>
    #                  <p>Separate each component of the label with a colon. </p>
    #               </li>
    #               <li>
    #                  <p>Each namespace or name can have up to 128 characters.</p>
    #               </li>
    #               <li>
    #                  <p>You can specify up to 5 namespaces in a label.</p>
    #               </li>
    #               <li>
    #                  <p>Don't use the following reserved words in your label specification:
    #                     <code>aws</code>, <code>waf</code>, <code>managed</code>, <code>rulegroup</code>,
    #                     <code>webacl</code>, <code>regexpatternset</code>, or <code>ipset</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For example, <code>myLabelName</code> or <code>nameSpace1:nameSpace2:myLabelName</code>.
    #         </p>
    #
    #   @return [Array<Label>]
    #
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #
    #   @return [VisibilityConfig]
    #
    # @!attribute captcha_config
    #   <p>Specifies how WAF should handle <code>CAPTCHA</code> evaluations. If you don't specify this, WAF uses the <code>CAPTCHA</code> configuration that's defined for the web ACL. </p>
    #
    #   @return [CaptchaConfig]
    #
    Rule = ::Struct.new(
      :name,
      :priority,
      :statement,
      :action,
      :override_action,
      :rule_labels,
      :visibility_config,
      :captcha_config,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # <p>The action that WAF should take on a web request when it matches a rule's
    #          statement. Settings at the web ACL level can override the rule action setting. </p>
    #
    # @!attribute block
    #   <p>Instructs WAF to block the web request.</p>
    #
    #   @return [BlockAction]
    #
    # @!attribute allow
    #   <p>Instructs WAF to allow the web request.</p>
    #
    #   @return [AllowAction]
    #
    # @!attribute count
    #   <p>Instructs WAF to count the web request and allow it.</p>
    #
    #   @return [CountAction]
    #
    # @!attribute captcha
    #   <p>Instructs WAF to run a <code>CAPTCHA</code> check against the web request.</p>
    #
    #   @return [CaptchaAction]
    #
    RuleAction = ::Struct.new(
      :block,
      :allow,
      :count,
      :captcha,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A rule group defines a collection of rules to inspect and control web requests that you can use in a <a>WebACL</a>. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. </p>
    #
    # @!attribute name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute capacity
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
    #   @return [Integer]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the rule group that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to allow, block, or count. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #
    #   @return [Array<Rule>]
    #
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #
    #   @return [VisibilityConfig]
    #
    # @!attribute label_namespace
    #   <p>The label namespace prefix for this rule group. All labels added by rules in this rule group have this prefix. </p>
    #            <ul>
    #               <li>
    #                  <p>The syntax for the label namespace prefix for your rule groups is the following: </p>
    #                  <p>
    #                     <code>awswaf:<account ID>:rulegroup:<rule group name>:</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>When a rule with a label matches a web request, WAF adds the fully qualified label to the request. A fully qualified label is made up of the label namespace from the rule group or web ACL where the rule is defined and the label from the rule, separated by a colon: </p>
    #                  <p>
    #                     <code><label namespace>:<label from rule></code>
    #                  </p>
    #
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the rule group, and then use them in the rules that you define in the rule group. </p>
    #            <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    #   @return [Hash<String, CustomResponseBody>]
    #
    # @!attribute available_labels
    #   <p>The labels that one or more rules in this rule group add to matching web requests. These labels are defined in the <code>RuleLabels</code> for a <a>Rule</a>.</p>
    #
    #   @return [Array<LabelSummary>]
    #
    # @!attribute consumed_labels
    #   <p>The labels that one or more rules in this rule group match against in label match statements. These labels are defined in a <code>LabelMatchStatement</code> specification, in the <a>Statement</a> definition of a rule.  </p>
    #
    #   @return [Array<LabelSummary>]
    #
    RuleGroup = ::Struct.new(
      :name,
      :id,
      :capacity,
      :arn,
      :description,
      :rules,
      :visibility_config,
      :label_namespace,
      :custom_response_bodies,
      :available_labels,
      :consumed_labels,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.capacity ||= 0
      end
    end

    # <p>A rule statement used to run the rules that are defined in a <a>RuleGroup</a>. To use this, create a rule group with your rules, then provide the ARN of the rule group in this statement.</p>
    #          <p>You cannot nest a <code>RuleGroupReferenceStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. You
    #       can only use a rule group reference statement at the top level inside a web ACL. </p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute excluded_rules
    #   <p>The rules in the referenced rule group whose actions are set to <code>Count</code>.
    #          When you exclude a rule, WAF evaluates it exactly as it would if the rule action setting were <code>Count</code>.
    #          This is a useful option for testing the rules in a rule group without modifying how they handle your web traffic.</p>
    #
    #   @return [Array<ExcludedRule>]
    #
    RuleGroupReferenceStatement = ::Struct.new(
      :arn,
      :excluded_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>High-level information about a <a>RuleGroup</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RuleGroup</code>, and the ARN, that you provide to the <a>RuleGroupReferenceStatement</a> to use the rule group in a <a>Rule</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the data type instance. You cannot change the name after you create the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the rule group that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #
    #   @return [String]
    #
    RuleGroupSummary = ::Struct.new(
      :name,
      :id,
      :description,
      :lock_token,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>High-level information about a <a>Rule</a>, returned by operations like <a>DescribeManagedRuleGroup</a>. This provides information like the ID, that you can use to retrieve and manage a <code>RuleGroup</code>, and the ARN, that you provide to the <a>RuleGroupReferenceStatement</a> to use the rule group in a <a>Rule</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the rule. </p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The action that WAF should take on a web request when it matches a rule's
    #            statement. Settings at the web ACL level can override the rule action setting. </p>
    #
    #   @return [RuleAction]
    #
    RuleSummary = ::Struct.new(
      :name,
      :action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a single sampled web request. The response from <a>GetSampledRequests</a> includes a <code>SampledHTTPRequests</code> complex type
    #          that appears as <code>SampledRequests</code> in the response syntax.
    #             <code>SampledHTTPRequests</code> contains an array of <code>SampledHTTPRequest</code>
    #          objects.</p>
    #
    # @!attribute request
    #   <p>A complex type that contains detailed information about the request.</p>
    #
    #   @return [HTTPRequest]
    #
    # @!attribute weight
    #   <p>A value that indicates how one result in the response relates proportionally to other
    #            results in the response. For example, a result that has a weight of <code>2</code>
    #            represents roughly twice as many web requests as a result that has a weight of
    #               <code>1</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timestamp
    #   <p>The time at which WAF received the request from your Amazon Web Services resource, in Unix time
    #            format (in seconds).</p>
    #
    #   @return [Time]
    #
    # @!attribute action
    #   <p>The action for the <code>Rule</code> that the request matched: <code>Allow</code>,
    #               <code>Block</code>, or <code>Count</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_name_within_rule_group
    #   <p>The name of the <code>Rule</code> that the request matched. For managed rule groups, the
    #            format for this name is <code><vendor name> <managed rule group name> <rule
    #               name></code>. For your own rule groups, the format for this name is <code><rule
    #               group name> <rule name></code>. If the rule is not in a rule group, this field
    #            is absent. </p>
    #
    #   @return [String]
    #
    # @!attribute request_headers_inserted
    #   <p>Custom request headers inserted by WAF into the request, according to the custom
    #            request configuration for the matching rule action.</p>
    #
    #   @return [Array<HTTPHeader>]
    #
    # @!attribute response_code_sent
    #   <p>The response code that was sent for the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute labels
    #   <p>Labels applied to the web request by matching rules. WAF applies fully qualified
    #            labels to matching web requests. A fully qualified label is the concatenation of a label
    #            namespace and a rule label. The rule's rule group or web ACL defines the label namespace. </p>
    #            <p>For example,
    #               <code>awswaf:111122223333:myRuleGroup:testRules:testNS1:testNS2:labelNameA</code> or
    #               <code>awswaf:managed:aws:managed-rule-set:header:encoding:utf8</code>. </p>
    #
    #   @return [Array<Label>]
    #
    # @!attribute captcha_response
    #   <p>The <code>CAPTCHA</code> response for the request.</p>
    #
    #   @return [CaptchaResponse]
    #
    SampledHTTPRequest = ::Struct.new(
      :request,
      :weight,
      :timestamp,
      :action,
      :rule_name_within_rule_group,
      :request_headers_inserted,
      :response_code_sent,
      :labels,
      :captcha_response,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.weight ||= 0
      end
    end

    # Includes enum constants for Scope
    #
    module Scope
      # No documentation available.
      #
      CLOUDFRONT = "CLOUDFRONT"

      # No documentation available.
      #
      REGIONAL = "REGIONAL"
    end

    # <p>Inspect one of the headers in the web request, identified by name, for example,
    #             <code>User-Agent</code> or <code>Referer</code>. The name isn't case sensitive.</p>
    #          <p>You can filter and inspect all headers with the <code>FieldToMatch</code> setting <code>Headers</code>.</p>
    #          <p>This is used to indicate the web request component for WAF to inspect, in the <a>FieldToMatch</a> specification. </p>
    #          <p>Example JSON: <code>"SingleHeader": { "Name": "haystack" }</code>
    #          </p>
    #
    # @!attribute name
    #   <p>The name of the query header to inspect.</p>
    #
    #   @return [String]
    #
    SingleHeader = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Inspect one query argument in the web request, identified by name, for example
    #             <i>UserName</i> or <i>SalesRegion</i>. The name isn't case sensitive. </p>
    #           <p>This is used to indicate the web request component for WAF to inspect, in the <a>FieldToMatch</a> specification. </p>
    #          <p>Example JSON: <code>"SingleQueryArgument": { "Name": "myArgument" }</code>
    #          </p>
    #
    # @!attribute name
    #   <p>The name of the query argument to inspect.</p>
    #
    #   @return [String]
    #
    SingleQueryArgument = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). For example, you can use a size constraint statement to look for query strings that are longer than 100 bytes. </p>
    #          <p>If you configure WAF to inspect the request body, WAF inspects only the first 8192 bytes (8 KB). If the request body for your web requests never exceeds 8192 bytes, you can create a size constraint condition and block requests that have a request body greater than 8192 bytes.</p>
    #          <p>If you choose URI for the value of Part of the request to filter on, the slash (/) in the URI counts as one character. For example, the URI <code>/logo.jpg</code> is nine characters long.</p>
    #
    # @!attribute field_to_match
    #   <p>The part of the web request that you want WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>
    #
    #   @return [FieldToMatch]
    #
    # @!attribute comparison_operator
    #   <p>The operator to use to compare the request part to the size setting. </p>
    #
    #   Enum, one of: ["EQ", "NE", "LE", "LT", "GE", "GT"]
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>The size, in byte, to compare to the request part, after any transformations.</p>
    #
    #   @return [Integer]
    #
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
    #            If you specify one or more transformations in a rule statement, WAF performs all transformations on the
    #            content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>
    #
    #   @return [Array<TextTransformation>]
    #
    SizeConstraintStatement = ::Struct.new(
      :field_to_match,
      :comparison_operator,
      :size,
      :text_transformations,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size ||= 0
      end
    end

    # <p>Attackers sometimes insert malicious SQL code into web requests in an effort to extract data from your database. To allow or block web requests that appear to contain malicious SQL code, create one or more SQL injection match conditions. An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want WAF to inspect. Later in the process, when you create a web ACL, you specify whether to allow or block requests that appear to contain malicious SQL code.</p>
    #
    # @!attribute field_to_match
    #   <p>The part of the web request that you want WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>
    #
    #   @return [FieldToMatch]
    #
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
    #            If you specify one or more transformations in a rule statement, WAF performs all transformations on the
    #            content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>
    #
    #   @return [Array<TextTransformation>]
    #
    SqliMatchStatement = ::Struct.new(
      :field_to_match,
      :text_transformations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The processing guidance for a <a>Rule</a>, used by WAF to determine whether a web request matches the rule. </p>
    #
    # @!attribute byte_match_statement
    #   <p>A rule statement that defines a string match search for WAF to apply to web requests. The byte match statement provides the bytes to search for, the location in requests that you want WAF to search, and other settings. The bytes to search for are typically a string that corresponds with ASCII characters. In the WAF console and the developer guide, this is refered to as a string match statement.</p>
    #
    #   @return [ByteMatchStatement]
    #
    # @!attribute sqli_match_statement
    #   <p>Attackers sometimes insert malicious SQL code into web requests in an effort to extract data from your database. To allow or block web requests that appear to contain malicious SQL code, create one or more SQL injection match conditions. An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want WAF to inspect. Later in the process, when you create a web ACL, you specify whether to allow or block requests that appear to contain malicious SQL code.</p>
    #
    #   @return [SqliMatchStatement]
    #
    # @!attribute xss_match_statement
    #   <p>A rule statement that defines a cross-site scripting (XSS) match search for WAF to apply to web requests.
    #            XSS attacks are those where the attacker uses vulnerabilities in a benign website as a vehicle to inject malicious
    #            client-site scripts into other legitimate web browsers.
    #            The XSS match statement provides the location in requests that you want WAF to search and text transformations
    #            to use on the search area before WAF searches for character sequences that are likely to be malicious strings. </p>
    #
    #   @return [XssMatchStatement]
    #
    # @!attribute size_constraint_statement
    #   <p>A rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). For example, you can use a size constraint statement to look for query strings that are longer than 100 bytes. </p>
    #            <p>If you configure WAF to inspect the request body, WAF inspects only the first 8192 bytes (8 KB). If the request body for your web requests never exceeds 8192 bytes, you can create a size constraint condition and block requests that have a request body greater than 8192 bytes.</p>
    #            <p>If you choose URI for the value of Part of the request to filter on, the slash (/) in the URI counts as one character. For example, the URI <code>/logo.jpg</code> is nine characters long.</p>
    #
    #   @return [SizeConstraintStatement]
    #
    # @!attribute geo_match_statement
    #   <p>A rule statement used to identify web requests based on country of origin.  </p>
    #
    #   @return [GeoMatchStatement]
    #
    # @!attribute rule_group_reference_statement
    #   <p>A rule statement used to run the rules that are defined in a <a>RuleGroup</a>. To use this, create a rule group with your rules, then provide the ARN of the rule group in this statement.</p>
    #            <p>You cannot nest a <code>RuleGroupReferenceStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. You
    #         can only use a rule group reference statement at the top level inside a web ACL. </p>
    #
    #   @return [RuleGroupReferenceStatement]
    #
    # @!attribute ip_set_reference_statement
    #   <p>A rule statement used to detect web requests coming from particular IP addresses or address ranges. To use this, create an <a>IPSet</a> that specifies the addresses you want to detect, then use the ARN of that set in this statement. To create an IP set, see <a>CreateIPSet</a>.</p>
    #            <p>Each IP set rule statement references an IP set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, WAF automatically updates all rules that reference it.</p>
    #
    #   @return [IPSetReferenceStatement]
    #
    # @!attribute regex_pattern_set_reference_statement
    #   <p>A rule statement used to search web request components for matches with regular expressions. To use this, create a <a>RegexPatternSet</a> that specifies the expressions that you want to detect, then use the ARN of that set in this statement. A web request matches the pattern set rule statement if the request component matches any of the patterns in the set. To create a regex pattern set, see <a>CreateRegexPatternSet</a>.</p>
    #            <p>Each regex pattern set rule statement references a regex pattern set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, WAF automatically updates all rules that reference it.</p>
    #
    #   @return [RegexPatternSetReferenceStatement]
    #
    # @!attribute rate_based_statement
    #   <p>A rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. You can use this to put a temporary block on requests from an IP address that is sending excessive requests. </p>
    #            <p>WAF tracks and manages web requests separately for each instance of a rate-based rule that you use. For example, if you provide the same rate-based rule settings in two web ACLs, each of the two rule statements represents a separate instance of the rate-based rule and gets its own tracking and management by WAF. If you define a rate-based rule inside a rule group, and then use that rule group in multiple places, each use creates a separate instance of the rate-based rule that gets its own tracking and management by WAF. </p>
    #            <p>When the rule action triggers, WAF blocks additional requests from the IP address until the request rate falls below the limit.</p>
    #            <p>You can optionally nest another statement inside the rate-based statement, to narrow the scope of the rule so that it only counts requests that match the nested statement. For example, based on recent requests that you have seen from an attacker, you might create a rate-based rule with a nested AND rule statement that contains the following nested statements:</p>
    #            <ul>
    #               <li>
    #                  <p>An IP match statement with an IP set that specified the address 192.0.2.44.</p>
    #               </li>
    #               <li>
    #                  <p>A string match statement that searches in the User-Agent header for the string BadBot.</p>
    #               </li>
    #            </ul>
    #            <p>In this rate-based rule, you also define a rate limit. For this example, the rate limit is 1,000. Requests that meet both of the conditions in the statements are counted. If the count exceeds 1,000 requests per five minutes, the rule action triggers. Requests that do not meet both conditions are not counted towards the rate limit and are not affected by this rule.</p>
    #            <p>You cannot nest a <code>RateBasedStatement</code> inside another statement, for example inside a <code>NotStatement</code> or <code>OrStatement</code>. You can define a <code>RateBasedStatement</code> inside a web ACL and inside a rule group. </p>
    #
    #   @return [RateBasedStatement]
    #
    # @!attribute and_statement
    #   <p>A logical rule statement used to combine other rule statements with AND logic. You provide more than one <a>Statement</a> within the <code>AndStatement</code>. </p>
    #
    #   @return [AndStatement]
    #
    # @!attribute or_statement
    #   <p>A logical rule statement used to combine other rule statements with OR logic. You provide more than one <a>Statement</a> within the <code>OrStatement</code>. </p>
    #
    #   @return [OrStatement]
    #
    # @!attribute not_statement
    #   <p>A logical rule statement used to negate the results of another rule statement. You provide one <a>Statement</a> within the <code>NotStatement</code>.</p>
    #
    #   @return [NotStatement]
    #
    # @!attribute managed_rule_group_statement
    #   <p>A rule statement used to run the rules that are defined in a managed rule group. To use this, provide the vendor name and the name of the rule group in this statement. You can retrieve the required names by calling <a>ListAvailableManagedRuleGroups</a>.</p>
    #            <p>You cannot nest a <code>ManagedRuleGroupStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. It can only be referenced as a top-level statement within a rule.</p>
    #
    #   @return [ManagedRuleGroupStatement]
    #
    # @!attribute label_match_statement
    #   <p>A rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. </p>
    #            <p>The label match statement provides the label or namespace string to search for. The label string can represent a part or all of the fully qualified label name that had been added to the web request. Fully qualified labels have a prefix, optional namespaces, and label name. The prefix identifies the rule group or web ACL context of the rule that added the label.  If you do not provide the fully qualified name in your label match string, WAF performs the search for labels that were added in the same context as the label match statement. </p>
    #
    #   @return [LabelMatchStatement]
    #
    # @!attribute regex_match_statement
    #   <p>A rule statement used to search web request components for a match against a single regular expression. </p>
    #
    #   @return [RegexMatchStatement]
    #
    Statement = ::Struct.new(
      :byte_match_statement,
      :sqli_match_statement,
      :xss_match_statement,
      :size_constraint_statement,
      :geo_match_statement,
      :rule_group_reference_statement,
      :ip_set_reference_statement,
      :regex_pattern_set_reference_statement,
      :rate_based_statement,
      :and_statement,
      :or_statement,
      :not_statement,
      :managed_rule_group_statement,
      :label_match_statement,
      :regex_match_statement,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag associated with an Amazon Web Services resource. Tags are key:value pairs that you can use to
    #          categorize and manage your resources, for purposes like billing or other management.
    #          Typically, the tag key represents a category, such as "environment", and the tag value
    #          represents a specific value within that category, such as "test," "development," or
    #          "production". Or you might set the tag key to "customer" and the value to the customer name
    #          or ID. You can specify one or more tags to add to each Amazon Web Services resource, up to 50 tags for a
    #          resource.</p>
    #          <p>You can tag the Amazon Web Services resources that you manage through WAF: web ACLs, rule
    #          groups, IP sets, and regex pattern sets. You can't manage or view tags through the WAF
    #          console. </p>
    #
    # @!attribute key
    #   <p>Part of the key:value pair that defines a tag. You can use a tag key to describe a
    #            category of information, such as "customer." Tag keys are case-sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Part of the key:value pair that defines a tag. You can use a tag value to describe a
    #            specific value within a category, such as "companyA" or "companyB." Tag values are
    #            case-sensitive.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The collection of tagging definitions for an Amazon Web Services resource. Tags are key:value pairs
    #          that you can use to categorize and manage your resources, for purposes like billing or
    #          other management. Typically, the tag key represents a category, such as "environment", and
    #          the tag value represents a specific value within that category, such as "test,"
    #          "development," or "production". Or you might set the tag key to "customer" and the value to
    #          the customer name or ID. You can specify one or more tags to add to each Amazon Web Services resource, up
    #          to 50 tags for a resource.</p>
    #          <p>You can tag the Amazon Web Services resources that you manage through WAF: web ACLs, rule
    #          groups, IP sets, and regex pattern sets. You can't manage or view tags through the WAF
    #          console. </p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_list
    #   <p>The array of <a>Tag</a> objects defined for the resource. </p>
    #
    #   @return [Array<Tag>]
    #
    TagInfoForResource = ::Struct.new(
      :resource_arn,
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of key:value pairs to associate with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Text transformations eliminate some of the unusual formatting that attackers use in web
    #          requests in an effort to bypass detection. </p>
    #
    # @!attribute priority
    #   <p>Sets the relative processing order for multiple transformations that are defined for a
    #            rule statement. WAF processes all transformations, from lowest priority to highest,
    #            before inspecting the transformed content. The priorities don't need to be consecutive, but
    #            they must all be different. </p>
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   <p>You can specify the following transformation types:</p>
    #            <p>
    #               <b>BASE64_DECODE</b> - Decode a <code>Base64</code>-encoded
    #            string.</p>
    #            <p>
    #               <b>BASE64_DECODE_EXT</b> - Decode a
    #            <code>Base64</code>-encoded string, but use a forgiving implementation that ignores
    #            characters that aren't valid.</p>
    #            <p>
    #               <b>CMD_LINE</b> - Command-line transformations. These are
    #            helpful in reducing effectiveness of attackers who inject an operating system command-line
    #            command and use unusual formatting to disguise some or all of the command. </p>
    #            <ul>
    #               <li>
    #                  <p>Delete the following characters: <code>\ " ' ^</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Delete spaces before the following characters: <code>/ (</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Replace the following characters with a space: <code>, ;</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Replace multiple spaces with one space</p>
    #               </li>
    #               <li>
    #                  <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p>
    #               </li>
    #            </ul>
    #
    #            <p>
    #               <b>COMPRESS_WHITE_SPACE</b> - Replace these characters
    #            with a space character (decimal 32): </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>\f</code>, formfeed, decimal 12</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>\t</code>, tab, decimal 9</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>\n</code>, newline, decimal 10</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>\r</code>, carriage return, decimal 13</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>\v</code>, vertical tab, decimal 11</p>
    #               </li>
    #               <li>
    #                  <p>Non-breaking space, decimal 160</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p>		
    #            <p>
    #               <b>CSS_DECODE</b> - Decode characters that were encoded
    #            using CSS 2.x escape rules <code>syndata.html characters</code>. This function uses up to two bytes in
    #            the decoding process, so it can help to uncover ASCII characters that were encoded using
    #            CSS encoding that wouldn’t typically be encoded. It's also useful in countering evasion,
    #            which is a combination of a backslash and non-hexadecimal characters. For example,
    #            <code>ja\vascript</code> for javascript. </p>
    #            <p>
    #               <b>ESCAPE_SEQ_DECODE</b> - Decode the following ANSI C escape sequences:
    #            <code>\a</code>, <code>\b</code>, <code>\f</code>, <code>\n</code>, <code>\r</code>, <code>\t</code>, <code>\v</code>, <code>\\</code>, <code>\?</code>, <code>\'</code>, <code>\"</code>, <code>\xHH</code> (hexadecimal), <code>\0OOO</code> (octal). Encodings
    #            that aren't valid remain in the output. </p>
    #            <p>
    #               <b>HEX_DECODE</b> - Decode a string of hexadecimal characters into a binary.</p>
    #            <p>
    #               <b>HTML_ENTITY_DECODE</b> - Replace HTML-encoded
    #            characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs these
    #            operations: </p>
    #            <ul>
    #               <li>
    #                  <p>Replaces <code>(ampersand)quot;</code> with <code>"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p>
    #               </li>
    #               <li>
    #                  <p>Replaces <code>(ampersand)lt;</code> with a "less than" symbol</p>
    #               </li>
    #               <li>
    #                  <p>Replaces <code>(ampersand)gt;</code> with <code>></code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand) xhhhh;</code>, with the corresponding characters</p>
    #               </li>
    #               <li>
    #                  <p>Replaces characters that are represented in decimal format, <code>(ampersand) nnnn;</code>, with the corresponding
    #                  characters</p>
    #               </li>
    #            </ul>		
    #            <p>
    #               <b>JS_DECODE</b> - Decode JavaScript escape sequences. If
    #            a <code>\</code>
    #               <code>u</code>
    #               <code>HHHH</code> code is in the full-width ASCII code range of <code>FF01-FF5E</code>, then the higher byte is
    #            used to detect and adjust the lower byte. If not, only the lower byte is used and the
    #            higher byte is zeroed, causing a possible loss of information. </p>
    #            <p>
    #               <b>LOWERCASE</b> - Convert uppercase letters (A-Z) to
    #            lowercase (a-z). </p>
    #            <p>
    #               <b>MD5</b> - Calculate an MD5 hash from the data in the
    #            input. The computed hash is in a raw binary form. </p>
    #            <p>
    #               <b>NONE</b> - Specify <code>NONE</code> if you don't want any text transformations.
    #         </p>
    #            <p>
    #               <b>NORMALIZE_PATH</b> - Remove multiple slashes, directory
    #            self-references, and directory back-references that are not at the beginning of the input
    #            from an input string. </p>
    #            <p>
    #               <b>NORMALIZE_PATH_WIN</b> - This is the same as
    #            <code>NORMALIZE_PATH</code>, but first converts backslash characters to forward slashes. </p>
    #            <p>
    #               <b>REMOVE_NULLS</b> - Remove all <code>NULL</code> bytes
    #            from the input. </p>
    #            <p>
    #               <b>REPLACE_COMMENTS</b> - Replace each occurrence of a
    #            C-style comment (<code>/* ... */</code>) with a single space. Multiple consecutive occurrences are not
    #            compressed. Unterminated comments are also replaced with a space (ASCII 0x20). However, a
    #            standalone termination of a comment (<code>*/</code>) is not acted upon. </p>
    #            <p>
    #               <b>REPLACE_NULLS</b> - Replace NULL bytes in the input
    #            with space characters (ASCII <code>0x20</code>). </p>
    #            <p>
    #               <b>SQL_HEX_DECODE</b> - Decode SQL hex data. Example (<code>0x414243</code>) will be decoded to (<code>ABC</code>).</p>
    #            <p>
    #               <b>URL_DECODE</b> - Decode a URL-encoded value. </p>
    #            <p>
    #               <b>URL_DECODE_UNI</b> - Like <code>URL_DECODE</code>, but with support
    #            for Microsoft-specific <code>%u</code> encoding. If the code is in the full-width ASCII code range of
    #            <code>FF01-FF5E</code>, the higher byte is used to detect and adjust the lower byte. Otherwise, only the
    #            lower byte is used and the higher byte is zeroed. </p>
    #            <p>
    #               <b>UTF8_TO_UNICODE</b> - Convert all UTF-8 character
    #            sequences to Unicode. This helps input normalization, and minimizing false-positives and
    #            false-negatives for non-English languages.</p>
    #
    #   Enum, one of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"]
    #
    #   @return [String]
    #
    TextTransformation = ::Struct.new(
      :priority,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # Includes enum constants for TextTransformationType
    #
    module TextTransformationType
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      COMPRESS_WHITE_SPACE = "COMPRESS_WHITE_SPACE"

      # No documentation available.
      #
      HTML_ENTITY_DECODE = "HTML_ENTITY_DECODE"

      # No documentation available.
      #
      LOWERCASE = "LOWERCASE"

      # No documentation available.
      #
      CMD_LINE = "CMD_LINE"

      # No documentation available.
      #
      URL_DECODE = "URL_DECODE"

      # No documentation available.
      #
      BASE64_DECODE = "BASE64_DECODE"

      # No documentation available.
      #
      HEX_DECODE = "HEX_DECODE"

      # No documentation available.
      #
      MD5 = "MD5"

      # No documentation available.
      #
      REPLACE_COMMENTS = "REPLACE_COMMENTS"

      # No documentation available.
      #
      ESCAPE_SEQ_DECODE = "ESCAPE_SEQ_DECODE"

      # No documentation available.
      #
      SQL_HEX_DECODE = "SQL_HEX_DECODE"

      # No documentation available.
      #
      CSS_DECODE = "CSS_DECODE"

      # No documentation available.
      #
      JS_DECODE = "JS_DECODE"

      # No documentation available.
      #
      NORMALIZE_PATH = "NORMALIZE_PATH"

      # No documentation available.
      #
      NORMALIZE_PATH_WIN = "NORMALIZE_PATH_WIN"

      # No documentation available.
      #
      REMOVE_NULLS = "REMOVE_NULLS"

      # No documentation available.
      #
      REPLACE_NULLS = "REPLACE_NULLS"

      # No documentation available.
      #
      BASE64_DECODE_EXT = "BASE64_DECODE_EXT"

      # No documentation available.
      #
      URL_DECODE_UNI = "URL_DECODE_UNI"

      # No documentation available.
      #
      UTF8_TO_UNICODE = "UTF8_TO_UNICODE"
    end

    # <p>In a <a>GetSampledRequests</a> request, the <code>StartTime</code> and
    #             <code>EndTime</code> objects specify the time range for which you want WAF to
    #          return a sample of web requests.</p>
    #          <p>You must specify the times in Coordinated Universal Time (UTC) format. UTC format
    #          includes the special designator, <code>Z</code>. For example,
    #             <code>"2016-09-27T14:50Z"</code>. You can specify any time range in the previous three
    #          hours.</p>
    #          <p>In a <a>GetSampledRequests</a> response, the <code>StartTime</code> and
    #             <code>EndTime</code> objects specify the time range for which WAF actually returned a
    #          sample of web requests. WAF gets the specified number of requests from among the first
    #          5,000 requests that your Amazon Web Services resource receives during the specified time period. If your
    #          resource receives more than 5,000 requests during that period, WAF stops sampling after
    #          the 5,000th request. In that case, <code>EndTime</code> is the time that WAF received the
    #          5,000th request.</p>
    #
    # @!attribute start_time
    #   <p>The beginning of the time range from which you want <code>GetSampledRequests</code> to
    #            return a sample of the requests that your Amazon Web Services resource received. You must specify the
    #            times in Coordinated Universal Time (UTC) format. UTC format includes the special
    #            designator, <code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>. You can specify
    #            any time range in the previous three hours.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end of the time range from which you want <code>GetSampledRequests</code> to return
    #            a sample of the requests that your Amazon Web Services resource received. You must specify the times in
    #            Coordinated Universal Time (UTC) format. UTC format includes the special designator,
    #               <code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>. You can specify any time
    #            range in the previous three hours.</p>
    #
    #   @return [Time]
    #
    TimeWindow = ::Struct.new(
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>An array of keys identifying the tags to disassociate from the resource.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the IP set that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute addresses
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
    #   @return [Array<String>]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    UpdateIPSetInput = ::Struct.new(
      :name,
      :scope,
      :id,
      :description,
      :addresses,
      :lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_lock_token
    #   <p>A token used for optimistic locking. WAF returns this token to your <code>update</code> requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>
    #
    #   @return [String]
    #
    UpdateIPSetOutput = ::Struct.new(
      :next_lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the managed rule set. You use this, along with the rule set ID, to identify the rule set.</p>
    #            <p>This name is assigned to the corresponding managed rule group, which your customers can access and use. </p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the managed rule set. The ID is returned in the responses to commands like <code>list</code>. You provide it to operations like <code>get</code> and <code>update</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    # @!attribute version_to_expire
    #   <p>The version that you want to remove from your list of offerings for the named managed
    #            rule group. </p>
    #
    #   @return [String]
    #
    # @!attribute expiry_timestamp
    #   <p>The time that you want the version to expire.</p>
    #            <p>Times are in Coordinated Universal Time (UTC) format. UTC format includes the special designator, Z. For example, "2016-09-27T14:50Z". </p>
    #
    #   @return [Time]
    #
    UpdateManagedRuleSetVersionExpiryDateInput = ::Struct.new(
      :name,
      :scope,
      :id,
      :lock_token,
      :version_to_expire,
      :expiry_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute expiring_version
    #   <p>The version that is set to expire. </p>
    #
    #   @return [String]
    #
    # @!attribute expiry_timestamp
    #   <p>The time that the version will expire. </p>
    #            <p>Times are in Coordinated Universal Time (UTC) format. UTC format includes the special designator, Z. For example, "2016-09-27T14:50Z". </p>
    #
    #   @return [Time]
    #
    # @!attribute next_lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    UpdateManagedRuleSetVersionExpiryDateOutput = ::Struct.new(
      :expiring_version,
      :expiry_timestamp,
      :next_lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the set. You cannot change the name after you create the set.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the set that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute regular_expression_list
    #   <p></p>
    #
    #   @return [Array<Regex>]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    UpdateRegexPatternSetInput = ::Struct.new(
      :name,
      :scope,
      :id,
      :description,
      :regular_expression_list,
      :lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_lock_token
    #   <p>A token used for optimistic locking. WAF returns this token to your <code>update</code> requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>
    #
    #   @return [String]
    #
    UpdateRegexPatternSetOutput = ::Struct.new(
      :next_lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the rule group that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to allow, block, or count. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #
    #   @return [Array<Rule>]
    #
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #
    #   @return [VisibilityConfig]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    # @!attribute custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the rule group, and then use them in the rules that you define in the rule group. </p>
    #            <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    #   @return [Hash<String, CustomResponseBody>]
    #
    UpdateRuleGroupInput = ::Struct.new(
      :name,
      :scope,
      :id,
      :description,
      :rules,
      :visibility_config,
      :lock_token,
      :custom_response_bodies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_lock_token
    #   <p>A token used for optimistic locking. WAF returns this token to your <code>update</code> requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>
    #
    #   @return [String]
    #
    UpdateRuleGroupOutput = ::Struct.new(
      :next_lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
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
    #   Enum, one of: ["CLOUDFRONT", "REGIONAL"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute default_action
    #   <p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>
    #
    #   @return [DefaultAction]
    #
    # @!attribute description
    #   <p>A description of the web ACL that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to allow, block, or count. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #
    #   @return [Array<Rule>]
    #
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #
    #   @return [VisibilityConfig]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    # @!attribute custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the web ACL, and then use them in the rules and default actions that you define in the web ACL. </p>
    #            <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    #   @return [Hash<String, CustomResponseBody>]
    #
    # @!attribute captcha_config
    #   <p>Specifies how WAF should handle <code>CAPTCHA</code> evaluations for rules that don't have their own <code>CaptchaConfig</code> settings. If you don't specify this, WAF uses its default settings for <code>CaptchaConfig</code>. </p>
    #
    #   @return [CaptchaConfig]
    #
    UpdateWebACLInput = ::Struct.new(
      :name,
      :scope,
      :id,
      :default_action,
      :description,
      :rules,
      :visibility_config,
      :lock_token,
      :custom_response_bodies,
      :captcha_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_lock_token
    #   <p>A token used for optimistic locking. WAF returns this token to your <code>update</code> requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>
    #
    #   @return [String]
    #
    UpdateWebACLOutput = ::Struct.new(
      :next_lock_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Inspect the path component of the URI of the web request. This is the part of the web request that identifies a resource. For example, <code>/images/daily-ad.jpg</code>.</p>
    #          <p>This is used only in the <a>FieldToMatch</a> specification for some web request component types. </p>
    #          <p>JSON specification: <code>"UriPath": {}</code>
    #          </p>
    #
    UriPath = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about your login page username field, used in a <code>ManagedRuleGroupConfig</code>. </p>
    #
    # @!attribute identifier
    #   <p>The name of the username field. For example <code>/form/username</code>.</p>
    #
    #   @return [String]
    #
    UsernameField = ::Struct.new(
      :identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A version of the named managed rule group, that the rule group's vendor publishes for
    #          use by customers. </p>
    #          <note>
    #             <p>This is intended for use only by vendors of managed rule sets. Vendors are Amazon Web Services and Amazon Web Services Marketplace sellers. </p>
    #             <p>Vendors, you can use the managed rule set APIs to provide controlled rollout of your versioned managed rule group offerings for your customers. The APIs are <code>ListManagedRuleSets</code>, <code>GetManagedRuleSet</code>, <code>PutManagedRuleSetVersions</code>, and <code>UpdateManagedRuleSetVersionExpiryDate</code>.</p>
    #          </note>
    #
    # @!attribute associated_rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the vendor's rule group that's used in the published
    #            managed rule group version. </p>
    #
    #   @return [String]
    #
    # @!attribute forecasted_lifetime
    #   <p>The amount of time the vendor expects this version of the managed rule group to last, in
    #            days. </p>
    #
    #   @return [Integer]
    #
    VersionToPublish = ::Struct.new(
      :associated_rule_group_arn,
      :forecasted_lifetime,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #
    # @!attribute sampled_requests_enabled
    #   <p>A boolean indicating whether WAF should store a sampling of the web requests that
    #            match the rules. You can view the sampled requests through the WAF console. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute cloud_watch_metrics_enabled
    #   <p>A boolean indicating whether the associated resource sends metrics to Amazon CloudWatch. For the
    #            list of available metrics, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html waf-metrics">WAF
    #               Metrics</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute metric_name
    #   <p>A name of the Amazon CloudWatch metric. The name can contain only the characters: A-Z, a-z, 0-9,
    #            - (hyphen), and _ (underscore). The name can be from one to 128 characters long. It can't
    #            contain whitespace or metric names reserved for WAF, for example "All" and
    #            "Default_Action." </p>
    #
    #   @return [String]
    #
    VisibilityConfig = ::Struct.new(
      :sampled_requests_enabled,
      :cloud_watch_metrics_enabled,
      :metric_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.sampled_requests_enabled ||= false
        self.cloud_watch_metrics_enabled ||= false
      end
    end

    # <p>WAF couldn’t perform the operation because your resource is being used by another resource or it’s associated with another resource. </p>
    #          <p>For <code>DeleteWebACL</code>, you will only get this exception if the web ACL is still associated with
    #           a regional resource. Deleting a web ACL that is still associated with an Amazon CloudFront distribution won't get this exception. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFAssociatedItemException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because you are inspecting the web request body, headers, or cookies without specifying how to handle oversize components.
    #        Rules that inspect the body must either provide an <code>OversizeHandling</code> configuration or they must
    #        be preceded by a <code>SizeConstraintStatement</code> that blocks the body content from being too large.
    #        Rules that inspect the headers or cookies must provide an <code>OversizeHandling</code> configuration. </p>
    #          <p>Provide the handling configuration and retry your operation.</p>
    #          <p>Alternately, you can suppress this warning by adding the following tag to the resource that you provide to this operation: <code>Tag</code> (key:<code>WAF:OversizeFieldsHandlingConstraintOptOut</code>, value:<code>true</code>).</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFConfigurationWarningException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>WAF couldn’t perform the operation because the resource that you tried to save is
    #          a duplicate of an existing one.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFDuplicateItemException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because the specified version for the managed rule group has
    #          expired. You can retrieve the available versions for the managed rule group by calling
    #             <a>ListAvailableManagedRuleGroupVersions</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFExpiredManagedRuleGroupVersionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request is valid, but WAF couldn’t perform the operation because of a system
    #          problem. Retry your request. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFInternalErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation isn't valid. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFInvalidOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because WAF didn't recognize a parameter in the request. For
    #          example: </p>
    #          <ul>
    #             <li>
    #                <p>You specified a parameter name or value that isn't valid.</p>
    #             </li>
    #             <li>
    #                <p>Your nested statement isn't valid. You might have tried to nest a statement that
    #                can’t be nested. </p>
    #             </li>
    #             <li>
    #                <p>You tried to update a <code>WebACL</code> with a <code>DefaultAction</code> that
    #                isn't among the types available at <a>DefaultAction</a>.</p>
    #             </li>
    #             <li>
    #                <p>Your request references an ARN that is malformed, or corresponds to a resource with which a web ACL can't be associated.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute field
    #   <p>The settings where the invalid parameter was found. </p>
    #
    #   Enum, one of: ["WEB_ACL", "RULE_GROUP", "REGEX_PATTERN_SET", "IP_SET", "MANAGED_RULE_SET", "RULE", "EXCLUDED_RULE", "STATEMENT", "BYTE_MATCH_STATEMENT", "SQLI_MATCH_STATEMENT", "XSS_MATCH_STATEMENT", "SIZE_CONSTRAINT_STATEMENT", "GEO_MATCH_STATEMENT", "RATE_BASED_STATEMENT", "RULE_GROUP_REFERENCE_STATEMENT", "REGEX_PATTERN_REFERENCE_STATEMENT", "IP_SET_REFERENCE_STATEMENT", "MANAGED_RULE_SET_STATEMENT", "LABEL_MATCH_STATEMENT", "AND_STATEMENT", "OR_STATEMENT", "NOT_STATEMENT", "IP_ADDRESS", "IP_ADDRESS_VERSION", "FIELD_TO_MATCH", "TEXT_TRANSFORMATION", "SINGLE_QUERY_ARGUMENT", "SINGLE_HEADER", "DEFAULT_ACTION", "RULE_ACTION", "ENTITY_LIMIT", "OVERRIDE_ACTION", "SCOPE_VALUE", "RESOURCE_ARN", "RESOURCE_TYPE", "TAGS", "TAG_KEYS", "METRIC_NAME", "FIREWALL_MANAGER_STATEMENT", "FALLBACK_BEHAVIOR", "POSITION", "FORWARDED_IP_CONFIG", "IP_SET_FORWARDED_IP_CONFIG", "HEADER_NAME", "CUSTOM_REQUEST_HANDLING", "RESPONSE_CONTENT_TYPE", "CUSTOM_RESPONSE", "CUSTOM_RESPONSE_BODY", "JSON_MATCH_PATTERN", "JSON_MATCH_SCOPE", "BODY_PARSING_FALLBACK_BEHAVIOR", "LOGGING_FILTER", "FILTER_CONDITION", "EXPIRE_TIMESTAMP", "CHANGE_PROPAGATION_STATUS", "ASSOCIABLE_RESOURCE", "LOG_DESTINATION", "MANAGED_RULE_GROUP_CONFIG", "PAYLOAD_TYPE", "HEADER_MATCH_PATTERN", "COOKIE_MATCH_PATTERN", "MAP_MATCH_SCOPE", "OVERSIZE_HANDLING"]
    #
    #   @return [String]
    #
    # @!attribute parameter
    #   <p>The invalid parameter that resulted in the exception. </p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>Additional information about the exception.</p>
    #
    #   @return [String]
    #
    WAFInvalidParameterException = ::Struct.new(
      :message,
      :field,
      :parameter,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because the specified policy isn't in the proper format. </p>
    #
    #          <p>The policy specifications must conform to the following:</p>
    #          <ul>
    #             <li>
    #                <p>The policy must be composed using IAM Policy version 2012-10-17 or version 2015-01-01.</p>
    #             </li>
    #             <li>
    #                <p>The policy must include specifications for <code>Effect</code>, <code>Action</code>, and <code>Principal</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Effect</code> must specify <code>Allow</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Action</code> must specify <code>wafv2:CreateWebACL</code>, <code>wafv2:UpdateWebACL</code>, and
    #              <code>wafv2:PutFirewallManagerRuleGroups</code> and may optionally specify <code>wafv2:GetRuleGroup</code>.
    #                  WAF rejects any extra actions or wildcard actions in the policy.</p>
    #             </li>
    #             <li>
    #                <p>The policy must not include a <code>Resource</code> parameter.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">IAM Policies</a>.  </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFInvalidPermissionPolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>WAF couldn’t perform the operation because the resource that you requested isn’t
    #          valid. Check the resource, and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFInvalidResourceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>WAF couldn’t perform the operation because you exceeded your resource limit. For
    #          example, the maximum number of <code>WebACL</code> objects that you can create for an Amazon Web Services
    #          account. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #             <i>WAF Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFLimitsExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because you don't have the permissions that your logging configuration requires. For information, see
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging.html">Logging web ACL traffic information</a>
    #                in the <i>WAF Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFLogDestinationPermissionIssueException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>WAF couldn’t perform the operation because your resource doesn’t exist. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFNonexistentItemException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>WAF couldn’t save your changes because you tried to update or delete a resource
    #          that has changed since you last retrieved it. Get the resource again, make any changes you
    #          need to make to the new copy, and retry your operation. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFOptimisticLockException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>WAF is not able to access the service linked role. This can be caused by a
    #          previous <code>PutLoggingConfiguration</code> request, which can lock the service linked
    #          role for about 20 seconds. Please try your request again. The service linked role can also
    #          be locked by a previous <code>DeleteServiceLinkedRole</code> request, which can lock the
    #          role for 15 minutes or more. If you recently made a call to
    #             <code>DeleteServiceLinkedRole</code>, wait at least 15 minutes and try the request
    #          again. If you receive this same exception again, you will have to wait additional time
    #          until the role is unlocked.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFServiceLinkedRoleErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You tried to use a managed rule group that's available by subscription, but you aren't
    #          subscribed to it yet. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFSubscriptionNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error occurred during the tagging operation. Retry your request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFTagOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>WAF couldn’t perform your tagging operation because of an internal error. Retry
    #          ybjectNoteWebRequestComponentour request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFTagOperationInternalErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>WAF couldn’t retrieve a resource that you specified for this operation. Verify the resources that you are specifying in your request parameters and then retry the operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFUnavailableEntityException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A web ACL defines a collection of rules to use to inspect and control web requests. Each rule has an action defined (allow, block, or count) for requests that match the statement of the rule. In the web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a web ACL can be a combination of the types <a>Rule</a>, <a>RuleGroup</a>, and managed rule group. You can associate a web ACL with one or more Amazon Web Services resources to protect. The resources can be an Amazon CloudFront distribution, an Amazon API Gateway REST API, an Application Load Balancer, or an AppSync GraphQL API.  </p>
    #
    # @!attribute name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the <code>WebACL</code>. This ID is returned in the responses to
    #            create and list commands. You use this ID to do things like get, update, and delete a
    #               <code>WebACL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL that you want to associate with the
    #            resource.</p>
    #
    #   @return [String]
    #
    # @!attribute default_action
    #   <p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>
    #
    #   @return [DefaultAction]
    #
    # @!attribute description
    #   <p>A description of the web ACL that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>The <a>Rule</a> statements used to identify the web requests that you
    #            want to allow, block, or count. Each rule includes one top-level statement that WAF uses to identify matching
    #            web requests, and parameters that govern how WAF handles them.
    #         </p>
    #
    #   @return [Array<Rule>]
    #
    # @!attribute visibility_config
    #   <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
    #
    #   @return [VisibilityConfig]
    #
    # @!attribute capacity
    #   <p>The web ACL capacity units (WCUs) currently being used by this web ACL. </p>
    #            <p>WAF uses WCUs to calculate and control the operating
    #            resources that are used to run your rules, rule groups, and web ACLs. WAF
    #            calculates capacity differently for each rule type, to reflect the relative cost of each rule.
    #            Simple rules that cost little to run use fewer WCUs than more complex rules
    #   				that use more processing power.
    #   				Rule group capacity is fixed at creation, which helps users plan their
    #            web ACL WCU usage when they use a rule group.
    #            The WCU limit for web ACLs is 1,500.  </p>
    #
    #   @return [Integer]
    #
    # @!attribute pre_process_firewall_manager_rule_groups
    #   <p>The first set of rules for WAF to process in the web ACL. This is defined in an
    #            Firewall Manager WAF policy and contains only rule group references. You can't alter these. Any
    #            rules and rule groups that you define for the web ACL are prioritized after these. </p>
    #            <p>In the Firewall Manager WAF policy, the Firewall Manager administrator can define a set of rule groups to run
    #            first in the web ACL and a set of rule groups to run last. Within each set, the
    #            administrator prioritizes the rule groups, to determine their relative processing
    #            order.</p>
    #
    #   @return [Array<FirewallManagerRuleGroup>]
    #
    # @!attribute post_process_firewall_manager_rule_groups
    #   <p>The last set of rules for WAF to process in the web ACL. This is defined in an
    #            Firewall Manager WAF policy and contains only rule group references. You can't alter these. Any
    #            rules and rule groups that you define for the web ACL are prioritized before these. </p>
    #            <p>In the Firewall Manager WAF policy, the Firewall Manager administrator can define a set of rule groups to run
    #            first in the web ACL and a set of rule groups to run last. Within each set, the
    #            administrator prioritizes the rule groups, to determine their relative processing
    #            order.</p>
    #
    #   @return [Array<FirewallManagerRuleGroup>]
    #
    # @!attribute managed_by_firewall_manager
    #   <p>Indicates whether this web ACL is managed by Firewall Manager. If true, then only Firewall Manager can
    #            delete the web ACL or any Firewall Manager rule groups in the web ACL. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute label_namespace
    #   <p>The label namespace prefix for this web ACL. All labels added by rules in this web ACL have this prefix. </p>
    #            <ul>
    #               <li>
    #                  <p>The syntax for the label namespace prefix for a web ACL is the following: </p>
    #                  <p>
    #                     <code>awswaf:<account ID>:webacl:<web ACL name>:</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>When a rule with a label matches a web request, WAF adds the fully qualified label to the request. A fully qualified label is made up of the label namespace from the rule group or web ACL where the rule is defined and the label from the rule, separated by a colon: </p>
    #                  <p>
    #                     <code><label namespace>:<label from rule></code>
    #                  </p>
    #
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute custom_response_bodies
    #   <p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the web ACL, and then use them in the rules and default actions that you define in the web ACL. </p>
    #            <p>For information about customizing web requests and responses, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html">Customizing web requests and responses in WAF</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #            <p>For information about the limits on count and size for custom request and response settings, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">WAF quotas</a> in the
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">WAF Developer Guide</a>. </p>
    #
    #   @return [Hash<String, CustomResponseBody>]
    #
    # @!attribute captcha_config
    #   <p>Specifies how WAF should handle <code>CAPTCHA</code> evaluations for rules that don't have their own <code>CaptchaConfig</code> settings. If you don't specify this, WAF uses its default settings for <code>CaptchaConfig</code>. </p>
    #
    #   @return [CaptchaConfig]
    #
    WebACL = ::Struct.new(
      :name,
      :id,
      :arn,
      :default_action,
      :description,
      :rules,
      :visibility_config,
      :capacity,
      :pre_process_firewall_manager_rule_groups,
      :post_process_firewall_manager_rule_groups,
      :managed_by_firewall_manager,
      :label_namespace,
      :custom_response_bodies,
      :captcha_config,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.capacity ||= 0
        self.managed_by_firewall_manager ||= false
      end
    end

    # <p>High-level information about a <a>WebACL</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>WebACL</code>, and the ARN, that you provide to operations like <a>AssociateWebACL</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the web ACL. You cannot change the name of a web ACL after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the web ACL that helps with identification. </p>
    #
    #   @return [String]
    #
    # @!attribute lock_token
    #   <p>A token used for optimistic locking. WAF returns a token to your <code>get</code> and <code>list</code> requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like <code>update</code> and <code>delete</code>. WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another <code>get</code>, and use the new token returned by that operation. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity.</p>
    #
    #   @return [String]
    #
    WebACLSummary = ::Struct.new(
      :name,
      :id,
      :description,
      :lock_token,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rule statement that defines a cross-site scripting (XSS) match search for WAF to apply to web requests.
    #          XSS attacks are those where the attacker uses vulnerabilities in a benign website as a vehicle to inject malicious
    #          client-site scripts into other legitimate web browsers.
    #          The XSS match statement provides the location in requests that you want WAF to search and text transformations
    #          to use on the search area before WAF searches for character sequences that are likely to be malicious strings. </p>
    #
    # @!attribute field_to_match
    #   <p>The part of the web request that you want WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>
    #
    #   @return [FieldToMatch]
    #
    # @!attribute text_transformations
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
    #            If you specify one or more transformations in a rule statement, WAF performs all transformations on the
    #            content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>
    #
    #   @return [Array<TextTransformation>]
    #
    XssMatchStatement = ::Struct.new(
      :field_to_match,
      :text_transformations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
