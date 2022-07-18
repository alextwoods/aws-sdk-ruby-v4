# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WAFRegional
  module Types

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>The <code>ActivatedRule</code> object in an <a>UpdateWebACL</a> request specifies a <code>Rule</code> that you want to insert or delete,
    # 			the priority of the <code>Rule</code> in the <code>WebACL</code>, and the action that you want AWS WAF to take when a web request matches the <code>Rule</code>
    # 			(<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>).</p>
    # 		       <p>To specify whether to insert or delete a <code>Rule</code>, use the <code>Action</code> parameter in the <a>WebACLUpdate</a> data type.</p>
    #
    # @!attribute priority
    #   <p>Specifies the order in which the <code>Rules</code> in a <code>WebACL</code> are evaluated. Rules with a lower value for
    #   			<code>Priority</code> are evaluated before <code>Rules</code> with a higher value. The value must be a unique integer. If you add multiple
    #   			<code>Rules</code> to a <code>WebACL</code>, the values don't need to be consecutive.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rule_id
    #   <p>The <code>RuleId</code> for a <code>Rule</code>. You use <code>RuleId</code> to get more information about a <code>Rule</code> (see <a>GetRule</a>),
    #   			update a <code>Rule</code> (see <a>UpdateRule</a>), insert a <code>Rule</code> into a <code>WebACL</code> or delete a
    #   			one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>Rule</code> from AWS WAF (see <a>DeleteRule</a>).</p>
    #   		       <p>
    #               <code>RuleId</code> is returned by <a>CreateRule</a> and by <a>ListRules</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>Specifies the action that CloudFront or AWS WAF takes when a web request matches the conditions in the <code>Rule</code>.
    #   			Valid values for <code>Action</code> include the following:</p>
    #   			      <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW</code>: CloudFront responds with the requested object.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BLOCK</code>: CloudFront responds with an HTTP 403 (Forbidden) status code.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COUNT</code>: AWS WAF increments a counter of requests that match the conditions in the rule and then continues to
    #   					inspect the web request based on the remaining rules in the web ACL. </p>
    #               </li>
    #            </ul>
    #   	        <p>
    #               <code>ActivatedRule|OverrideAction</code> applies only when updating or adding a
    #               <code>RuleGroup</code> to a <code>WebACL</code>. In this
    #            case,
    #            you do not use <code>ActivatedRule|Action</code>. For all other update requests,
    #               <code>ActivatedRule|Action</code> is used instead of
    #               <code>ActivatedRule|OverrideAction</code>.</p>
    #
    #   @return [WafAction]
    #
    # @!attribute override_action
    #   <p>Use the <code>OverrideAction</code> to test your <code>RuleGroup</code>.</p>
    #            <p>Any rule in a <code>RuleGroup</code> can potentially block a request. If you set the <code>OverrideAction</code> to <code>None</code>, the <code>RuleGroup</code> will block a request if any individual rule in the <code>RuleGroup</code> matches the request and is configured to block that request. However if you first want to test the <code>RuleGroup</code>, set the  <code>OverrideAction</code> to <code>Count</code>. The <code>RuleGroup</code> will then override any block action specified by individual rules contained within the group. Instead of blocking matching requests, those requests will be counted. You can view a record of counted requests using  <a>GetSampledRequests</a>. </p>
    #   	        <p>
    #               <code>ActivatedRule|OverrideAction</code> applies only when updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this case you do not use <code>ActivatedRule|Action</code>.  For all other update requests, <code>ActivatedRule|Action</code> is used instead of <code>ActivatedRule|OverrideAction</code>.</p>
    #
    #   @return [WafOverrideAction]
    #
    # @!attribute type
    #   <p>The rule type, either <code>REGULAR</code>, as defined by <a>Rule</a>, <code>RATE_BASED</code>, as defined by <a>RateBasedRule</a>, or <code>GROUP</code>, as defined by <a>RuleGroup</a>. The default is REGULAR. Although this field is optional, be aware that if you try to add a RATE_BASED rule to a web ACL without setting the type, the  <a>UpdateWebACL</a> request will fail because the request tries to add a REGULAR rule with the specified ID, which does not exist. 		
    #   			</p>
    #
    #   Enum, one of: ["REGULAR", "RATE_BASED", "GROUP"]
    #
    #   @return [String]
    #
    # @!attribute excluded_rules
    #   <p>An array of rules to exclude from a rule group. This is applicable only when the <code>ActivatedRule</code> refers to a <code>RuleGroup</code>.</p>
    #            <p>Sometimes it is necessary to troubleshoot rule groups that are blocking traffic
    #            unexpectedly (false positives). One troubleshooting technique is to identify the specific
    #            rule within the rule group that is blocking the legitimate traffic and then disable
    #            (exclude) that particular rule. You can exclude rules from both your own rule groups and
    #            AWS Marketplace rule groups that have been associated with a web ACL.</p>
    #            <p>Specifying <code>ExcludedRules</code> does not remove those rules from the rule group.
    #            Rather, it changes the action for the rules to <code>COUNT</code>. Therefore, requests that
    #            match an <code>ExcludedRule</code> are counted but not blocked. The <code>RuleGroup</code>
    #            owner will receive COUNT metrics for each <code>ExcludedRule</code>.</p>
    #            <p>If you want to exclude rules from a rule group that is already associated with a web ACL, perform the following steps:</p>
    #            <ol>
    #               <li>
    #                  <p>Use the AWS WAF logs to identify the IDs of the rules that you want to exclude.
    #                  For more information about the logs, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging.html">Logging Web ACL Traffic
    #                     Information</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Submit an <a>UpdateWebACL</a> request that has two actions:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The first action
    #                        deletes
    #                        the existing rule group from the web ACL. That is, in the <a>UpdateWebACL</a> request, the first <code>Updates:Action</code>
    #                        should be <code>DELETE</code> and <code>Updates:ActivatedRule:RuleId</code>
    #                        should be the rule group that contains the rules that you want to
    #                        exclude.</p>
    #                     </li>
    #                     <li>
    #                        <p>The second action
    #                        inserts
    #                        the same rule group back in, but specifying the rules to exclude. That is, the
    #                        second <code>Updates:Action</code> should be <code>INSERT</code>,
    #                           <code>Updates:ActivatedRule:RuleId</code> should be the rule group that you
    #                        just removed, and <code>ExcludedRules</code> should contain the rules that you
    #                        want to exclude.</p>
    #                     </li>
    #                  </ul>
    #
    #               </li>
    #            </ol>
    #
    #   @return [Array<ExcludedRule>]
    #
    ActivatedRule = ::Struct.new(
      :priority,
      :rule_id,
      :action,
      :override_action,
      :type,
      :excluded_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_acl_id
    #   <p>A unique identifier (ID) for the web ACL. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
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
    #   @return [String]
    #
    AssociateWebACLInput = ::Struct.new(
      :web_acl_id,
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>In a <a>GetByteMatchSet</a> request, <code>ByteMatchSet</code> is a complex type that contains the <code>ByteMatchSetId</code> and
    # 			<code>Name</code> of a <code>ByteMatchSet</code>, and the values that you specified when you updated the <code>ByteMatchSet</code>. </p>
    # 		       <p>A complex type that contains <code>ByteMatchTuple</code> objects, which specify the parts of web requests that you
    # 			want AWS WAF to inspect and the values that you want AWS WAF to search for. If a <code>ByteMatchSet</code> contains more than one
    # 			<code>ByteMatchTuple</code> object, a request needs to match the settings in only one <code>ByteMatchTuple</code>
    # 			to be considered a match.</p>
    #
    # @!attribute byte_match_set_id
    #   <p>The <code>ByteMatchSetId</code> for a <code>ByteMatchSet</code>. You use <code>ByteMatchSetId</code> to get information about a
    #   			<code>ByteMatchSet</code> (see <a>GetByteMatchSet</a>), update a <code>ByteMatchSet</code> (see <a>UpdateByteMatchSet</a>),
    #   			insert a <code>ByteMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and
    #   			delete a <code>ByteMatchSet</code> from AWS WAF (see <a>DeleteByteMatchSet</a>).</p>
    #   		       <p>
    #               <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description of the <a>ByteMatchSet</a>. You can't change <code>Name</code> after you create a <code>ByteMatchSet</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute byte_match_tuples
    #   <p>Specifies the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings.</p>
    #
    #   @return [Array<ByteMatchTuple>]
    #
    ByteMatchSet = ::Struct.new(
      :byte_match_set_id,
      :name,
      :byte_match_tuples,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Returned by <a>ListByteMatchSets</a>. Each <code>ByteMatchSetSummary</code> object includes the <code>Name</code> and
    # 			<code>ByteMatchSetId</code> for one <a>ByteMatchSet</a>.</p>
    #
    # @!attribute byte_match_set_id
    #   <p>The <code>ByteMatchSetId</code> for a <code>ByteMatchSet</code>. You use <code>ByteMatchSetId</code> to get information about a <code>ByteMatchSet</code>,
    #   			update a <code>ByteMatchSet</code>, remove a <code>ByteMatchSet</code> from a <code>Rule</code>, and delete a <code>ByteMatchSet</code> from AWS WAF.</p>
    #   		       <p>
    #               <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description of the <a>ByteMatchSet</a>. You can't change <code>Name</code> after you create a <code>ByteMatchSet</code>.</p>
    #
    #   @return [String]
    #
    ByteMatchSetSummary = ::Struct.new(
      :byte_match_set_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>In an <a>UpdateByteMatchSet</a> request, <code>ByteMatchSetUpdate</code> specifies whether to insert or delete a
    # 			<a>ByteMatchTuple</a> and includes the settings for the <code>ByteMatchTuple</code>.</p>
    #
    # @!attribute action
    #   <p>Specifies whether to insert or delete a <a>ByteMatchTuple</a>.</p>
    #
    #   Enum, one of: ["INSERT", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute byte_match_tuple
    #   <p>Information about the part of a web request that you want AWS WAF to inspect and the value that you want AWS WAF to search for.
    #   			If you specify <code>DELETE</code> for the value of <code>Action</code>, the <code>ByteMatchTuple</code> values must
    #   			exactly match the values in the <code>ByteMatchTuple</code> that you want to delete from the <code>ByteMatchSet</code>.</p>
    #
    #   @return [ByteMatchTuple]
    #
    ByteMatchSetUpdate = ::Struct.new(
      :action,
      :byte_match_tuple,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings.</p>
    #
    # @!attribute field_to_match
    #   <p>The part of a web request that you want AWS WAF to search, such as a specified header or a query string. For more information, see
    #   			<a>FieldToMatch</a>.</p>
    #
    #   @return [FieldToMatch]
    #
    # @!attribute target_string
    #   <p>The value that you want AWS WAF to search for. AWS WAF searches for the specified string in the part of web requests that you
    #   			specified in <code>FieldToMatch</code>. The maximum length of the value is 50 bytes.</p>
    #   		       <p>Valid values depend on the values that you specified for <code>FieldToMatch</code>:</p>		
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>HEADER</code>: The value that you want AWS WAF to search for in the request header that you specified in
    #   				<a>FieldToMatch</a>, for example, the value of the <code>User-Agent</code> or <code>Referer</code> header.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>METHOD</code>: The HTTP method, which indicates the type of operation specified in the request.
    #   				CloudFront supports the following methods: <code>DELETE</code>, <code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>,
    #   				<code>PATCH</code>, <code>POST</code>, and <code>PUT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>QUERY_STRING</code>: The value that you want AWS WAF to search for in the query string, which is the part
    #   				of a URL that appears after a <code>?</code> character.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>URI</code>: The value that you want AWS WAF to search for in the part of a URL that identifies a resource,
    #   				for example, <code>/images/daily-ad.jpg</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BODY</code>: The part of a request that contains any additional data that you want to send to your web server
    #   				as the HTTP request body, such as data from a form. The request body immediately follows the request headers.
    #   				Note that only the first <code>8192</code> bytes of the request body are forwarded to AWS WAF for inspection.
    #   				To allow or block requests based on the length of the body, you can create a size constraint set.
    #   				For more information, see <a>CreateSizeConstraintSet</a>. </p>
    #               </li>
    #               <li>
    #   		             <p>
    #   		                <code>SINGLE_QUERY_ARG</code>: The parameter in the query string that you will inspect, such as <i>UserName</i> or <i>SalesRegion</i>. The maximum length for <code>SINGLE_QUERY_ARG</code> is 30 characters.</p>
    #   		          </li>
    #               <li>
    #   		             <p>
    #                     <code>ALL_QUERY_ARGS</code>: Similar to <code>SINGLE_QUERY_ARG</code>, but instead of
    #                  inspecting a single parameter, AWS WAF inspects all parameters within the query
    #                  string for the value or regex pattern that you specify in
    #                  <code>TargetString</code>.</p>
    #   		          </li>
    #            </ul>
    #   		
    #   		       <p>If <code>TargetString</code> includes alphabetic characters A-Z and a-z, note that the value is case sensitive.</p>
    #   		       <p>
    #               <b>If you're using the AWS WAF API</b>
    #            </p>
    #   		       <p>Specify a base64-encoded version of the value. The maximum length of the value before you base64-encode it is 50 bytes.</p>
    #   		       <p>For example, suppose the value of <code>Type</code> is <code>HEADER</code> and the
    #            value of <code>Data</code> is <code>User-Agent</code>. If you want to search the
    #               <code>User-Agent</code> header for the value <code>BadBot</code>, you base64-encode
    #               <code>BadBot</code> using MIME
    #            base64-encoding
    #            and include the resulting value, <code>QmFkQm90</code>, in the value of
    #               <code>TargetString</code>.</p>
    #   		       <p>
    #               <b>If you're using the AWS CLI or one of the AWS SDKs</b>
    #            </p>
    #   		       <p>The value that you want AWS WAF to search for. The SDK automatically base64 encodes the value.</p>
    #
    #   @return [String]
    #
    # @!attribute text_transformation
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
    #   			If you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting it for a match.</p>
    #            <p>You can only specify a single type of TextTransformation.</p>			
    #   		       <p>
    #               <b>CMD_LINE</b>
    #            </p>
    #   		       <p>When you're concerned that attackers are injecting an operating system command line
    #            command and using unusual formatting to disguise some or all of the command, use this
    #            option to perform the following transformations:</p>
    #   		       <ul>
    #               <li>
    #                  <p>Delete the following characters: \ " ' ^</p>
    #               </li>
    #               <li>
    #                  <p>Delete spaces before the following characters: / (</p>
    #               </li>
    #               <li>
    #                  <p>Replace the following characters with a space: , ;</p>
    #               </li>
    #               <li>
    #                  <p>Replace multiple spaces with one space</p>
    #               </li>
    #               <li>
    #                  <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p>
    #               </li>
    #            </ul>
    #   		
    #   		       <p>
    #               <b>COMPRESS_WHITE_SPACE</b>
    #            </p>
    #   		       <p>Use this option to replace the following characters with a space character (decimal 32):</p>
    #   		       <ul>
    #               <li>
    #                  <p>\f, formfeed, decimal 12</p>
    #               </li>
    #               <li>
    #                  <p>\t, tab, decimal 9</p>
    #               </li>
    #               <li>
    #                  <p>\n, newline, decimal 10</p>
    #               </li>
    #               <li>
    #                  <p>\r, carriage return, decimal 13</p>
    #               </li>
    #               <li>
    #                  <p>\v, vertical tab, decimal 11</p>
    #               </li>
    #               <li>
    #                  <p>non-breaking space, decimal 160</p>
    #               </li>
    #            </ul>
    #   		       <p>
    #               <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p>		
    #   		       <p>
    #               <b>HTML_ENTITY_DECODE</b>
    #            </p>
    #   		       <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs
    #   			the following operations:</p>
    #   		       <ul>
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
    #                  <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand) xhhhh;</code>, with the corresponding
    #   				characters</p>
    #               </li>
    #               <li>
    #                  <p>Replaces characters that are represented in decimal format, <code>(ampersand) nnnn;</code>, with the corresponding
    #   				characters</p>
    #               </li>
    #            </ul>		
    #   		       <p>
    #               <b>LOWERCASE</b>
    #            </p>
    #   		       <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p>		
    #   		       <p>
    #               <b>URL_DECODE</b>
    #            </p>
    #   		       <p>Use this option to decode a URL-encoded value.</p>		
    #   		       <p>
    #               <b>NONE</b>
    #            </p>
    #   		       <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>
    #
    #   Enum, one of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #
    #   @return [String]
    #
    # @!attribute positional_constraint
    #   <p>Within the portion of a web request that you want to search (for example, in the query string, if any), specify where you want AWS WAF to search. Valid values include the following:</p>
    #   		       <p>
    #               <b>CONTAINS</b>
    #            </p>
    #   		       <p>The specified part of the web request must include the value of <code>TargetString</code>, but the location doesn't matter.</p>		
    #   		       <p>
    #               <b>CONTAINS_WORD</b>
    #            </p>
    #   		       <p>The specified part of the web request must include the value of <code>TargetString</code>, and
    #   			<code>TargetString</code> must contain only alphanumeric characters or underscore (A-Z, a-z, 0-9, or _). In addition,
    #   			<code>TargetString</code> must be a word, which means one of the following:</p>
    #   			      <ul>
    #               <li>
    #                  <p>
    #                     <code>TargetString</code> exactly matches the value of the specified part of the web request, such as the value of a
    #   					header.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TargetString</code> is at the beginning of the specified part of the web request and is followed by a character
    #   					other than an alphanumeric character or underscore (_), for example, <code>BadBot;</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TargetString</code> is at the end of the specified part of the web request and is preceded by a character
    #   					other than an alphanumeric character or underscore (_), for example, <code>;BadBot</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TargetString</code> is in the middle of the specified part of the web request and is preceded and followed
    #   					by characters other than alphanumeric characters or underscore (_), for example, <code>-BadBot;</code>.</p>
    #               </li>
    #            </ul>
    #   		       <p>
    #               <b>EXACTLY</b>
    #            </p>
    #   		       <p>The value of the specified part of the web request must exactly match the value of <code>TargetString</code>.</p>
    #   		       <p>
    #               <b>STARTS_WITH</b>
    #            </p>
    #   		       <p>The value of <code>TargetString</code> must appear at the beginning of the specified part of the web request.</p>		
    #   		       <p>
    #               <b>ENDS_WITH</b>
    #            </p>
    #   		       <p>The value of <code>TargetString</code> must appear at the end of the specified part of the web request.</p>
    #
    #   Enum, one of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"]
    #
    #   @return [String]
    #
    ByteMatchTuple = ::Struct.new(
      :field_to_match,
      :target_string,
      :text_transformation,
      :positional_constraint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChangeAction
    #
    module ChangeAction
      # No documentation available.
      #
      INSERT = "INSERT"

      # No documentation available.
      #
      DELETE = "DELETE"
    end

    # Includes enum constants for ChangeTokenStatus
    #
    module ChangeTokenStatus
      # No documentation available.
      #
      PROVISIONED = "PROVISIONED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      INSYNC = "INSYNC"
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

    # @!attribute name
    #   <p>A friendly name or description of the <a>ByteMatchSet</a>. You can't change <code>Name</code> after you create a
    #   			<code>ByteMatchSet</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    CreateByteMatchSetInput = ::Struct.new(
      :name,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute byte_match_set
    #   <p>A <a>ByteMatchSet</a> that contains no <code>ByteMatchTuple</code> objects.</p>
    #
    #   @return [ByteMatchSet]
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>CreateByteMatchSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    CreateByteMatchSetOutput = ::Struct.new(
      :byte_match_set,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A friendly name or description of the <a>GeoMatchSet</a>. You can't change <code>Name</code> after you create the <code>GeoMatchSet</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    CreateGeoMatchSetInput = ::Struct.new(
      :name,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute geo_match_set
    #   <p>The <a>GeoMatchSet</a> returned in the <code>CreateGeoMatchSet</code> response. The <code>GeoMatchSet</code> contains no <code>GeoMatchConstraints</code>.</p>
    #
    #   @return [GeoMatchSet]
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>CreateGeoMatchSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    CreateGeoMatchSetOutput = ::Struct.new(
      :geo_match_set,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A friendly name or description of the <a>IPSet</a>. You can't change <code>Name</code> after you create the <code>IPSet</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    CreateIPSetInput = ::Struct.new(
      :name,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ip_set
    #   <p>The <a>IPSet</a> returned in the <code>CreateIPSet</code> response.</p>
    #
    #   @return [IPSet]
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>CreateIPSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    CreateIPSetOutput = ::Struct.new(
      :ip_set,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A friendly name or description of the <a>RateBasedRule</a>. You can't
    #            change the name of a <code>RateBasedRule</code> after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_name
    #   <p>A friendly name or description for the metrics for this <code>RateBasedRule</code>.
    #             The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #             whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change the name of the metric after you create the
    #               <code>RateBasedRule</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute rate_key
    #   <p>The field that AWS WAF uses to determine if requests are likely arriving from a single
    #            source and thus subject to rate monitoring. The only valid value for <code>RateKey</code>
    #            is <code>IP</code>. <code>IP</code> indicates that requests that arrive from the same IP
    #            address are subject to the <code>RateLimit</code> that is specified in
    #            the <code>RateBasedRule</code>.</p>
    #
    #   Enum, one of: ["IP"]
    #
    #   @return [String]
    #
    # @!attribute rate_limit
    #   <p>The maximum number of requests, which have an identical value in the field that is
    #            specified by <code>RateKey</code>, allowed in a five-minute period. If the number of
    #            requests exceeds the <code>RateLimit</code> and the other predicates specified in the rule
    #            are also met, AWS WAF triggers the action that is specified for this rule.</p>
    #
    #   @return [Integer]
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the
    #               <code>CreateRateBasedRule</code> request. You can also use this value to query the
    #            status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p></p>
    #
    #   @return [Array<Tag>]
    #
    CreateRateBasedRuleInput = ::Struct.new(
      :name,
      :metric_name,
      :rate_key,
      :rate_limit,
      :change_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.rate_limit ||= 0
      end
    end

    # @!attribute rule
    #   <p>The <a>RateBasedRule</a>
    #            that is returned in the <code>CreateRateBasedRule</code> response.</p>
    #
    #   @return [RateBasedRule]
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the
    #               <code>CreateRateBasedRule</code> request. You can also use this value to query the
    #            status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    CreateRateBasedRuleOutput = ::Struct.new(
      :rule,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A friendly name or description of the <a>RegexMatchSet</a>. You can't change <code>Name</code> after you create a
    #   			<code>RegexMatchSet</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    CreateRegexMatchSetInput = ::Struct.new(
      :name,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute regex_match_set
    #   <p>A <a>RegexMatchSet</a> that contains no <code>RegexMatchTuple</code> objects.</p>
    #
    #   @return [RegexMatchSet]
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>CreateRegexMatchSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    CreateRegexMatchSetOutput = ::Struct.new(
      :regex_match_set,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A friendly name or description of the <a>RegexPatternSet</a>. You can't change <code>Name</code> after you create a
    #   			<code>RegexPatternSet</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    CreateRegexPatternSetInput = ::Struct.new(
      :name,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute regex_pattern_set
    #   <p>A <a>RegexPatternSet</a> that contains no objects.</p>
    #
    #   @return [RegexPatternSet]
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>CreateRegexPatternSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    CreateRegexPatternSetOutput = ::Struct.new(
      :regex_pattern_set,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A friendly name or description of the <a>RuleGroup</a>. You can't change <code>Name</code> after you create a
    #            <code>RuleGroup</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_name
    #   <p>A friendly name or description for the metrics for this <code>RuleGroup</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #            whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change the name of the metric after you create the <code>RuleGroup</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p></p>
    #
    #   @return [Array<Tag>]
    #
    CreateRuleGroupInput = ::Struct.new(
      :name,
      :metric_name,
      :change_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_group
    #   <p>An empty  <a>RuleGroup</a>.</p>
    #
    #   @return [RuleGroup]
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>CreateRuleGroup</code> request. You can also use this value
    #            to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    CreateRuleGroupOutput = ::Struct.new(
      :rule_group,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A friendly name or description of the <a>Rule</a>. You can't change the name of a <code>Rule</code> after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_name
    #   <p>A friendly name or description for the metrics for this <code>Rule</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #   	        whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change the name of the metric after you create the
    #               <code>Rule</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p></p>
    #
    #   @return [Array<Tag>]
    #
    CreateRuleInput = ::Struct.new(
      :name,
      :metric_name,
      :change_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule
    #   <p>The <a>Rule</a> returned in the <code>CreateRule</code> response.</p>
    #
    #   @return [Rule]
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>CreateRule</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    CreateRuleOutput = ::Struct.new(
      :rule,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A friendly name or description of the <a>SizeConstraintSet</a>. You can't change <code>Name</code> after you create a
    #   			<code>SizeConstraintSet</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    CreateSizeConstraintSetInput = ::Struct.new(
      :name,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute size_constraint_set
    #   <p>A <a>SizeConstraintSet</a> that contains no <code>SizeConstraint</code> objects.</p>
    #
    #   @return [SizeConstraintSet]
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>CreateSizeConstraintSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    CreateSizeConstraintSetOutput = ::Struct.new(
      :size_constraint_set,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to create a <a>SqlInjectionMatchSet</a>.</p>
    #
    # @!attribute name
    #   <p>A friendly name or description for the <a>SqlInjectionMatchSet</a> that you're creating. You can't change <code>Name</code>
    #   			after you create the <code>SqlInjectionMatchSet</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    CreateSqlInjectionMatchSetInput = ::Struct.new(
      :name,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response to a <code>CreateSqlInjectionMatchSet</code> request.</p>
    #
    # @!attribute sql_injection_match_set
    #   <p>A <a>SqlInjectionMatchSet</a>.</p>
    #
    #   @return [SqlInjectionMatchSet]
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>CreateSqlInjectionMatchSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    CreateSqlInjectionMatchSetOutput = ::Struct.new(
      :sql_injection_match_set,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A friendly name or description of the <a>WebACL</a>. You can't change <code>Name</code> after you create the <code>WebACL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_name
    #   <p>A friendly name or description for the metrics for this <code>WebACL</code>.The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #   	        whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change <code>MetricName</code> after you create the
    #               <code>WebACL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute default_action
    #   <p>The action that you want  AWS WAF to take when a request doesn't match the criteria specified in any of the <code>Rule</code>
    #   			objects that are associated with the <code>WebACL</code>.</p>
    #
    #   @return [WafAction]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p></p>
    #
    #   @return [Array<Tag>]
    #
    CreateWebACLInput = ::Struct.new(
      :name,
      :metric_name,
      :default_action,
      :change_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_acl_id
    #   <p>The UUID of the WAF Classic web ACL that you want to migrate to WAF v2.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
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
    #   @return [String]
    #
    # @!attribute ignore_unsupported_type
    #   <p>Indicates whether to exclude entities that can't be migrated or to stop the migration.
    #              Set this to true to ignore unsupported entities in the web ACL during the migration. Otherwise, if AWS WAF encounters unsupported
    #              entities, it stops the process and throws an exception. </p>
    #
    #   @return [Boolean]
    #
    CreateWebACLMigrationStackInput = ::Struct.new(
      :web_acl_id,
      :s3_bucket_name,
      :ignore_unsupported_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute s3_object_url
    #   <p>The URL of the template created in Amazon S3. </p>
    #
    #   @return [String]
    #
    CreateWebACLMigrationStackOutput = ::Struct.new(
      :s3_object_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_acl
    #   <p>The <a>WebACL</a> returned in the <code>CreateWebACL</code> response.</p>
    #
    #   @return [WebACL]
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>CreateWebACL</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    CreateWebACLOutput = ::Struct.new(
      :web_acl,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to create an <a>XssMatchSet</a>.</p>
    #
    # @!attribute name
    #   <p>A friendly name or description for the <a>XssMatchSet</a> that you're creating. You can't change <code>Name</code>
    #   			after you create the <code>XssMatchSet</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    CreateXssMatchSetInput = ::Struct.new(
      :name,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response to a <code>CreateXssMatchSet</code> request.</p>
    #
    # @!attribute xss_match_set
    #   <p>An <a>XssMatchSet</a>.</p>
    #
    #   @return [XssMatchSet]
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>CreateXssMatchSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    CreateXssMatchSetOutput = ::Struct.new(
      :xss_match_set,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute byte_match_set_id
    #   <p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to delete. <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by
    #   			<a>ListByteMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    DeleteByteMatchSetInput = ::Struct.new(
      :byte_match_set_id,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteByteMatchSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    DeleteByteMatchSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute geo_match_set_id
    #   <p>The <code>GeoMatchSetID</code> of the <a>GeoMatchSet</a> that you want to delete. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by
    #   			<a>ListGeoMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    DeleteGeoMatchSetInput = ::Struct.new(
      :geo_match_set_id,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteGeoMatchSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    DeleteGeoMatchSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ip_set_id
    #   <p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to delete. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by
    #   			<a>ListIPSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    DeleteIPSetInput = ::Struct.new(
      :ip_set_id,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteIPSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    DeleteIPSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL from which you want to delete the <a>LoggingConfiguration</a>.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the RuleGroup from which you want to delete the policy.</p>
    #            <p>The user making the request must be the owner of the RuleGroup.</p>
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

    # @!attribute rule_id
    #   <p>The <code>RuleId</code> of the <a>RateBasedRule</a> that you want to
    #            delete. <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by
    #               <a>ListRateBasedRules</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    DeleteRateBasedRuleInput = ::Struct.new(
      :rule_id,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the
    #               <code>DeleteRateBasedRule</code> request. You can also use this value to query the
    #            status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    DeleteRateBasedRuleOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute regex_match_set_id
    #   <p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to delete. <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by
    #   			<a>ListRegexMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    DeleteRegexMatchSetInput = ::Struct.new(
      :regex_match_set_id,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRegexMatchSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    DeleteRegexMatchSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute regex_pattern_set_id
    #   <p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to delete. <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by
    #   			<a>ListRegexPatternSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    DeleteRegexPatternSetInput = ::Struct.new(
      :regex_pattern_set_id,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRegexPatternSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    DeleteRegexPatternSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_group_id
    #   <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to delete. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by
    #            <a>ListRuleGroups</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    DeleteRuleGroupInput = ::Struct.new(
      :rule_group_id,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRuleGroup</code> request. You can also use this value
    #            to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    DeleteRuleGroupOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_id
    #   <p>The <code>RuleId</code> of the <a>Rule</a> that you want to delete. <code>RuleId</code> is returned by <a>CreateRule</a> and by
    #   			<a>ListRules</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    DeleteRuleInput = ::Struct.new(
      :rule_id,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRule</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    DeleteRuleOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute size_constraint_set_id
    #   <p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to delete. <code>SizeConstraintSetId</code>
    #   			is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    DeleteSizeConstraintSetInput = ::Struct.new(
      :size_constraint_set_id,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteSizeConstraintSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    DeleteSizeConstraintSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to delete a <a>SqlInjectionMatchSet</a> from AWS WAF.</p>
    #
    # @!attribute sql_injection_match_set_id
    #   <p>The <code>SqlInjectionMatchSetId</code> of the <a>SqlInjectionMatchSet</a> that you want to delete.
    #   			<code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    DeleteSqlInjectionMatchSetInput = ::Struct.new(
      :sql_injection_match_set_id,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response to a request to delete a <a>SqlInjectionMatchSet</a> from AWS WAF.</p>
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteSqlInjectionMatchSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    DeleteSqlInjectionMatchSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_acl_id
    #   <p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to delete. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by
    #   			<a>ListWebACLs</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    DeleteWebACLInput = ::Struct.new(
      :web_acl_id,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteWebACL</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    DeleteWebACLOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to delete an <a>XssMatchSet</a> from AWS WAF.</p>
    #
    # @!attribute xss_match_set_id
    #   <p>The <code>XssMatchSetId</code> of the <a>XssMatchSet</a> that you want to delete.
    #   			<code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    DeleteXssMatchSetInput = ::Struct.new(
      :xss_match_set_id,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response to a request to delete an <a>XssMatchSet</a> from AWS WAF.</p>
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>DeleteXssMatchSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    DeleteXssMatchSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>The rule to exclude from a rule group. This is applicable only when the
    #             <code>ActivatedRule</code> refers to a <code>RuleGroup</code>. The rule must belong to
    #          the <code>RuleGroup</code> that is specified by the <code>ActivatedRule</code>. </p>
    #
    # @!attribute rule_id
    #   <p>The unique identifier for the rule to exclude from the rule group.</p>
    #
    #   @return [String]
    #
    ExcludedRule = ::Struct.new(
      :rule_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Specifies where in a web request to look for <code>TargetString</code>.</p>
    #
    # @!attribute type
    #   <p>The part of the web request that you want AWS WAF to search for a specified string. Parts of a request that you can search include the following:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>HEADER</code>: A specified request header, for example, the value of the <code>User-Agent</code> or <code>Referer</code> header.
    #   				If you choose <code>HEADER</code> for the type, specify the name of the header in <code>Data</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>METHOD</code>: The HTTP method, which indicated the type of operation that the request is asking the origin to perform.
    #   				Amazon CloudFront supports the following methods: <code>DELETE</code>, <code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, <code>PATCH</code>,
    #   				<code>POST</code>, and <code>PUT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>QUERY_STRING</code>: A query string, which is the part of a URL that appears after a <code>?</code> character, if any.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>URI</code>: The part of a web request that identifies a resource, for example, <code>/images/daily-ad.jpg</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BODY</code>: The part of a request that contains any additional data that you want to send to your web server
    #   				as the HTTP request body, such as data from a form. The request body immediately follows the request headers.
    #   				Note that only the first <code>8192</code> bytes of the request body are forwarded to AWS WAF for inspection.
    #   				To allow or block requests based on the length of the body, you can create a size constraint set.
    #   				For more information, see <a>CreateSizeConstraintSet</a>. </p>
    #               </li>
    #               <li>
    #   		             <p>
    #   		                <code>SINGLE_QUERY_ARG</code>: The parameter in the query string that you will inspect, such as <i>UserName</i> or <i>SalesRegion</i>. The maximum length for <code>SINGLE_QUERY_ARG</code> is 30 characters.</p>
    #   		          </li>
    #               <li>
    #   		             <p>
    #   		                <code>ALL_QUERY_ARGS</code>: Similar to <code>SINGLE_QUERY_ARG</code>, but rather than inspecting a single parameter, AWS WAF will inspect all parameters within the query for the value or regex pattern that you specify in
    #   		             <code>TargetString</code>.</p>
    #   		          </li>
    #            </ul>
    #
    #   Enum, one of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"]
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>When the value of <code>Type</code> is <code>HEADER</code>, enter the name of the header that you want AWS WAF to search,
    #   			for example, <code>User-Agent</code> or <code>Referer</code>. The name of the header is not case sensitive.</p>
    #   	        <p>When the value of <code>Type</code> is <code>SINGLE_QUERY_ARG</code>, enter the name of the parameter that you want AWS WAF to search,
    #   	        for example, <code>UserName</code> or <code>SalesRegion</code>. The parameter name is not case sensitive.</p>
    #   	        <p>If the value of <code>Type</code> is any other value, omit <code>Data</code>.</p>
    #
    #   @return [String]
    #
    FieldToMatch = ::Struct.new(
      :type,
      :data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>The country from which web requests originate that you want AWS WAF to search for.</p>
    #
    # @!attribute type
    #   <p>The type of geographical area you want AWS WAF to search for. Currently <code>Country</code> is the only valid value.</p>
    #
    #   Enum, one of: ["Country"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The country that you want AWS WAF to search for.</p>
    #
    #   Enum, one of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"]
    #
    #   @return [String]
    #
    GeoMatchConstraint = ::Struct.new(
      :type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GeoMatchConstraintType
    #
    module GeoMatchConstraintType
      # No documentation available.
      #
      Country = "Country"
    end

    # Includes enum constants for GeoMatchConstraintValue
    #
    module GeoMatchConstraintValue
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
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Contains one or more countries that AWS WAF will search for.</p>
    #
    # @!attribute geo_match_set_id
    #   <p>The <code>GeoMatchSetId</code> for an <code>GeoMatchSet</code>. You use <code>GeoMatchSetId</code> to get information about a
    #   			<code>GeoMatchSet</code> (see <a>GeoMatchSet</a>), update a <code>GeoMatchSet</code> (see <a>UpdateGeoMatchSet</a>), insert a <code>GeoMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>GeoMatchSet</code> from AWS WAF (see <a>DeleteGeoMatchSet</a>).</p>
    #   		       <p>
    #               <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by <a>ListGeoMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description of the <a>GeoMatchSet</a>. You can't change the name of an <code>GeoMatchSet</code> after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute geo_match_constraints
    #   <p>An array of <a>GeoMatchConstraint</a> objects, which contain the country that you want AWS WAF to search for.</p>
    #
    #   @return [Array<GeoMatchConstraint>]
    #
    GeoMatchSet = ::Struct.new(
      :geo_match_set_id,
      :name,
      :geo_match_constraints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Contains the identifier and the name of the <code>GeoMatchSet</code>.</p>
    #
    # @!attribute geo_match_set_id
    #   <p>The <code>GeoMatchSetId</code> for an <a>GeoMatchSet</a>. You can use <code>GeoMatchSetId</code> in a <a>GetGeoMatchSet</a> request to get detailed	information about an <a>GeoMatchSet</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description of the <a>GeoMatchSet</a>. You can't change the name of an <code>GeoMatchSet</code> after you create it.</p>
    #
    #   @return [String]
    #
    GeoMatchSetSummary = ::Struct.new(
      :geo_match_set_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Specifies the type of update to perform to an <a>GeoMatchSet</a> with <a>UpdateGeoMatchSet</a>.</p>
    #
    # @!attribute action
    #   <p>Specifies whether to insert or delete a country with <a>UpdateGeoMatchSet</a>.</p>
    #
    #   Enum, one of: ["INSERT", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute geo_match_constraint
    #   <p>The country from which web requests originate that you want AWS WAF to search for.</p>
    #
    #   @return [GeoMatchConstraint]
    #
    GeoMatchSetUpdate = ::Struct.new(
      :action,
      :geo_match_constraint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute byte_match_set_id
    #   <p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to get. <code>ByteMatchSetId</code> is returned by
    #   			<a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>
    #
    #   @return [String]
    #
    GetByteMatchSetInput = ::Struct.new(
      :byte_match_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute byte_match_set
    #   <p>Information about the <a>ByteMatchSet</a> that you specified in the <code>GetByteMatchSet</code> request. For more information, see the
    #   			following topics:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>ByteMatchSet</a>: Contains <code>ByteMatchSetId</code>, <code>ByteMatchTuples</code>, and <code>Name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ByteMatchTuples</code>: Contains an array of <a>ByteMatchTuple</a> objects. Each <code>ByteMatchTuple</code>
    #   				object contains <a>FieldToMatch</a>, <code>PositionalConstraint</code>, <code>TargetString</code>,
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
    #   @return [ByteMatchSet]
    #
    GetByteMatchSetOutput = ::Struct.new(
      :byte_match_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetChangeTokenInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used in the request. Use this value in a <code>GetChangeTokenStatus</code> request
    #   			to get the current status of the request. </p>
    #
    #   @return [String]
    #
    GetChangeTokenOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The change token for which you want to get the status. This change token was previously returned in the <code>GetChangeToken</code> response.</p>
    #
    #   @return [String]
    #
    GetChangeTokenStatusInput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token_status
    #   <p>The status of the change token.</p>
    #
    #   Enum, one of: ["PROVISIONED", "PENDING", "INSYNC"]
    #
    #   @return [String]
    #
    GetChangeTokenStatusOutput = ::Struct.new(
      :change_token_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute geo_match_set_id
    #   <p>The <code>GeoMatchSetId</code> of the <a>GeoMatchSet</a> that you want to get. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by
    #   			<a>ListGeoMatchSets</a>.</p>
    #
    #   @return [String]
    #
    GetGeoMatchSetInput = ::Struct.new(
      :geo_match_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute geo_match_set
    #   <p>Information about the <a>GeoMatchSet</a> that you specified in the <code>GetGeoMatchSet</code> request. This includes the <code>Type</code>, which for a <code>GeoMatchContraint</code> is always <code>Country</code>, as well as the <code>Value</code>, which is the identifier for a specific country.</p>
    #
    #   @return [GeoMatchSet]
    #
    GetGeoMatchSetOutput = ::Struct.new(
      :geo_match_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ip_set_id
    #   <p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to get. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by
    #   			<a>ListIPSets</a>.</p>
    #
    #   @return [String]
    #
    GetIPSetInput = ::Struct.new(
      :ip_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ip_set
    #   <p>Information about the <a>IPSet</a> that you specified in the <code>GetIPSet</code> request. For more information, see the
    #   			following topics:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>IPSet</a>: Contains <code>IPSetDescriptors</code>, <code>IPSetId</code>, and <code>Name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IPSetDescriptors</code>: Contains an array of <a>IPSetDescriptor</a> objects. Each <code>IPSetDescriptor</code>
    #   				object contains <code>Type</code> and <code>Value</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [IPSet]
    #
    GetIPSetOutput = ::Struct.new(
      :ip_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL for which you want to get the <a>LoggingConfiguration</a>.</p>
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the RuleGroup for which you want to get the policy.</p>
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
    #   <p>The IAM policy attached to the specified RuleGroup.</p>
    #
    #   @return [String]
    #
    GetPermissionPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_id
    #   <p>The <code>RuleId</code> of the <a>RateBasedRule</a> that you want to get.
    #               <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by <a>ListRateBasedRules</a>.</p>
    #
    #   @return [String]
    #
    GetRateBasedRuleInput = ::Struct.new(
      :rule_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_id
    #   <p>The <code>RuleId</code> of the <a>RateBasedRule</a> for which you want to
    #            get a list of <code>ManagedKeys</code>. <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by <a>ListRateBasedRules</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>A null value and not currently used. Do not include this in your request.</p>
    #
    #   @return [String]
    #
    GetRateBasedRuleManagedKeysInput = ::Struct.new(
      :rule_id,
      :next_marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute managed_keys
    #   <p>An array of IP addresses that currently are blocked by the specified <a>RateBasedRule</a>. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_marker
    #   <p>A null value and not currently used.</p>
    #
    #   @return [String]
    #
    GetRateBasedRuleManagedKeysOutput = ::Struct.new(
      :managed_keys,
      :next_marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule
    #   <p>Information about the <a>RateBasedRule</a> that you specified in the
    #               <code>GetRateBasedRule</code> request.</p>
    #
    #   @return [RateBasedRule]
    #
    GetRateBasedRuleOutput = ::Struct.new(
      :rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute regex_match_set_id
    #   <p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to get. <code>RegexMatchSetId</code> is returned by
    #   			<a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>
    #
    #   @return [String]
    #
    GetRegexMatchSetInput = ::Struct.new(
      :regex_match_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute regex_match_set
    #   <p>Information about the <a>RegexMatchSet</a> that you specified in the <code>GetRegexMatchSet</code> request. For more information, see <a>RegexMatchTuple</a>.</p>
    #
    #   @return [RegexMatchSet]
    #
    GetRegexMatchSetOutput = ::Struct.new(
      :regex_match_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute regex_pattern_set_id
    #   <p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to get. <code>RegexPatternSetId</code> is returned by
    #   			<a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>
    #
    #   @return [String]
    #
    GetRegexPatternSetInput = ::Struct.new(
      :regex_pattern_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute regex_pattern_set
    #   <p>Information about the <a>RegexPatternSet</a> that you specified in the <code>GetRegexPatternSet</code> request, including the identifier of the pattern set and the regular expression patterns you want AWS WAF to search for. </p>
    #
    #   @return [RegexPatternSet]
    #
    GetRegexPatternSetOutput = ::Struct.new(
      :regex_pattern_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_group_id
    #   <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to get. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by
    #            <a>ListRuleGroups</a>.</p>
    #
    #   @return [String]
    #
    GetRuleGroupInput = ::Struct.new(
      :rule_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_group
    #   <p>Information about the <a>RuleGroup</a> that you specified in the <code>GetRuleGroup</code> request. </p>
    #
    #   @return [RuleGroup]
    #
    GetRuleGroupOutput = ::Struct.new(
      :rule_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_id
    #   <p>The <code>RuleId</code> of the <a>Rule</a> that you want to get. <code>RuleId</code> is returned by <a>CreateRule</a> and by
    #   			<a>ListRules</a>.</p>
    #
    #   @return [String]
    #
    GetRuleInput = ::Struct.new(
      :rule_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule
    #   <p>Information about the <a>Rule</a> that you specified in the <code>GetRule</code> request.
    #   			For more information, see the following topics:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>Rule</a>: Contains <code>MetricName</code>, <code>Name</code>, an array of <code>Predicate</code> objects,
    #   				and <code>RuleId</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>Predicate</a>: Each <code>Predicate</code> object contains <code>DataId</code>, <code>Negated</code>, and
    #   				<code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Rule]
    #
    GetRuleOutput = ::Struct.new(
      :rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_acl_id
    #   <p>The <code>WebACLId</code> of the <code>WebACL</code> for which you want <code>GetSampledRequests</code> to return a sample of requests.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_id
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
    #   @return [String]
    #
    # @!attribute time_window
    #   <p>The start date and time and the end date and time of the range for which you want <code>GetSampledRequests</code> to return a
    #                           sample of requests. You must specify the times in Coordinated Universal Time (UTC) format. UTC format includes the special
    #                           designator, <code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>. You can specify any time range in the previous three hours.</p>
    #
    #   @return [TimeWindow]
    #
    # @!attribute max_items
    #   <p>The number of requests that you want AWS WAF to return from among the first 5,000 requests that your AWS resource received
    #   			during the time range. If your resource received fewer requests than the value of <code>MaxItems</code>, <code>GetSampledRequests</code>
    #   			returns information about all of them. </p>
    #
    #   @return [Integer]
    #
    GetSampledRequestsInput = ::Struct.new(
      :web_acl_id,
      :rule_id,
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
    #   <p>A complex type that contains detailed information about each of the requests in the sample.</p>
    #
    #   @return [Array<SampledHTTPRequest>]
    #
    # @!attribute population_size
    #   <p>The total number of requests from which <code>GetSampledRequests</code> got a sample of <code>MaxItems</code> requests.
    #   			If <code>PopulationSize</code> is less than <code>MaxItems</code>, the sample includes every request that your AWS resource
    #   			received during the specified time range.</p>
    #
    #   @return [Integer]
    #
    # @!attribute time_window
    #   <p>Usually, <code>TimeWindow</code> is the time range that you specified in the <code>GetSampledRequests</code> request. However,
    #   			if your AWS resource received more than 5,000 requests during the time range that you specified in the request,
    #   			<code>GetSampledRequests</code> returns the time range for the first 5,000 requests. Times are in Coordinated Universal Time (UTC) format.</p>
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

    # @!attribute size_constraint_set_id
    #   <p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to get. <code>SizeConstraintSetId</code> is returned by
    #   			<a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
    #
    #   @return [String]
    #
    GetSizeConstraintSetInput = ::Struct.new(
      :size_constraint_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute size_constraint_set
    #   <p>Information about the <a>SizeConstraintSet</a> that you specified in the <code>GetSizeConstraintSet</code> request. For more information, see the
    #   			following topics:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>SizeConstraintSet</a>: Contains <code>SizeConstraintSetId</code>, <code>SizeConstraints</code>, and <code>Name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SizeConstraints</code>: Contains an array of <a>SizeConstraint</a> objects. Each <code>SizeConstraint</code>
    #   				object contains <a>FieldToMatch</a>, <code>TextTransformation</code>, <code>ComparisonOperator</code>,
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
    #   @return [SizeConstraintSet]
    #
    GetSizeConstraintSetOutput = ::Struct.new(
      :size_constraint_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to get a <a>SqlInjectionMatchSet</a>.</p>
    #
    # @!attribute sql_injection_match_set_id
    #   <p>The <code>SqlInjectionMatchSetId</code> of the <a>SqlInjectionMatchSet</a> that you want to get. <code>SqlInjectionMatchSetId</code>
    #   			is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
    #
    #   @return [String]
    #
    GetSqlInjectionMatchSetInput = ::Struct.new(
      :sql_injection_match_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response to a <a>GetSqlInjectionMatchSet</a> request.</p>
    #
    # @!attribute sql_injection_match_set
    #   <p>Information about the <a>SqlInjectionMatchSet</a> that you specified in the <code>GetSqlInjectionMatchSet</code> request.
    #   			For more information, see the following topics:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>SqlInjectionMatchSet</a>: Contains <code>Name</code>, <code>SqlInjectionMatchSetId</code>, and an array of
    #   				<code>SqlInjectionMatchTuple</code> objects</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>SqlInjectionMatchTuple</a>: Each <code>SqlInjectionMatchTuple</code> object contains <code>FieldToMatch</code> and
    #   				<code>TextTransformation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [SqlInjectionMatchSet]
    #
    GetSqlInjectionMatchSetOutput = ::Struct.new(
      :sql_injection_match_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
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
    #   @return [String]
    #
    GetWebACLForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_acl_summary
    #   <p>Information about the web ACL that you specified in the <code>GetWebACLForResource</code> request. If there is no associated resource, a null WebACLSummary is returned.</p>
    #
    #   @return [WebACLSummary]
    #
    GetWebACLForResourceOutput = ::Struct.new(
      :web_acl_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_acl_id
    #   <p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to get. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by
    #   			<a>ListWebACLs</a>.</p>
    #
    #   @return [String]
    #
    GetWebACLInput = ::Struct.new(
      :web_acl_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_acl
    #   <p>Information about the <a>WebACL</a> that you specified in the <code>GetWebACL</code> request.
    #   			For more information, see the following topics:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>WebACL</a>: Contains <code>DefaultAction</code>, <code>MetricName</code>, <code>Name</code>, an array of
    #   				<code>Rule</code> objects, and <code>WebACLId</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DefaultAction</code> (Data type is <a>WafAction</a>): Contains <code>Type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Rules</code>: Contains an array of <code>ActivatedRule</code> objects, which contain <code>Action</code>,
    #   				<code>Priority</code>, and <code>RuleId</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Action</code>: Contains <code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [WebACL]
    #
    GetWebACLOutput = ::Struct.new(
      :web_acl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to get an <a>XssMatchSet</a>.</p>
    #
    # @!attribute xss_match_set_id
    #   <p>The <code>XssMatchSetId</code> of the <a>XssMatchSet</a> that you want to get. <code>XssMatchSetId</code>
    #   			is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
    #
    #   @return [String]
    #
    GetXssMatchSetInput = ::Struct.new(
      :xss_match_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response to a <a>GetXssMatchSet</a> request.</p>
    #
    # @!attribute xss_match_set
    #   <p>Information about the <a>XssMatchSet</a> that you specified in the <code>GetXssMatchSet</code> request.
    #   			For more information, see the following topics:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>XssMatchSet</a>: Contains <code>Name</code>, <code>XssMatchSetId</code>, and an array of
    #   				<code>XssMatchTuple</code> objects</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>XssMatchTuple</a>: Each <code>XssMatchTuple</code> object contains <code>FieldToMatch</code> and
    #   				<code>TextTransformation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [XssMatchSet]
    #
    GetXssMatchSetOutput = ::Struct.new(
      :xss_match_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>The response from a <a>GetSampledRequests</a> request includes an <code>HTTPHeader</code> complex type that
    # 			appears as <code>Headers</code> in the response syntax. <code>HTTPHeader</code> contains the names and values of
    # 			all of the headers that appear in one of the web requests that were returned by <code>GetSampledRequests</code>. </p>
    #
    # @!attribute name
    #   <p>The name of one of the headers in the sampled web request.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of one of the headers in the sampled web request.</p>
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>The response from a <a>GetSampledRequests</a> request includes an <code>HTTPRequest</code> complex type that
    # 			appears as <code>Request</code> in the response syntax. <code>HTTPRequest</code> contains information about
    # 			one of the web requests that were returned by <code>GetSampledRequests</code>. </p>
    #
    # @!attribute client_ip
    #   <p>The IP address that the request originated from. If the <code>WebACL</code> is associated with a CloudFront distribution,
    #   			this is the value of one of the following fields in CloudFront access logs:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>c-ip</code>, if the viewer did not use an HTTP proxy or a load balancer to send the request</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-forwarded-for</code>, if the viewer did use an HTTP proxy or a load balancer to send the request</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute country
    #   <p>The two-letter country code for the country that the request originated from. For a current list of country codes,
    #   			see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO 3166-1 alpha-2</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute uri
    #   <p>The part of a web request that identifies the resource, for example, <code>/images/daily-ad.jpg</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute member_method
    #   <p>The HTTP method specified in the sampled web request. CloudFront supports the following methods: <code>DELETE</code>,
    #   			<code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, <code>PATCH</code>, <code>POST</code>, and <code>PUT</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute http_version
    #   <p>The HTTP version specified in the sampled web request, for example, <code>HTTP/1.1</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute headers
    #   <p>A complex type that contains two values for each header in the sampled web request: the name of the header and the value of the header.</p>
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 	        <p>Contains one or more IP addresses or blocks of IP addresses specified in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports IPv4 address ranges: /8 and any range between /16 through /32.  AWS WAF supports IPv6 address ranges: /24, /32, /48, /56, /64, and /128.</p>
    # 	        <p>To specify an individual IP address, you specify the four-part IP address followed by a
    #             <code>/32</code>, for example, 192.0.2.0/32. To block a range of IP addresses, you can
    #          specify /8 or any range between /16 through /32 (for IPv4) or /24, /32, /48, /56, /64, or
    #          /128 (for IPv6). For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless
    #             Inter-Domain Routing</a>. </p>
    #
    # @!attribute ip_set_id
    #   <p>The <code>IPSetId</code> for an <code>IPSet</code>. You use <code>IPSetId</code> to get information about an
    #   			<code>IPSet</code> (see <a>GetIPSet</a>), update an <code>IPSet</code> (see <a>UpdateIPSet</a>),
    #   			insert an <code>IPSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and
    #   			delete an <code>IPSet</code> from AWS WAF (see <a>DeleteIPSet</a>).</p>
    #   		       <p>
    #               <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by <a>ListIPSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description of the <a>IPSet</a>. You can't change the name of an <code>IPSet</code> after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_set_descriptors
    #   <p>The IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR notation) that web requests originate from.
    #   			If the <code>WebACL</code> is associated with a CloudFront distribution and the viewer did not use an HTTP proxy or a load balancer to send the request, this is the value of the c-ip field in the CloudFront access logs.</p>
    #
    #   @return [Array<IPSetDescriptor>]
    #
    IPSet = ::Struct.new(
      :ip_set_id,
      :name,
      :ip_set_descriptors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Specifies the IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR format) that web requests originate from.</p>
    #
    # @!attribute type
    #   <p>Specify <code>IPV4</code> or <code>IPV6</code>.</p>
    #
    #   Enum, one of: ["IPV4", "IPV6"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Specify an IPv4 address by using CIDR notation. For example:</p>
    #   		       <ul>
    #               <li>
    #                  <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify
    #   				<code>192.0.2.0/24</code>.</p>
    #               </li>
    #            </ul>
    #   		
    #   	        <p>For more information about CIDR notation, see the Wikipedia entry
    #   	      <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>.</p>
    #   	        <p>Specify an IPv6 address by using CIDR notation. For example:</p>
    #   	        <ul>
    #               <li>
    #   	              <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>
    #   	           </li>
    #               <li>
    #   	              <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>
    #   	           </li>
    #            </ul>
    #
    #   @return [String]
    #
    IPSetDescriptor = ::Struct.new(
      :type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IPSetDescriptorType
    #
    module IPSetDescriptorType
      # No documentation available.
      #
      IPV4 = "IPV4"

      # No documentation available.
      #
      IPV6 = "IPV6"
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Contains the identifier and the name of the <code>IPSet</code>.</p>
    #
    # @!attribute ip_set_id
    #   <p>The <code>IPSetId</code> for an <a>IPSet</a>. You can use <code>IPSetId</code> in a <a>GetIPSet</a> request to get detailed
    #   			information about an <a>IPSet</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description of the <a>IPSet</a>. You can't change the name of an <code>IPSet</code> after you create it.</p>
    #
    #   @return [String]
    #
    IPSetSummary = ::Struct.new(
      :ip_set_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Specifies the type of update to perform to an <a>IPSet</a> with <a>UpdateIPSet</a>.</p>
    #
    # @!attribute action
    #   <p>Specifies whether to insert or delete an IP address with <a>UpdateIPSet</a>.</p>
    #
    #   Enum, one of: ["INSERT", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute ip_set_descriptor
    #   <p>The IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR notation) that web requests originate from.</p>
    #
    #   @return [IPSetDescriptor]
    #
    IPSetUpdate = ::Struct.new(
      :action,
      :ip_set_descriptor,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_group_id
    #   <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> for which you want to get a list of <a>ActivatedRule</a> objects.</p>
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>ActivatedRules</code> than the value of <code>Limit</code>,
    #            AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ActivatedRules</code>.
    #            For the second and subsequent <code>ListActivatedRulesInRuleGroup</code> requests, specify the value of <code>NextMarker</code>
    #            from the previous response to get information about another batch of <code>ActivatedRules</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifies the number of <code>ActivatedRules</code> that you want AWS WAF to return for this request. If you have more <code>ActivatedRules</code> than the number that you specify for <code>Limit</code>, the response includes a
    #            <code>NextMarker</code> value that you can use to get another batch of <code>ActivatedRules</code>.</p>
    #
    #   @return [Integer]
    #
    ListActivatedRulesInRuleGroupInput = ::Struct.new(
      :rule_group_id,
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_marker
    #   <p>If you have more <code>ActivatedRules</code> than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>ActivatedRules</code>, submit another <code>ListActivatedRulesInRuleGroup</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute activated_rules
    #   <p>An array of <code>ActivatedRules</code> objects.</p>
    #
    #   @return [Array<ActivatedRule>]
    #
    ListActivatedRulesInRuleGroupOutput = ::Struct.new(
      :next_marker,
      :activated_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>ByteMatchSets</code> than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ByteMatchSets</code>.
    #   			For the second and subsequent <code>ListByteMatchSets</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of <code>ByteMatchSets</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifies the number of <code>ByteMatchSet</code> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>ByteMatchSets</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>ByteMatchSet</code> objects.</p>
    #
    #   @return [Integer]
    #
    ListByteMatchSetsInput = ::Struct.new(
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_marker
    #   <p>If you have more <code>ByteMatchSet</code> objects than the number that you specified for <code>Limit</code> in the request,
    #   			the response includes a <code>NextMarker</code> value. To list more <code>ByteMatchSet</code> objects, submit another
    #   			<code>ListByteMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the
    #   			<code>NextMarker</code> value in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute byte_match_sets
    #   <p>An array of <a>ByteMatchSetSummary</a> objects.</p>
    #
    #   @return [Array<ByteMatchSetSummary>]
    #
    ListByteMatchSetsOutput = ::Struct.new(
      :next_marker,
      :byte_match_sets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>GeoMatchSet</code>s than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>GeoMatchSet</code> objects.
    #   			For the second and subsequent <code>ListGeoMatchSets</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of <code>GeoMatchSet</code> objects.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifies the number of <code>GeoMatchSet</code> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>GeoMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>GeoMatchSet</code> objects.</p>
    #
    #   @return [Integer]
    #
    ListGeoMatchSetsInput = ::Struct.new(
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_marker
    #   <p>If you have more <code>GeoMatchSet</code> objects than the number that you specified for <code>Limit</code> in the request,
    #   			the response includes a <code>NextMarker</code> value. To list more <code>GeoMatchSet</code> objects, submit another
    #   			<code>ListGeoMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the
    #   			<code>NextMarker</code> value in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute geo_match_sets
    #   <p>An array of <a>GeoMatchSetSummary</a> objects.</p>
    #
    #   @return [Array<GeoMatchSetSummary>]
    #
    ListGeoMatchSetsOutput = ::Struct.new(
      :next_marker,
      :geo_match_sets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>AWS WAF returns a <code>NextMarker</code> value in the response that allows you to
    #            list another group of <code>IPSets</code>. For the second and subsequent
    #               <code>ListIPSets</code> requests, specify the value of <code>NextMarker</code> from the
    #            previous response to get information about another batch of <code>IPSets</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifies the number of <code>IPSet</code> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>IPSet</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>IPSet</code> objects.</p>
    #
    #   @return [Integer]
    #
    ListIPSetsInput = ::Struct.new(
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_marker
    #   <p>To list more <code>IPSet</code> objects, submit another <code>ListIPSets</code>
    #            request, and in the next request use the <code>NextMarker</code> response value as the
    #               <code>NextMarker</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_sets
    #   <p>An array of <a>IPSetSummary</a> objects.</p>
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

    # @!attribute next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>LoggingConfigurations</code> than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>LoggingConfigurations</code>.
    #   			For the second and subsequent <code>ListLoggingConfigurations</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of <code>ListLoggingConfigurations</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifies the number of <code>LoggingConfigurations</code> that you want AWS WAF to return for this request. If you have more <code>LoggingConfigurations</code> than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>LoggingConfigurations</code>.</p>
    #
    #   @return [Integer]
    #
    ListLoggingConfigurationsInput = ::Struct.new(
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute logging_configurations
    #   <p>An array of <a>LoggingConfiguration</a> objects.</p>
    #
    #   @return [Array<LoggingConfiguration>]
    #
    # @!attribute next_marker
    #   <p>If you have more <code>LoggingConfigurations</code> than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>LoggingConfigurations</code>, submit another <code>ListLoggingConfigurations</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
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

    # @!attribute next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>Rules</code>
    #            than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the
    #            response that allows you to list another group of <code>Rules</code>. For the second and
    #            subsequent <code>ListRateBasedRules</code> requests, specify the value of
    #               <code>NextMarker</code> from the previous response to get information about another
    #            batch of <code>Rules</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifies the number of <code>Rules</code> that you want AWS WAF to return for this
    #            request. If you have more <code>Rules</code> than the number that you specify for
    #               <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can
    #            use to get another batch of <code>Rules</code>.</p>
    #
    #   @return [Integer]
    #
    ListRateBasedRulesInput = ::Struct.new(
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_marker
    #   <p>If you have more <code>Rules</code> than the number that you specified for
    #               <code>Limit</code> in the request, the response includes a <code>NextMarker</code>
    #            value. To list more <code>Rules</code>, submit another <code>ListRateBasedRules</code>
    #            request, and specify the <code>NextMarker</code> value from the response in the
    #               <code>NextMarker</code> value in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>An array of <a>RuleSummary</a> objects.</p>
    #
    #   @return [Array<RuleSummary>]
    #
    ListRateBasedRulesOutput = ::Struct.new(
      :next_marker,
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>RegexMatchSet</code> objects than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ByteMatchSets</code>.
    #   			For the second and subsequent <code>ListRegexMatchSets</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of <code>RegexMatchSet</code> objects.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifies the number of <code>RegexMatchSet</code> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>RegexMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>RegexMatchSet</code> objects.</p>
    #
    #   @return [Integer]
    #
    ListRegexMatchSetsInput = ::Struct.new(
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_marker
    #   <p>If you have more <code>RegexMatchSet</code> objects than the number that you specified for <code>Limit</code> in the request,
    #   			the response includes a <code>NextMarker</code> value. To list more <code>RegexMatchSet</code> objects, submit another
    #   			<code>ListRegexMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the
    #   			<code>NextMarker</code> value in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute regex_match_sets
    #   <p>An array of <a>RegexMatchSetSummary</a> objects.</p>
    #
    #   @return [Array<RegexMatchSetSummary>]
    #
    ListRegexMatchSetsOutput = ::Struct.new(
      :next_marker,
      :regex_match_sets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>RegexPatternSet</code> objects than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>RegexPatternSet</code> objects.
    #   			For the second and subsequent <code>ListRegexPatternSets</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of <code>RegexPatternSet</code> objects.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifies the number of <code>RegexPatternSet</code> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>RegexPatternSet</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>RegexPatternSet</code> objects.</p>
    #
    #   @return [Integer]
    #
    ListRegexPatternSetsInput = ::Struct.new(
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_marker
    #   <p>If you have more <code>RegexPatternSet</code> objects than the number that you specified for <code>Limit</code> in the request,
    #   			the response includes a <code>NextMarker</code> value. To list more <code>RegexPatternSet</code> objects, submit another
    #   			<code>ListRegexPatternSets</code> request, and specify the <code>NextMarker</code> value from the response in the
    #   			<code>NextMarker</code> value in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute regex_pattern_sets
    #   <p>An array of <a>RegexPatternSetSummary</a> objects.</p>
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

    # @!attribute web_acl_id
    #   <p>The unique identifier (ID) of the web ACL for which to list the associated resources.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource to list, either an application load balancer or Amazon API Gateway.</p>
    #
    #   Enum, one of: ["APPLICATION_LOAD_BALANCER", "API_GATEWAY"]
    #
    #   @return [String]
    #
    ListResourcesForWebACLInput = ::Struct.new(
      :web_acl_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arns
    #   <p>An array of ARNs (Amazon Resource Names) of the resources associated with the specified web ACL. An array with zero elements is returned if there are no resources associated with the web ACL.</p>
    #
    #   @return [Array<String>]
    #
    ListResourcesForWebACLOutput = ::Struct.new(
      :resource_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>RuleGroups</code> than the value of <code>Limit</code>,
    #            AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>RuleGroups</code>.
    #            For the second and subsequent <code>ListRuleGroups</code> requests, specify the value of <code>NextMarker</code>
    #            from the previous response to get information about another batch of <code>RuleGroups</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifies the number of <code>RuleGroups</code> that you want AWS WAF to return for this request. If you have more <code>RuleGroups</code> than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>RuleGroups</code>.</p>
    #
    #   @return [Integer]
    #
    ListRuleGroupsInput = ::Struct.new(
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_marker
    #   <p>If you have more <code>RuleGroups</code> than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>RuleGroups</code>, submit another <code>ListRuleGroups</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_groups
    #   <p>An array of <a>RuleGroup</a> objects.</p>
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
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>Rules</code> than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>Rules</code>.
    #   			For the second and subsequent <code>ListRules</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of <code>Rules</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifies the number of <code>Rules</code> that you want AWS WAF to return for this request. If you have more 			<code>Rules</code> than the number that you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>
    #
    #   @return [Integer]
    #
    ListRulesInput = ::Struct.new(
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_marker
    #   <p>If you have more <code>Rules</code> than the number that you specified for <code>Limit</code> in the request, 			the response includes a <code>NextMarker</code> value. To list more <code>Rules</code>, submit another
    #   			<code>ListRules</code> request, and specify the <code>NextMarker</code> value from the response in the
    #   			<code>NextMarker</code> value in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>An array of <a>RuleSummary</a> objects.</p>
    #
    #   @return [Array<RuleSummary>]
    #
    ListRulesOutput = ::Struct.new(
      :next_marker,
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>SizeConstraintSets</code> than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>SizeConstraintSets</code>.
    #   			For the second and subsequent <code>ListSizeConstraintSets</code> requests, specify the value of <code>NextMarker</code> 			from the previous response to get information about another batch of <code>SizeConstraintSets</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifies the number of <code>SizeConstraintSet</code> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>SizeConstraintSets</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>SizeConstraintSet</code> objects.</p>
    #
    #   @return [Integer]
    #
    ListSizeConstraintSetsInput = ::Struct.new(
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_marker
    #   <p>If you have more <code>SizeConstraintSet</code> objects than the number that you specified for <code>Limit</code> in the request,
    #   			the response includes a <code>NextMarker</code> value. To list more <code>SizeConstraintSet</code> objects, submit another
    #   			<code>ListSizeConstraintSets</code> request, and specify the <code>NextMarker</code> value from the response in the
    #   			<code>NextMarker</code> value in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute size_constraint_sets
    #   <p>An array of <a>SizeConstraintSetSummary</a> objects.</p>
    #
    #   @return [Array<SizeConstraintSetSummary>]
    #
    ListSizeConstraintSetsOutput = ::Struct.new(
      :next_marker,
      :size_constraint_sets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to list the <a>SqlInjectionMatchSet</a> objects created by the current AWS account.</p>
    #
    # @!attribute next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <a>SqlInjectionMatchSet</a> objects than the value of
    #   			<code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of
    #   			<code>SqlInjectionMatchSets</code>. For the second and subsequent <code>ListSqlInjectionMatchSets</code> requests, specify the
    #   			value of <code>NextMarker</code> from the previous response to get information about another batch of <code>SqlInjectionMatchSets</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifies the number of <a>SqlInjectionMatchSet</a> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>SqlInjectionMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>
    #
    #   @return [Integer]
    #
    ListSqlInjectionMatchSetsInput = ::Struct.new(
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # <p>The response to a <a>ListSqlInjectionMatchSets</a> request.</p>
    #
    # @!attribute next_marker
    #   <p>If you have more <a>SqlInjectionMatchSet</a> objects than the number that you specified for <code>Limit</code> in the request,
    #   			the response includes a <code>NextMarker</code> value. To list more <code>SqlInjectionMatchSet</code> objects, submit another
    #   			<code>ListSqlInjectionMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the
    #   			<code>NextMarker</code> value in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute sql_injection_match_sets
    #   <p>An array of <a>SqlInjectionMatchSetSummary</a> objects.</p>
    #
    #   @return [Array<SqlInjectionMatchSetSummary>]
    #
    ListSqlInjectionMatchSetsOutput = ::Struct.new(
      :next_marker,
      :sql_injection_match_sets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>ByteMatchSets</code>subscribed rule groups than the value of <code>Limit</code>,
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of subscribed rule groups.
    #   			For the second and subsequent <code>ListSubscribedRuleGroupsRequest</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of subscribed rule groups.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifies the number of subscribed rule groups that you want AWS WAF to return for this request. If you have more
    #   			objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of objects.</p>
    #
    #   @return [Integer]
    #
    ListSubscribedRuleGroupsInput = ::Struct.new(
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_marker
    #   <p>If you have more objects than the number that you specified for <code>Limit</code> in the request,
    #   			the response includes a <code>NextMarker</code> value. To list more objects, submit another
    #   			<code>ListSubscribedRuleGroups</code> request, and specify the <code>NextMarker</code> value from the response in the
    #   			<code>NextMarker</code> value in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_groups
    #   <p>An array of <a>RuleGroup</a> objects.</p>
    #
    #   @return [Array<SubscribedRuleGroupSummary>]
    #
    ListSubscribedRuleGroupsOutput = ::Struct.new(
      :next_marker,
      :rule_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_marker
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p></p>
    #
    #   @return [Integer]
    #
    # @!attribute resource_arn
    #   <p></p>
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

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_marker
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute tag_info_for_resource
    #   <p></p>
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

    # @!attribute next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>WebACL</code> objects than the number that you specify
    #   			for <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of
    #   			<code>WebACL</code> objects. For the second and subsequent <code>ListWebACLs</code> requests, specify the value of <code>NextMarker</code>
    #   			from the previous response to get information about another batch of <code>WebACL</code> objects.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifies the number of <code>WebACL</code> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>WebACL</code> objects than the number that you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>WebACL</code> objects.</p>
    #
    #   @return [Integer]
    #
    ListWebACLsInput = ::Struct.new(
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_marker
    #   <p>If you have more <code>WebACL</code> objects than the number that you specified for <code>Limit</code> in the request,
    #   			the response includes a <code>NextMarker</code> value. To list more <code>WebACL</code> objects, submit another
    #   			<code>ListWebACLs</code> request, and specify the <code>NextMarker</code> value from the response in the
    #   			<code>NextMarker</code> value in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute web_ac_ls
    #   <p>An array of <a>WebACLSummary</a> objects.</p>
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

    # <p>A request to list the <a>XssMatchSet</a> objects created by the current AWS account.</p>
    #
    # @!attribute next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <a>XssMatchSet</a> objects than the value of
    #   			<code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of
    #   			<code>XssMatchSets</code>. For the second and subsequent <code>ListXssMatchSets</code> requests, specify the
    #   			value of <code>NextMarker</code> from the previous response to get information about another batch of <code>XssMatchSets</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>Specifies the number of <a>XssMatchSet</a> objects that you want AWS WAF to return for this request. If you have more
    #   			<code>XssMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>
    #
    #   @return [Integer]
    #
    ListXssMatchSetsInput = ::Struct.new(
      :next_marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # <p>The response to a <a>ListXssMatchSets</a> request.</p>
    #
    # @!attribute next_marker
    #   <p>If you have more <a>XssMatchSet</a> objects than the number that you specified for <code>Limit</code> in the request,
    #   			the response includes a <code>NextMarker</code> value. To list more <code>XssMatchSet</code> objects, submit another
    #   			<code>ListXssMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the
    #   			<code>NextMarker</code> value in the next request.</p>
    #
    #   @return [String]
    #
    # @!attribute xss_match_sets
    #   <p>An array of <a>XssMatchSetSummary</a> objects.</p>
    #
    #   @return [Array<XssMatchSetSummary>]
    #
    ListXssMatchSetsOutput = ::Struct.new(
      :next_marker,
      :xss_match_sets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>The Amazon Kinesis Data Firehose, <code>RedactedFields</code>
    #          information, and the web ACL Amazon Resource Name (ARN).</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL that you want to associate with
    #               <code>LogDestinationConfigs</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute log_destination_configs
    #   <p>An array of Amazon Kinesis Data Firehose ARNs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute redacted_fields
    #   <p>The parts of the request that you want redacted from the logs. For
    #            example,
    #            if you redact the cookie field, the cookie field in the firehose will be
    #               <code>xxx</code>. </p>
    #
    #   @return [Array<FieldToMatch>]
    #
    LoggingConfiguration = ::Struct.new(
      :resource_arn,
      :log_destination_configs,
      :redacted_fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MatchFieldType
    #
    module MatchFieldType
      # No documentation available.
      #
      URI = "URI"

      # No documentation available.
      #
      QUERY_STRING = "QUERY_STRING"

      # No documentation available.
      #
      HEADER = "HEADER"

      # No documentation available.
      #
      METHOD = "METHOD"

      # No documentation available.
      #
      BODY = "BODY"

      # No documentation available.
      #
      SINGLE_QUERY_ARG = "SINGLE_QUERY_ARG"

      # No documentation available.
      #
      ALL_QUERY_ARGS = "ALL_QUERY_ARGS"
    end

    # Includes enum constants for MigrationErrorType
    #
    module MigrationErrorType
      # No documentation available.
      #
      ENTITY_NOT_SUPPORTED = "ENTITY_NOT_SUPPORTED"

      # No documentation available.
      #
      ENTITY_NOT_FOUND = "ENTITY_NOT_FOUND"

      # No documentation available.
      #
      S3_BUCKET_NO_PERMISSION = "S3_BUCKET_NO_PERMISSION"

      # No documentation available.
      #
      S3_BUCKET_NOT_ACCESSIBLE = "S3_BUCKET_NOT_ACCESSIBLE"

      # No documentation available.
      #
      S3_BUCKET_NOT_FOUND = "S3_BUCKET_NOT_FOUND"

      # No documentation available.
      #
      S3_BUCKET_INVALID_REGION = "S3_BUCKET_INVALID_REGION"

      # No documentation available.
      #
      S3_INTERNAL_ERROR = "S3_INTERNAL_ERROR"
    end

    # Includes enum constants for ParameterExceptionField
    #
    module ParameterExceptionField
      # No documentation available.
      #
      CHANGE_ACTION = "CHANGE_ACTION"

      # No documentation available.
      #
      WAF_ACTION = "WAF_ACTION"

      # No documentation available.
      #
      WAF_OVERRIDE_ACTION = "WAF_OVERRIDE_ACTION"

      # No documentation available.
      #
      PREDICATE_TYPE = "PREDICATE_TYPE"

      # No documentation available.
      #
      IPSET_TYPE = "IPSET_TYPE"

      # No documentation available.
      #
      BYTE_MATCH_FIELD_TYPE = "BYTE_MATCH_FIELD_TYPE"

      # No documentation available.
      #
      SQL_INJECTION_MATCH_FIELD_TYPE = "SQL_INJECTION_MATCH_FIELD_TYPE"

      # No documentation available.
      #
      BYTE_MATCH_TEXT_TRANSFORMATION = "BYTE_MATCH_TEXT_TRANSFORMATION"

      # No documentation available.
      #
      BYTE_MATCH_POSITIONAL_CONSTRAINT = "BYTE_MATCH_POSITIONAL_CONSTRAINT"

      # No documentation available.
      #
      SIZE_CONSTRAINT_COMPARISON_OPERATOR = "SIZE_CONSTRAINT_COMPARISON_OPERATOR"

      # No documentation available.
      #
      GEO_MATCH_LOCATION_TYPE = "GEO_MATCH_LOCATION_TYPE"

      # No documentation available.
      #
      GEO_MATCH_LOCATION_VALUE = "GEO_MATCH_LOCATION_VALUE"

      # No documentation available.
      #
      RATE_KEY = "RATE_KEY"

      # No documentation available.
      #
      RULE_TYPE = "RULE_TYPE"

      # No documentation available.
      #
      NEXT_MARKER = "NEXT_MARKER"

      # No documentation available.
      #
      RESOURCE_ARN = "RESOURCE_ARN"

      # No documentation available.
      #
      TAGS = "TAGS"

      # No documentation available.
      #
      TAG_KEYS = "TAG_KEYS"
    end

    # Includes enum constants for ParameterExceptionReason
    #
    module ParameterExceptionReason
      # No documentation available.
      #
      INVALID_OPTION = "INVALID_OPTION"

      # No documentation available.
      #
      ILLEGAL_COMBINATION = "ILLEGAL_COMBINATION"

      # No documentation available.
      #
      ILLEGAL_ARGUMENT = "ILLEGAL_ARGUMENT"

      # No documentation available.
      #
      INVALID_TAG_KEY = "INVALID_TAG_KEY"
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 	        <p>Specifies the <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, <a>RegexMatchSet</a>,  <a>GeoMatchSet</a>, and <a>SizeConstraintSet</a> objects
    # 			that you want to add to a <code>Rule</code> and, for each object, indicates whether you want to negate the settings, for example, requests that do
    # 			NOT originate from the IP address 192.0.2.44. </p>
    #
    # @!attribute negated
    #   <p>Set <code>Negated</code> to <code>False</code> if you want AWS WAF to allow, block, or count requests based on the settings in the
    #   		       specified <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, <a>RegexMatchSet</a>,  <a>GeoMatchSet</a>,  or <a>SizeConstraintSet</a>.
    #   			For example, if an <code>IPSet</code> includes the IP address <code>192.0.2.44</code>, AWS WAF will allow or block requests based on that IP address.</p>
    #   		       <p>Set <code>Negated</code> to <code>True</code> if you want AWS WAF to allow or block a request based on the negation
    #   		       of the settings in the <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, <a>RegexMatchSet</a>,  <a>GeoMatchSet</a>, or <a>SizeConstraintSet</a>.
    #   			For example, if an <code>IPSet</code> includes the IP address <code>192.0.2.44</code>, AWS WAF will allow, block, or count requests based on
    #   			all IP addresses <i>except</i>
    #               <code>192.0.2.44</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute type
    #   <p>The type of predicate in a <code>Rule</code>, such as <code>ByteMatch</code> or <code>IPSet</code>.</p>
    #
    #   Enum, one of: ["IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"]
    #
    #   @return [String]
    #
    # @!attribute data_id
    #   <p>A unique identifier for a predicate in a <code>Rule</code>, such as <code>ByteMatchSetId</code> or <code>IPSetId</code>.
    #   			The ID is returned by the corresponding <code>Create</code> or <code>List</code> command.</p>
    #
    #   @return [String]
    #
    Predicate = ::Struct.new(
      :negated,
      :type,
      :data_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PredicateType
    #
    module PredicateType
      # No documentation available.
      #
      IP_MATCH = "IPMatch"

      # No documentation available.
      #
      BYTE_MATCH = "ByteMatch"

      # No documentation available.
      #
      SQL_INJECTION_MATCH = "SqlInjectionMatch"

      # No documentation available.
      #
      GEO_MATCH = "GeoMatch"

      # No documentation available.
      #
      SIZE_CONSTRAINT = "SizeConstraint"

      # No documentation available.
      #
      XSS_MATCH = "XssMatch"

      # No documentation available.
      #
      REGEX_MATCH = "RegexMatch"
    end

    # @!attribute logging_configuration
    #   <p>The Amazon Kinesis Data Firehose that contains the inspected traffic
    #            information, the redacted fields details, and the Amazon Resource Name (ARN) of the web ACL
    #            to monitor.</p>
    #            <note>
    #               <p>When specifying <code>Type</code> in <code>RedactedFields</code>, you must use one of
    #               the following values: <code>URI</code>, <code>QUERY_STRING</code>, <code>HEADER</code>,
    #               or <code>METHOD</code>.</p>
    #            </note>
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
    #   <p>The <a>LoggingConfiguration</a> that you submitted in the request.</p>
    #
    #   @return [LoggingConfiguration]
    #
    PutLoggingConfigurationOutput = ::Struct.new(
      :logging_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the RuleGroup to which you want to attach the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The policy to attach to the specified RuleGroup.</p>
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>A <code>RateBasedRule</code> is identical to a regular <a>Rule</a>, with
    #          one addition: a <code>RateBasedRule</code> counts the number of requests that arrive from a
    #          specified IP address every five minutes. For example, based on recent requests that you've
    #          seen from an attacker, you might create a <code>RateBasedRule</code> that includes the
    #          following conditions: </p>
    #          <ul>
    #             <li>
    #                <p>The requests come from 192.0.2.44.</p>
    #             </li>
    #             <li>
    #                <p>They contain the value <code>BadBot</code> in the <code>User-Agent</code>
    #                header.</p>
    #             </li>
    #          </ul>
    #          <p>In the rule, you also define the rate limit as 1,000.</p>
    #          <p>Requests that meet both of these conditions and exceed 1,000 requests every five
    #          minutes trigger the rule's action (block or count), which is defined in the web
    #          ACL.</p>
    #
    # @!attribute rule_id
    #   <p>A unique identifier for a <code>RateBasedRule</code>. You use <code>RuleId</code> to
    #            get more information about a <code>RateBasedRule</code> (see <a>GetRateBasedRule</a>), update a <code>RateBasedRule</code> (see <a>UpdateRateBasedRule</a>), insert a <code>RateBasedRule</code> into a
    #               <code>WebACL</code> or delete one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>RateBasedRule</code> from AWS WAF (see <a>DeleteRateBasedRule</a>).</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description for a <code>RateBasedRule</code>. You can't change the
    #            name of a <code>RateBasedRule</code> after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_name
    #   <p>A friendly name or description for the metrics for a <code>RateBasedRule</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #            whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change the name of the metric after you create the
    #               <code>RateBasedRule</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute match_predicates
    #   <p>The <code>Predicates</code> object contains one <code>Predicate</code> element for
    #            each <a>ByteMatchSet</a>, <a>IPSet</a>, or <a>SqlInjectionMatchSet</a> object that you want to include in a
    #               <code>RateBasedRule</code>.</p>
    #
    #   @return [Array<Predicate>]
    #
    # @!attribute rate_key
    #   <p>The field that AWS WAF uses to determine if requests are likely arriving from single
    #            source and thus subject to rate monitoring. The only valid value for <code>RateKey</code>
    #            is <code>IP</code>. <code>IP</code> indicates that requests arriving from the same IP
    #            address are subject to the <code>RateLimit</code> that is specified in the
    #               <code>RateBasedRule</code>.</p>
    #
    #   Enum, one of: ["IP"]
    #
    #   @return [String]
    #
    # @!attribute rate_limit
    #   <p>The maximum number of requests, which have an identical value in the field specified
    #            by the <code>RateKey</code>, allowed in a five-minute period. If the number of requests
    #            exceeds the <code>RateLimit</code> and the other predicates specified in the rule are also
    #            met, AWS WAF triggers the action that is specified for this rule.</p>
    #
    #   @return [Integer]
    #
    RateBasedRule = ::Struct.new(
      :rule_id,
      :name,
      :metric_name,
      :match_predicates,
      :rate_key,
      :rate_limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.rate_limit ||= 0
      end
    end

    # Includes enum constants for RateKey
    #
    module RateKey
      # No documentation available.
      #
      IP = "IP"
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>In a <a>GetRegexMatchSet</a> request, <code>RegexMatchSet</code> is a complex type that contains the <code>RegexMatchSetId</code> and
    # 			<code>Name</code> of a <code>RegexMatchSet</code>, and the values that you specified when you updated the <code>RegexMatchSet</code>.</p>
    #          <p> The values are contained in a <code>RegexMatchTuple</code> object, which specify the parts of web requests that you want AWS WAF to inspect and the values that you want AWS WAF to search for. If a <code>RegexMatchSet</code> contains more than one
    # 			<code>RegexMatchTuple</code> object, a request needs to match the settings in only one <code>ByteMatchTuple</code>
    # 			to be considered a match.</p>
    #
    # @!attribute regex_match_set_id
    #   <p>The <code>RegexMatchSetId</code> for a <code>RegexMatchSet</code>. You use <code>RegexMatchSetId</code> to get information about a
    #   			<code>RegexMatchSet</code> (see <a>GetRegexMatchSet</a>), update a <code>RegexMatchSet</code> (see <a>UpdateRegexMatchSet</a>),
    #   			insert a <code>RegexMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and
    #   			delete a <code>RegexMatchSet</code> from AWS WAF (see <a>DeleteRegexMatchSet</a>).</p>
    #   		       <p>
    #               <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description of the <a>RegexMatchSet</a>. You can't change <code>Name</code> after you create a
    #   			<code>RegexMatchSet</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute regex_match_tuples
    #   <p>Contains an array of <a>RegexMatchTuple</a> objects. Each <code>RegexMatchTuple</code>
    #   				object contains: </p>
    #   		       <ul>
    #               <li>
    #                  <p>The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the <code>User-Agent</code> header. </p>
    #               </li>
    #               <li>
    #                  <p>The identifier of the pattern (a regular expression) that you want AWS WAF to look for. For more information, see <a>RegexPatternSet</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [Array<RegexMatchTuple>]
    #
    RegexMatchSet = ::Struct.new(
      :regex_match_set_id,
      :name,
      :regex_match_tuples,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returned by <a>ListRegexMatchSets</a>. Each <code>RegexMatchSetSummary</code> object includes the <code>Name</code> and
    # 			<code>RegexMatchSetId</code> for one <a>RegexMatchSet</a>.</p>
    #
    # @!attribute regex_match_set_id
    #   <p>The <code>RegexMatchSetId</code> for a <code>RegexMatchSet</code>. You use <code>RegexMatchSetId</code> to get information about a <code>RegexMatchSet</code>,
    #   			update a <code>RegexMatchSet</code>, remove a <code>RegexMatchSet</code> from a <code>Rule</code>, and delete a <code>RegexMatchSet</code> from AWS WAF.</p>
    #   		       <p>
    #               <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description of the <a>RegexMatchSet</a>. You can't change <code>Name</code> after you create a <code>RegexMatchSet</code>.</p>
    #
    #   @return [String]
    #
    RegexMatchSetSummary = ::Struct.new(
      :regex_match_set_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>In an <a>UpdateRegexMatchSet</a> request, <code>RegexMatchSetUpdate</code> specifies whether to insert or delete a
    #          <a>RegexMatchTuple</a> and includes the settings for the <code>RegexMatchTuple</code>.</p>
    #
    # @!attribute action
    #   <p>Specifies whether to insert or delete a <a>RegexMatchTuple</a>.</p>
    #
    #   Enum, one of: ["INSERT", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute regex_match_tuple
    #   <p>Information about the part of a web request that you want AWS WAF to inspect and the identifier of the regular expression (regex) pattern that you want AWS WAF to search for.
    #            If you specify <code>DELETE</code> for the value of <code>Action</code>, the <code>RegexMatchTuple</code> values must
    #            exactly match the values in the <code>RegexMatchTuple</code> that you want to delete from the <code>RegexMatchSet</code>.</p>
    #
    #   @return [RegexMatchTuple]
    #
    RegexMatchSetUpdate = ::Struct.new(
      :action,
      :regex_match_tuple,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. Each <code>RegexMatchTuple</code> object contains: </p>
    # 		       <ul>
    #             <li>
    #                <p>The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the <code>User-Agent</code> header. </p>
    #             </li>
    #             <li>
    #                <p>The identifier of the pattern (a regular expression) that you want AWS WAF to look for. For more information, see <a>RegexPatternSet</a>. </p>
    #             </li>
    #             <li>
    #                <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p>
    # 			         </li>
    #          </ul>
    #
    # @!attribute field_to_match
    #   <p>Specifies where in a web request to look for the <code>RegexPatternSet</code>.</p>
    #
    #   @return [FieldToMatch]
    #
    # @!attribute text_transformation
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
    #   			If you specify a transformation, AWS WAF performs the transformation on <code>RegexPatternSet</code> before inspecting a request for a match.</p>	
    #            <p>You can only specify a single type of TextTransformation.</p>			
    #   		       <p>
    #               <b>CMD_LINE</b>
    #            </p>
    #   		       <p>When you're concerned that attackers are injecting an operating system commandline command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p>
    #   		       <ul>
    #               <li>
    #                  <p>Delete the following characters: \ " ' ^</p>
    #               </li>
    #               <li>
    #                  <p>Delete spaces before the following characters: / (</p>
    #               </li>
    #               <li>
    #                  <p>Replace the following characters with a space: , ;</p>
    #               </li>
    #               <li>
    #                  <p>Replace multiple spaces with one space</p>
    #               </li>
    #               <li>
    #                  <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p>
    #               </li>
    #            </ul>
    #   		
    #   		       <p>
    #               <b>COMPRESS_WHITE_SPACE</b>
    #            </p>
    #   		       <p>Use this option to replace the following characters with a space character (decimal 32):</p>
    #   		       <ul>
    #               <li>
    #                  <p>\f, formfeed, decimal 12</p>
    #               </li>
    #               <li>
    #                  <p>\t, tab, decimal 9</p>
    #               </li>
    #               <li>
    #                  <p>\n, newline, decimal 10</p>
    #               </li>
    #               <li>
    #                  <p>\r, carriage return, decimal 13</p>
    #               </li>
    #               <li>
    #                  <p>\v, vertical tab, decimal 11</p>
    #               </li>
    #               <li>
    #                  <p>non-breaking space, decimal 160</p>
    #               </li>
    #            </ul>
    #   		       <p>
    #               <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p>		
    #   		       <p>
    #               <b>HTML_ENTITY_DECODE</b>
    #            </p>
    #   		       <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs
    #   			the following operations:</p>
    #   		       <ul>
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
    #                  <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand) xhhhh;</code>, with the corresponding
    #   				characters</p>
    #               </li>
    #               <li>
    #                  <p>Replaces characters that are represented in decimal format, <code>(ampersand) nnnn;</code>, with the corresponding
    #   				characters</p>
    #               </li>
    #            </ul>		
    #   		       <p>
    #               <b>LOWERCASE</b>
    #            </p>
    #   		       <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p>		
    #   		       <p>
    #               <b>URL_DECODE</b>
    #            </p>
    #   		       <p>Use this option to decode a URL-encoded value.</p>		
    #   		       <p>
    #               <b>NONE</b>
    #            </p>
    #   		       <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>
    #
    #   Enum, one of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #
    #   @return [String]
    #
    # @!attribute regex_pattern_set_id
    #   <p>The <code>RegexPatternSetId</code> for a <code>RegexPatternSet</code>. You use <code>RegexPatternSetId</code> to get information about a
    #   			<code>RegexPatternSet</code> (see <a>GetRegexPatternSet</a>), update a <code>RegexPatternSet</code> (see <a>UpdateRegexPatternSet</a>),
    #   			insert a <code>RegexPatternSet</code> into a <code>RegexMatchSet</code> or delete one from a <code>RegexMatchSet</code> (see <a>UpdateRegexMatchSet</a>), and
    #   			delete an <code>RegexPatternSet</code> from AWS WAF (see <a>DeleteRegexPatternSet</a>).</p>
    #   		       <p>
    #   		          <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>
    #
    #   @return [String]
    #
    RegexMatchTuple = ::Struct.new(
      :field_to_match,
      :text_transformation,
      :regex_pattern_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>The <code>RegexPatternSet</code> specifies the regular expression (regex) pattern that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those requests.</p>
    #
    # @!attribute regex_pattern_set_id
    #   <p>The identifier for the <code>RegexPatternSet</code>. You use <code>RegexPatternSetId</code> to get information about a <code>RegexPatternSet</code>,
    #            update a <code>RegexPatternSet</code>, remove a <code>RegexPatternSet</code> from a <code>RegexMatchSet</code>, and delete a <code>RegexPatternSet</code> from AWS WAF.</p>
    #            <p>
    #               <code>RegexMatchSetId</code> is returned by <a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description of the <a>RegexPatternSet</a>. You can't change <code>Name</code> after you create a <code>RegexPatternSet</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute regex_pattern_strings
    #   <p>Specifies the regular expression (regex) patterns that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>.</p>
    #
    #   @return [Array<String>]
    #
    RegexPatternSet = ::Struct.new(
      :regex_pattern_set_id,
      :name,
      :regex_pattern_strings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Returned by <a>ListRegexPatternSets</a>. Each <code>RegexPatternSetSummary</code> object includes the <code>Name</code> and
    #          <code>RegexPatternSetId</code> for one <a>RegexPatternSet</a>.</p>
    #
    # @!attribute regex_pattern_set_id
    #   <p>The <code>RegexPatternSetId</code> for a <code>RegexPatternSet</code>. You use <code>RegexPatternSetId</code> to get information about a <code>RegexPatternSet</code>,
    #            update a <code>RegexPatternSet</code>, remove a <code>RegexPatternSet</code> from a <code>RegexMatchSet</code>, and delete a <code>RegexPatternSet</code> from AWS WAF.</p>
    #            <p>
    #               <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description of the <a>RegexPatternSet</a>. You can't change <code>Name</code> after you create a <code>RegexPatternSet</code>.</p>
    #
    #   @return [String]
    #
    RegexPatternSetSummary = ::Struct.new(
      :regex_pattern_set_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>In an <a>UpdateRegexPatternSet</a> request, <code>RegexPatternSetUpdate</code> specifies whether to insert or delete a
    #          <code>RegexPatternString</code> and includes the settings for the <code>RegexPatternString</code>.</p>
    #
    # @!attribute action
    #   <p>Specifies whether to insert or delete a <code>RegexPatternString</code>.</p>
    #
    #   Enum, one of: ["INSERT", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute regex_pattern_string
    #   <p>Specifies the regular expression (regex) pattern that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>.</p>
    #
    #   @return [String]
    #
    RegexPatternSetUpdate = ::Struct.new(
      :action,
      :regex_pattern_string,
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
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>A combination of <a>ByteMatchSet</a>, <a>IPSet</a>, and/or <a>SqlInjectionMatchSet</a> objects that identify the web requests that you
    # 			want to allow, block, or count. For example, you might create a <code>Rule</code> that includes the following predicates:</p>
    # 		       <ul>
    #             <li>
    #                <p>An <code>IPSet</code> that causes AWS WAF to search for web requests that originate from the IP address <code>192.0.2.44</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A <code>ByteMatchSet</code> that causes AWS WAF to search for web requests for which the value of the <code>User-Agent</code>
    # 				header is <code>BadBot</code>.</p>
    #             </li>
    #          </ul>
    # 		       <p>To match the settings in this <code>Rule</code>, a request must originate from <code>192.0.2.44</code> AND include a <code>User-Agent</code>
    # 			header for which the value is <code>BadBot</code>.</p>
    #
    # @!attribute rule_id
    #   <p>A unique identifier for a <code>Rule</code>. You use <code>RuleId</code> to get more information about a <code>Rule</code> (see <a>GetRule</a>),
    #   			update a <code>Rule</code> (see <a>UpdateRule</a>), insert a <code>Rule</code> into a <code>WebACL</code> or delete a
    #   			one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>Rule</code> from AWS WAF (see <a>DeleteRule</a>).</p>
    #   		       <p>
    #               <code>RuleId</code> is returned by <a>CreateRule</a> and by <a>ListRules</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The friendly name or description for the <code>Rule</code>. You can't change the name of a <code>Rule</code> after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_name
    #   <p>A friendly name or description for the metrics for this <code>Rule</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #            whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change <code>MetricName</code> after you create the <code>Rule</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute predicates
    #   <p>The <code>Predicates</code> object contains one <code>Predicate</code> element for each <a>ByteMatchSet</a>, <a>IPSet</a>, or
    #   			<a>SqlInjectionMatchSet</a> object that you want to include in a <code>Rule</code>.</p>
    #
    #   @return [Array<Predicate>]
    #
    Rule = ::Struct.new(
      :rule_id,
      :name,
      :metric_name,
      :predicates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>A collection of predefined rules that you can add to a web ACL.</p>
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
    #
    # @!attribute rule_group_id
    #   <p>A unique identifier for a <code>RuleGroup</code>. You use <code>RuleGroupId</code> to get more information about a <code>RuleGroup</code> (see <a>GetRuleGroup</a>),
    #            update a <code>RuleGroup</code> (see <a>UpdateRuleGroup</a>), insert a <code>RuleGroup</code> into a <code>WebACL</code> or delete a
    #            one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>RuleGroup</code> from AWS WAF (see <a>DeleteRuleGroup</a>).</p>
    #            <p>
    #               <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by <a>ListRuleGroups</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The friendly name or description for the <code>RuleGroup</code>. You can't change the name of a <code>RuleGroup</code> after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_name
    #   <p>A friendly name or description for the metrics for this <code>RuleGroup</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #            whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change the name of the metric after you create the <code>RuleGroup</code>.</p>
    #
    #   @return [String]
    #
    RuleGroup = ::Struct.new(
      :rule_group_id,
      :name,
      :metric_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Contains the identifier and the friendly name or description of the <code>RuleGroup</code>.</p>
    #
    # @!attribute rule_group_id
    #   <p>A unique identifier for a <code>RuleGroup</code>. You use <code>RuleGroupId</code> to get more information about a <code>RuleGroup</code> (see <a>GetRuleGroup</a>),
    #            update a <code>RuleGroup</code> (see <a>UpdateRuleGroup</a>), insert a <code>RuleGroup</code> into a <code>WebACL</code> or delete
    #            one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>RuleGroup</code> from AWS WAF (see <a>DeleteRuleGroup</a>).</p>
    #            <p>
    #               <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by <a>ListRuleGroups</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description of the <a>RuleGroup</a>. You can't change the name of a <code>RuleGroup</code> after you create it.</p>
    #
    #   @return [String]
    #
    RuleGroupSummary = ::Struct.new(
      :rule_group_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>Specifies an <code>ActivatedRule</code> and indicates whether you want to add it to a
    #          <code>RuleGroup</code> or delete it from a <code>RuleGroup</code>.</p>
    #
    # @!attribute action
    #   <p>Specify <code>INSERT</code> to add an <code>ActivatedRule</code> to a <code>RuleGroup</code>. Use <code>DELETE</code> to remove an
    #            <code>ActivatedRule</code> from a <code>RuleGroup</code>.</p>
    #
    #   Enum, one of: ["INSERT", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute activated_rule
    #   <p>The <code>ActivatedRule</code> object specifies a <code>Rule</code> that you want to insert or delete,
    #            the priority of the <code>Rule</code> in the <code>WebACL</code>, and the action that you want AWS WAF to take when a web request matches the <code>Rule</code>
    #            (<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>).</p>
    #
    #   @return [ActivatedRule]
    #
    RuleGroupUpdate = ::Struct.new(
      :action,
      :activated_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Contains the identifier and the friendly name or description of the <code>Rule</code>.</p>
    #
    # @!attribute rule_id
    #   <p>A unique identifier for a <code>Rule</code>. You use <code>RuleId</code> to get more information about a <code>Rule</code> (see <a>GetRule</a>),
    #   			update a <code>Rule</code> (see <a>UpdateRule</a>), insert a <code>Rule</code> into a <code>WebACL</code> or delete
    #   			one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>Rule</code> from AWS WAF (see <a>DeleteRule</a>).</p>
    #   		       <p>
    #               <code>RuleId</code> is returned by <a>CreateRule</a> and by <a>ListRules</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description of the <a>Rule</a>. You can't change the name of a <code>Rule</code> after you create it.</p>
    #
    #   @return [String]
    #
    RuleSummary = ::Struct.new(
      :rule_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Specifies a <code>Predicate</code> (such as an <code>IPSet</code>) and indicates whether you want to add it to a
    # 			<code>Rule</code> or delete it from a <code>Rule</code>.</p>
    #
    # @!attribute action
    #   <p>Specify <code>INSERT</code> to add a <code>Predicate</code> to a <code>Rule</code>. Use <code>DELETE</code> to remove a
    #   			<code>Predicate</code> from a <code>Rule</code>.</p>
    #
    #   Enum, one of: ["INSERT", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute predicate
    #   <p>The ID of the <code>Predicate</code> (such as an <code>IPSet</code>) that you want to add to a <code>Rule</code>.</p>
    #
    #   @return [Predicate]
    #
    RuleUpdate = ::Struct.new(
      :action,
      :predicate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>The response from a <a>GetSampledRequests</a> request includes a <code>SampledHTTPRequests</code> complex type that
    # 			appears as <code>SampledRequests</code> in the response syntax. <code>SampledHTTPRequests</code> contains one
    # 			<code>SampledHTTPRequest</code> object for each web request that is returned by <code>GetSampledRequests</code>.</p>
    #
    # @!attribute request
    #   <p>A complex type that contains detailed information about the request.</p>
    #
    #   @return [HTTPRequest]
    #
    # @!attribute weight
    #   <p>A value that indicates how one result in the response relates proportionally to other results in the response.
    #   			A result that has a weight of <code>2</code> represents roughly twice as many CloudFront web requests as a result
    #   			that has a weight of <code>1</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timestamp
    #   <p>The time at which AWS WAF received the request from your AWS resource, in Unix time format (in seconds).</p>
    #
    #   @return [Time]
    #
    # @!attribute action
    #   <p>The action for the <code>Rule</code> that the request matched: <code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_within_rule_group
    #   <p>This value is returned if the <code>GetSampledRequests</code>  request specifies the ID of a <code>RuleGroup</code> rather than the ID of an individual rule. <code>RuleWithinRuleGroup</code> is the rule within the specified <code>RuleGroup</code> that matched the request listed in the response.</p>
    #
    #   @return [String]
    #
    SampledHTTPRequest = ::Struct.new(
      :request,
      :weight,
      :timestamp,
      :action,
      :rule_within_rule_group,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.weight ||= 0
      end
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Specifies a constraint on the size of a part of the web request. AWS WAF uses the <code>Size</code>, <code>ComparisonOperator</code>, and <code>FieldToMatch</code> to build
    # 			an expression in the form of "<code>Size</code>
    #             <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>". If that expression is true, the
    # 			<code>SizeConstraint</code> is considered to match.</p>
    #
    # @!attribute field_to_match
    #   <p>Specifies where in a web request to look for the size constraint.</p>
    #
    #   @return [FieldToMatch]
    #
    # @!attribute text_transformation
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
    #   			If you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting it for a match.</p>
    #            <p>You can only specify a single type of TextTransformation.</p>			
    #   		       <p>Note that if you choose <code>BODY</code> for the value of <code>Type</code>, you must choose <code>NONE</code> for <code>TextTransformation</code>
    #   			because CloudFront forwards only the first 8192 bytes for inspection. </p>		
    #   		       <p>
    #               <b>NONE</b>
    #            </p>
    #   		       <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>		
    #   		       <p>
    #               <b>CMD_LINE</b>
    #            </p>
    #   		       <p>When you're concerned that attackers are injecting an operating system command line command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p>
    #   		       <ul>
    #               <li>
    #                  <p>Delete the following characters: \ " ' ^</p>
    #               </li>
    #               <li>
    #                  <p>Delete spaces before the following characters: / (</p>
    #               </li>
    #               <li>
    #                  <p>Replace the following characters with a space: , ;</p>
    #               </li>
    #               <li>
    #                  <p>Replace multiple spaces with one space</p>
    #               </li>
    #               <li>
    #                  <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p>
    #               </li>
    #            </ul>		
    #   		       <p>
    #               <b>COMPRESS_WHITE_SPACE</b>
    #            </p>
    #   		       <p>Use this option to replace the following characters with a space character (decimal 32):</p>
    #   		       <ul>
    #               <li>
    #                  <p>\f, formfeed, decimal 12</p>
    #               </li>
    #               <li>
    #                  <p>\t, tab, decimal 9</p>
    #               </li>
    #               <li>
    #                  <p>\n, newline, decimal 10</p>
    #               </li>
    #               <li>
    #                  <p>\r, carriage return, decimal 13</p>
    #               </li>
    #               <li>
    #                  <p>\v, vertical tab, decimal 11</p>
    #               </li>
    #               <li>
    #                  <p>non-breaking space, decimal 160</p>
    #               </li>
    #            </ul>
    #   		       <p>
    #               <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p>		
    #   		       <p>
    #               <b>HTML_ENTITY_DECODE</b>
    #            </p>
    #   		       <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs
    #   			the following operations:</p>
    #   		       <ul>
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
    #                  <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand) xhhhh;</code>, with the corresponding
    #   				characters</p>
    #               </li>
    #               <li>
    #                  <p>Replaces characters that are represented in decimal format, <code>(ampersand) nnnn;</code>, with the corresponding
    #   				characters</p>
    #               </li>
    #            </ul>		
    #   		       <p>
    #               <b>LOWERCASE</b>
    #            </p>
    #   		       <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p>		
    #   		       <p>
    #               <b>URL_DECODE</b>
    #            </p>
    #   		       <p>Use this option to decode a URL-encoded value.</p>
    #
    #   Enum, one of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #
    #   @return [String]
    #
    # @!attribute comparison_operator
    #   <p>The type of comparison you want AWS WAF to perform. AWS WAF uses this in combination with the provided <code>Size</code> and <code>FieldToMatch</code>
    #   			to build an expression in the form of "<code>Size</code>
    #               <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>". If that expression
    #   			is true, the <code>SizeConstraint</code> is considered to match.</p>
    #   		       <p>
    #               <b>EQ</b>: Used to test if the <code>Size</code> is equal to the size of the <code>FieldToMatch</code>
    #            </p>
    #   		       <p>
    #               <b>NE</b>: Used to test if the <code>Size</code> is not equal to the size of the <code>FieldToMatch</code>
    #            </p>
    #   		       <p>
    #               <b>LE</b>: Used to test if the <code>Size</code> is less than or equal to the size of the <code>FieldToMatch</code>
    #            </p>
    #   		       <p>
    #               <b>LT</b>: Used to test if the <code>Size</code> is strictly less than the size of the <code>FieldToMatch</code>
    #            </p>
    #   		       <p>
    #               <b>GE</b>: Used to test if the <code>Size</code> is greater than or equal to the size of the <code>FieldToMatch</code>
    #            </p>
    #   		       <p>
    #               <b>GT</b>: Used to test if the <code>Size</code> is strictly greater than the size of the <code>FieldToMatch</code>
    #            </p>
    #
    #   Enum, one of: ["EQ", "NE", "LE", "LT", "GE", "GT"]
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>The size in bytes that you want AWS WAF to compare against the size of the specified <code>FieldToMatch</code>. AWS WAF uses this in combination
    #   			with <code>ComparisonOperator</code> and <code>FieldToMatch</code> to build an expression in the form of "<code>Size</code>
    #               <code>ComparisonOperator</code> size
    #   			in bytes of <code>FieldToMatch</code>". If that expression is true, the <code>SizeConstraint</code> is considered to match.</p>
    #   		       <p>Valid values for size are 0 - 21474836480 bytes (0 - 20 GB).</p>
    #   		       <p>If you specify <code>URI</code> for the value of <code>Type</code>, the / in the URI counts as one character.
    #   			For example, the URI <code>/logo.jpg</code> is nine characters long.</p>
    #
    #   @return [Integer]
    #
    SizeConstraint = ::Struct.new(
      :field_to_match,
      :text_transformation,
      :comparison_operator,
      :size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size ||= 0
      end
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>A complex type that contains <code>SizeConstraint</code> objects, which specify the parts of web requests that you
    # 			want AWS WAF to inspect the size of. If a <code>SizeConstraintSet</code> contains more than one <code>SizeConstraint</code>
    # 			object, a request only needs to match one constraint to be considered a match.</p>
    #
    # @!attribute size_constraint_set_id
    #   <p>A unique identifier for a <code>SizeConstraintSet</code>. You use <code>SizeConstraintSetId</code> to get information about a
    #   			<code>SizeConstraintSet</code> (see <a>GetSizeConstraintSet</a>), update a <code>SizeConstraintSet</code>
    #   			(see <a>UpdateSizeConstraintSet</a>), insert a <code>SizeConstraintSet</code> into a <code>Rule</code> or
    #   			delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SizeConstraintSet</code> from AWS WAF
    #   			(see <a>DeleteSizeConstraintSet</a>).</p>
    #   		       <p>
    #               <code>SizeConstraintSetId</code> is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name, if any, of the <code>SizeConstraintSet</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute size_constraints
    #   <p>Specifies the parts of web requests that you want to inspect the size of.</p>
    #
    #   @return [Array<SizeConstraint>]
    #
    SizeConstraintSet = ::Struct.new(
      :size_constraint_set_id,
      :name,
      :size_constraints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>The <code>Id</code> and <code>Name</code> of a <code>SizeConstraintSet</code>.</p>
    #
    # @!attribute size_constraint_set_id
    #   <p>A unique identifier for a <code>SizeConstraintSet</code>. You use <code>SizeConstraintSetId</code> to get information about a
    #   			<code>SizeConstraintSet</code> (see <a>GetSizeConstraintSet</a>), update a <code>SizeConstraintSet</code>
    #   			(see <a>UpdateSizeConstraintSet</a>), insert a <code>SizeConstraintSet</code> into a <code>Rule</code> or
    #   			delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SizeConstraintSet</code> from AWS WAF
    #   			(see <a>DeleteSizeConstraintSet</a>).</p>
    #   		       <p>
    #               <code>SizeConstraintSetId</code> is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>SizeConstraintSet</code>, if any.</p>
    #
    #   @return [String]
    #
    SizeConstraintSetSummary = ::Struct.new(
      :size_constraint_set_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Specifies the part of a web request that you want to inspect the size of and indicates whether you want to
    # 			add the specification to a <a>SizeConstraintSet</a> or delete it from a <code>SizeConstraintSet</code>.</p>
    #
    # @!attribute action
    #   <p>Specify <code>INSERT</code> to add a <a>SizeConstraintSetUpdate</a> to a <a>SizeConstraintSet</a>.
    #   			Use <code>DELETE</code> to remove a <code>SizeConstraintSetUpdate</code> from a <code>SizeConstraintSet</code>.</p>
    #
    #   Enum, one of: ["INSERT", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute size_constraint
    #   <p>Specifies a constraint on the size of a part of the web request. AWS WAF uses the <code>Size</code>, <code>ComparisonOperator</code>, and <code>FieldToMatch</code> to build
    #   			an expression in the form of "<code>Size</code>
    #               <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>". If that expression is true, the
    #   			<code>SizeConstraint</code> is considered to match.</p>
    #
    #   @return [SizeConstraint]
    #
    SizeConstraintSetUpdate = ::Struct.new(
      :action,
      :size_constraint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>A complex type that contains <code>SqlInjectionMatchTuple</code> objects, which specify the parts of web requests that you
    # 			want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header. If a
    # 			<code>SqlInjectionMatchSet</code> contains more than one <code>SqlInjectionMatchTuple</code> object, a request needs to
    # 			include snippets of SQL code in only one of the specified parts of the request to be considered a match.</p>
    #
    # @!attribute sql_injection_match_set_id
    #   <p>A unique identifier for a <code>SqlInjectionMatchSet</code>. You use <code>SqlInjectionMatchSetId</code> to get information about a
    #   			<code>SqlInjectionMatchSet</code> (see <a>GetSqlInjectionMatchSet</a>), update a <code>SqlInjectionMatchSet</code>
    #   			(see <a>UpdateSqlInjectionMatchSet</a>), insert a <code>SqlInjectionMatchSet</code> into a <code>Rule</code> or
    #   			delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SqlInjectionMatchSet</code> from AWS WAF
    #   			(see <a>DeleteSqlInjectionMatchSet</a>).</p>
    #   		       <p>
    #               <code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name, if any, of the <code>SqlInjectionMatchSet</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute sql_injection_match_tuples
    #   <p>Specifies the parts of web requests that you want to inspect for snippets of malicious SQL code.</p>
    #
    #   @return [Array<SqlInjectionMatchTuple>]
    #
    SqlInjectionMatchSet = ::Struct.new(
      :sql_injection_match_set_id,
      :name,
      :sql_injection_match_tuples,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>The <code>Id</code> and <code>Name</code> of a <code>SqlInjectionMatchSet</code>.</p>
    #
    # @!attribute sql_injection_match_set_id
    #   <p>A unique identifier for a <code>SqlInjectionMatchSet</code>. You use <code>SqlInjectionMatchSetId</code> to get information about a
    #   			<code>SqlInjectionMatchSet</code> (see <a>GetSqlInjectionMatchSet</a>), update a <code>SqlInjectionMatchSet</code>
    #   			(see <a>UpdateSqlInjectionMatchSet</a>), insert a <code>SqlInjectionMatchSet</code> into a <code>Rule</code> or
    #   			delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SqlInjectionMatchSet</code> from AWS WAF
    #   			(see <a>DeleteSqlInjectionMatchSet</a>).</p>
    #   		       <p>
    #               <code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>SqlInjectionMatchSet</code>, if any, specified by <code>Id</code>.</p>
    #
    #   @return [String]
    #
    SqlInjectionMatchSetSummary = ::Struct.new(
      :sql_injection_match_set_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Specifies the part of a web request that you want to inspect for snippets of malicious SQL code and indicates whether you want to
    # 			add the specification to a <a>SqlInjectionMatchSet</a> or delete it from a <code>SqlInjectionMatchSet</code>.</p>
    #
    # @!attribute action
    #   <p>Specify <code>INSERT</code> to add a <a>SqlInjectionMatchSetUpdate</a> to a <a>SqlInjectionMatchSet</a>.
    #   			Use <code>DELETE</code> to remove a <code>SqlInjectionMatchSetUpdate</code> from a <code>SqlInjectionMatchSet</code>.</p>
    #
    #   Enum, one of: ["INSERT", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute sql_injection_match_tuple
    #   <p>Specifies the part of a web request that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.</p>
    #
    #   @return [SqlInjectionMatchTuple]
    #
    SqlInjectionMatchSetUpdate = ::Struct.new(
      :action,
      :sql_injection_match_tuple,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Specifies the part of a web request that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.</p>
    #
    # @!attribute field_to_match
    #   <p>Specifies where in a web request to look for snippets of malicious SQL code.</p>
    #
    #   @return [FieldToMatch]
    #
    # @!attribute text_transformation
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
    #   			If you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting it for a match.</p>
    #            <p>You can only specify a single type of TextTransformation.</p>			
    #   		       <p>
    #               <b>CMD_LINE</b>
    #            </p>
    #   		       <p>When you're concerned that attackers are injecting an operating system command line
    #            command and using unusual formatting to disguise some or all of the command, use this
    #            option to perform the following transformations:</p>
    #   		       <ul>
    #               <li>
    #                  <p>Delete the following characters: \ " ' ^</p>
    #               </li>
    #               <li>
    #                  <p>Delete spaces before the following characters: / (</p>
    #               </li>
    #               <li>
    #                  <p>Replace the following characters with a space: , ;</p>
    #               </li>
    #               <li>
    #                  <p>Replace multiple spaces with one space</p>
    #               </li>
    #               <li>
    #                  <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p>
    #               </li>
    #            </ul>		
    #   		       <p>
    #               <b>COMPRESS_WHITE_SPACE</b>
    #            </p>
    #   		       <p>Use this option to replace the following characters with a space character (decimal 32):</p>
    #   		       <ul>
    #               <li>
    #                  <p>\f, formfeed, decimal 12</p>
    #               </li>
    #               <li>
    #                  <p>\t, tab, decimal 9</p>
    #               </li>
    #               <li>
    #                  <p>\n, newline, decimal 10</p>
    #               </li>
    #               <li>
    #                  <p>\r, carriage return, decimal 13</p>
    #               </li>
    #               <li>
    #                  <p>\v, vertical tab, decimal 11</p>
    #               </li>
    #               <li>
    #                  <p>non-breaking space, decimal 160</p>
    #               </li>
    #            </ul>
    #   		       <p>
    #               <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p>		
    #   		       <p>
    #               <b>HTML_ENTITY_DECODE</b>
    #            </p>
    #   		       <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs
    #   			the following operations:</p>
    #   		       <ul>
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
    #                  <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand) xhhhh;</code>, with the corresponding
    #   				characters</p>
    #               </li>
    #               <li>
    #                  <p>Replaces characters that are represented in decimal format, <code>(ampersand) nnnn;</code>, with the corresponding
    #   				characters</p>
    #               </li>
    #            </ul>		
    #   		       <p>
    #               <b>LOWERCASE</b>
    #            </p>
    #   		       <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p>		
    #   		       <p>
    #               <b>URL_DECODE</b>
    #            </p>
    #   		       <p>Use this option to decode a URL-encoded value.</p>		
    #   		       <p>
    #               <b>NONE</b>
    #            </p>
    #   		       <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>
    #
    #   Enum, one of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #
    #   @return [String]
    #
    SqlInjectionMatchTuple = ::Struct.new(
      :field_to_match,
      :text_transformation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>A summary of the rule groups you are subscribed to.</p>
    #
    # @!attribute rule_group_id
    #   <p>A unique identifier for a <code>RuleGroup</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description of the <code>RuleGroup</code>. You can't change the name of a <code>RuleGroup</code> after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_name
    #   <p>A friendly name or description for the metrics for this <code>RuleGroup</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #            whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change the name of the metric after you create the <code>RuleGroup</code>.</p>
    #
    #   @return [String]
    #
    SubscribedRuleGroupSummary = ::Struct.new(
      :rule_group_id,
      :name,
      :metric_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #         <p>A tag associated with an AWS resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing. For example, you might set the tag key to "customer" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.</p>
    #         <p>Tagging is only available through the API, SDKs, and CLI. You can't manage or view tags through the AWS WAF Classic console. You can tag the AWS resources that you manage through AWS WAF Classic: web ACLs, rule groups, and rules.  </p>
    #
    # @!attribute key
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p></p>
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #         <p>Information for a tag associated with an AWS resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing. For example, you might set the tag key to "customer" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.</p>
    #         <p>Tagging is only available through the API, SDKs, and CLI. You can't manage or view tags through the AWS WAF Classic console. You can tag the AWS resources that you manage through AWS WAF Classic: web ACLs, rule groups, and rules.  </p>
    #
    # @!attribute resource_arn
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute tag_list
    #   <p></p>
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
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p></p>
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

    # Includes enum constants for TextTransformation
    #
    module TextTransformation
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
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>In a <a>GetSampledRequests</a> request, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range
    # 			for which you want AWS WAF to return a sample of web requests.</p>
    #                     <p>You must specify the times in Coordinated Universal Time (UTC) format. UTC format includes the special
    #                         designator, <code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>. </p>
    # 		       <p>In a <a>GetSampledRequests</a> response, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range
    # 			for which AWS WAF actually returned a sample of web requests. AWS WAF gets the specified number of requests from among the first
    # 			5,000 requests that your AWS resource receives during the specified time period. If your resource receives more than 5,000
    # 			requests during that period, AWS WAF stops sampling after the 5,000th request. In that case, <code>EndTime</code>
    # 			is the time that AWS WAF received the 5,000th request. </p>
    #
    # @!attribute start_time
    #   <p>The beginning of the time range from which you want <code>GetSampledRequests</code> to return a sample of the
    #                     requests that your AWS resource received. You must specify the date and time in Coordinated Universal Time (UTC) format.
    #                     UTC format includes the special designator, <code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>.
    #                         You can specify any time range in the previous three hours.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end of the time range from which you want <code>GetSampledRequests</code> to return a sample of the
    #                     requests that your AWS resource received. You must specify the date and time in Coordinated Universal Time (UTC) format.
    #                     UTC format includes the special designator, <code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>.
    #                         You can specify any time range in the previous three hours.</p>
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
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p></p>
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

    # @!attribute byte_match_set_id
    #   <p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to update. <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by
    #   			<a>ListByteMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute updates
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
    #   @return [Array<ByteMatchSetUpdate>]
    #
    UpdateByteMatchSetInput = ::Struct.new(
      :byte_match_set_id,
      :change_token,
      :updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateByteMatchSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    UpdateByteMatchSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute geo_match_set_id
    #   <p>The <code>GeoMatchSetId</code> of the <a>GeoMatchSet</a> that you want to update. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by
    #   			<a>ListGeoMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute updates
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
    #   @return [Array<GeoMatchSetUpdate>]
    #
    UpdateGeoMatchSetInput = ::Struct.new(
      :geo_match_set_id,
      :change_token,
      :updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateGeoMatchSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    UpdateGeoMatchSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ip_set_id
    #   <p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to update. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by
    #   			<a>ListIPSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute updates
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
    #   @return [Array<IPSetUpdate>]
    #
    UpdateIPSetInput = ::Struct.new(
      :ip_set_id,
      :change_token,
      :updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateIPSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    UpdateIPSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_id
    #   <p>The <code>RuleId</code> of the <code>RateBasedRule</code> that you want to update.
    #               <code>RuleId</code> is returned by <code>CreateRateBasedRule</code> and by <a>ListRateBasedRules</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute updates
    #   <p>An array of <code>RuleUpdate</code> objects that you want to insert into or delete
    #            from a <a>RateBasedRule</a>. </p>
    #
    #   @return [Array<RuleUpdate>]
    #
    # @!attribute rate_limit
    #   <p>The maximum number of requests, which have an identical value in the field specified by the <code>RateKey</code>, allowed in a
    #            five-minute period. If the number of requests exceeds the <code>RateLimit</code> and the other
    #            predicates specified in the rule are also met,
    #            AWS WAF triggers the action that is specified for this rule.</p>
    #
    #   @return [Integer]
    #
    UpdateRateBasedRuleInput = ::Struct.new(
      :rule_id,
      :change_token,
      :updates,
      :rate_limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.rate_limit ||= 0
      end
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the
    #               <code>UpdateRateBasedRule</code> request. You can also use this value to query the
    #            status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    UpdateRateBasedRuleOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute regex_match_set_id
    #   <p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to update. <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by
    #   			<a>ListRegexMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute updates
    #   <p>An array of <code>RegexMatchSetUpdate</code> objects that you want to insert into or delete from a <a>RegexMatchSet</a>.
    #   			For more information, see <a>RegexMatchTuple</a>.</p>
    #
    #   @return [Array<RegexMatchSetUpdate>]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    UpdateRegexMatchSetInput = ::Struct.new(
      :regex_match_set_id,
      :updates,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRegexMatchSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    UpdateRegexMatchSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute regex_pattern_set_id
    #   <p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to update. <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by
    #   			<a>ListRegexPatternSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute updates
    #   <p>An array of <code>RegexPatternSetUpdate</code> objects that you want to insert into or delete from a <a>RegexPatternSet</a>.</p>
    #
    #   @return [Array<RegexPatternSetUpdate>]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    UpdateRegexPatternSetInput = ::Struct.new(
      :regex_pattern_set_id,
      :updates,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRegexPatternSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    UpdateRegexPatternSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_group_id
    #   <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to update. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by
    #            <a>ListRuleGroups</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute updates
    #   <p>An array of <code>RuleGroupUpdate</code> objects that you want to insert into or delete from a
    #            <a>RuleGroup</a>.</p>
    #   		       <p>You can only insert <code>REGULAR</code> rules into a rule group.</p>
    #   		       <p>
    #               <code>ActivatedRule|OverrideAction</code> applies only when updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this case you do not use <code>ActivatedRule|Action</code>.  For all other update requests, <code>ActivatedRule|Action</code> is used instead of <code>ActivatedRule|OverrideAction</code>.</p>
    #
    #   @return [Array<RuleGroupUpdate>]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    UpdateRuleGroupInput = ::Struct.new(
      :rule_group_id,
      :updates,
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRuleGroup</code> request. You can also use this value
    #            to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    UpdateRuleGroupOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_id
    #   <p>The <code>RuleId</code> of the <code>Rule</code> that you want to update. <code>RuleId</code> is returned by
    #   			<code>CreateRule</code> and by <a>ListRules</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute updates
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
    #   @return [Array<RuleUpdate>]
    #
    UpdateRuleInput = ::Struct.new(
      :rule_id,
      :change_token,
      :updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRule</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    UpdateRuleOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute size_constraint_set_id
    #   <p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to update. <code>SizeConstraintSetId</code>
    #   			is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute updates
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
    #   @return [Array<SizeConstraintSetUpdate>]
    #
    UpdateSizeConstraintSetInput = ::Struct.new(
      :size_constraint_set_id,
      :change_token,
      :updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateSizeConstraintSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    UpdateSizeConstraintSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to update a <a>SqlInjectionMatchSet</a>.</p>
    #
    # @!attribute sql_injection_match_set_id
    #   <p>The <code>SqlInjectionMatchSetId</code> of the <code>SqlInjectionMatchSet</code> that you want to update.
    #   			<code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute updates
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
    #   @return [Array<SqlInjectionMatchSetUpdate>]
    #
    UpdateSqlInjectionMatchSetInput = ::Struct.new(
      :sql_injection_match_set_id,
      :change_token,
      :updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response to an <a>UpdateSqlInjectionMatchSets</a> request.</p>
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateSqlInjectionMatchSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    UpdateSqlInjectionMatchSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_acl_id
    #   <p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to update. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by
    #   			<a>ListWebACLs</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute updates
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
    #   @return [Array<WebACLUpdate>]
    #
    # @!attribute default_action
    #   <p>A default action for the web ACL, either ALLOW or BLOCK. AWS WAF performs the default
    #            action if a request doesn't match the criteria in any of the rules in a web ACL.</p>
    #
    #   @return [WafAction]
    #
    UpdateWebACLInput = ::Struct.new(
      :web_acl_id,
      :change_token,
      :updates,
      :default_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateWebACL</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    UpdateWebACLOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to update an <a>XssMatchSet</a>.</p>
    #
    # @!attribute xss_match_set_id
    #   <p>The <code>XssMatchSetId</code> of the <code>XssMatchSet</code> that you want to update.
    #   			<code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute updates
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
    #   @return [Array<XssMatchSetUpdate>]
    #
    UpdateXssMatchSetInput = ::Struct.new(
      :xss_match_set_id,
      :change_token,
      :updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response to an <a>UpdateXssMatchSets</a> request.</p>
    #
    # @!attribute change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateXssMatchSet</code> request. You can also use this value
    #   			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    #
    #   @return [String]
    #
    UpdateXssMatchSetOutput = ::Struct.new(
      :change_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFBadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The name specified is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFDisallowedNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed due to a problem with the migration. The failure cause is provided in the exception, in the <code>MigrationErrorType</code>: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ENTITY_NOT_SUPPORTED</code> - The web ACL has an unsupported entity but the <code>IgnoreUnsupportedType</code> is not set to true.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ENTITY_NOT_FOUND</code> - The web ACL doesn't exist.  </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>S3_BUCKET_NO_PERMISSION</code> - You don't have permission to perform the <code>PutObject</code> action to the specified Amazon S3 bucket.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>S3_BUCKET_NOT_ACCESSIBLE</code> - The bucket policy doesn't allow AWS WAF to perform the <code>PutObject</code> action in the bucket.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>S3_BUCKET_NOT_FOUND</code> - The S3 bucket doesn't exist. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>S3_BUCKET_INVALID_REGION</code> - The S3 bucket is not in the same Region as the web ACL.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>S3_INTERNAL_ERROR</code> - AWS WAF failed to create the template in the S3 bucket for another reason.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute migration_error_type
    #   Enum, one of: ["ENTITY_NOT_SUPPORTED", "ENTITY_NOT_FOUND", "S3_BUCKET_NO_PERMISSION", "S3_BUCKET_NOT_ACCESSIBLE", "S3_BUCKET_NOT_FOUND", "S3_BUCKET_INVALID_REGION", "S3_INTERNAL_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute migration_error_reason
    #
    #   @return [String]
    #
    WAFEntityMigrationException = ::Struct.new(
      :message,
      :migration_error_type,
      :migration_error_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because of a system problem, even though the request was valid. Retry your request.</p>
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

    # <p>The operation failed because you tried to create, update, or delete an object by using an invalid account identifier.</p>
    #
    WAFInvalidAccountException = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because there was nothing to do. For example:</p>
    # 			      <ul>
    #             <li>
    #                <p>You tried to remove a <code>Rule</code> from a <code>WebACL</code>, but the <code>Rule</code> isn't in the specified <code>WebACL</code>.</p>
    #             </li>
    #             <li>
    #                <p>You tried to remove an IP address from an <code>IPSet</code>, but the IP address isn't in the specified <code>IPSet</code>.</p>
    #             </li>
    #             <li>
    #                <p>You tried to remove a <code>ByteMatchTuple</code> from a <code>ByteMatchSet</code>, but the <code>ByteMatchTuple</code>
    # 					isn't in the specified <code>WebACL</code>.</p>
    #             </li>
    #             <li>
    #                <p>You tried to add a <code>Rule</code> to a <code>WebACL</code>, but the <code>Rule</code> already exists in the
    # 					specified <code>WebACL</code>.</p>
    #             </li>
    #             <li>
    #                <p>You tried to add a <code>ByteMatchTuple</code> to a <code>ByteMatchSet</code>, but the <code>ByteMatchTuple</code>
    #                already exists in the specified <code>WebACL</code>.</p>
    #             </li>
    #          </ul>
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

    # <p>The operation failed because AWS WAF didn't recognize a parameter in the request. For example:</p>
    # 			      <ul>
    #             <li>
    #                <p>You specified an invalid parameter name.</p>
    #             </li>
    #             <li>
    #                <p>You specified an invalid value.</p>
    #             </li>
    #             <li>
    #                <p>You tried to update an object (<code>ByteMatchSet</code>, <code>IPSet</code>, <code>Rule</code>, or <code>WebACL</code>)
    # 					using an action other than <code>INSERT</code> or <code>DELETE</code>.</p>
    #             </li>
    #             <li>
    #                <p>You tried to create a <code>WebACL</code> with a <code>DefaultAction</code>
    #                   <code>Type</code> other than
    # 					<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p>
    #             </li>
    #             <li>
    # 		 	           <p>You tried to create a <code>RateBasedRule</code> with a <code>RateKey</code> value other than <code>IP</code>.</p>
    # 		          </li>
    #             <li>
    #                <p>You tried to update a <code>WebACL</code> with a <code>WafAction</code>
    #                   <code>Type</code> other than
    # 					<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p>
    #             </li>
    #             <li>
    #                <p>You tried to update a <code>ByteMatchSet</code> with a <code>FieldToMatch</code>
    #                   <code>Type</code> other than
    # 					HEADER, METHOD, QUERY_STRING, URI, or BODY.</p>
    #             </li>
    #             <li>
    #                <p>You tried to update a <code>ByteMatchSet</code> with a <code>Field</code> of <code>HEADER</code>
    # 					but no value for <code>Data</code>.</p>
    #             </li>
    #             <li>
    # 			   		       <p>Your request references an ARN that is malformed, or corresponds to a resource with which a web ACL cannot be associated.</p>
    # 			   	     </li>
    #          </ul>
    #
    # @!attribute field
    #   Enum, one of: ["CHANGE_ACTION", "WAF_ACTION", "WAF_OVERRIDE_ACTION", "PREDICATE_TYPE", "IPSET_TYPE", "BYTE_MATCH_FIELD_TYPE", "SQL_INJECTION_MATCH_FIELD_TYPE", "BYTE_MATCH_TEXT_TRANSFORMATION", "BYTE_MATCH_POSITIONAL_CONSTRAINT", "SIZE_CONSTRAINT_COMPARISON_OPERATOR", "GEO_MATCH_LOCATION_TYPE", "GEO_MATCH_LOCATION_VALUE", "RATE_KEY", "RULE_TYPE", "NEXT_MARKER", "RESOURCE_ARN", "TAGS", "TAG_KEYS"]
    #
    #   @return [String]
    #
    # @!attribute parameter
    #
    #   @return [String]
    #
    # @!attribute reason
    #   Enum, one of: ["INVALID_OPTION", "ILLEGAL_COMBINATION", "ILLEGAL_ARGUMENT", "INVALID_TAG_KEY"]
    #
    #   @return [String]
    #
    WAFInvalidParameterException = ::Struct.new(
      :field,
      :parameter,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because the specified policy is not in the proper format. </p>
    #          <p>The policy is subject to the following restrictions:</p>
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

    # <p>The regular expression (regex) you specified in <code>RegexPatternString</code> is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFInvalidRegexPatternException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation exceeds a resource limit, for example, the maximum number of <code>WebACL</code> objects that you can create
    # 			for an AWS account. For more information, see
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/limits.html">Limits</a> in the <i>AWS WAF Developer Guide</i>.</p>
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

    # <p>The operation failed because you tried to delete an object that isn't empty. For example:</p>
    # 		       <ul>
    #             <li>
    #                <p>You tried to delete a <code>WebACL</code> that still contains one or more <code>Rule</code> objects.</p>
    #             </li>
    #             <li>
    #                <p>You tried to delete a <code>Rule</code> that still contains one or more <code>ByteMatchSet</code> objects
    # 				or other predicates.</p>
    #             </li>
    #             <li>
    #                <p>You tried to delete a <code>ByteMatchSet</code> that contains one or more <code>ByteMatchTuple</code> objects.</p>
    #             </li>
    #             <li>
    #                <p>You tried to delete an <code>IPSet</code> that references one or more IP addresses.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFNonEmptyEntityException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because you tried to add an object to or delete an object from another object that doesn't exist. For example:</p>
    # 		       <ul>
    #             <li>
    #                <p>You tried to add a <code>Rule</code> to or delete a <code>Rule</code> from a <code>WebACL</code> that doesn't exist.</p>
    #             </li>
    #             <li>
    #                <p>You tried to add a <code>ByteMatchSet</code> to or delete a <code>ByteMatchSet</code> from a <code>Rule</code> that doesn't exist.</p>
    #             </li>
    #             <li>
    #                <p>You tried to add an IP address to or delete an IP address from an <code>IPSet</code> that doesn't exist.</p>
    #             </li>
    #             <li>
    #                <p>You tried to add a <code>ByteMatchTuple</code> to or delete a <code>ByteMatchTuple</code> from a <code>ByteMatchSet</code>
    # 				that doesn't exist.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFNonexistentContainerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because the referenced object doesn't exist.</p>
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

    # <p>The operation failed because you tried to delete an object that is still in use. For example:</p>
    # 		       <ul>
    #             <li>
    #                <p>You tried to delete a <code>ByteMatchSet</code> that is still referenced by a <code>Rule</code>.</p>
    #             </li>
    #             <li>
    #                <p>You tried to delete a <code>Rule</code> that is still referenced by a <code>WebACL</code>.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFReferencedItemException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>AWS WAF is not able to access the service linked role. This can be caused by a previous <code>PutLoggingConfiguration</code> request, which can lock the service linked role for about 20 seconds. Please try your request again. The service linked role can also be locked by a previous <code>DeleteServiceLinkedRole</code> request, which can lock the role for 15 minutes or more. If you recently made a <code>DeleteServiceLinkedRole</code>, wait at least 15 minutes and try the request again. If you receive this same exception again, you will have to wait additional time until the role is unlocked.</p>
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

    # <p>The operation failed because you tried to create, update, or delete an object by using a change token that has already been used.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WAFStaleDataException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified subscription does not exist.</p>
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

    # <p></p>
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

    # <p></p>
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

    # <p>The operation failed because the entity
    #       referenced is temporarily unavailable. Retry your request.</p>
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>For the action that is associated with a rule in a <code>WebACL</code>, specifies the action that you want AWS WAF to perform when a
    # 			web request matches all of the conditions in a rule. For the default action in a <code>WebACL</code>, specifies the action that you want
    # 			AWS WAF to take when a web request doesn't match all of the conditions in any of the rules in a <code>WebACL</code>. </p>
    #
    # @!attribute type
    #   <p>Specifies how you want AWS WAF to respond to requests that match the settings in a <code>Rule</code>. Valid settings include the following:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW</code>: AWS WAF allows requests</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BLOCK</code>: AWS WAF blocks requests</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COUNT</code>: AWS WAF increments a counter of the requests that match all of the conditions in the rule.
    #   				AWS WAF then continues to inspect the web request based on the remaining rules in the web ACL. You can't specify <code>COUNT</code>
    #   				for the default action for a <code>WebACL</code>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["BLOCK", "ALLOW", "COUNT"]
    #
    #   @return [String]
    #
    WafAction = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WafActionType
    #
    module WafActionType
      # No documentation available.
      #
      BLOCK = "BLOCK"

      # No documentation available.
      #
      ALLOW = "ALLOW"

      # No documentation available.
      #
      COUNT = "COUNT"
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    #          <p>The action to take if any rule within the <code>RuleGroup</code> matches a request. </p>
    #
    # @!attribute type
    #   <p>
    #               <code>COUNT</code> overrides the action specified by the individual rule within a <code>RuleGroup</code> . If set to <code>NONE</code>, the rule's action will take place.</p>
    #
    #   Enum, one of: ["NONE", "COUNT"]
    #
    #   @return [String]
    #
    WafOverrideAction = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WafOverrideActionType
    #
    module WafOverrideActionType
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      COUNT = "COUNT"
    end

    # Includes enum constants for WafRuleType
    #
    module WafRuleType
      # No documentation available.
      #
      REGULAR = "REGULAR"

      # No documentation available.
      #
      RATE_BASED = "RATE_BASED"

      # No documentation available.
      #
      GROUP = "GROUP"
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Contains the <code>Rules</code> that identify the requests that you want to allow, block, or count. In a <code>WebACL</code>, you also specify a
    # 			default action (<code>ALLOW</code> or <code>BLOCK</code>), and the action for each <code>Rule</code> that you add to a
    # 			<code>WebACL</code>, for example, block requests from specified IP addresses or block requests from specified referrers.
    # 			You also associate the <code>WebACL</code> with a CloudFront distribution to identify the requests that you want AWS WAF to filter.
    # 			If you add more than one <code>Rule</code> to a <code>WebACL</code>, a request needs to match only one of the specifications
    # 			to be allowed, blocked, or counted. For more information, see <a>UpdateWebACL</a>.</p>
    #
    # @!attribute web_acl_id
    #   <p>A unique identifier for a <code>WebACL</code>. You use <code>WebACLId</code> to get information about a <code>WebACL</code>
    #   			(see <a>GetWebACL</a>), update a <code>WebACL</code> (see <a>UpdateWebACL</a>), and delete a <code>WebACL</code> from AWS WAF
    #   			(see <a>DeleteWebACL</a>).</p>
    #   		       <p>
    #               <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by <a>ListWebACLs</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description of the <code>WebACL</code>. You can't change the name of a <code>WebACL</code> after you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_name
    #   <p>A friendly name or description for the metrics for this <code>WebACL</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #            whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change <code>MetricName</code> after you create the <code>WebACL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute default_action
    #   <p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. The action is specified by the
    #   			<a>WafAction</a> object.</p>
    #
    #   @return [WafAction]
    #
    # @!attribute rules
    #   <p>An array that contains the action for each <code>Rule</code> in a <code>WebACL</code>, the priority of the <code>Rule</code>,
    #   			and the ID of the <code>Rule</code>.</p>
    #
    #   @return [Array<ActivatedRule>]
    #
    # @!attribute web_acl_arn
    #   <p>Tha Amazon Resource Name (ARN) of the web ACL.</p>
    #
    #   @return [String]
    #
    WebACL = ::Struct.new(
      :web_acl_id,
      :name,
      :metric_name,
      :default_action,
      :rules,
      :web_acl_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Contains the identifier and the name or description of the <a>WebACL</a>.</p>
    #
    # @!attribute web_acl_id
    #   <p>A unique identifier for a <code>WebACL</code>. You use <code>WebACLId</code> to get information about a <code>WebACL</code>
    #   			(see <a>GetWebACL</a>), update a <code>WebACL</code> (see <a>UpdateWebACL</a>), and delete a <code>WebACL</code> from AWS WAF
    #   			(see <a>DeleteWebACL</a>).</p>
    #   		       <p>
    #               <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by <a>ListWebACLs</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name or description of the <a>WebACL</a>. You can't change the name of a <code>WebACL</code> after you create it.</p>
    #
    #   @return [String]
    #
    WebACLSummary = ::Struct.new(
      :web_acl_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Specifies whether to insert a <code>Rule</code> into or delete a <code>Rule</code> from a <code>WebACL</code>.</p>
    #
    # @!attribute action
    #   <p>Specifies whether to insert a <code>Rule</code> into or delete a <code>Rule</code> from a <code>WebACL</code>.</p>
    #
    #   Enum, one of: ["INSERT", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute activated_rule
    #   <p>The <code>ActivatedRule</code> object in an <a>UpdateWebACL</a> request specifies a <code>Rule</code> that you want to insert or delete,
    #            the priority of the <code>Rule</code> in the <code>WebACL</code>, and the action that you want AWS WAF to take when a web request matches the <code>Rule</code>
    #            (<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>).</p>
    #
    #   @return [ActivatedRule]
    #
    WebACLUpdate = ::Struct.new(
      :action,
      :activated_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>A complex type that contains <code>XssMatchTuple</code> objects, which specify the parts of web requests that you
    # 			want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header. If a
    # 			<code>XssMatchSet</code> contains more than one <code>XssMatchTuple</code> object, a request needs to
    # 			include cross-site scripting attacks in only one of the specified parts of the request to be considered a match.</p>
    #
    # @!attribute xss_match_set_id
    #   <p>A unique identifier for an <code>XssMatchSet</code>. You use <code>XssMatchSetId</code> to get information about an
    #   			<code>XssMatchSet</code> (see <a>GetXssMatchSet</a>), update an <code>XssMatchSet</code>
    #   			(see <a>UpdateXssMatchSet</a>), insert an <code>XssMatchSet</code> into a <code>Rule</code> or
    #   			delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete an <code>XssMatchSet</code> from AWS WAF
    #   			(see <a>DeleteXssMatchSet</a>).</p>
    #   		       <p>
    #               <code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name, if any, of the <code>XssMatchSet</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute xss_match_tuples
    #   <p>Specifies the parts of web requests that you want to inspect for cross-site scripting attacks.</p>
    #
    #   @return [Array<XssMatchTuple>]
    #
    XssMatchSet = ::Struct.new(
      :xss_match_set_id,
      :name,
      :xss_match_tuples,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>The <code>Id</code> and <code>Name</code> of an <code>XssMatchSet</code>.</p>
    #
    # @!attribute xss_match_set_id
    #   <p>A unique identifier for an <code>XssMatchSet</code>. You use <code>XssMatchSetId</code> to get information about a
    #   			<code>XssMatchSet</code> (see <a>GetXssMatchSet</a>), update an <code>XssMatchSet</code>
    #   			(see <a>UpdateXssMatchSet</a>), insert an <code>XssMatchSet</code> into a <code>Rule</code> or
    #   			delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete an <code>XssMatchSet</code> from AWS WAF
    #   			(see <a>DeleteXssMatchSet</a>).</p>
    #   		       <p>
    #               <code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>XssMatchSet</code>, if any, specified by <code>Id</code>.</p>
    #
    #   @return [String]
    #
    XssMatchSetSummary = ::Struct.new(
      :xss_match_set_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Specifies the part of a web request that you want to inspect for cross-site scripting attacks and indicates whether you want to
    # 			add the specification to an <a>XssMatchSet</a> or delete it from an <code>XssMatchSet</code>.</p>
    #
    # @!attribute action
    #   <p>Specify <code>INSERT</code> to add an
    #            <a>XssMatchSetUpdate</a> to an <a>XssMatchSet</a>. Use
    #               <code>DELETE</code> to remove an
    #            <code>XssMatchSetUpdate</code> from an <code>XssMatchSet</code>.</p>
    #
    #   Enum, one of: ["INSERT", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute xss_match_tuple
    #   <p>Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.</p>
    #
    #   @return [XssMatchTuple]
    #
    XssMatchSetUpdate = ::Struct.new(
      :action,
      :xss_match_tuple,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note>
    # 		       <p>Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.</p>
    #
    # @!attribute field_to_match
    #   <p>Specifies where in a web request to look for cross-site scripting attacks.</p>
    #
    #   @return [FieldToMatch]
    #
    # @!attribute text_transformation
    #   <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
    #   			If you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting it for a match.</p>	
    #            <p>You can only specify a single type of TextTransformation.</p>			
    #   		       <p>
    #               <b>CMD_LINE</b>
    #            </p>
    #   		       <p>When you're concerned that attackers are injecting an operating system command line
    #            command and using unusual formatting to disguise some or all of the command, use this
    #            option to perform the following transformations:</p>
    #   		       <ul>
    #               <li>
    #                  <p>Delete the following characters: \ " ' ^</p>
    #               </li>
    #               <li>
    #                  <p>Delete spaces before the following characters: / (</p>
    #               </li>
    #               <li>
    #                  <p>Replace the following characters with a space: , ;</p>
    #               </li>
    #               <li>
    #                  <p>Replace multiple spaces with one space</p>
    #               </li>
    #               <li>
    #                  <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p>
    #               </li>
    #            </ul>		
    #   		       <p>
    #               <b>COMPRESS_WHITE_SPACE</b>
    #            </p>
    #   		       <p>Use this option to replace the following characters with a space character (decimal 32):</p>
    #   		       <ul>
    #               <li>
    #                  <p>\f, formfeed, decimal 12</p>
    #               </li>
    #               <li>
    #                  <p>\t, tab, decimal 9</p>
    #               </li>
    #               <li>
    #                  <p>\n, newline, decimal 10</p>
    #               </li>
    #               <li>
    #                  <p>\r, carriage return, decimal 13</p>
    #               </li>
    #               <li>
    #                  <p>\v, vertical tab, decimal 11</p>
    #               </li>
    #               <li>
    #                  <p>non-breaking space, decimal 160</p>
    #               </li>
    #            </ul>
    #   		       <p>
    #               <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p>		
    #   		       <p>
    #               <b>HTML_ENTITY_DECODE</b>
    #            </p>
    #   		       <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs
    #   			the following operations:</p>
    #   		       <ul>
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
    #                  <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand) xhhhh;</code>, with the corresponding
    #   				characters</p>
    #               </li>
    #               <li>
    #                  <p>Replaces characters that are represented in decimal format, <code>(ampersand) nnnn;</code>, with the corresponding
    #   				characters</p>
    #               </li>
    #            </ul>		
    #   		       <p>
    #               <b>LOWERCASE</b>
    #            </p>
    #   		       <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p>		
    #   		       <p>
    #               <b>URL_DECODE</b>
    #            </p>
    #   		       <p>Use this option to decode a URL-encoded value.</p>		
    #   		       <p>
    #               <b>NONE</b>
    #            </p>
    #   		       <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>
    #
    #   Enum, one of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"]
    #
    #   @return [String]
    #
    XssMatchTuple = ::Struct.new(
      :field_to_match,
      :text_transformation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
