# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Cloudfront
  module Types

    # <p>Access denied.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDenied = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of key groups, and the public keys in each key group,
    # 			that CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>
    #
    # @!attribute enabled
    #   <p>This field is <code>true</code> if any of the key groups have public keys that CloudFront can use
    #   			to verify the signatures of signed URLs and signed cookies. If not, this field is
    #   			<code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute quantity
    #   <p>The number of key groups in the list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A list of key groups, including the identifiers of the public keys in each key group that
    #   			CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>
    #
    #   @return [Array<KGKeyPairIds>]
    #
    ActiveTrustedKeyGroups = ::Struct.new(
      :enabled,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of Amazon Web Services accounts and the active CloudFront key pairs in each account that CloudFront can use
    # 			to verify the signatures of signed URLs and signed cookies.</p>
    #
    # @!attribute enabled
    #   <p>This field is <code>true</code> if any of the Amazon Web Services accounts in the list have active CloudFront
    #   			key pairs that CloudFront can use to verify the signatures of signed URLs and signed cookies.
    #   			If not, this field is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute quantity
    #   <p>The number of Amazon Web Services accounts in the list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A list of Amazon Web Services accounts and the identifiers of active CloudFront key pairs in each account that
    #   			CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>
    #
    #   @return [Array<Signer>]
    #
    ActiveTrustedSigners = ::Struct.new(
      :enabled,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Web Services services in China customers must file for an Internet Content Provider (ICP) recordal if they want to serve content
    # 			publicly on an alternate domain name, also known as a CNAME, that they've added to CloudFront. AliasICPRecordal provides the ICP
    # 			recordal status for CNAMEs associated with distributions. The status is returned in the CloudFront response; you can't configure
    # 			it yourself.</p>
    # 		       <p>For more information about ICP recordals, see  <a href="https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html">
    # 			Signup, Accounts, and Credentials</a> in <i>Getting Started with Amazon Web Services services in China</i>.</p>
    #
    # @!attribute cname
    #   <p>A domain name associated with a distribution. </p>
    #
    #   @return [String]
    #
    # @!attribute icp_recordal_status
    #   <p>The Internet Content Provider (ICP) recordal status for a CNAME. The ICPRecordalStatus is set to
    #   			APPROVED for all CNAMEs (aliases) in regions outside of China. </p>
    #   		       <p>The status values returned are the following:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <b>APPROVED</b> indicates that the associated CNAME has a valid ICP recordal number.
    #   			Multiple CNAMEs can be associated with a distribution, and CNAMEs can correspond to different ICP recordals. To be marked as
    #   			APPROVED, that is, valid to use with China region, a CNAME must have one ICP recordal number associated with it.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SUSPENDED</b> indicates that the associated CNAME does not have a valid ICP recordal
    #   				number.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PENDING</b> indicates that CloudFront can't determine the ICP recordal status of the
    #   				CNAME associated with the distribution because there was an error in trying to determine the status. You can try again
    #   				to see if the error is resolved in which case CloudFront returns an APPROVED or SUSPENDED status.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    AliasICPRecordal = ::Struct.new(
      :cname,
      :icp_recordal_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains information about CNAMEs (alternate domain names), if any,
    # 			for this distribution. </p>
    #
    # @!attribute quantity
    #   <p>The number of CNAME aliases, if any, that you want to associate with this
    #   			distribution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A complex type that contains the CNAME aliases, if any, that you want to associate with
    #   			this distribution.</p>
    #
    #   @return [Array<String>]
    #
    Aliases = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that controls which HTTP methods CloudFront processes and forwards to your
    # 			Amazon S3 bucket or your custom origin. There are three choices:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.</p>
    # 			         </li>
    #             <li>
    # 				           <p>CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code>
    # 					requests.</p>
    # 			         </li>
    #             <li>
    # 				           <p>CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and
    # 						<code>DELETE</code> requests.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or
    # 			to your custom origin so users can't perform operations that you don't want them to. For
    # 			example, you might not want users to have permissions to delete objects from your
    # 			origin.</p>
    #
    # @!attribute quantity
    #   <p>The number of HTTP methods that you want CloudFront to forward to your origin. Valid values
    #   			are 2 (for <code>GET</code> and <code>HEAD</code> requests), 3 (for <code>GET</code>,
    #   				<code>HEAD</code>, and <code>OPTIONS</code> requests) and 7 (for <code>GET, HEAD, OPTIONS,
    #   				PUT, PATCH, POST</code>, and <code>DELETE</code> requests).</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A complex type that contains the HTTP methods that you want CloudFront to process and forward
    #   			to your origin.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cached_methods
    #   <p>A complex type that controls whether CloudFront caches the response to requests using the
    #   			specified HTTP methods. There are two choices:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>CloudFront caches responses to <code>GET</code> and <code>HEAD</code> requests.</p>
    #   			         </li>
    #               <li>
    #   				           <p>CloudFront caches responses to <code>GET</code>, <code>HEAD</code>, and
    #   						<code>OPTIONS</code> requests.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>If you pick the second choice for your Amazon S3 Origin, you may need to forward
    #   			Access-Control-Request-Method, Access-Control-Request-Headers, and Origin headers for the
    #   			responses to be cached correctly. </p>
    #
    #   @return [CachedMethods]
    #
    AllowedMethods = ::Struct.new(
      :quantity,
      :items,
      :cached_methods,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_distribution_id
    #   <p>The ID of the distribution that you’re associating the alias with.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The alias (also known as a CNAME) to add to the target distribution.</p>
    #
    #   @return [String]
    #
    AssociateAliasInput = ::Struct.new(
      :target_distribution_id,
      :alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateAliasOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Invalidation batch specified is too large.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BatchTooLarge = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The CNAME specified is already defined for CloudFront.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CNAMEAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that describes how CloudFront processes requests.</p>
    # 		       <p>You must create at least as many cache behaviors (including the default cache behavior) as
    # 			you have origins if you want CloudFront to serve objects from all of the origins. Each cache
    # 			behavior specifies the one origin from which you want CloudFront to get objects. If you have
    # 			two origins and only the default cache behavior, the default cache behavior will cause
    # 			CloudFront to get objects from one of the origins, but the other origin is never used.</p>
    # 		       <p>For the current quota (formerly known as limit) on the number of cache behaviors that you
    # 			can add to a distribution, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # 		       <p>If you don’t want to specify any cache behaviors, include only an empty
    # 			<code>CacheBehaviors</code> element. Don’t include an empty <code>CacheBehavior</code>
    # 			element because this is invalid.</p>
    # 		       <p>To delete all cache behaviors in an existing distribution, update the distribution
    # 			configuration and include only an empty <code>CacheBehaviors</code> element.</p>
    # 		       <p>To add, change, or remove one or more cache behaviors, update the distribution
    # 			configuration and specify all of the cache behaviors that you want to include in the updated
    # 			distribution.</p>
    # 		       <p>For more information about cache behaviors, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior">Cache Behavior Settings</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute path_pattern
    #   <p>The pattern (for example, <code>images/*.jpg</code>) that specifies which requests to
    #   			apply the behavior to. When CloudFront receives a viewer request, the requested path is compared
    #   			with path patterns in the order in which cache behaviors are listed in the
    #   			distribution.</p>
    #   		       <note>
    #   			         <p>You can optionally include a slash (<code>/</code>) at the beginning of the path
    #   				pattern. For example, <code>/images/*.jpg</code>. CloudFront behavior is the same with or without
    #   				the leading <code>/</code>.</p>
    #   		       </note>
    #   		       <p>The path pattern for the default cache behavior is <code>*</code> and cannot be
    #   			changed. If the request for an object does not match the path pattern for any cache behaviors,
    #   			CloudFront applies the behavior in the default cache behavior.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html DownloadDistValuesPathPattern">Path
    #   				Pattern</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute target_origin_id
    #   <p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to
    #   			when they match this cache behavior.</p>
    #
    #   @return [String]
    #
    # @!attribute trusted_signers
    #   <important>
    #   			         <p>We recommend using <code>TrustedKeyGroups</code> instead of
    #   				<code>TrustedSigners</code>.</p>
    #   		       </important>
    #   		       <p>A list of Amazon Web Services account IDs whose public keys CloudFront can use to validate signed URLs or signed
    #   			cookies.</p>
    #   		       <p>When a cache behavior contains trusted signers, CloudFront requires signed URLs or signed cookies
    #   			for all requests that match the cache behavior. The URLs or cookies must be signed with
    #   			the private key of a CloudFront key pair in the trusted signer’s Amazon Web Services account. The signed URL
    #   			or cookie contains information about which public key CloudFront should use to verify the
    #   			signature. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [TrustedSigners]
    #
    # @!attribute trusted_key_groups
    #   <p>A list of key groups that CloudFront can use to validate signed URLs or signed cookies.</p>
    #   		       <p>When a cache behavior contains trusted key groups, CloudFront requires signed URLs or signed
    #   			cookies for all requests that match the cache behavior. The URLs or cookies must be
    #   			signed with a private key whose corresponding public key is in the key group. The signed
    #   			URL or cookie contains information about which public key CloudFront should use to verify the
    #   			signature. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [TrustedKeyGroups]
    #
    # @!attribute viewer_protocol_policy
    #   <p>The protocol that viewers can use to access the files in the origin specified by
    #   				<code>TargetOriginId</code> when a request matches the path pattern in
    #   				<code>PathPattern</code>. You can specify the following options:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns
    #   					an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The
    #   					viewer then resubmits the request using the new URL. </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP
    #   					status code of 403 (Forbidden). </p>
    #   			         </li>
    #            </ul>
    #   		       <p>For more information about requiring the HTTPS protocol, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-viewers-to-cloudfront.html">Requiring HTTPS Between Viewers and CloudFront</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <note>
    #   			         <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin
    #   				using HTTPS is never to use any other protocol to fetch the object. If you have
    #   				recently changed from HTTP to HTTPS, we recommend that you clear your objects’ cache
    #   				because cached objects are protocol agnostic. That means that an edge location will
    #   				return an object from the cache regardless of whether the current request protocol
    #   				matches the protocol used previously. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing Cache Expiration</a> in the
    #   				<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute allowed_methods
    #   <p>A complex type that controls which HTTP methods CloudFront processes and forwards to your
    #   			Amazon S3 bucket or your custom origin. There are three choices:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.</p>
    #   			         </li>
    #               <li>
    #   				           <p>CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code>
    #   					requests.</p>
    #   			         </li>
    #               <li>
    #   				           <p>CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and
    #   						<code>DELETE</code> requests.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or
    #   			to your custom origin so users can't perform operations that you don't want them to. For
    #   			example, you might not want users to have permissions to delete objects from your
    #   			origin.</p>
    #
    #   @return [AllowedMethods]
    #
    # @!attribute smooth_streaming
    #   <p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming
    #   			format using the origin that is associated with this cache behavior. If so, specify
    #   				<code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for
    #   				<code>SmoothStreaming</code>, you can still distribute other content using this cache
    #   			behavior if the content matches the value of <code>PathPattern</code>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute compress
    #   <p>Whether you want CloudFront to automatically compress certain files for this cache behavior.
    #   			If so, specify true; if not, specify false. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html">Serving Compressed Files</a> in the
    #   				<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute lambda_function_associations
    #   <p>A complex type that contains zero or more Lambda@Edge function associations for a cache
    #   			behavior.</p>
    #
    #   @return [LambdaFunctionAssociations]
    #
    # @!attribute function_associations
    #   <p>A list of CloudFront functions that are associated with this cache behavior. CloudFront functions must
    #   			be published to the <code>LIVE</code> stage to associate them with a cache
    #   			behavior.</p>
    #
    #   @return [FunctionAssociations]
    #
    # @!attribute field_level_encryption_id
    #   <p>The value of <code>ID</code> for the field-level encryption configuration that you want CloudFront
    #   			to use for encrypting specific fields of data for this cache behavior.</p>
    #
    #   @return [String]
    #
    # @!attribute realtime_log_config_arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration that is attached to this
    #   			cache behavior. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html">Real-time logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute cache_policy_id
    #   <p>The unique identifier of the cache policy that is attached to this cache behavior. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the
    #               <i>Amazon CloudFront Developer Guide</i>.</p>
    #           <p>A <code>CacheBehavior</code> must include either a
    #               <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you
    #               use a <code>CachePolicyId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute origin_request_policy_id
    #   <p>The unique identifier of the origin request policy that is attached to this cache behavior.
    #   			For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html origin-request-create-origin-request-policy">Creating origin request policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html">Using the managed origin request policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute response_headers_policy_id
    #   <p>The identifier for a response headers policy.</p>
    #
    #   @return [String]
    #
    # @!attribute forwarded_values
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin
    #   			request policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/working-with-policies.html">Working with policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>If you want to include values in the cache key, use a cache policy. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>If you want to send values to the origin but not include them in the cache key, use an
    #   			origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html origin-request-create-origin-request-policy">Creating origin request policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html">Using the managed origin request policies</a> in the
    #               <i>Amazon CloudFront Developer Guide</i>.</p>
    #           <p>A <code>CacheBehavior</code> must include either a
    #               <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you
    #               use a <code>CachePolicyId</code>.</p>
    #   		       <p>A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.</p>
    #
    #   @deprecated
    #
    #   @return [ForwardedValues]
    #
    # @!attribute min_ttl
    #   <p>This field is deprecated. We recommend that you use the <code>MinTTL</code> field in a cache
    #   			policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront
    #   			forwards another request to your origin to determine whether the object has been updated. For
    #   			more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">
    #   				Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>
    #   				Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to
    #   			forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code>
    #   			for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>
    #
    #   @deprecated
    #
    #   @return [Integer]
    #
    # @!attribute default_ttl
    #   <p>This field is deprecated. We recommend that you use the <code>DefaultTTL</code> field in a
    #   			cache policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront
    #   			forwards another request to your origin to determine whether the object has been updated. The
    #   			value that you specify applies only when your origin does not add HTTP headers such as
    #   				<code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and
    #   				<code>Expires</code> to objects. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays
    #   				in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @deprecated
    #
    #   @return [Integer]
    #
    # @!attribute max_ttl
    #   <p>This field is deprecated. We recommend that you use the <code>MaxTTL</code> field in a cache
    #   			policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront
    #   			forwards another request to your origin to determine whether the object has been updated. The
    #   			value that you specify applies only when your origin adds HTTP headers such as
    #   				<code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and
    #   				<code>Expires</code> to objects. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays
    #   				in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @deprecated
    #
    #   @return [Integer]
    #
    CacheBehavior = ::Struct.new(
      :path_pattern,
      :target_origin_id,
      :trusted_signers,
      :trusted_key_groups,
      :viewer_protocol_policy,
      :allowed_methods,
      :smooth_streaming,
      :compress,
      :lambda_function_associations,
      :function_associations,
      :field_level_encryption_id,
      :realtime_log_config_arn,
      :cache_policy_id,
      :origin_request_policy_id,
      :response_headers_policy_id,
      :forwarded_values,
      :min_ttl,
      :default_ttl,
      :max_ttl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains zero or more <code>CacheBehavior</code> elements.
    # 		</p>
    #
    # @!attribute quantity
    #   <p>The number of cache behaviors for this distribution. </p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>Optional: A complex type that contains cache behaviors for this distribution. If
    #   				<code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>
    #
    #   @return [Array<CacheBehavior>]
    #
    CacheBehaviors = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A cache policy.</p>
    # 		       <p>When it’s attached to a cache behavior, the cache policy determines the
    # 			following:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>The values that CloudFront includes in the cache key. These values can include HTTP headers,
    # 					cookies, and URL query strings. CloudFront uses the cache key to find an object in its
    # 					cache that it can return to the viewer.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The default, minimum, and maximum time to live (TTL) values that you want objects to stay
    # 					in the CloudFront cache.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>The headers, cookies, and query strings that are included in the cache key are automatically
    # 			included in requests that CloudFront sends to the origin. CloudFront sends a request when it can’t
    # 			find a valid object in its cache that matches the request’s cache key. If you want to
    # 			send values to the origin but <i>not</i> include them in the cache key,
    # 			use <code>OriginRequestPolicy</code>.</p>
    #
    # @!attribute id
    #   <p>The unique identifier for the cache policy.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time when the cache policy was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute cache_policy_config
    #   <p>The cache policy configuration.</p>
    #
    #   @return [CachePolicyConfig]
    #
    CachePolicy = ::Struct.new(
      :id,
      :last_modified_time,
      :cache_policy_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A cache policy with this name already exists. You must provide a unique name. To
    # 			modify an existing cache policy, use <code>UpdateCachePolicy</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CachePolicyAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A cache policy configuration.</p>
    # 		       <p>This configuration determines the following:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>The values that CloudFront includes in the cache key. These values can include HTTP headers,
    # 					cookies, and URL query strings. CloudFront uses the cache key to find an object in its
    # 					cache that it can return to the viewer.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The default, minimum, and maximum time to live (TTL) values that you want objects to stay
    # 					in the CloudFront cache.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>The headers, cookies, and query strings that are included in the cache key are automatically
    # 			included in requests that CloudFront sends to the origin. CloudFront sends a request when it can’t
    # 			find a valid object in its cache that matches the request’s cache key. If you want to
    # 			send values to the origin but <i>not</i> include them in the cache key,
    # 			use <code>OriginRequestPolicy</code>.</p>
    #
    # @!attribute comment
    #   <p>A comment to describe the cache policy. The comment cannot be longer than 128
    #   			characters.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A unique name to identify the cache policy.</p>
    #
    #   @return [String]
    #
    # @!attribute default_ttl
    #   <p>The default amount of time, in seconds, that you want objects to stay in the CloudFront
    #   			cache before CloudFront sends another request to the origin to see if the object has been
    #   			updated. CloudFront uses this value as the object’s time to live (TTL) only when the origin
    #   			does <i>not</i> send <code>Cache-Control</code> or <code>Expires</code>
    #   			headers with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>The default value for this field is 86400 seconds (one day). If the value of
    #   			<code>MinTTL</code> is more than 86400 seconds, then the default value for this field is
    #   			the same as the value of <code>MinTTL</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_ttl
    #   <p>The maximum amount of time, in seconds, that objects stay in the CloudFront cache
    #   			before CloudFront sends another request to the origin to see if the object has been updated.
    #   			CloudFront uses this value only when the origin sends <code>Cache-Control</code> or
    #   			<code>Expires</code> headers with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>The default value for this field is 31536000 seconds (one year). If the value of
    #   			<code>MinTTL</code> or <code>DefaultTTL</code> is more than 31536000 seconds, then the
    #   			default value for this field is the same as the value of <code>DefaultTTL</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute min_ttl
    #   <p>The minimum amount of time, in seconds, that you want objects to stay in the CloudFront
    #   			cache before CloudFront sends another request to the origin to see if the object has been
    #   			updated. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute parameters_in_cache_key_and_forwarded_to_origin
    #   <p>The HTTP headers, cookies, and URL query strings to include in the cache key. The
    #   			values included in the cache key are automatically included in requests that CloudFront sends
    #   			to the origin.</p>
    #
    #   @return [ParametersInCacheKeyAndForwardedToOrigin]
    #
    CachePolicyConfig = ::Struct.new(
      :comment,
      :name,
      :default_ttl,
      :max_ttl,
      :min_ttl,
      :parameters_in_cache_key_and_forwarded_to_origin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that determines whether any cookies in viewer requests (and if so, which cookies)
    # 			are included in the cache key and automatically included in requests that CloudFront sends to
    # 			the origin.</p>
    #
    # @!attribute cookie_behavior
    #   <p>Determines whether any cookies in viewer requests are included in the cache key and
    #   			automatically included in requests that CloudFront sends to the origin. Valid values
    #   			are:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>none</code> – Cookies in viewer requests are not included in the cache key and are
    #   					not automatically included in requests that CloudFront sends to the origin. Even when
    #   					this field is set to <code>none</code>, any cookies that are listed in an
    #   					<code>OriginRequestPolicy</code>
    #                     <i>are</i> included in origin
    #   					requests.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>whitelist</code> – The cookies in viewer requests that are listed in the
    #   					<code>CookieNames</code> type are included in the cache key and automatically
    #   					included in requests that CloudFront sends to the origin.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>allExcept</code> – All cookies in viewer requests that are <i>
    #                        <b>not</b>
    #                     </i> listed in the <code>CookieNames</code>
    #   					type are included in the cache key and automatically included in requests that
    #   					CloudFront sends to the origin.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>all</code> – All cookies in viewer requests are included in the cache key and are
    #   					automatically included in requests that CloudFront sends to the origin.</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute cookies
    #   <p>Contains a list of cookie names.</p>
    #
    #   @return [CookieNames]
    #
    CachePolicyCookiesConfig = ::Struct.new(
      :cookie_behavior,
      :cookies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that determines whether any HTTP headers (and if so, which headers) are included
    # 			in the cache key and automatically included in requests that CloudFront sends to the
    # 			origin.</p>
    #
    # @!attribute header_behavior
    #   <p>Determines whether any HTTP headers are included in the cache key and automatically
    #   			included in requests that CloudFront sends to the origin. Valid values are:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>none</code> – HTTP headers are not included in the cache key and are not
    #   					automatically included in requests that CloudFront sends to the origin. Even when this
    #   					field is set to <code>none</code>, any headers that are listed in an
    #   					<code>OriginRequestPolicy</code>
    #                     <i>are</i> included in origin
    #   					requests.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>whitelist</code> – The HTTP headers that are listed in the <code>Headers</code> type
    #   					are included in the cache key and are automatically included in requests that
    #   					CloudFront sends to the origin.</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute headers
    #   <p>Contains a list of HTTP header names.</p>
    #
    #   @return [Headers]
    #
    CachePolicyHeadersConfig = ::Struct.new(
      :header_behavior,
      :headers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Cannot delete the cache policy because it is attached to one or more cache
    # 			behaviors.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CachePolicyInUse = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of cache policies.</p>
    #
    # @!attribute next_marker
    #   <p>If there are more items in the list than are in this response, this element is
    #   			present. It contains the value that you should use in the <code>Marker</code> field of a
    #   			subsequent request to continue listing cache policies where you left off.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of cache policies requested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute quantity
    #   <p>The total number of cache policies returned in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>Contains the cache policies in the list.</p>
    #
    #   @return [Array<CachePolicySummary>]
    #
    CachePolicyList = ::Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that determines whether any URL query strings in viewer requests (and if so, which
    # 			query strings) are included in the cache key and automatically included in requests that
    # 			CloudFront sends to the origin.</p>
    #
    # @!attribute query_string_behavior
    #   <p>Determines whether any URL query strings in viewer requests are included in the cache key
    #   			and automatically included in requests that CloudFront sends to the origin. Valid values
    #   			are:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>none</code> – Query strings in viewer requests are not included in the cache key and
    #   					are not automatically included in requests that CloudFront sends to the origin. Even
    #   					when this field is set to <code>none</code>, any query strings that are listed
    #   					in an <code>OriginRequestPolicy</code>
    #                     <i>are</i> included in
    #   					origin requests.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>whitelist</code> – The query strings in viewer requests that are listed in the
    #   					<code>QueryStringNames</code> type are included in the cache key and
    #   					automatically included in requests that CloudFront sends to the origin.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>allExcept</code> – All query strings in viewer requests that are <i>
    #                        <b>not</b>
    #                     </i> listed in the
    #   					<code>QueryStringNames</code> type are included in the cache key and
    #   					automatically included in requests that CloudFront sends to the origin.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>all</code> – All query strings in viewer requests are included in the cache key and
    #   					are automatically included in requests that CloudFront sends to the origin.</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute query_strings
    #   <p>Contains the specific query strings in viewer requests that either <i>
    #                  <b>are</b>
    #               </i> or <i>
    #                  <b>are
    #   			not</b>
    #               </i> included in the cache key and automatically included in
    #   			requests that CloudFront sends to the origin. The behavior depends on whether the
    #   			<code>QueryStringBehavior</code> field in the <code>CachePolicyQueryStringsConfig</code>
    #   			type is set to <code>whitelist</code> (the listed query strings <i>
    #                  <b>are</b>
    #               </i> included) or <code>allExcept</code> (the listed
    #   			query strings <i>
    #                  <b>are not</b>
    #               </i> included,
    #   			but all other query strings are).</p>
    #
    #   @return [QueryStringNames]
    #
    CachePolicyQueryStringsConfig = ::Struct.new(
      :query_string_behavior,
      :query_strings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a cache policy.</p>
    #
    # @!attribute type
    #   <p>The type of cache policy, either <code>managed</code> (created by Amazon Web Services) or
    #   			<code>custom</code> (created in this Amazon Web Services account).</p>
    #
    #   @return [String]
    #
    # @!attribute cache_policy
    #   <p>The cache policy.</p>
    #
    #   @return [CachePolicy]
    #
    CachePolicySummary = ::Struct.new(
      :type,
      :cache_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that controls whether CloudFront caches the response to requests using the
    # 			specified HTTP methods. There are two choices:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>CloudFront caches responses to <code>GET</code> and <code>HEAD</code> requests.</p>
    # 			         </li>
    #             <li>
    # 				           <p>CloudFront caches responses to <code>GET</code>, <code>HEAD</code>, and
    # 						<code>OPTIONS</code> requests.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>If you pick the second choice for your Amazon S3 Origin, you may need to forward
    # 			Access-Control-Request-Method, Access-Control-Request-Headers, and Origin headers for the
    # 			responses to be cached correctly. </p>
    #
    # @!attribute quantity
    #   <p>The number of HTTP methods for which you want CloudFront to cache responses. Valid values are
    #   				<code>2</code> (for caching responses to <code>GET</code> and <code>HEAD</code> requests)
    #   			and <code>3</code> (for caching responses to <code>GET</code>, <code>HEAD</code>, and
    #   				<code>OPTIONS</code> requests).</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A complex type that contains the HTTP methods that you want CloudFront to cache responses
    #   			to.</p>
    #
    #   @return [Array<String>]
    #
    CachedMethods = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can't change the value of a public key.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CannotChangeImmutablePublicKeyFields = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>CloudFront origin access identity.</p>
    #
    # @!attribute id
    #   <p>The ID for the origin access identity, for example, <code>E74FTE3AJFJ256A</code>.
    #   		</p>
    #
    #   @return [String]
    #
    # @!attribute s3_canonical_user_id
    #   <p>The Amazon S3 canonical user ID for the origin access identity, used when giving the origin
    #   			access identity read permission to an object in Amazon S3. </p>
    #
    #   @return [String]
    #
    # @!attribute cloud_front_origin_access_identity_config
    #   <p>The current configuration information for the identity. </p>
    #
    #   @return [CloudFrontOriginAccessIdentityConfig]
    #
    CloudFrontOriginAccessIdentity = ::Struct.new(
      :id,
      :s3_canonical_user_id,
      :cloud_front_origin_access_identity_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If the <code>CallerReference</code> is a value you already sent in a previous request to create an identity but the content
    # 			of the <code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, CloudFront returns a
    # 			<code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CloudFrontOriginAccessIdentityAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Origin access identity configuration. Send a <code>GET</code> request to the
    # 					<code>/<i>CloudFront API version</i>/CloudFront/identity ID/config</code> resource.
    # 		</p>
    #
    # @!attribute caller_reference
    #   <p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p>
    #   		       <p>If the value of <code>CallerReference</code> is new (regardless of the content of the
    #   			<code>CloudFrontOriginAccessIdentityConfig</code> object), a new origin access identity is
    #   			created.</p>
    #   		       <p>If the <code>CallerReference</code> is a value already sent in a previous identity
    #   			request, and the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is identical
    #   			to the original request (ignoring white space), the response includes the same information
    #   			returned to the original request. </p>
    #   		       <p>If the <code>CallerReference</code> is a value you already sent in a previous request
    #   			to create an identity, but the content of the
    #   			<code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request,
    #   			CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>A comment to describe the origin access identity. The comment cannot be longer
    #   			than 128 characters.</p>
    #
    #   @return [String]
    #
    CloudFrontOriginAccessIdentityConfig = ::Struct.new(
      :caller_reference,
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Origin Access Identity specified is already in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CloudFrontOriginAccessIdentityInUse = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lists the origin access identities for CloudFront.Send a <code>GET</code> request to the
    # 					<code>/<i>CloudFront API version</i>/origin-access-identity/cloudfront</code>
    # 			resource. The response includes a <code>CloudFrontOriginAccessIdentityList</code> element with
    # 			zero or more <code>CloudFrontOriginAccessIdentitySummary</code> child elements. By default,
    # 			your entire list of origin access identities is returned in one single page. If the list is
    # 			long, you can paginate it using the <code>MaxItems</code> and <code>Marker</code>
    # 			parameters.</p>
    #
    # @!attribute marker
    #   <p>Use this when paginating results to indicate where to begin in your list of origin
    #   			access identities. The results include identities in the list that occur after the marker. To
    #   			get the next page of results, set the <code>Marker</code> to the value of the
    #   				<code>NextMarker</code> from the current page's response (which is also the ID of the last
    #   			identity on that page). </p>
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains
    #   			the value you can use for the <code>Marker</code> request parameter to continue listing your
    #   			origin access identities where they left off. </p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of origin access identities you want in the response body.
    #   		</p>
    #
    #   @return [Integer]
    #
    # @!attribute is_truncated
    #   <p>A flag that indicates whether more origin access identities remain to be listed. If
    #   			your results were truncated, you can make a follow-up pagination request using the
    #   				<code>Marker</code> request parameter to retrieve more items in the list.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute quantity
    #   <p>The number of CloudFront origin access identities that were created by the current Amazon Web Services account.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A complex type that contains one <code>CloudFrontOriginAccessIdentitySummary</code>
    #   			element for each origin access identity that was created by the current Amazon Web Services account.</p>
    #
    #   @return [Array<CloudFrontOriginAccessIdentitySummary>]
    #
    CloudFrontOriginAccessIdentityList = ::Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary of the information about a CloudFront origin access identity.</p>
    #
    # @!attribute id
    #   <p>The ID for the origin access identity. For example:
    #   			<code>E74FTE3AJFJ256A</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_canonical_user_id
    #   <p>The Amazon S3 canonical user ID for the origin access identity, which you use when giving
    #   			the origin access identity read permission to an object in Amazon S3.</p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>The comment for this origin access identity, as originally specified when
    #   			created.</p>
    #
    #   @return [String]
    #
    CloudFrontOriginAccessIdentitySummary = ::Struct.new(
      :id,
      :s3_canonical_user_id,
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An alias (also called a CNAME) and the CloudFront distribution and Amazon Web Services account ID that it’s
    # 			associated with. The distribution and account IDs are partially hidden, which allows you
    # 			to identify the distributions and accounts that you own, but helps to protect the
    # 			information of ones that you don’t own.</p>
    #
    # @!attribute alias
    #   <p>An alias (also called a CNAME).</p>
    #
    #   @return [String]
    #
    # @!attribute distribution_id
    #   <p>The (partially hidden) ID of the CloudFront distribution associated with the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The (partially hidden) ID of the Amazon Web Services account that owns the distribution that’s
    #   			associated with the alias.</p>
    #
    #   @return [String]
    #
    ConflictingAlias = ::Struct.new(
      :alias,
      :distribution_id,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of aliases (also called CNAMEs) and the CloudFront distributions and Amazon Web Services accounts that
    # 			they are associated with. In the list, the distribution and account IDs are partially
    # 			hidden, which allows you to identify the distributions and accounts that you own, but
    # 			helps to protect the information of ones that you don’t own.</p>
    #
    # @!attribute next_marker
    #   <p>If there are more items in the list than are in this response, this element is present. It
    #   			contains the value that you should use in the <code>Marker</code> field of a subsequent
    #   			request to continue listing conflicting aliases where you left off.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of conflicting aliases requested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute quantity
    #   <p>The number of conflicting aliases returned in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>Contains the conflicting aliases in the list.</p>
    #
    #   @return [Array<ConflictingAlias>]
    #
    ConflictingAliasesList = ::Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A field-level encryption content type profile. </p>
    #
    # @!attribute format
    #   <p>The format for a field-level encryption content type-profile mapping. </p>
    #
    #   @return [String]
    #
    # @!attribute profile_id
    #   <p>The profile ID for a field-level encryption content type-profile mapping. </p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The content type for a field-level encryption content type-profile mapping. </p>
    #
    #   @return [String]
    #
    ContentTypeProfile = ::Struct.new(
      :format,
      :profile_id,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for a field-level encryption content type-profile mapping. </p>
    #
    # @!attribute forward_when_content_type_is_unknown
    #   <p>The setting in a field-level encryption content type-profile mapping that specifies what to do
    #   			when an unknown content type is provided for the profile. If true, content is
    #   			forwarded without being encrypted when the content type is unknown. If false (the
    #   			default), an error is returned when the content type is unknown. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute content_type_profiles
    #   <p>The configuration for a field-level encryption content type-profile. </p>
    #
    #   @return [ContentTypeProfiles]
    #
    ContentTypeProfileConfig = ::Struct.new(
      :forward_when_content_type_is_unknown,
      :content_type_profiles,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Field-level encryption content type-profile. </p>
    #
    # @!attribute quantity
    #   <p>The number of field-level encryption content type-profile mappings. </p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>Items in a field-level encryption content type-profile mapping. </p>
    #
    #   @return [Array<ContentTypeProfile>]
    #
    ContentTypeProfiles = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a list of cookie names.</p>
    #
    # @!attribute quantity
    #   <p>The number of cookie names in the <code>Items</code> list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A list of cookie names.</p>
    #
    #   @return [Array<String>]
    #
    CookieNames = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This field is deprecated. We recommend that you use a cache policy or an origin
    # 			request policy instead of this field.</p>
    # 		       <p>If you want to include cookies in the cache key, use <code>CookiesConfig</code> in a
    # 			cache policy. See <code>CachePolicy</code>.</p>
    # 		       <p>If you want to send cookies to the origin but not include them in the cache key, use
    # 			<code>CookiesConfig</code> in an origin request policy. See
    # 			<code>OriginRequestPolicy</code>.</p>
    # 		       <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin
    # 			and, if so, which ones. For more information about forwarding cookies to the origin, see
    # 			<a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">Caching Content
    # 				Based on Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute forward
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin
    #   			request policy instead of this field.</p>
    #   		       <p>If you want to include cookies in the cache key, use a cache policy. For more information,
    #   			see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>If you want to send cookies to the origin but not include them in the cache key, use origin
    #   			request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html origin-request-create-origin-request-policy">Creating origin request policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>Specifies which cookies to forward to the origin for this cache behavior: all, none, or
    #   			the list of cookies specified in the <code>WhitelistedNames</code> complex type.</p>
    #   		       <p>Amazon S3 doesn't process cookies. When the cache behavior is forwarding requests to an
    #   			Amazon S3 origin, specify none for the <code>Forward</code> element.</p>
    #
    #   @return [String]
    #
    # @!attribute whitelisted_names
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin
    #   			request policy instead of this field.</p>
    #   		       <p>If you want to include cookies in the cache key, use a cache policy. For more information,
    #   			see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>If you want to send cookies to the origin but not include them in the cache key, use an
    #   			origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html origin-request-create-origin-request-policy">Creating origin request policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>Required if you specify <code>whitelist</code> for the value of <code>Forward</code>.
    #   			A complex type that specifies how many different cookies you want CloudFront to forward to the
    #   			origin for this cache behavior and, if you want to forward selected cookies, the names of
    #   			those cookies.</p>
    #   		       <p>If you specify <code>all</code> or <code>none</code> for the value of <code>Forward</code>, omit
    #   				<code>WhitelistedNames</code>. If you change the value of <code>Forward</code> from
    #   			<code>whitelist</code> to <code>all</code> or <code>none</code> and you don't delete the <code>WhitelistedNames</code>
    #   			element and its child elements, CloudFront deletes them automatically.</p>
    #   		       <p>For the current limit on the number of cookie names that you can whitelist for each
    #   			cache behavior, see <a href="https://docs.aws.amazon.com/general/latest/gr/xrefaws_service_limits.html limits_cloudfront">
    #   				CloudFront Limits</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    #   @return [CookieNames]
    #
    CookiePreference = ::Struct.new(
      :forward,
      :whitelisted_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cache_policy_config
    #   <p>A cache policy configuration.</p>
    #
    #   @return [CachePolicyConfig]
    #
    CreateCachePolicyInput = ::Struct.new(
      :cache_policy_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cache_policy
    #   <p>A cache policy.</p>
    #
    #   @return [CachePolicy]
    #
    # @!attribute location
    #   <p>The fully qualified URI of the cache policy just created.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The current version of the cache policy.</p>
    #
    #   @return [String]
    #
    CreateCachePolicyOutput = ::Struct.new(
      :cache_policy,
      :location,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to create a new origin access identity (OAI). An origin access identity is a
    # 			special CloudFront user that you can associate with Amazon S3 origins, so that you can secure all or
    # 			just some of your Amazon S3 content. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html">
    # 			Restricting Access to Amazon S3 Content by Using an Origin Access Identity</a> in the
    # 			<i>Amazon CloudFront Developer Guide</i>. </p>
    #
    # @!attribute cloud_front_origin_access_identity_config
    #   <p>The current configuration information for the identity.</p>
    #
    #   @return [CloudFrontOriginAccessIdentityConfig]
    #
    CreateCloudFrontOriginAccessIdentityInput = ::Struct.new(
      :cloud_front_origin_access_identity_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    #
    # @!attribute cloud_front_origin_access_identity
    #   <p>The origin access identity's information.</p>
    #
    #   @return [CloudFrontOriginAccessIdentity]
    #
    # @!attribute location
    #   <p>The fully qualified URI of the new origin access identity just created.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The current version of the origin access identity created.</p>
    #
    #   @return [String]
    #
    CreateCloudFrontOriginAccessIdentityOutput = ::Struct.new(
      :cloud_front_origin_access_identity,
      :location,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to create a new distribution.</p>
    #
    # @!attribute distribution_config
    #   <p>The distribution's configuration information.</p>
    #
    #   @return [DistributionConfig]
    #
    CreateDistributionInput = ::Struct.new(
      :distribution_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    #
    # @!attribute distribution
    #   <p>The distribution's information.</p>
    #
    #   @return [Distribution]
    #
    # @!attribute location
    #   <p>The fully qualified URI of the new distribution resource just created.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The current version of the distribution created.</p>
    #
    #   @return [String]
    #
    CreateDistributionOutput = ::Struct.new(
      :distribution,
      :location,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to create a new distribution with tags. </p>
    #
    # @!attribute distribution_config_with_tags
    #   <p>The distribution's configuration information. </p>
    #
    #   @return [DistributionConfigWithTags]
    #
    CreateDistributionWithTagsInput = ::Struct.new(
      :distribution_config_with_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request. </p>
    #
    # @!attribute distribution
    #   <p>The distribution's information. </p>
    #
    #   @return [Distribution]
    #
    # @!attribute location
    #   <p>The fully qualified URI of the new distribution resource just created.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The current version of the distribution created.</p>
    #
    #   @return [String]
    #
    CreateDistributionWithTagsOutput = ::Struct.new(
      :distribution,
      :location,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute field_level_encryption_config
    #   <p>The request to create a new field-level encryption configuration.</p>
    #
    #   @return [FieldLevelEncryptionConfig]
    #
    CreateFieldLevelEncryptionConfigInput = ::Struct.new(
      :field_level_encryption_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute field_level_encryption
    #   <p>Returned when you create a new field-level encryption configuration.</p>
    #
    #   @return [FieldLevelEncryption]
    #
    # @!attribute location
    #   <p>The fully qualified URI of the new configuration resource just created.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    CreateFieldLevelEncryptionConfigOutput = ::Struct.new(
      :field_level_encryption,
      :location,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute field_level_encryption_profile_config
    #   <p>The request to create a field-level encryption profile.</p>
    #
    #   @return [FieldLevelEncryptionProfileConfig]
    #
    CreateFieldLevelEncryptionProfileInput = ::Struct.new(
      :field_level_encryption_profile_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute field_level_encryption_profile
    #   <p>Returned when you create a new field-level encryption profile.</p>
    #
    #   @return [FieldLevelEncryptionProfile]
    #
    # @!attribute location
    #   <p>The fully qualified URI of the new profile resource just created.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The current version of the field level encryption profile. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    CreateFieldLevelEncryptionProfileOutput = ::Struct.new(
      :field_level_encryption_profile,
      :location,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A name to identify the function.</p>
    #
    #   @return [String]
    #
    # @!attribute function_config
    #   <p>Configuration information about the function, including an optional comment and the
    #   			function’s runtime.</p>
    #
    #   @return [FunctionConfig]
    #
    # @!attribute function_code
    #   <p>The function code. For more information about writing a CloudFront function, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html">Writing function
    #   			code for CloudFront Functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [String]
    #
    CreateFunctionInput = ::Struct.new(
      :name,
      :function_config,
      :function_code,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::Cloudfront::Types::CreateFunctionInput "\
          "name=#{name || 'nil'}, "\
          "function_config=#{function_config || 'nil'}, "\
          "function_code=\"[SENSITIVE]\">"
      end
    end

    # @!attribute function_summary
    #   <p>Contains configuration information and metadata about a CloudFront function.</p>
    #
    #   @return [FunctionSummary]
    #
    # @!attribute location
    #   <p>The URL of the CloudFront function. Use the URL to manage the function with the CloudFront
    #   			API.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the CloudFront function.</p>
    #
    #   @return [String]
    #
    CreateFunctionOutput = ::Struct.new(
      :function_summary,
      :location,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to create an invalidation.</p>
    #
    # @!attribute distribution_id
    #   <p>The distribution's id.</p>
    #
    #   @return [String]
    #
    # @!attribute invalidation_batch
    #   <p>The batch information for the invalidation.</p>
    #
    #   @return [InvalidationBatch]
    #
    CreateInvalidationInput = ::Struct.new(
      :distribution_id,
      :invalidation_batch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    #
    # @!attribute location
    #   <p>The fully qualified URI of the distribution and invalidation batch request, including
    #   			the <code>Invalidation ID</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute invalidation
    #   <p>The invalidation's information.</p>
    #
    #   @return [Invalidation]
    #
    CreateInvalidationOutput = ::Struct.new(
      :location,
      :invalidation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute key_group_config
    #   <p>A key group configuration.</p>
    #
    #   @return [KeyGroupConfig]
    #
    CreateKeyGroupInput = ::Struct.new(
      :key_group_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute key_group
    #   <p>The key group that was just created.</p>
    #
    #   @return [KeyGroup]
    #
    # @!attribute location
    #   <p>The URL of the key group.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The identifier for this version of the key group.</p>
    #
    #   @return [String]
    #
    CreateKeyGroupOutput = ::Struct.new(
      :key_group,
      :location,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute distribution_id
    #   <p>The ID of the distribution that you are enabling metrics for.</p>
    #
    #   @return [String]
    #
    # @!attribute monitoring_subscription
    #   <p>A monitoring subscription. This structure contains information about whether additional
    #   			CloudWatch metrics are enabled for a given CloudFront distribution.</p>
    #
    #   @return [MonitoringSubscription]
    #
    CreateMonitoringSubscriptionInput = ::Struct.new(
      :distribution_id,
      :monitoring_subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute monitoring_subscription
    #   <p>A monitoring subscription. This structure contains information about whether additional
    #   			CloudWatch metrics are enabled for a given CloudFront distribution.</p>
    #
    #   @return [MonitoringSubscription]
    #
    CreateMonitoringSubscriptionOutput = ::Struct.new(
      :monitoring_subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origin_request_policy_config
    #   <p>An origin request policy configuration.</p>
    #
    #   @return [OriginRequestPolicyConfig]
    #
    CreateOriginRequestPolicyInput = ::Struct.new(
      :origin_request_policy_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origin_request_policy
    #   <p>An origin request policy.</p>
    #
    #   @return [OriginRequestPolicy]
    #
    # @!attribute location
    #   <p>The fully qualified URI of the origin request policy just created.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The current version of the origin request policy.</p>
    #
    #   @return [String]
    #
    CreateOriginRequestPolicyOutput = ::Struct.new(
      :origin_request_policy,
      :location,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute public_key_config
    #   <p>A CloudFront public key configuration.</p>
    #
    #   @return [PublicKeyConfig]
    #
    CreatePublicKeyInput = ::Struct.new(
      :public_key_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute public_key
    #   <p>The public key.</p>
    #
    #   @return [PublicKey]
    #
    # @!attribute location
    #   <p>The URL of the public key.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The identifier for this version of the public key.</p>
    #
    #   @return [String]
    #
    CreatePublicKeyOutput = ::Struct.new(
      :public_key,
      :location,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute end_points
    #   <p>Contains information about the Amazon Kinesis data stream where you are sending real-time
    #   			log data.</p>
    #
    #   @return [Array<EndPoint>]
    #
    # @!attribute fields
    #   <p>A list of fields to include in each real-time log record.</p>
    #   		       <p>For more information about fields, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html understand-real-time-log-config-fields">Real-time log configuration fields</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute name
    #   <p>A unique name to identify this real-time log configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute sampling_rate
    #   <p>The sampling rate for this real-time log configuration. The sampling rate determines the
    #   			percentage of viewer requests that are represented in the real-time log data. You must
    #   			provide an integer between 1 and 100, inclusive.</p>
    #
    #   @return [Integer]
    #
    CreateRealtimeLogConfigInput = ::Struct.new(
      :end_points,
      :fields,
      :name,
      :sampling_rate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute realtime_log_config
    #   <p>A real-time log configuration.</p>
    #
    #   @return [RealtimeLogConfig]
    #
    CreateRealtimeLogConfigOutput = ::Struct.new(
      :realtime_log_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute response_headers_policy_config
    #   <p>Contains metadata about the response headers policy, and a set of configurations that
    #   			specify the response headers.</p>
    #
    #   @return [ResponseHeadersPolicyConfig]
    #
    CreateResponseHeadersPolicyInput = ::Struct.new(
      :response_headers_policy_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute response_headers_policy
    #   <p>Contains a response headers policy.</p>
    #
    #   @return [ResponseHeadersPolicy]
    #
    # @!attribute location
    #   <p>The URL of the response headers policy.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the response headers policy.</p>
    #
    #   @return [String]
    #
    CreateResponseHeadersPolicyOutput = ::Struct.new(
      :response_headers_policy,
      :location,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to create a new streaming distribution.</p>
    #
    # @!attribute streaming_distribution_config
    #   <p>The streaming distribution's configuration information.</p>
    #
    #   @return [StreamingDistributionConfig]
    #
    CreateStreamingDistributionInput = ::Struct.new(
      :streaming_distribution_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    #
    # @!attribute streaming_distribution
    #   <p>The streaming distribution's information.</p>
    #
    #   @return [StreamingDistribution]
    #
    # @!attribute location
    #   <p>The fully qualified URI of the new streaming distribution resource just created.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The current version of the streaming distribution created.</p>
    #
    #   @return [String]
    #
    CreateStreamingDistributionOutput = ::Struct.new(
      :streaming_distribution,
      :location,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to create a new streaming distribution with tags.</p>
    #
    # @!attribute streaming_distribution_config_with_tags
    #   <p> The streaming distribution's configuration information. </p>
    #
    #   @return [StreamingDistributionConfigWithTags]
    #
    CreateStreamingDistributionWithTagsInput = ::Struct.new(
      :streaming_distribution_config_with_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request. </p>
    #
    # @!attribute streaming_distribution
    #   <p>The streaming distribution's information. </p>
    #
    #   @return [StreamingDistribution]
    #
    # @!attribute location
    #   <p>The fully qualified URI of the new streaming distribution resource just created.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The current version of the distribution created.</p>
    #
    #   @return [String]
    #
    CreateStreamingDistributionWithTagsOutput = ::Struct.new(
      :streaming_distribution,
      :location,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that controls:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error
    # 					messages before returning the response to the viewer. </p>
    # 			         </li>
    #             <li>
    # 				           <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>For more information about custom error pages, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the
    # 				<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute error_code
    #   <p>The HTTP status code for which you want to specify a custom error page and/or a caching
    #   			duration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute response_page_path
    #   <p>The path to the custom error page that you want CloudFront to return to a viewer when your
    #   			origin returns the HTTP status code specified by <code>ErrorCode</code>, for example,
    #   				<code>/4xx-errors/403-forbidden.html</code>. If you want to store your objects and your
    #   			custom error pages in different locations, your distribution must include a cache behavior for
    #   			which the following is true:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>The value of <code>PathPattern</code> matches the path to your custom error
    #   					messages. For example, suppose you saved custom error pages for 4xx errors in an Amazon S3
    #   					bucket in a directory named <code>/4xx-errors</code>. Your distribution must include a
    #   					cache behavior for which the path pattern routes requests for your custom error pages to
    #   					that location, for example, <code>/4xx-errors/*</code>. </p>
    #   			         </li>
    #               <li>
    #   				           <p>The value of <code>TargetOriginId</code> specifies the value of the <code>ID</code>
    #   					element for the origin that contains your custom error pages.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>If you specify a value for <code>ResponsePagePath</code>, you must also specify a value
    #   			for <code>ResponseCode</code>.</p>
    #   		       <p>We recommend that you store custom error pages in an Amazon S3 bucket. If you store custom
    #   			error pages on an HTTP server and the server starts to return 5xx errors, CloudFront can't get the
    #   			files that you want to return to viewers because the origin server is unavailable.</p>
    #
    #   @return [String]
    #
    # @!attribute response_code
    #   <p>The HTTP status code that you want CloudFront to return to the viewer along with the custom
    #   			error page. There are a variety of reasons that you might want CloudFront to return a status code
    #   			different from the status code that your origin returned to CloudFront, for example:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>Some Internet devices (some firewalls and corporate proxies, for example) intercept
    #   					HTTP 4xx and 5xx and prevent the response from being returned to the viewer. If you
    #   					substitute <code>200</code>, the response typically won't be intercepted.</p>
    #   			         </li>
    #               <li>
    #   				           <p>If you don't care about distinguishing among different client errors or server
    #   					errors, you can specify <code>400</code> or <code>500</code> as the
    #   						<code>ResponseCode</code> for all 4xx or 5xx errors.</p>
    #   			         </li>
    #               <li>
    #   				           <p>You might want to return a <code>200</code> status code (OK) and static website so
    #   					your customers don't know that your website is down.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>If you specify a value for <code>ResponseCode</code>, you must also specify a value for
    #   			<code>ResponsePagePath</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute error_caching_min_ttl
    #   <p>The minimum amount of time, in seconds, that you want CloudFront to cache the HTTP status
    #   			code specified in <code>ErrorCode</code>. When this time period has elapsed, CloudFront queries your
    #   			origin to see whether the problem that caused the error has been resolved and the requested
    #   			object is now available.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing
    #   				Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [Integer]
    #
    CustomErrorResponse = ::Struct.new(
      :error_code,
      :response_page_path,
      :response_code,
      :error_caching_min_ttl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that controls:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error
    # 					messages before returning the response to the viewer.</p>
    # 			         </li>
    #             <li>
    # 				           <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>For more information about custom error pages, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the
    # 				<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute quantity
    #   <p>The number of HTTP status codes for which you want to specify a custom error page
    #   			and/or a caching duration. If <code>Quantity</code> is <code>0</code>, you can omit
    #   				<code>Items</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A complex type that contains a <code>CustomErrorResponse</code> element for each HTTP
    #   			status code for which you want to specify a custom error page and/or a caching duration.
    #   		</p>
    #
    #   @return [Array<CustomErrorResponse>]
    #
    CustomErrorResponses = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains the list of Custom Headers for each origin. </p>
    #
    # @!attribute quantity
    #   <p>The number of custom headers, if any, for this distribution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>
    #               <b>Optional</b>: A list that contains one
    #   				<code>OriginCustomHeader</code> element for each custom header that you want CloudFront to forward
    #   			to the origin. If Quantity is <code>0</code>, omit <code>Items</code>.</p>
    #
    #   @return [Array<OriginCustomHeader>]
    #
    CustomHeaders = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A custom origin. A custom origin is any origin that is <i>not</i> an Amazon S3
    # 			bucket, with one exception. An Amazon S3 bucket that is <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html">configured with
    # 			static website hosting</a>
    #             <i>is</i> a custom origin.</p>
    #
    # @!attribute http_port
    #   <p>The HTTP port that CloudFront uses to connect to the origin. Specify the HTTP port that the origin
    #   			listens on.</p>
    #
    #   @return [Integer]
    #
    # @!attribute https_port
    #   <p>The HTTPS port that CloudFront uses to connect to the origin. Specify the HTTPS port that the
    #   			origin listens on.</p>
    #
    #   @return [Integer]
    #
    # @!attribute origin_protocol_policy
    #   <p>Specifies the protocol (HTTP or HTTPS) that CloudFront uses to connect to the origin. Valid values
    #   			are:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>http-only</code> – CloudFront always uses HTTP to connect to the
    #   					origin.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>match-viewer</code> – CloudFront connects to the origin using the same
    #   					protocol that the viewer used to connect to CloudFront.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>https-only</code> – CloudFront always uses HTTPS to connect to the
    #   					origin.</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute origin_ssl_protocols
    #   <p>Specifies the minimum SSL/TLS protocol that CloudFront uses when connecting to your origin over
    #   			HTTPS. Valid values include <code>SSLv3</code>, <code>TLSv1</code>,
    #   			<code>TLSv1.1</code>, and <code>TLSv1.2</code>.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html DownloadDistValuesOriginSSLProtocols">Minimum Origin SSL Protocol</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [OriginSslProtocols]
    #
    # @!attribute origin_read_timeout
    #   <p>Specifies how long, in seconds, CloudFront waits for a response from the origin. This is also
    #   			known as the <i>origin response timeout</i>. The minimum timeout is 1
    #   			second, the maximum is 60 seconds, and the default (if you don’t specify otherwise) is
    #   			30 seconds.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html DownloadDistValuesOriginResponseTimeout">Origin Response Timeout</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute origin_keepalive_timeout
    #   <p>Specifies how long, in seconds, CloudFront persists its connection to the origin. The minimum
    #   			timeout is 1 second, the maximum is 60 seconds, and the default (if you don’t specify
    #   			otherwise) is 5 seconds.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html DownloadDistValuesOriginKeepaliveTimeout">Origin Keep-alive Timeout</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [Integer]
    #
    CustomOriginConfig = ::Struct.new(
      :http_port,
      :https_port,
      :origin_protocol_policy,
      :origin_ssl_protocols,
      :origin_read_timeout,
      :origin_keepalive_timeout,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that describes the default cache behavior if you don’t specify a
    # 			<code>CacheBehavior</code> element or if request URLs don’t match any of the values of
    # 			<code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly
    # 			one default cache behavior.</p>
    #
    # @!attribute target_origin_id
    #   <p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when
    #   			they use the default cache behavior.</p>
    #
    #   @return [String]
    #
    # @!attribute trusted_signers
    #   <important>
    #   			         <p>We recommend using <code>TrustedKeyGroups</code> instead of
    #   				<code>TrustedSigners</code>.</p>
    #   		       </important>
    #   		       <p>A list of Amazon Web Services account IDs whose public keys CloudFront can use to validate signed URLs or signed
    #   			cookies.</p>
    #   		       <p>When a cache behavior contains trusted signers, CloudFront requires signed URLs or signed cookies
    #   			for all requests that match the cache behavior. The URLs or cookies must be signed with
    #   			the private key of a CloudFront key pair in a trusted signer’s Amazon Web Services account. The signed URL or
    #   			cookie contains information about which public key CloudFront should use to verify the
    #   			signature. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [TrustedSigners]
    #
    # @!attribute trusted_key_groups
    #   <p>A list of key groups that CloudFront can use to validate signed URLs or signed cookies.</p>
    #   		       <p>When a cache behavior contains trusted key groups, CloudFront requires signed URLs or signed
    #   			cookies for all requests that match the cache behavior. The URLs or cookies must be
    #   			signed with a private key whose corresponding public key is in the key group. The signed
    #   			URL or cookie contains information about which public key CloudFront should use to verify the
    #   			signature. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [TrustedKeyGroups]
    #
    # @!attribute viewer_protocol_policy
    #   <p>The protocol that viewers can use to access the files in the origin specified by
    #   				<code>TargetOriginId</code> when a request matches the path pattern in
    #   				<code>PathPattern</code>. You can specify the following options:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns
    #   					an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The
    #   					viewer then resubmits the request using the new URL.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP
    #   					status code of 403 (Forbidden).</p>
    #   			         </li>
    #            </ul>
    #   		       <p>For more information about requiring the HTTPS protocol, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-viewers-to-cloudfront.html">Requiring HTTPS Between Viewers and CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <note>
    #   			         <p>The only way to guarantee that viewers retrieve an object that was fetched from
    #   				the origin using HTTPS is never to use any other protocol to fetch the object. If
    #   				you have recently changed from HTTP to HTTPS, we recommend that you clear your
    #   				objects’ cache because cached objects are protocol agnostic. That means that an edge
    #   				location will return an object from the cache regardless of whether the current
    #   				request protocol matches the protocol used previously. For more information, see
    #   				<a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing Cache
    #   				Expiration</a> in the
    #   					<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute allowed_methods
    #   <p>A complex type that controls which HTTP methods CloudFront processes and forwards to your
    #   			Amazon S3 bucket or your custom origin. There are three choices:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.</p>
    #   			         </li>
    #               <li>
    #   				           <p>CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code>
    #   					requests.</p>
    #   			         </li>
    #               <li>
    #   				           <p>CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and
    #   						<code>DELETE</code> requests.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or
    #   			to your custom origin so users can't perform operations that you don't want them to. For
    #   			example, you might not want users to have permissions to delete objects from your
    #   			origin.</p>
    #
    #   @return [AllowedMethods]
    #
    # @!attribute smooth_streaming
    #   <p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming
    #   			format using the origin that is associated with this cache behavior. If so, specify
    #   				<code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for
    #   				<code>SmoothStreaming</code>, you can still distribute other content using this cache
    #   			behavior if the content matches the value of <code>PathPattern</code>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute compress
    #   <p>Whether you want CloudFront to automatically compress certain files for this cache behavior.
    #   			If so, specify <code>true</code>; if not, specify <code>false</code>. For more information,
    #   			see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html">Serving Compressed Files</a> in
    #   			the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute lambda_function_associations
    #   <p>A complex type that contains zero or more Lambda@Edge function associations for a cache
    #   			behavior.</p>
    #
    #   @return [LambdaFunctionAssociations]
    #
    # @!attribute function_associations
    #   <p>A list of CloudFront functions that are associated with this cache behavior. CloudFront functions must
    #   			be published to the <code>LIVE</code> stage to associate them with a cache
    #   			behavior.</p>
    #
    #   @return [FunctionAssociations]
    #
    # @!attribute field_level_encryption_id
    #   <p>The value of <code>ID</code> for the field-level encryption configuration that you want CloudFront
    #   			to use for encrypting specific fields of data for the default cache behavior.</p>
    #
    #   @return [String]
    #
    # @!attribute realtime_log_config_arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration that is attached to this
    #   			cache behavior. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html">Real-time logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute cache_policy_id
    #   <p>The unique identifier of the cache policy that is attached to the default cache behavior.
    #   			For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the
    #               <i>Amazon CloudFront Developer Guide</i>.</p>
    #           <p>A <code>DefaultCacheBehavior</code> must include either a
    #               <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you
    #               use a <code>CachePolicyId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute origin_request_policy_id
    #   <p>The unique identifier of the origin request policy that is attached to the default cache
    #   			behavior. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html origin-request-create-origin-request-policy">Creating origin request policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html">Using the managed origin request policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute response_headers_policy_id
    #   <p>The identifier for a response headers policy.</p>
    #
    #   @return [String]
    #
    # @!attribute forwarded_values
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin request
    #   			policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/working-with-policies.html">Working with policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>If you want to include values in the cache key, use a cache policy. For more information,
    #   			see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>If you want to send values to the origin but not include them in the cache key, use an
    #   			origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html origin-request-create-origin-request-policy">Creating origin request policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html">Using the managed origin request policies</a> in the
    #               <i>Amazon CloudFront Developer Guide</i>.</p>
    #           <p>A <code>DefaultCacheBehavior</code> must include either a
    #               <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you
    #               use a <code>CachePolicyId</code>.</p>
    #   		       <p>A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.</p>
    #
    #   @deprecated
    #
    #   @return [ForwardedValues]
    #
    # @!attribute min_ttl
    #   <p>This field is deprecated. We recommend that you use the <code>MinTTL</code> field in a cache
    #   			policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront
    #   			forwards another request to your origin to determine whether the object has been updated. For
    #   			more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays
    #   				in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to
    #   			forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code>
    #   			for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>
    #
    #   @deprecated
    #
    #   @return [Integer]
    #
    # @!attribute default_ttl
    #   <p>This field is deprecated. We recommend that you use the <code>DefaultTTL</code> field in a
    #   			cache policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront
    #   			forwards another request to your origin to determine whether the object has been updated. The
    #   			value that you specify applies only when your origin does not add HTTP headers such as
    #   				<code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and
    #   				<code>Expires</code> to objects. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays
    #   					in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @deprecated
    #
    #   @return [Integer]
    #
    # @!attribute max_ttl
    #   <p>This field is deprecated. We recommend that you use the <code>MaxTTL</code> field in a cache
    #   			policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront
    #   			forwards another request to your origin to determine whether the object has been updated. The
    #   			value that you specify applies only when your origin adds HTTP headers such as
    #   			<code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and
    #   			<code>Expires</code> to objects. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays
    #   				in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @deprecated
    #
    #   @return [Integer]
    #
    DefaultCacheBehavior = ::Struct.new(
      :target_origin_id,
      :trusted_signers,
      :trusted_key_groups,
      :viewer_protocol_policy,
      :allowed_methods,
      :smooth_streaming,
      :compress,
      :lambda_function_associations,
      :function_associations,
      :field_level_encryption_id,
      :realtime_log_config_arn,
      :cache_policy_id,
      :origin_request_policy_id,
      :response_headers_policy_id,
      :forwarded_values,
      :min_ttl,
      :default_ttl,
      :max_ttl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the cache policy that you are deleting. To get the
    #   			identifier, you can use <code>ListCachePolicies</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The version of the cache policy that you are deleting. The version is the cache
    #   			policy’s <code>ETag</code> value, which you can get using
    #   			<code>ListCachePolicies</code>, <code>GetCachePolicy</code>, or
    #   			<code>GetCachePolicyConfig</code>.</p>
    #
    #   @return [String]
    #
    DeleteCachePolicyInput = ::Struct.new(
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCachePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Deletes a origin access identity.</p>
    #
    # @!attribute id
    #   <p>The origin access identity's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header you received from a previous <code>GET</code>
    #   			or <code>PUT</code> request. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    DeleteCloudFrontOriginAccessIdentityInput = ::Struct.new(
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCloudFrontOriginAccessIdentityOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This action deletes a web distribution. To delete a web distribution using the CloudFront
    # 			API, perform the following steps.</p>
    # 		       <p>
    # 			         <b>To delete a web distribution using the CloudFront API:</b>
    # 		       </p>
    # 		       <ol>
    #             <li>
    # 				           <p>Disable the web distribution </p>
    # 			         </li>
    #             <li>
    # 				           <p>Submit a <code>GET Distribution Config</code> request to get the current
    # 					configuration and the <code>Etag</code> header for the distribution.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Update the XML document that was returned in the response to your <code>GET
    # 						Distribution Config</code> request to change the value of <code>Enabled</code> to
    # 						<code>false</code>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Submit a <code>PUT Distribution Config</code> request to update the configuration
    # 					for your distribution. In the request body, include the XML document that you updated in
    # 					Step 3. Set the value of the HTTP <code>If-Match</code> header to the value of the
    # 						<code>ETag</code> header that CloudFront returned when you submitted the <code>GET
    # 						Distribution Config</code> request in Step 2.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Review the response to the <code>PUT Distribution Config</code> request to confirm
    # 					that the distribution was successfully disabled.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Submit a <code>GET Distribution</code> request to confirm that your changes have
    # 					propagated. When propagation is complete, the value of <code>Status</code> is
    # 						<code>Deployed</code>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Submit a <code>DELETE Distribution</code> request. Set the value of the HTTP
    # 						<code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront
    # 					returned when you submitted the <code>GET Distribution Config</code> request in Step
    # 					6.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Review the response to your <code>DELETE Distribution</code> request to confirm
    # 					that the distribution was successfully deleted.</p>
    # 			         </li>
    #          </ol>
    # 		       <p>For information about deleting a distribution using the CloudFront console, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html">Deleting a Distribution</a> in the
    # 				<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute id
    #   <p>The distribution ID. </p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when you disabled the
    #   			distribution. For example: <code>E2QWRUHAPOMQZL</code>. </p>
    #
    #   @return [String]
    #
    DeleteDistributionInput = ::Struct.new(
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDistributionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the configuration you want to delete from CloudFront.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the
    #   			configuration identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    DeleteFieldLevelEncryptionConfigInput = ::Struct.new(
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFieldLevelEncryptionConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>Request the ID of the profile you want to delete from CloudFront.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the
    #   			profile to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    DeleteFieldLevelEncryptionProfileInput = ::Struct.new(
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFieldLevelEncryptionProfileOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the function that you are deleting.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are deleting, which
    #   			you can get using <code>DescribeFunction</code>.</p>
    #
    #   @return [String]
    #
    DeleteFunctionInput = ::Struct.new(
      :name,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFunctionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the key group that you are deleting. To get the identifier, use
    #   			<code>ListKeyGroups</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The version of the key group that you are deleting. The version is the key group’s
    #   			<code>ETag</code> value. To get the <code>ETag</code>, use <code>GetKeyGroup</code> or
    #   			<code>GetKeyGroupConfig</code>.</p>
    #
    #   @return [String]
    #
    DeleteKeyGroupInput = ::Struct.new(
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteKeyGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute distribution_id
    #   <p>The ID of the distribution that you are disabling metrics for.</p>
    #
    #   @return [String]
    #
    DeleteMonitoringSubscriptionInput = ::Struct.new(
      :distribution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteMonitoringSubscriptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the origin request policy that you are deleting. To get the
    #   			identifier, you can use <code>ListOriginRequestPolicies</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The version of the origin request policy that you are deleting. The version is the origin
    #   			request policy’s <code>ETag</code> value, which you can get using
    #   			<code>ListOriginRequestPolicies</code>, <code>GetOriginRequestPolicy</code>, or
    #   			<code>GetOriginRequestPolicyConfig</code>.</p>
    #
    #   @return [String]
    #
    DeleteOriginRequestPolicyInput = ::Struct.new(
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteOriginRequestPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the public key you want to remove from CloudFront.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the
    #   			public key identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    DeletePublicKeyInput = ::Struct.new(
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePublicKeyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the real-time log configuration to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration to delete.</p>
    #
    #   @return [String]
    #
    DeleteRealtimeLogConfigInput = ::Struct.new(
      :name,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRealtimeLogConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier for the response headers policy that you are deleting.</p>
    #   		       <p>To get the identifier, you can use <code>ListResponseHeadersPolicies</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The version of the response headers policy that you are deleting.</p>
    #   		       <p>The version is the response headers policy’s <code>ETag</code> value, which you can
    #   			get using <code>ListResponseHeadersPolicies</code>,
    #   				<code>GetResponseHeadersPolicy</code>, or
    #   				<code>GetResponseHeadersPolicyConfig</code>.</p>
    #
    #   @return [String]
    #
    DeleteResponseHeadersPolicyInput = ::Struct.new(
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResponseHeadersPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to delete a streaming distribution.</p>
    #
    # @!attribute id
    #   <p>The distribution ID. </p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when you disabled the
    #   			streaming distribution. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    DeleteStreamingDistributionInput = ::Struct.new(
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteStreamingDistributionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the function that you are getting information about.</p>
    #
    #   @return [String]
    #
    # @!attribute stage
    #   <p>The function’s stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>
    #
    #   @return [String]
    #
    DescribeFunctionInput = ::Struct.new(
      :name,
      :stage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute function_summary
    #   <p>Contains configuration information and metadata about a CloudFront function.</p>
    #
    #   @return [FunctionSummary]
    #
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the CloudFront function.</p>
    #
    #   @return [String]
    #
    DescribeFunctionOutput = ::Struct.new(
      :function_summary,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A distribution tells CloudFront where you want content to be delivered from, and the details about how to
    # 			track and manage content delivery.</p>
    #
    # @!attribute id
    #   <p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>.
    #   		</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) for the distribution. For example:
    #   				<code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where
    #   				<code>123456789012</code> is your Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>This response element indicates the current status of the distribution. When the status
    #   			is <code>Deployed</code>, the distribution's information is fully propagated to all CloudFront edge
    #   			locations. </p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time the distribution was last modified. </p>
    #
    #   @return [Time]
    #
    # @!attribute in_progress_invalidation_batches
    #   <p>The number of invalidation batches currently in progress. </p>
    #
    #   @return [Integer]
    #
    # @!attribute domain_name
    #   <p>The domain name corresponding to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute active_trusted_signers
    #   <important>
    #   			         <p>We recommend using <code>TrustedKeyGroups</code> instead of
    #   				<code>TrustedSigners</code>.</p>
    #   		       </important>
    #   		       <p>CloudFront automatically adds this field to the response if you’ve configured a cache behavior in
    #   			this distribution to serve private content using trusted signers. This field contains a
    #   			list of Amazon Web Services account IDs and the active CloudFront key pairs in each account that CloudFront can use
    #   			to verify the signatures of signed URLs or signed cookies.</p>
    #
    #   @return [ActiveTrustedSigners]
    #
    # @!attribute active_trusted_key_groups
    #   <p>CloudFront automatically adds this field to the response if you’ve configured a cache
    #   			behavior in this distribution to serve private content using key groups. This field
    #   			contains a list of key groups and the public keys in each key group that CloudFront can use to
    #   			verify the signatures of signed URLs or signed cookies.</p>
    #
    #   @return [ActiveTrustedKeyGroups]
    #
    # @!attribute distribution_config
    #   <p>The current configuration information for the distribution. Send a <code>GET</code>
    #   			request to the <code>/<i>CloudFront API version</i>/distribution ID/config</code>
    #   			resource.</p>
    #
    #   @return [DistributionConfig]
    #
    # @!attribute alias_icp_recordals
    #   <p>Amazon Web Services services in China customers must file for an Internet Content Provider (ICP) recordal if they want to serve content
    #   			publicly on an alternate domain name, also known as a CNAME, that they've added to CloudFront. AliasICPRecordal provides the ICP
    #   			recordal status for CNAMEs associated with distributions.</p>
    #   		       <p>For more information about ICP recordals, see  <a href="https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html">
    #   			Signup, Accounts, and Credentials</a> in <i>Getting Started with Amazon Web Services services in China</i>.</p>
    #
    #   @return [Array<AliasICPRecordal>]
    #
    Distribution = ::Struct.new(
      :id,
      :arn,
      :status,
      :last_modified_time,
      :in_progress_invalidation_batches,
      :domain_name,
      :active_trusted_signers,
      :active_trusted_key_groups,
      :distribution_config,
      :alias_icp_recordals,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The caller reference you attempted to create the distribution with is associated with another distribution.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DistributionAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A distribution configuration.</p>
    #
    # @!attribute caller_reference
    #   <p>A unique value (for example, a date-time stamp) that ensures that the request can't be
    #   			replayed.</p>
    #   		       <p>If the value of <code>CallerReference</code> is new (regardless of the content of the
    #   				<code>DistributionConfig</code> object), CloudFront creates a new distribution.</p>
    #   		       <p>If <code>CallerReference</code> is a value that you already sent in a previous request to
    #   			create a distribution, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>
    #
    #   @return [String]
    #
    # @!attribute aliases
    #   <p>A complex type that contains information about CNAMEs (alternate domain names), if any,
    #   			for this distribution.</p>
    #
    #   @return [Aliases]
    #
    # @!attribute default_root_object
    #   <p>The object that you want CloudFront to request from your origin (for example,
    #   				<code>index.html</code>) when a viewer requests the root URL for your distribution
    #   				(<code>http://www.example.com</code>) instead of an object in your distribution
    #   				(<code>http://www.example.com/product-description.html</code>). Specifying a default root
    #   			object avoids exposing the contents of your distribution.</p>
    #   		       <p>Specify only the object name, for example, <code>index.html</code>. Don't add a
    #   				<code>/</code> before the object name.</p>
    #   		       <p>If you don't want to specify a default root object when you create a distribution,
    #   			include an empty <code>DefaultRootObject</code> element.</p>
    #   		       <p>To delete the default root object from an existing distribution, update the
    #   			distribution configuration and include an empty <code>DefaultRootObject</code>
    #   			element.</p>
    #   		       <p>To replace the default root object, update the distribution configuration and specify
    #   			the new object.</p>
    #   		       <p>For more information about the default root object, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html">Creating a Default Root Object</a> in the
    #   				<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute origins
    #   <p>A complex type that contains information about origins for this distribution.
    #   		</p>
    #
    #   @return [Origins]
    #
    # @!attribute origin_groups
    #   <p> A complex type that contains information about origin groups for this
    #   			distribution.</p>
    #
    #   @return [OriginGroups]
    #
    # @!attribute default_cache_behavior
    #   <p>A complex type that describes the default cache behavior if you don't specify a
    #   				<code>CacheBehavior</code> element or if files don't match any of the values of
    #   				<code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one
    #   			default cache behavior.</p>
    #
    #   @return [DefaultCacheBehavior]
    #
    # @!attribute cache_behaviors
    #   <p>A complex type that contains zero or more <code>CacheBehavior</code> elements.
    #   		</p>
    #
    #   @return [CacheBehaviors]
    #
    # @!attribute custom_error_responses
    #   <p>A complex type that controls the following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error
    #   					messages before returning the response to the viewer.</p>
    #   			         </li>
    #               <li>
    #   				           <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>For more information about custom error pages, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the
    #   				<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [CustomErrorResponses]
    #
    # @!attribute comment
    #   <p>An optional comment to describe the distribution. The comment cannot be longer than 128
    #   			characters.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [String]
    #
    # @!attribute logging
    #   <p>A complex type that controls whether access logs are written for the
    #   			distribution.</p>
    #   		       <p>For more information about logging, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html">Access
    #   				Logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [LoggingConfig]
    #
    # @!attribute price_class
    #   <p>The price class that corresponds with the maximum price that you want to pay for CloudFront
    #   			service. If you specify <code>PriceClass_All</code>, CloudFront responds to requests for your
    #   			objects from all CloudFront edge locations.</p>
    #   		       <p>If you specify a price class other than <code>PriceClass_All</code>, CloudFront serves your
    #   			objects from the CloudFront edge location that has the lowest latency among the edge locations in
    #   			your price class. Viewers who are in or near regions that are excluded from your specified
    #   			price class may encounter slower performance.</p>
    #   		       <p>For more information about price classes, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html">Choosing the Price Class
    #   			for a CloudFront Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>. For
    #   			information about CloudFront pricing, including how price classes (such as Price Class 100)
    #   			map to CloudFront regions, see <a href="http://aws.amazon.com/cloudfront/pricing/">Amazon CloudFront
    #   			Pricing</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>From this field, you can enable or disable the selected distribution.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute viewer_certificate
    #   <p>A complex type that determines the distribution’s SSL/TLS configuration for
    #   			communicating with viewers.</p>
    #
    #   @return [ViewerCertificate]
    #
    # @!attribute restrictions
    #   <p>A complex type that identifies ways in which you want to restrict distribution of your
    #   			content.</p>
    #
    #   @return [Restrictions]
    #
    # @!attribute web_acl_id
    #   <p>A unique identifier that specifies the WAF web ACL, if any, to associate
    #   			with this distribution. To specify a web ACL created using the latest version of
    #               WAF, use the ACL ARN, for example
    #   			<code>arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/473e64fd-f30b-4765-81a0-62ad96dd167a</code>.
    #   			To specify a web ACL created using WAF Classic, use the ACL ID, for example
    #   			<code>473e64fd-f30b-4765-81a0-62ad96dd167a</code>.</p>
    #   		       <p>WAF is a web application firewall that lets you monitor the HTTP and HTTPS
    #   			requests that are forwarded to CloudFront, and lets you control access to your content. Based on
    #   			conditions that you specify, such as the IP addresses that requests originate from or the
    #   			values of query strings, CloudFront responds to requests either with the requested content or with
    #   			an HTTP 403 status code (Forbidden). You can also configure CloudFront to return a custom error page
    #   			when a request is blocked. For more information about WAF, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html">WAF
    #   				Developer Guide</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute http_version
    #   <p>(Optional) Specify the maximum HTTP version that you want viewers to use to communicate
    #   			with CloudFront. The default value for new web distributions is http2. Viewers that don't support
    #   			HTTP/2 automatically use an earlier HTTP version.</p>
    #   		       <p>For viewers and CloudFront to use HTTP/2, viewers must support TLS 1.2 or later, and must
    #   			support Server Name Identification (SNI).</p>
    #   		       <p>In general, configuring CloudFront to communicate with viewers using HTTP/2 reduces latency.
    #   			You can improve performance by optimizing for HTTP/2. For more information, do an Internet
    #   			search for "http/2 optimization." </p>
    #
    #   @return [String]
    #
    # @!attribute is_ipv6_enabled
    #   <p>If you want CloudFront to respond to IPv6 DNS requests with an IPv6 address for your
    #   			distribution, specify <code>true</code>. If you specify <code>false</code>, CloudFront responds to
    #   			IPv6 DNS requests with the DNS response code <code>NOERROR</code> and with no IP addresses.
    #   			This allows viewers to submit a second request, for an IPv4 address for your distribution. </p>
    #   		       <p>In general, you should enable IPv6 if you have users on IPv6 networks who want to
    #   			access your content. However, if you're using signed URLs or signed cookies to restrict access
    #   			to your content, and if you're using a custom policy that includes the <code>IpAddress</code>
    #   			parameter to restrict the IP addresses that can access your content, don't enable IPv6. If
    #   			you want to restrict access to some content by IP address and not restrict access to other
    #   			content (or restrict access but not by IP address), you can create two distributions. For more
    #   			information, see
    #   			<a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html">Creating a Signed URL Using a Custom Policy</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>If you're using an Route 53 Amazon Web Services Integration alias resource record set to route traffic to your CloudFront
    #   			distribution, you need to create a second alias resource record set when both of the following
    #   			are true:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>You enable IPv6 for the distribution</p>
    #   			         </li>
    #               <li>
    #   				           <p>You're using alternate domain names in the URLs for your objects</p>
    #   			         </li>
    #            </ul>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html">Routing Traffic
    #   				to an Amazon CloudFront Web Distribution by Using Your Domain Name</a> in the <i>Route 53 Amazon Web Services Integration
    #   				Developer Guide</i>.</p>
    #   		       <p>If you created a CNAME resource record set, either with Route 53 Amazon Web Services Integration or with another DNS
    #   			service, you don't need to make any changes. A CNAME record will route traffic to your
    #   			distribution regardless of the IP address format of the viewer request.</p>
    #
    #   @return [Boolean]
    #
    DistributionConfig = ::Struct.new(
      :caller_reference,
      :aliases,
      :default_root_object,
      :origins,
      :origin_groups,
      :default_cache_behavior,
      :cache_behaviors,
      :custom_error_responses,
      :comment,
      :logging,
      :price_class,
      :enabled,
      :viewer_certificate,
      :restrictions,
      :web_acl_id,
      :http_version,
      :is_ipv6_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::Cloudfront::Types::DistributionConfig "\
          "caller_reference=#{caller_reference || 'nil'}, "\
          "aliases=#{aliases || 'nil'}, "\
          "default_root_object=#{default_root_object || 'nil'}, "\
          "origins=#{origins || 'nil'}, "\
          "origin_groups=#{origin_groups || 'nil'}, "\
          "default_cache_behavior=#{default_cache_behavior || 'nil'}, "\
          "cache_behaviors=#{cache_behaviors || 'nil'}, "\
          "custom_error_responses=#{custom_error_responses || 'nil'}, "\
          "comment=\"[SENSITIVE]\", "\
          "logging=#{logging || 'nil'}, "\
          "price_class=#{price_class || 'nil'}, "\
          "enabled=#{enabled || 'nil'}, "\
          "viewer_certificate=#{viewer_certificate || 'nil'}, "\
          "restrictions=#{restrictions || 'nil'}, "\
          "web_acl_id=#{web_acl_id || 'nil'}, "\
          "http_version=#{http_version || 'nil'}, "\
          "is_ipv6_enabled=#{is_ipv6_enabled || 'nil'}>"
      end
    end

    # <p>A distribution Configuration and a list of tags to be associated with the
    # 			distribution.</p>
    #
    # @!attribute distribution_config
    #   <p>A distribution configuration.</p>
    #
    #   @return [DistributionConfig]
    #
    # @!attribute tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    #
    #   @return [Tags]
    #
    DistributionConfigWithTags = ::Struct.new(
      :distribution_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of distribution IDs.</p>
    #
    # @!attribute marker
    #   <p>The value provided in the <code>Marker</code> request field.</p>
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>Contains the value that you should use in the <code>Marker</code> field of a
    #   			subsequent request to continue listing distribution IDs where you left off.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of distribution IDs requested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute is_truncated
    #   <p>A flag that indicates whether more distribution IDs remain to be listed. If your
    #   			results were truncated, you can make a subsequent request using the <code>Marker</code>
    #   			request field to retrieve more distribution IDs in the list.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute quantity
    #   <p>The total number of distribution IDs returned in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>Contains the distribution IDs in the list.</p>
    #
    #   @return [Array<String>]
    #
    DistributionIdList = ::Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A distribution list.</p>
    #
    # @!attribute marker
    #   <p>The value you provided for the <code>Marker</code> request parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains
    #   			the value you can use for the <code>Marker</code> request parameter to continue listing your
    #   			distributions where they left off. </p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The value you provided for the <code>MaxItems</code> request parameter.</p>
    #
    #   @return [Integer]
    #
    # @!attribute is_truncated
    #   <p>A flag that indicates whether more distributions remain to be listed. If your results
    #   			were truncated, you can make a follow-up pagination request using the <code>Marker</code>
    #   			request parameter to retrieve more distributions in the list.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute quantity
    #   <p>The number of distributions that were created by the current Amazon Web Services account.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A complex type that contains one <code>DistributionSummary</code> element for each
    #   			distribution that was created by the current Amazon Web Services account.</p>
    #
    #   @return [Array<DistributionSummary>]
    #
    DistributionList = ::Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified CloudFront distribution is not disabled. You must disable
    # 			the distribution before you can delete it.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DistributionNotDisabled = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of the information about a CloudFront distribution.</p>
    #
    # @!attribute id
    #   <p>The identifier for the distribution. For example:
    #   			<code>EDFDVBD632BHDS5</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) for the distribution. For example:
    #   				<code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where
    #   				<code>123456789012</code> is your Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the distribution. When the status is <code>Deployed</code>, the
    #   			distribution's information is propagated to all CloudFront edge locations.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time the distribution was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute domain_name
    #   <p>The domain name that corresponds to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute aliases
    #   <p>A complex type that contains information about CNAMEs (alternate domain names), if any,
    #   			for this distribution.</p>
    #
    #   @return [Aliases]
    #
    # @!attribute origins
    #   <p>A complex type that contains information about origins for this distribution.</p>
    #
    #   @return [Origins]
    #
    # @!attribute origin_groups
    #   <p> A complex type that contains information about origin groups for this
    #   			distribution.</p>
    #
    #   @return [OriginGroups]
    #
    # @!attribute default_cache_behavior
    #   <p>A complex type that describes the default cache behavior if you don't specify a
    #   				<code>CacheBehavior</code> element or if files don't match any of the values of
    #   				<code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one
    #   			default cache behavior.</p>
    #
    #   @return [DefaultCacheBehavior]
    #
    # @!attribute cache_behaviors
    #   <p>A complex type that contains zero or more <code>CacheBehavior</code>
    #   			elements.</p>
    #
    #   @return [CacheBehaviors]
    #
    # @!attribute custom_error_responses
    #   <p>A complex type that contains zero or more <code>CustomErrorResponses</code>
    #   			elements.</p>
    #
    #   @return [CustomErrorResponses]
    #
    # @!attribute comment
    #   <p>The comment originally specified when this distribution was created.</p>
    #
    #   @return [String]
    #
    # @!attribute price_class
    #   <p>A complex type that contains information about price class for this streaming
    #   			distribution. </p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Whether the distribution is enabled to accept user requests for content.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute viewer_certificate
    #   <p>A complex type that determines the distribution’s SSL/TLS configuration for
    #   			communicating with viewers.</p>
    #
    #   @return [ViewerCertificate]
    #
    # @!attribute restrictions
    #   <p>A complex type that identifies ways in which you want to restrict distribution of your
    #   			content.</p>
    #
    #   @return [Restrictions]
    #
    # @!attribute web_acl_id
    #   <p>The Web ACL Id (if any) associated with the distribution.</p>
    #
    #   @return [String]
    #
    # @!attribute http_version
    #   <p> Specify the maximum HTTP version that you want viewers to use to communicate with
    #   			CloudFront. The default value for new web distributions is <code>http2</code>. Viewers that don't
    #   			support <code>HTTP/2</code> will automatically use an earlier version.</p>
    #
    #   @return [String]
    #
    # @!attribute is_ipv6_enabled
    #   <p>Whether CloudFront responds to IPv6 DNS requests with an IPv6 address for your
    #   			distribution.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute alias_icp_recordals
    #   <p>Amazon Web Services services in China customers must file for an Internet Content Provider (ICP) recordal if they want to serve content
    #   			publicly on an alternate domain name, also known as a CNAME, that they've added to CloudFront. AliasICPRecordal provides the ICP
    #   			recordal status for CNAMEs associated with distributions.</p>
    #   		       <p>For more information about ICP recordals, see  <a href="https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html">
    #   			Signup, Accounts, and Credentials</a> in <i>Getting Started with Amazon Web Services services in China</i>.</p>
    #
    #   @return [Array<AliasICPRecordal>]
    #
    DistributionSummary = ::Struct.new(
      :id,
      :arn,
      :status,
      :last_modified_time,
      :domain_name,
      :aliases,
      :origins,
      :origin_groups,
      :default_cache_behavior,
      :cache_behaviors,
      :custom_error_responses,
      :comment,
      :price_class,
      :enabled,
      :viewer_certificate,
      :restrictions,
      :web_acl_id,
      :http_version,
      :is_ipv6_enabled,
      :alias_icp_recordals,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Complex data type for field-level encryption profiles that includes all of the encryption entities. </p>
    #
    # @!attribute quantity
    #   <p>Number of field pattern items in a field-level encryption content type-profile mapping. </p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>An array of field patterns in a field-level encryption content type-profile mapping. </p>
    #
    #   @return [Array<EncryptionEntity>]
    #
    EncryptionEntities = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Complex data type for field-level encryption profiles that includes the encryption key and field pattern specifications. </p>
    #
    # @!attribute public_key_id
    #   <p>The public key associated with a set of field-level encryption patterns, to be used when encrypting the fields that match
    #   			the patterns. </p>
    #
    #   @return [String]
    #
    # @!attribute provider_id
    #   <p>The provider associated with the public key being used for encryption. This value must also be provided with the private key
    #   		for applications to be able to decrypt data.</p>
    #
    #   @return [String]
    #
    # @!attribute field_patterns
    #   <p>Field patterns in a field-level encryption content type profile specify the fields that you want to be encrypted. You can provide the
    #   			full field name, or any beginning characters followed by a wildcard (*). You can't overlap field patterns. For example, you can't have
    #   			both ABC* and AB*. Note that field patterns are case-sensitive. </p>
    #
    #   @return [FieldPatterns]
    #
    EncryptionEntity = ::Struct.new(
      :public_key_id,
      :provider_id,
      :field_patterns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the Amazon Kinesis data stream where you are sending real-time
    # 			log data in a real-time log configuration.</p>
    #
    # @!attribute stream_type
    #   <p>The type of data stream where you are sending real-time log data. The only valid value is
    #   			<code>Kinesis</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute kinesis_stream_config
    #   <p>Contains information about the Amazon Kinesis data stream where you are sending
    #   			real-time log data.</p>
    #
    #   @return [KinesisStreamConfig]
    #
    EndPoint = ::Struct.new(
      :stream_type,
      :kinesis_stream_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex data type that includes the profile configurations and other options specified for field-level encryption. </p>
    #
    # @!attribute id
    #   <p>The configuration ID for a field-level encryption configuration which includes a set of profiles that specify certain
    #   		selected data fields to be encrypted by specific public keys.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The last time the field-level encryption configuration was changed. </p>
    #
    #   @return [Time]
    #
    # @!attribute field_level_encryption_config
    #   <p>A complex data type that includes the profile configurations specified for field-level encryption. </p>
    #
    #   @return [FieldLevelEncryptionConfig]
    #
    FieldLevelEncryption = ::Struct.new(
      :id,
      :last_modified_time,
      :field_level_encryption_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex data type that includes the profile configurations specified for field-level encryption. </p>
    #
    # @!attribute caller_reference
    #   <p>A unique number that ensures the request can't be replayed.</p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>An optional comment about the configuration. The comment cannot be longer than 128
    #   			characters.</p>
    #
    #   @return [String]
    #
    # @!attribute query_arg_profile_config
    #   <p>A complex data type that specifies when to forward content if a profile isn't found and the profile that can be provided as a
    #   			query argument in a request.</p>
    #
    #   @return [QueryArgProfileConfig]
    #
    # @!attribute content_type_profile_config
    #   <p>A complex data type that specifies when to forward content if a content type isn't recognized and profiles to use as by default
    #   			in a request if a query argument doesn't specify a profile to use.</p>
    #
    #   @return [ContentTypeProfileConfig]
    #
    FieldLevelEncryptionConfig = ::Struct.new(
      :caller_reference,
      :comment,
      :query_arg_profile_config,
      :content_type_profile_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified configuration for field-level encryption already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FieldLevelEncryptionConfigAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified configuration for field-level encryption is in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FieldLevelEncryptionConfigInUse = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>List of field-level encrpytion configurations.</p>
    #
    # @!attribute next_marker
    #   <p>If there are more elements to be listed, this element is present and contains
    #   			the value that you can use for the <code>Marker</code> request parameter to continue
    #   			listing your configurations where you left off.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of elements you want in the response body. </p>
    #
    #   @return [Integer]
    #
    # @!attribute quantity
    #   <p>The number of field-level encryption items.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>An array of field-level encryption items.</p>
    #
    #   @return [Array<FieldLevelEncryptionSummary>]
    #
    FieldLevelEncryptionList = ::Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex data type for field-level encryption profiles.</p>
    #
    # @!attribute id
    #   <p>The ID for a field-level encryption profile configuration which includes a set of profiles that specify certain
    #   			selected data fields to be encrypted by specific public keys.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The last time the field-level encryption profile was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute field_level_encryption_profile_config
    #   <p>A complex data type that includes the profile name and the encryption entities for the field-level encryption profile.</p>
    #
    #   @return [FieldLevelEncryptionProfileConfig]
    #
    FieldLevelEncryptionProfile = ::Struct.new(
      :id,
      :last_modified_time,
      :field_level_encryption_profile_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified profile for field-level encryption already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FieldLevelEncryptionProfileAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex data type of profiles for the field-level encryption.</p>
    #
    # @!attribute name
    #   <p>Profile name for the field-level encryption profile.</p>
    #
    #   @return [String]
    #
    # @!attribute caller_reference
    #   <p>A unique number that ensures that the request can't be replayed.</p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>An optional comment for the field-level encryption profile. The comment cannot be longer
    #   			than 128 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_entities
    #   <p>A complex data type of encryption entities for the field-level encryption profile that include the public key ID, provider, and
    #   			field patterns for specifying which fields to encrypt with this key.</p>
    #
    #   @return [EncryptionEntities]
    #
    FieldLevelEncryptionProfileConfig = ::Struct.new(
      :name,
      :caller_reference,
      :comment,
      :encryption_entities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified profile for field-level encryption is in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FieldLevelEncryptionProfileInUse = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>List of field-level encryption profiles.</p>
    #
    # @!attribute next_marker
    #   <p>If there are more elements to be listed, this element is present and contains
    #   			the value that you can use for the <code>Marker</code> request parameter to continue
    #   			listing your profiles where you left off.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of field-level encryption profiles you want in the response body. </p>
    #
    #   @return [Integer]
    #
    # @!attribute quantity
    #   <p>The number of field-level encryption profiles.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>The field-level encryption profile items.</p>
    #
    #   @return [Array<FieldLevelEncryptionProfileSummary>]
    #
    FieldLevelEncryptionProfileList = ::Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum size of a profile for field-level encryption was exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FieldLevelEncryptionProfileSizeExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The field-level encryption profile summary.</p>
    #
    # @!attribute id
    #   <p>ID for the field-level encryption profile summary.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The time when the the field-level encryption profile summary was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>Name for the field-level encryption profile summary.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_entities
    #   <p>A complex data type of encryption entities for the field-level encryption profile that include the public key ID, provider, and
    #   			field patterns for specifying which fields to encrypt with this key.</p>
    #
    #   @return [EncryptionEntities]
    #
    # @!attribute comment
    #   <p>An optional comment for the field-level encryption profile summary. The comment cannot be
    #   			longer than 128 characters.</p>
    #
    #   @return [String]
    #
    FieldLevelEncryptionProfileSummary = ::Struct.new(
      :id,
      :last_modified_time,
      :name,
      :encryption_entities,
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of a field-level encryption item.</p>
    #
    # @!attribute id
    #   <p>The unique ID of a field-level encryption item.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The last time that the summary of field-level encryption items was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute comment
    #   <p>An optional comment about the field-level encryption item. The comment cannot be longer than
    #   			128 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute query_arg_profile_config
    #   <p>
    #   			A summary of a query argument-profile mapping.
    #   		</p>
    #
    #   @return [QueryArgProfileConfig]
    #
    # @!attribute content_type_profile_config
    #   <p>
    #   			A summary of a content type-profile mapping.
    #   		</p>
    #
    #   @return [ContentTypeProfileConfig]
    #
    FieldLevelEncryptionSummary = ::Struct.new(
      :id,
      :last_modified_time,
      :comment,
      :query_arg_profile_config,
      :content_type_profile_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex data type that includes the field patterns to match for field-level encryption.</p>
    #
    # @!attribute quantity
    #   <p>The number of field-level encryption field patterns.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>An array of the field-level encryption field patterns.</p>
    #
    #   @return [Array<String>]
    #
    FieldPatterns = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This field is deprecated. We recommend that you use a cache policy or an origin
    # 			request policy instead of this field.</p>
    # 		       <p>If you want to include values in the cache key, use a cache policy. For more information,
    # 			see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # 		       <p>If you want to send values to the origin but not include them in the cache key, use an
    # 			origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy">Creating origin request policies</a> in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    # 		       <p>A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.</p>
    #
    # @!attribute query_string
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin
    #   			request policy instead of this field.</p>
    #   		       <p>If you want to include query strings in the cache key, use a cache policy. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>If you want to send query strings to the origin but not include them in the cache key, use
    #   			an origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html origin-request-create-origin-request-policy">Creating origin request policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>Indicates whether you want CloudFront to forward query strings to the origin that is
    #   			associated with this cache behavior and cache based on the query string parameters. CloudFront
    #   			behavior depends on the value of <code>QueryString</code> and on the values that you specify
    #   			for <code>QueryStringCacheKeys</code>, if any:</p>
    #   		       <p>If you specify true for <code>QueryString</code> and you don't specify any values for
    #   				<code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin
    #   			and caches based on all query string parameters. Depending on how many query string parameters
    #   			and values you have, this can adversely affect performance because CloudFront must forward more
    #   			requests to the origin.</p>
    #   		       <p>If you specify true for <code>QueryString</code> and you specify one or more values for
    #   				<code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin,
    #   			but it only caches based on the query string parameters that you specify.</p>
    #   		       <p>If you specify false for <code>QueryString</code>, CloudFront doesn't forward any query
    #   			string parameters to the origin, and doesn't cache based on query string parameters.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html">Configuring CloudFront to Cache Based on Query String Parameters</a> in the
    #   				<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cookies
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin
    #   			request policy instead of this field.</p>
    #   		       <p>If you want to include cookies in the cache key, use a cache policy. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>If you want to send cookies to the origin but not include them in the cache key, use an
    #   			origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html origin-request-create-origin-request-policy">Creating origin request policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin
    #   			and, if so, which ones. For more information about forwarding cookies to the origin, see
    #   			<a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How CloudFront Forwards, Caches, and Logs Cookies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [CookiePreference]
    #
    # @!attribute headers
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin
    #   			request policy instead of this field.</p>
    #   		       <p>If you want to include headers in the cache key, use a cache policy. For more information,
    #   			see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>If you want to send headers to the origin but not include them in the cache key, use an
    #   			origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html origin-request-create-origin-request-policy">Creating origin request policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>A complex type that specifies the <code>Headers</code>, if any, that you want CloudFront to forward to the
    #   			origin for this cache behavior (whitelisted headers). For the headers that you specify, CloudFront also caches
    #   			separate versions of a specified object that is based on the header values in viewer requests.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html">
    #   			Caching Content Based on Request Headers</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [Headers]
    #
    # @!attribute query_string_cache_keys
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin
    #   			request policy instead of this field.</p>
    #   		       <p>If you want to include query strings in the cache key, use a cache policy. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-key-create-cache-policy">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>If you want to send query strings to the origin but not include them in the cache key, use
    #   			an origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html origin-request-create-origin-request-policy">Creating origin request policies</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>A complex type that contains information about the query string parameters that you
    #   			want CloudFront to use for caching for this cache behavior.</p>
    #
    #   @return [QueryStringCacheKeys]
    #
    ForwardedValues = ::Struct.new(
      :query_string,
      :cookies,
      :headers,
      :query_string_cache_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A function with the same name already exists in this Amazon Web Services account. To create a
    # 			function, you must provide a unique name. To update an existing function, use
    # 			<code>UpdateFunction</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FunctionAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A CloudFront function that is associated with a cache behavior in a CloudFront
    # 			distribution.</p>
    #
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type
    #   <p>The event type of the function, either <code>viewer-request</code> or
    #   			<code>viewer-response</code>. You cannot use origin-facing event types
    #   			(<code>origin-request</code> and <code>origin-response</code>) with a CloudFront
    #   			function.</p>
    #
    #   @return [String]
    #
    FunctionAssociation = ::Struct.new(
      :function_arn,
      :event_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of CloudFront functions that are associated with a cache behavior in a CloudFront distribution.
    # 			CloudFront functions must be published to the <code>LIVE</code> stage to associate them with a
    # 			cache behavior.</p>
    #
    # @!attribute quantity
    #   <p>The number of CloudFront functions in the list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>The CloudFront functions that are associated with a cache behavior in a CloudFront distribution.  CloudFront
    #   			functions must be published to the <code>LIVE</code> stage to associate them with a
    #   			cache behavior.</p>
    #
    #   @return [Array<FunctionAssociation>]
    #
    FunctionAssociations = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains configuration information about a CloudFront function.</p>
    #
    # @!attribute comment
    #   <p>A comment to describe the function.</p>
    #
    #   @return [String]
    #
    # @!attribute runtime
    #   <p>The function’s runtime environment. The only valid value is
    #   			<code>cloudfront-js-1.0</code>.</p>
    #
    #   @return [String]
    #
    FunctionConfig = ::Struct.new(
      :comment,
      :runtime,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Cannot delete the function because it’s attached to one or more cache
    # 			behaviors.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FunctionInUse = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of CloudFront functions.</p>
    #
    # @!attribute next_marker
    #   <p>If there are more items in the list than are in this response, this element is
    #   			present. It contains the value that you should use in the <code>Marker</code> field of a
    #   			subsequent request to continue listing functions where you left off.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of functions requested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute quantity
    #   <p>The number of functions returned in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>Contains the functions in the list.</p>
    #
    #   @return [Array<FunctionSummary>]
    #
    FunctionList = ::Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains metadata about a CloudFront function.</p>
    #
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the function. The ARN uniquely identifies the
    #   			function.</p>
    #
    #   @return [String]
    #
    # @!attribute stage
    #   <p>The stage that the function is in, either <code>DEVELOPMENT</code> or
    #   			<code>LIVE</code>.</p>
    #   		       <p>When a function is in the <code>DEVELOPMENT</code> stage, you can test the function with
    #   				<code>TestFunction</code>, and update it with <code>UpdateFunction</code>.</p>
    #   		       <p>When a function is in the <code>LIVE</code> stage, you can attach the function to a
    #   			distribution’s cache behavior, using the function’s ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time when the function was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>The date and time when the function was most recently updated.</p>
    #
    #   @return [Time]
    #
    FunctionMetadata = ::Struct.new(
      :function_arn,
      :stage,
      :created_time,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The function is too large. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FunctionSizeLimitExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains configuration information and metadata about a CloudFront function.</p>
    #
    # @!attribute name
    #   <p>The name of the CloudFront function.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the CloudFront function.</p>
    #
    #   @return [String]
    #
    # @!attribute function_config
    #   <p>Contains configuration information about a CloudFront function.</p>
    #
    #   @return [FunctionConfig]
    #
    # @!attribute function_metadata
    #   <p>Contains metadata about a CloudFront function.</p>
    #
    #   @return [FunctionMetadata]
    #
    FunctionSummary = ::Struct.new(
      :name,
      :status,
      :function_config,
      :function_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that controls the countries in which your content is distributed. CloudFront
    # 			determines the location of your users using <code>MaxMind</code> GeoIP databases. </p>
    #
    # @!attribute restriction_type
    #   <p>The method that you want to use to restrict distribution of your content by
    #   			country:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>none</code>: No geo restriction is enabled, meaning access to content is not
    #   					restricted by client geo location.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>blacklist</code>: The <code>Location</code> elements specify the countries in
    #   					which you don't want CloudFront to distribute your content.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>whitelist</code>: The <code>Location</code> elements specify the countries in
    #   					which you want CloudFront to distribute your content.</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute quantity
    #   <p>When geo restriction is <code>enabled</code>, this is the number of countries in your
    #   				<code>whitelist</code> or <code>blacklist</code>. Otherwise, when it is not enabled,
    #   				<code>Quantity</code> is <code>0</code>, and you can omit <code>Items</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p> A complex type that contains a <code>Location</code> element for each country in which
    #   			you want CloudFront either to distribute your content (<code>whitelist</code>) or not distribute
    #   			your content (<code>blacklist</code>).</p>
    #   		       <p>The <code>Location</code> element is a two-letter, uppercase country code for a country
    #   			that you want to include in your <code>blacklist</code> or <code>whitelist</code>. Include one
    #   				<code>Location</code> element for each country.</p>
    #   		       <p>CloudFront and <code>MaxMind</code> both use <code>ISO 3166</code> country codes. For the
    #   			current list of countries and the corresponding codes, see <code>ISO 3166-1-alpha-2</code>
    #   			code on the <i>International Organization for Standardization</i> website. You
    #   			can also refer to the country list on the CloudFront console, which includes both country names and
    #   			codes.</p>
    #
    #   @return [Array<String>]
    #
    GeoRestriction = ::Struct.new(
      :restriction_type,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the cache policy. If the cache policy is attached to a
    #   			distribution’s cache behavior, you can get the policy’s identifier using
    #   			<code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is
    #   			not attached to a cache behavior, you can get the identifier using
    #   			<code>ListCachePolicies</code>.</p>
    #
    #   @return [String]
    #
    GetCachePolicyConfigInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cache_policy_config
    #   <p>The cache policy configuration.</p>
    #
    #   @return [CachePolicyConfig]
    #
    # @!attribute e_tag
    #   <p>The current version of the cache policy.</p>
    #
    #   @return [String]
    #
    GetCachePolicyConfigOutput = ::Struct.new(
      :cache_policy_config,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the cache policy. If the cache policy is attached to a
    #   			distribution’s cache behavior, you can get the policy’s identifier using
    #   			<code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is
    #   			not attached to a cache behavior, you can get the identifier using
    #   			<code>ListCachePolicies</code>.</p>
    #
    #   @return [String]
    #
    GetCachePolicyInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cache_policy
    #   <p>The cache policy.</p>
    #
    #   @return [CachePolicy]
    #
    # @!attribute e_tag
    #   <p>The current version of the cache policy.</p>
    #
    #   @return [String]
    #
    GetCachePolicyOutput = ::Struct.new(
      :cache_policy,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The origin access identity's configuration information. For more information, see
    # 			<a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CloudFrontOriginAccessIdentityConfig.html">CloudFrontOriginAccessIdentityConfig</a>.</p>
    #
    # @!attribute id
    #   <p>The identity's ID. </p>
    #
    #   @return [String]
    #
    GetCloudFrontOriginAccessIdentityConfigInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    #
    # @!attribute cloud_front_origin_access_identity_config
    #   <p>The origin access identity's configuration information. </p>
    #
    #   @return [CloudFrontOriginAccessIdentityConfig]
    #
    # @!attribute e_tag
    #   <p>The current version of the configuration. For example:
    #   			<code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    GetCloudFrontOriginAccessIdentityConfigOutput = ::Struct.new(
      :cloud_front_origin_access_identity_config,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to get an origin access identity's information.</p>
    #
    # @!attribute id
    #   <p>The identity's ID.</p>
    #
    #   @return [String]
    #
    GetCloudFrontOriginAccessIdentityInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    #
    # @!attribute cloud_front_origin_access_identity
    #   <p>The origin access identity's information.</p>
    #
    #   @return [CloudFrontOriginAccessIdentity]
    #
    # @!attribute e_tag
    #   <p>The current version of the origin access identity's information. For example:
    #   				<code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    GetCloudFrontOriginAccessIdentityOutput = ::Struct.new(
      :cloud_front_origin_access_identity,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to get a distribution configuration.</p>
    #
    # @!attribute id
    #   <p>The distribution's ID. If the ID is empty, an empty distribution configuration is returned.</p>
    #
    #   @return [String]
    #
    GetDistributionConfigInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    #
    # @!attribute distribution_config
    #   <p>The distribution's configuration information.</p>
    #
    #   @return [DistributionConfig]
    #
    # @!attribute e_tag
    #   <p>The current version of the configuration. For example:
    #   			<code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    GetDistributionConfigOutput = ::Struct.new(
      :distribution_config,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to get a distribution's information.</p>
    #
    # @!attribute id
    #   <p>The distribution's ID. If the ID is empty, an empty distribution configuration is returned.</p>
    #
    #   @return [String]
    #
    GetDistributionInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    #
    # @!attribute distribution
    #   <p>The distribution's information.</p>
    #
    #   @return [Distribution]
    #
    # @!attribute e_tag
    #   <p>The current version of the distribution's information. For example:
    #   				<code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    GetDistributionOutput = ::Struct.new(
      :distribution,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>Request the ID for the field-level encryption configuration information.</p>
    #
    #   @return [String]
    #
    GetFieldLevelEncryptionConfigInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute field_level_encryption_config
    #   <p>Return the field-level encryption configuration information.</p>
    #
    #   @return [FieldLevelEncryptionConfig]
    #
    # @!attribute e_tag
    #   <p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    GetFieldLevelEncryptionConfigOutput = ::Struct.new(
      :field_level_encryption_config,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>Request the ID for the field-level encryption configuration information.</p>
    #
    #   @return [String]
    #
    GetFieldLevelEncryptionInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute field_level_encryption
    #   <p>Return the field-level encryption configuration information.</p>
    #
    #   @return [FieldLevelEncryption]
    #
    # @!attribute e_tag
    #   <p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    GetFieldLevelEncryptionOutput = ::Struct.new(
      :field_level_encryption,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>Get the ID for the field-level encryption profile configuration information.</p>
    #
    #   @return [String]
    #
    GetFieldLevelEncryptionProfileConfigInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute field_level_encryption_profile_config
    #   <p>Return the field-level encryption profile configuration information.</p>
    #
    #   @return [FieldLevelEncryptionProfileConfig]
    #
    # @!attribute e_tag
    #   <p>The current version of the field-level encryption profile configuration result. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    GetFieldLevelEncryptionProfileConfigOutput = ::Struct.new(
      :field_level_encryption_profile_config,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>Get the ID for the field-level encryption profile information.</p>
    #
    #   @return [String]
    #
    GetFieldLevelEncryptionProfileInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute field_level_encryption_profile
    #   <p>Return the field-level encryption profile information.</p>
    #
    #   @return [FieldLevelEncryptionProfile]
    #
    # @!attribute e_tag
    #   <p>The current version of the field level encryption profile. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    GetFieldLevelEncryptionProfileOutput = ::Struct.new(
      :field_level_encryption_profile,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the function whose code you are getting.</p>
    #
    #   @return [String]
    #
    # @!attribute stage
    #   <p>The function’s stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>
    #
    #   @return [String]
    #
    GetFunctionInput = ::Struct.new(
      :name,
      :stage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute function_code
    #   <p>The function code of a CloudFront function.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the CloudFront function.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The content type (media type) of the response.</p>
    #
    #   @return [String]
    #
    GetFunctionOutput = ::Struct.new(
      :function_code,
      :e_tag,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::Cloudfront::Types::GetFunctionOutput "\
          "function_code=\"[SENSITIVE]\", "\
          "e_tag=#{e_tag || 'nil'}, "\
          "content_type=#{content_type || 'nil'}>"
      end
    end

    # <p>The request to get an invalidation's information. </p>
    #
    # @!attribute distribution_id
    #   <p>The distribution's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier for the invalidation request, for example,
    #   			<code>IDFDVBD632BHDS5</code>.</p>
    #
    #   @return [String]
    #
    GetInvalidationInput = ::Struct.new(
      :distribution_id,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    #
    # @!attribute invalidation
    #   <p>The invalidation's information. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/InvalidationDatatype.html">Invalidation Complex Type</a>. </p>
    #
    #   @return [Invalidation]
    #
    GetInvalidationOutput = ::Struct.new(
      :invalidation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the key group whose configuration you are getting. To get the
    #   			identifier, use <code>ListKeyGroups</code>.</p>
    #
    #   @return [String]
    #
    GetKeyGroupConfigInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute key_group_config
    #   <p>The key group configuration.</p>
    #
    #   @return [KeyGroupConfig]
    #
    # @!attribute e_tag
    #   <p>The identifier for this version of the key group.</p>
    #
    #   @return [String]
    #
    GetKeyGroupConfigOutput = ::Struct.new(
      :key_group_config,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the key group that you are getting. To get the identifier, use
    #   			<code>ListKeyGroups</code>.</p>
    #
    #   @return [String]
    #
    GetKeyGroupInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute key_group
    #   <p>The key group.</p>
    #
    #   @return [KeyGroup]
    #
    # @!attribute e_tag
    #   <p>The identifier for this version of the key group.</p>
    #
    #   @return [String]
    #
    GetKeyGroupOutput = ::Struct.new(
      :key_group,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute distribution_id
    #   <p>The ID of the distribution that you are getting metrics information for.</p>
    #
    #   @return [String]
    #
    GetMonitoringSubscriptionInput = ::Struct.new(
      :distribution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute monitoring_subscription
    #   <p>A monitoring subscription. This structure contains information about whether additional
    #   			CloudWatch metrics are enabled for a given CloudFront distribution.</p>
    #
    #   @return [MonitoringSubscription]
    #
    GetMonitoringSubscriptionOutput = ::Struct.new(
      :monitoring_subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the origin request policy. If the origin request policy is
    #   			attached to a distribution’s cache behavior, you can get the policy’s identifier using
    #   			<code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request
    #   			policy is not attached to a cache behavior, you can get the identifier using
    #   			<code>ListOriginRequestPolicies</code>.</p>
    #
    #   @return [String]
    #
    GetOriginRequestPolicyConfigInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origin_request_policy_config
    #   <p>The origin request policy configuration.</p>
    #
    #   @return [OriginRequestPolicyConfig]
    #
    # @!attribute e_tag
    #   <p>The current version of the origin request policy.</p>
    #
    #   @return [String]
    #
    GetOriginRequestPolicyConfigOutput = ::Struct.new(
      :origin_request_policy_config,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the origin request policy. If the origin request policy is
    #   			attached to a distribution’s cache behavior, you can get the policy’s identifier using
    #   			<code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request
    #   			policy is not attached to a cache behavior, you can get the identifier using
    #   			<code>ListOriginRequestPolicies</code>.</p>
    #
    #   @return [String]
    #
    GetOriginRequestPolicyInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origin_request_policy
    #   <p>The origin request policy.</p>
    #
    #   @return [OriginRequestPolicy]
    #
    # @!attribute e_tag
    #   <p>The current version of the origin request policy.</p>
    #
    #   @return [String]
    #
    GetOriginRequestPolicyOutput = ::Struct.new(
      :origin_request_policy,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the public key whose configuration you are getting.</p>
    #
    #   @return [String]
    #
    GetPublicKeyConfigInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute public_key_config
    #   <p>A public key configuration.</p>
    #
    #   @return [PublicKeyConfig]
    #
    # @!attribute e_tag
    #   <p>The identifier for this version of the public key configuration.</p>
    #
    #   @return [String]
    #
    GetPublicKeyConfigOutput = ::Struct.new(
      :public_key_config,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the public key you are getting.</p>
    #
    #   @return [String]
    #
    GetPublicKeyInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute public_key
    #   <p>The public key.</p>
    #
    #   @return [PublicKey]
    #
    # @!attribute e_tag
    #   <p>The identifier for this version of the public key.</p>
    #
    #   @return [String]
    #
    GetPublicKeyOutput = ::Struct.new(
      :public_key,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the real-time log configuration to get.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration to get.</p>
    #
    #   @return [String]
    #
    GetRealtimeLogConfigInput = ::Struct.new(
      :name,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute realtime_log_config
    #   <p>A real-time log configuration.</p>
    #
    #   @return [RealtimeLogConfig]
    #
    GetRealtimeLogConfigOutput = ::Struct.new(
      :realtime_log_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier for the response headers policy.</p>
    #   		       <p>If the response headers policy is attached to a distribution’s cache behavior, you can
    #   			get the policy’s identifier using <code>ListDistributions</code> or
    #   				<code>GetDistribution</code>. If the response headers policy is not attached to a
    #   			cache behavior, you can get the identifier using
    #   				<code>ListResponseHeadersPolicies</code>.</p>
    #
    #   @return [String]
    #
    GetResponseHeadersPolicyConfigInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute response_headers_policy_config
    #   <p>Contains a response headers policy.</p>
    #
    #   @return [ResponseHeadersPolicyConfig]
    #
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the response headers policy.</p>
    #
    #   @return [String]
    #
    GetResponseHeadersPolicyConfigOutput = ::Struct.new(
      :response_headers_policy_config,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier for the response headers policy.</p>
    #   		       <p>If the response headers policy is attached to a distribution’s cache behavior, you can
    #   			get the policy’s identifier using <code>ListDistributions</code> or
    #   				<code>GetDistribution</code>. If the response headers policy is not attached to a
    #   			cache behavior, you can get the identifier using
    #   				<code>ListResponseHeadersPolicies</code>.</p>
    #
    #   @return [String]
    #
    GetResponseHeadersPolicyInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute response_headers_policy
    #   <p>Contains a response headers policy.</p>
    #
    #   @return [ResponseHeadersPolicy]
    #
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the response headers policy.</p>
    #
    #   @return [String]
    #
    GetResponseHeadersPolicyOutput = ::Struct.new(
      :response_headers_policy,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>To request to get a streaming distribution configuration.</p>
    #
    # @!attribute id
    #   <p>The streaming distribution's ID.</p>
    #
    #   @return [String]
    #
    GetStreamingDistributionConfigInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    #
    # @!attribute streaming_distribution_config
    #   <p>The streaming distribution's configuration information.</p>
    #
    #   @return [StreamingDistributionConfig]
    #
    # @!attribute e_tag
    #   <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.
    #   		</p>
    #
    #   @return [String]
    #
    GetStreamingDistributionConfigOutput = ::Struct.new(
      :streaming_distribution_config,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to get a streaming distribution's information.</p>
    #
    # @!attribute id
    #   <p>The streaming distribution's ID.</p>
    #
    #   @return [String]
    #
    GetStreamingDistributionInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    #
    # @!attribute streaming_distribution
    #   <p>The streaming distribution's information.</p>
    #
    #   @return [StreamingDistribution]
    #
    # @!attribute e_tag
    #   <p>The current version of the streaming distribution's information. For example:
    #   				<code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    GetStreamingDistributionOutput = ::Struct.new(
      :streaming_distribution,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a list of HTTP header names.</p>
    #
    # @!attribute quantity
    #   <p>The number of header names in the <code>Items</code> list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A list of HTTP header names.</p>
    #
    #   @return [Array<String>]
    #
    Headers = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You cannot delete a managed policy.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IllegalDelete = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified configuration for field-level encryption can't be associated with the specified cache behavior.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The update contains modifications that are not allowed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IllegalUpdate = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value of <code>Quantity</code> and the size of <code>Items</code> don't match.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InconsistentQuantities = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An argument is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidArgument = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The default root object file name is too big or contains an invalid character.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDefaultRootObject = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An invalid error code was specified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidErrorCode = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request contains forward cookies option which doesn't match with the expectation for the <code>whitelisted</code>
    # 			list of cookie names. Either list of cookie names has been specified when not allowed or list of cookie names is missing when expected.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidForwardCookies = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A CloudFront function association is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidFunctionAssociation = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified geo restriction parameter is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidGeoRestrictionParameter = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The headers specified are not valid for an Amazon S3 origin.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidHeadersForS3Origin = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>If-Match</code> version is missing or not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidIfMatchVersion = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified Lambda@Edge function association is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidLambdaFunctionAssociation = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The location code specified is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidLocationCode = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The minimum protocol version specified is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidMinimumProtocolVersion = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon S3 origin server specified does not refer to a valid Amazon S3 bucket.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidOrigin = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The origin access identity is not valid or doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidOriginAccessIdentity = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The keep alive timeout specified for the origin is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidOriginKeepaliveTimeout = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The read timeout specified for the origin is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidOriginReadTimeout = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You cannot specify SSLv3 as the minimum protocol version if you only want to support only clients that support
    # 			Server Name Indication (SNI).</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidProtocolSettings = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The query string parameters specified are not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidQueryStringParameters = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The relative path is too big, is not URL-encoded, or does not begin with a slash (/).</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRelativePath = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This operation requires the HTTPS protocol. Ensure that you specify the HTTPS protocol in your request, or omit the
    # 			<code>RequiredProtocols</code> element from your distribution configuration.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequiredProtocol = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A response code is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidResponseCode = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The TTL order specified is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTTLOrder = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The tagging specified is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTagging = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A viewer certificate specified is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidViewerCertificate = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A web ACL ID specified is not valid. To specify a web ACL created using the latest
    # 			version of WAF, use the ACL ARN, for example
    # 			<code>arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/473e64fd-f30b-4765-81a0-62ad96dd167a</code>.
    # 			To specify a web ACL created using WAF Classic, use the ACL ID, for example
    # 			<code>473e64fd-f30b-4765-81a0-62ad96dd167a</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidWebACLId = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An invalidation. </p>
    #
    # @!attribute id
    #   <p>The identifier for the invalidation request. For example:
    #   			<code>IDFDVBD632BHDS5</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the invalidation request. When the invalidation batch is finished, the
    #   			status is <code>Completed</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The date and time the invalidation request was first made. </p>
    #
    #   @return [Time]
    #
    # @!attribute invalidation_batch
    #   <p>The current invalidation information for the batch request. </p>
    #
    #   @return [InvalidationBatch]
    #
    Invalidation = ::Struct.new(
      :id,
      :status,
      :create_time,
      :invalidation_batch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An invalidation batch.</p>
    #
    # @!attribute paths
    #   <p>A complex type that contains information about the objects that you want to invalidate.
    #   			For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html invalidation-specifying-objects">Specifying the Objects
    #   				to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
    #
    #   @return [Paths]
    #
    # @!attribute caller_reference
    #   <p>A value that you specify to uniquely identify an invalidation request. CloudFront uses the
    #   			value to prevent you from accidentally resubmitting an identical request. Whenever you create
    #   			a new invalidation request, you must specify a new value for <code>CallerReference</code> and
    #   			change other values in the request as applicable. One way to ensure that the value of
    #   				<code>CallerReference</code> is unique is to use a <code>timestamp</code>, for example,
    #   				<code>20120301090000</code>.</p>
    #   		       <p>If you make a second invalidation request with the same value for
    #   				<code>CallerReference</code>, and if the rest of the request is the same, CloudFront doesn't
    #   			create a new invalidation request. Instead, CloudFront returns information about the invalidation
    #   			request that you previously created with the same <code>CallerReference</code>.</p>
    #   		       <p>If <code>CallerReference</code> is a value you already sent in a previous invalidation
    #   			batch request but the content of any <code>Path</code> is different from the original request,
    #   			CloudFront returns an <code>InvalidationBatchAlreadyExists</code> error.</p>
    #
    #   @return [String]
    #
    InvalidationBatch = ::Struct.new(
      :paths,
      :caller_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>InvalidationList</code> complex type describes the list of invalidation
    # 			objects. For more information about invalidation, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html">Invalidating Objects (Web Distributions Only)</a> in
    # 			the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute marker
    #   <p>The value that you provided for the <code>Marker</code> request parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains
    #   			the value that you can use for the <code>Marker</code> request parameter to continue listing
    #   			your invalidation batches where they left off.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The value that you provided for the <code>MaxItems</code> request parameter.</p>
    #
    #   @return [Integer]
    #
    # @!attribute is_truncated
    #   <p>A flag that indicates whether more invalidation batch requests remain to be listed. If
    #   			your results were truncated, you can make a follow-up pagination request using the
    #   				<code>Marker</code> request parameter to retrieve more invalidation batches in the
    #   			list.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute quantity
    #   <p>The number of invalidation batches that were created by the current Amazon Web Services account.
    #   		</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A complex type that contains one <code>InvalidationSummary</code> element for each
    #   			invalidation batch created by the current Amazon Web Services account.</p>
    #
    #   @return [Array<InvalidationSummary>]
    #
    InvalidationList = ::Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of an invalidation request.</p>
    #
    # @!attribute id
    #   <p>The unique ID for an invalidation request.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The time that an invalidation request was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of an invalidation request.</p>
    #
    #   @return [String]
    #
    InvalidationSummary = ::Struct.new(
      :id,
      :create_time,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of identifiers for the public keys that CloudFront can use to verify the
    # 			signatures of signed URLs and signed cookies.</p>
    #
    # @!attribute key_group_id
    #   <p>The identifier of the key group that contains the public keys.</p>
    #
    #   @return [String]
    #
    # @!attribute key_pair_ids
    #   <p>A list of CloudFront key pair identifiers.</p>
    #
    #   @return [KeyPairIds]
    #
    KGKeyPairIds = ::Struct.new(
      :key_group_id,
      :key_pair_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key group.</p>
    # 		       <p>A key group contains a list of public keys that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">CloudFront signed URLs and signed cookies</a>.</p>
    #
    # @!attribute id
    #   <p>The identifier for the key group.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time when the key group was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute key_group_config
    #   <p>The key group configuration.</p>
    #
    #   @return [KeyGroupConfig]
    #
    KeyGroup = ::Struct.new(
      :id,
      :last_modified_time,
      :key_group_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key group with this name already exists. You must provide a unique name. To modify an
    # 			existing key group, use <code>UpdateKeyGroup</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KeyGroupAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key group configuration.</p>
    # 		       <p>A key group contains a list of public keys that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">CloudFront signed URLs and signed cookies</a>.</p>
    #
    # @!attribute name
    #   <p>A name to identify the key group.</p>
    #
    #   @return [String]
    #
    # @!attribute items
    #   <p>A list of the identifiers of the public keys in the key group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute comment
    #   <p>A comment to describe the key group. The comment cannot be longer than 128
    #   			characters.</p>
    #
    #   @return [String]
    #
    KeyGroupConfig = ::Struct.new(
      :name,
      :items,
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of key groups.</p>
    #
    # @!attribute next_marker
    #   <p>If there are more items in the list than are in this response, this element is present. It
    #   			contains the value that you should use in the <code>Marker</code> field of a subsequent
    #   			request to continue listing key groups.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of key groups requested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute quantity
    #   <p>The number of key groups returned in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A list of key groups.</p>
    #
    #   @return [Array<KeyGroupSummary>]
    #
    KeyGroupList = ::Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a key group.</p>
    #
    # @!attribute key_group
    #   <p>A key group.</p>
    #
    #   @return [KeyGroup]
    #
    KeyGroupSummary = ::Struct.new(
      :key_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of CloudFront key pair identifiers.</p>
    #
    # @!attribute quantity
    #   <p>The number of key pair identifiers in the list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A list of CloudFront key pair identifiers.</p>
    #
    #   @return [Array<String>]
    #
    KeyPairIds = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the Amazon Kinesis data stream where you are sending
    # 			real-time log data.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role that
    #   			CloudFront can use to send real-time log data to your Kinesis data stream.</p>
    #   		       <p>For more information the IAM role, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html understand-real-time-log-config-iam-role">Real-time log configuration IAM role</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis data stream where you are sending real-time
    #   			log data.</p>
    #
    #   @return [String]
    #
    KinesisStreamConfig = ::Struct.new(
      :role_arn,
      :stream_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains a Lambda@Edge function association.</p>
    #
    # @!attribute lambda_function_arn
    #   <p>The ARN of the Lambda@Edge function. You must specify the ARN of a function version; you can't specify an alias
    #   			or $LATEST.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type
    #   <p>Specifies the event type that triggers a Lambda@Edge function invocation. You can specify the following values:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>viewer-request</code>: The function executes when CloudFront receives a request from a viewer
    #   				and before it checks to see whether the requested object is in the edge cache. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>origin-request</code>: The function executes only when CloudFront sends a request to your
    #   					origin. When the requested object is in the edge cache, the function doesn't
    #   					execute.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>origin-response</code>: The function executes after CloudFront receives a response from the origin and
    #   				before it caches the object in the response. When the requested object is in the edge cache, the function doesn't execute.</p>
    #   			         </li>
    #               <li>
    #                  <p>
    #                     <code>viewer-response</code>: The function executes before CloudFront returns the requested object to the viewer.
    #   				The function executes regardless of whether the object was already in the edge cache.</p>
    #   				           <p>If the origin returns an HTTP status code other than HTTP 200 (OK), the function doesn't execute.</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute include_body
    #   <p>A flag that allows a Lambda@Edge function to have read access to the body content. For more information,
    #   			see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/lambda-include-body-access.html">Accessing the Request Body by Choosing the
    #   				Include Body Option</a> in the Amazon CloudFront Developer Guide.</p>
    #
    #   @return [Boolean]
    #
    LambdaFunctionAssociation = ::Struct.new(
      :lambda_function_arn,
      :event_type,
      :include_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that specifies a list of Lambda@Edge functions associations for a cache
    # 			behavior.</p>
    #
    # 		       <p>If you want to invoke one or more Lambda@Edge functions triggered by requests that match the
    # 				<code>PathPattern</code> of the cache behavior, specify the applicable values for
    # 				<code>Quantity</code> and <code>Items</code>. Note that there can be up to 4
    # 				<code>LambdaFunctionAssociation</code> items in this list (one for each possible value of
    # 				<code>EventType</code>) and each <code>EventType</code> can be associated with only one function.</p>
    #
    # 		       <p>If you don't want to invoke any Lambda@Edge functions for the requests that match
    # 				<code>PathPattern</code>, specify <code>0</code> for <code>Quantity</code> and omit
    # 				<code>Items</code>. </p>
    #
    # @!attribute quantity
    #   <p>The number of Lambda@Edge function associations for this cache behavior.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>
    #               <b>Optional</b>: A complex type that contains <code>LambdaFunctionAssociation</code> items
    #   			for this cache behavior. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>
    #
    #   @return [Array<LambdaFunctionAssociation>]
    #
    LambdaFunctionAssociations = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type
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
    #   @return [String]
    #
    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			cache policies. The response includes cache policies in the list that occur after the
    #   			marker. To get the next page of the list, set this field’s value to the value of
    #   			<code>NextMarker</code> from the current page’s response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of cache policies that you want in the response.</p>
    #
    #   @return [Integer]
    #
    ListCachePoliciesInput = ::Struct.new(
      :type,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cache_policy_list
    #   <p>A list of cache policies.</p>
    #
    #   @return [CachePolicyList]
    #
    ListCachePoliciesOutput = ::Struct.new(
      :cache_policy_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to list origin access identities. </p>
    #
    # @!attribute marker
    #   <p>Use this when paginating results to indicate where to begin in your list of origin
    #   			access identities. The results include identities in the list that occur after the marker. To
    #   			get the next page of results, set the <code>Marker</code> to the value of the
    #   				<code>NextMarker</code> from the current page's response (which is also the ID of the last
    #   			identity on that page).</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of origin access identities you want in the response body.
    #   		</p>
    #
    #   @return [Integer]
    #
    ListCloudFrontOriginAccessIdentitiesInput = ::Struct.new(
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request. </p>
    #
    # @!attribute cloud_front_origin_access_identity_list
    #   <p>The <code>CloudFrontOriginAccessIdentityList</code> type. </p>
    #
    #   @return [CloudFrontOriginAccessIdentityList]
    #
    ListCloudFrontOriginAccessIdentitiesOutput = ::Struct.new(
      :cloud_front_origin_access_identity_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute distribution_id
    #   <p>The ID of a distribution in your account that has an attached SSL/TLS certificate that
    #   			includes the provided alias.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The alias (also called a CNAME) to search for conflicting aliases.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in the list of
    #   			conflicting aliases. The response includes conflicting aliases in the list that occur
    #   			after the marker. To get the next page of the list, set this field’s value to the value
    #   			of <code>NextMarker</code> from the current page’s response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of conflicting aliases that you want in the response.</p>
    #
    #   @return [Integer]
    #
    ListConflictingAliasesInput = ::Struct.new(
      :distribution_id,
      :alias,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conflicting_aliases_list
    #   <p>A list of conflicting aliases.</p>
    #
    #   @return [ConflictingAliasesList]
    #
    ListConflictingAliasesOutput = ::Struct.new(
      :conflicting_aliases_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			distribution IDs. The response includes distribution IDs in the list that occur after
    #   			the marker. To get the next page of the list, set this field’s value to the value of
    #   			<code>NextMarker</code> from the current page’s response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of distribution IDs that you want in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cache_policy_id
    #   <p>The ID of the cache policy whose associated distribution IDs you want to list.</p>
    #
    #   @return [String]
    #
    ListDistributionsByCachePolicyIdInput = ::Struct.new(
      :marker,
      :max_items,
      :cache_policy_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute distribution_id_list
    #   <p>A list of distribution IDs.</p>
    #
    #   @return [DistributionIdList]
    #
    ListDistributionsByCachePolicyIdOutput = ::Struct.new(
      :distribution_id_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			distribution IDs. The response includes distribution IDs in the list that occur after
    #   			the marker. To get the next page of the list, set this field’s value to the value of
    #   			<code>NextMarker</code> from the current page’s response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of distribution IDs that you want in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute key_group_id
    #   <p>The ID of the key group whose associated distribution IDs you are listing.</p>
    #
    #   @return [String]
    #
    ListDistributionsByKeyGroupInput = ::Struct.new(
      :marker,
      :max_items,
      :key_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute distribution_id_list
    #   <p>A list of distribution IDs.</p>
    #
    #   @return [DistributionIdList]
    #
    ListDistributionsByKeyGroupOutput = ::Struct.new(
      :distribution_id_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			distribution IDs. The response includes distribution IDs in the list that occur after
    #   			the marker. To get the next page of the list, set this field’s value to the value of
    #   			<code>NextMarker</code> from the current page’s response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of distribution IDs that you want in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute origin_request_policy_id
    #   <p>The ID of the origin request policy whose associated distribution IDs you want to
    #   			list.</p>
    #
    #   @return [String]
    #
    ListDistributionsByOriginRequestPolicyIdInput = ::Struct.new(
      :marker,
      :max_items,
      :origin_request_policy_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute distribution_id_list
    #   <p>A list of distribution IDs.</p>
    #
    #   @return [DistributionIdList]
    #
    ListDistributionsByOriginRequestPolicyIdOutput = ::Struct.new(
      :distribution_id_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			distributions. The response includes distributions in the list that occur after the
    #   			marker. To get the next page of the list, set this field’s value to the value of
    #   			<code>NextMarker</code> from the current page’s response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of distributions that you want in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute realtime_log_config_name
    #   <p>The name of the real-time log configuration whose associated distributions you want to
    #   			list.</p>
    #
    #   @return [String]
    #
    # @!attribute realtime_log_config_arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration whose associated
    #   			distributions you want to list.</p>
    #
    #   @return [String]
    #
    ListDistributionsByRealtimeLogConfigInput = ::Struct.new(
      :marker,
      :max_items,
      :realtime_log_config_name,
      :realtime_log_config_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute distribution_list
    #   <p>A distribution list.</p>
    #
    #   @return [DistributionList]
    #
    ListDistributionsByRealtimeLogConfigOutput = ::Struct.new(
      :distribution_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			distribution IDs. The response includes distribution IDs in the list that occur after
    #   			the marker. To get the next page of the list, set this field’s value to the value of
    #   				<code>NextMarker</code> from the current page’s response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of distribution IDs that you want to get in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute response_headers_policy_id
    #   <p>The ID of the response headers policy whose associated distribution IDs you want to
    #   			list.</p>
    #
    #   @return [String]
    #
    ListDistributionsByResponseHeadersPolicyIdInput = ::Struct.new(
      :marker,
      :max_items,
      :response_headers_policy_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute distribution_id_list
    #   <p>A list of distribution IDs.</p>
    #
    #   @return [DistributionIdList]
    #
    ListDistributionsByResponseHeadersPolicyIdOutput = ::Struct.new(
      :distribution_id_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to list distributions that are associated with a specified WAF web
    # 			ACL.</p>
    #
    # @!attribute marker
    #   <p>Use <code>Marker</code> and <code>MaxItems</code> to control pagination of results. If
    #   			you have more than <code>MaxItems</code> distributions that satisfy the request, the response
    #   			includes a <code>NextMarker</code> element. To get the next page of results, submit another
    #   			request. For the value of <code>Marker</code>, specify the value of <code>NextMarker</code>
    #   			from the last response. (For the first request, omit <code>Marker</code>.) </p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of distributions that you want CloudFront to return in the response body.
    #   			The maximum and default values are both 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute web_acl_id
    #   <p>The ID of the WAF web ACL that you want to list the associated distributions.
    #   			If you specify "null" for the ID, the request returns a list of the distributions that aren't
    #   			associated with a web ACL.</p>
    #
    #   @return [String]
    #
    ListDistributionsByWebACLIdInput = ::Struct.new(
      :marker,
      :max_items,
      :web_acl_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response to a request to list the distributions that are associated with a
    # 			specified WAF web ACL.</p>
    #
    # @!attribute distribution_list
    #   <p>The <code>DistributionList</code> type. </p>
    #
    #   @return [DistributionList]
    #
    ListDistributionsByWebACLIdOutput = ::Struct.new(
      :distribution_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to list your distributions. </p>
    #
    # @!attribute marker
    #   <p>Use this when paginating results to indicate where to begin in your list of
    #   			distributions. The results include distributions in the list that occur after the marker. To
    #   			get the next page of results, set the <code>Marker</code> to the value of the
    #   				<code>NextMarker</code> from the current page's response (which is also the ID of the last
    #   			distribution on that page).</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of distributions you want in the response body.</p>
    #
    #   @return [Integer]
    #
    ListDistributionsInput = ::Struct.new(
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request. </p>
    #
    # @!attribute distribution_list
    #   <p>The <code>DistributionList</code> type. </p>
    #
    #   @return [DistributionList]
    #
    ListDistributionsOutput = ::Struct.new(
      :distribution_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>Use this when paginating results to indicate where to begin in your list of configurations. The results include configurations in the list that
    #   			occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the
    #   			<code>NextMarker</code> from the current page's response (which is also the ID of the last configuration on that page). </p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of field-level encryption configurations you want in the response body. </p>
    #
    #   @return [Integer]
    #
    ListFieldLevelEncryptionConfigsInput = ::Struct.new(
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute field_level_encryption_list
    #   <p>Returns a list of all field-level encryption configurations that have been created in CloudFront for this account.</p>
    #
    #   @return [FieldLevelEncryptionList]
    #
    ListFieldLevelEncryptionConfigsOutput = ::Struct.new(
      :field_level_encryption_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>Use this when paginating results to indicate where to begin in your list of profiles. The results include profiles in the list that
    #   			occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the
    #   			<code>NextMarker</code> from the current page's response (which is also the ID of the last profile on that page). </p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of field-level encryption profiles you want in the response body. </p>
    #
    #   @return [Integer]
    #
    ListFieldLevelEncryptionProfilesInput = ::Struct.new(
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute field_level_encryption_profile_list
    #   <p>Returns a list of the field-level encryption profiles that have been created in CloudFront for this account.</p>
    #
    #   @return [FieldLevelEncryptionProfileList]
    #
    ListFieldLevelEncryptionProfilesOutput = ::Struct.new(
      :field_level_encryption_profile_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			functions. The response includes functions in the list that occur after the marker. To
    #   			get the next page of the list, set this field’s value to the value of
    #   			<code>NextMarker</code> from the current page’s response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of functions that you want in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute stage
    #   <p>An optional filter to return only the functions that are in the specified stage,
    #   			either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>
    #
    #   @return [String]
    #
    ListFunctionsInput = ::Struct.new(
      :marker,
      :max_items,
      :stage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute function_list
    #   <p>A list of CloudFront functions.</p>
    #
    #   @return [FunctionList]
    #
    ListFunctionsOutput = ::Struct.new(
      :function_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to list invalidations. </p>
    #
    # @!attribute distribution_id
    #   <p>The distribution's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>Use this parameter when paginating results to indicate where to begin in your list of
    #   			invalidation batches. Because the results are returned in decreasing order from most recent to
    #   			oldest, the most recent results are on the first page, the second page will contain earlier
    #   			results, and so on. To get the next page of results, set <code>Marker</code> to the value of
    #   			the <code>NextMarker</code> from the current page's response. This value is the same as the ID
    #   			of the last invalidation batch on that page. </p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of invalidation batches that you want in the response
    #   			body.</p>
    #
    #   @return [Integer]
    #
    ListInvalidationsInput = ::Struct.new(
      :distribution_id,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request. </p>
    #
    # @!attribute invalidation_list
    #   <p>Information about invalidation batches. </p>
    #
    #   @return [InvalidationList]
    #
    ListInvalidationsOutput = ::Struct.new(
      :invalidation_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of key
    #   			groups. The response includes key groups in the list that occur after the marker. To get
    #   			the next page of the list, set this field’s value to the value of
    #   			<code>NextMarker</code> from the current page’s response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of key groups that you want in the response.</p>
    #
    #   @return [Integer]
    #
    ListKeyGroupsInput = ::Struct.new(
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute key_group_list
    #   <p>A list of key groups.</p>
    #
    #   @return [KeyGroupList]
    #
    ListKeyGroupsOutput = ::Struct.new(
      :key_group_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type
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
    #   @return [String]
    #
    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of
    #   			origin request policies. The response includes origin request policies in the list that
    #   			occur after the marker. To get the next page of the list, set this field’s value to the
    #   			value of <code>NextMarker</code> from the current page’s response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of origin request policies that you want in the response.</p>
    #
    #   @return [Integer]
    #
    ListOriginRequestPoliciesInput = ::Struct.new(
      :type,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origin_request_policy_list
    #   <p>A list of origin request policies.</p>
    #
    #   @return [OriginRequestPolicyList]
    #
    ListOriginRequestPoliciesOutput = ::Struct.new(
      :origin_request_policy_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>Use this when paginating results to indicate where to begin in your list of public keys. The results include public keys in the list that
    #   			occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the
    #   			<code>NextMarker</code> from the current page's response (which is also the ID of the last public key on that page). </p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of public keys you want in the response body. </p>
    #
    #   @return [Integer]
    #
    ListPublicKeysInput = ::Struct.new(
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute public_key_list
    #   <p>Returns a list of all public keys that have been added to CloudFront for this account.</p>
    #
    #   @return [PublicKeyList]
    #
    ListPublicKeysOutput = ::Struct.new(
      :public_key_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_items
    #   <p>The maximum number of real-time log configurations that you want in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of real-time
    #   			log configurations. The response includes real-time log configurations in the list that
    #   			occur after the marker. To get the next page of the list, set this field’s value to the
    #   			value of <code>NextMarker</code> from the current page’s response.</p>
    #
    #   @return [String]
    #
    ListRealtimeLogConfigsInput = ::Struct.new(
      :max_items,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute realtime_log_configs
    #   <p>A list of real-time log configurations.</p>
    #
    #   @return [RealtimeLogConfigs]
    #
    ListRealtimeLogConfigsOutput = ::Struct.new(
      :realtime_log_configs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type
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
    #   @return [String]
    #
    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of response
    #   			headers policies. The response includes response headers policies in the list that occur
    #   			after the marker. To get the next page of the list, set this field’s value to the value
    #   			of <code>NextMarker</code> from the current page’s response. </p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of response headers policies that you want to get in the response.</p>
    #
    #   @return [Integer]
    #
    ListResponseHeadersPoliciesInput = ::Struct.new(
      :type,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute response_headers_policy_list
    #   <p>A list of response headers policies.</p>
    #
    #   @return [ResponseHeadersPolicyList]
    #
    ListResponseHeadersPoliciesOutput = ::Struct.new(
      :response_headers_policy_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to list your streaming distributions. </p>
    #
    # @!attribute marker
    #   <p>The value that you provided for the <code>Marker</code> request parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The value that you provided for the <code>MaxItems</code> request parameter.</p>
    #
    #   @return [Integer]
    #
    ListStreamingDistributionsInput = ::Struct.new(
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request. </p>
    #
    # @!attribute streaming_distribution_list
    #   <p>The <code>StreamingDistributionList</code> type. </p>
    #
    #   @return [StreamingDistributionList]
    #
    ListStreamingDistributionsOutput = ::Struct.new(
      :streaming_distribution_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request to list tags for a CloudFront resource.</p>
    #
    # @!attribute resource
    #   <p> An ARN of a CloudFront resource.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The returned result of the corresponding request.</p>
    #
    # @!attribute tags
    #   <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
    #
    #   @return [Tags]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that controls whether access logs are written for the
    # 			distribution.</p>
    #
    # @!attribute enabled
    #   <p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you don't
    #   			want to enable logging when you create a distribution or if you want to disable logging for an
    #   			existing distribution, specify <code>false</code> for <code>Enabled</code>, and specify empty
    #   				<code>Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for
    #   				<code>Enabled</code> but you specify values for <code>Bucket</code>, <code>prefix</code>,
    #   			and <code>IncludeCookies</code>, the values are automatically deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_cookies
    #   <p>Specifies whether you want CloudFront to include cookies in access logs, specify
    #   				<code>true</code> for <code>IncludeCookies</code>. If you choose to include cookies in logs,
    #   			CloudFront logs all cookies regardless of how you configure the cache behaviors for this
    #   			distribution. If you don't want to include cookies when you create a distribution or if you
    #   			want to disable include cookies for an existing distribution, specify <code>false</code> for
    #   				<code>IncludeCookies</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute bucket
    #   <p>The Amazon S3 bucket to store the access logs in, for example,
    #   				<code>myawslogbucket.s3.amazonaws.com</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>An optional string that you want CloudFront to prefix to the access log
    #   				<code>filenames</code> for this distribution, for example, <code>myprefix/</code>. If you
    #   			want to enable logging, but you don't want to specify a prefix, you still must include an
    #   			empty <code>Prefix</code> element in the <code>Logging</code> element.</p>
    #
    #   @return [String]
    #
    LoggingConfig = ::Struct.new(
      :enabled,
      :include_cookies,
      :bucket,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This operation requires a body. Ensure that the body is present and the <code>Content-Type</code> header is set.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MissingBody = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A monitoring subscription. This structure contains information about whether additional
    # 			CloudWatch metrics are enabled for a given CloudFront distribution.</p>
    #
    # @!attribute realtime_metrics_subscription_config
    #   <p>A subscription configuration for additional CloudWatch metrics.</p>
    #
    #   @return [RealtimeMetricsSubscriptionConfig]
    #
    MonitoringSubscription = ::Struct.new(
      :realtime_metrics_subscription_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The cache policy does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchCachePolicy = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified origin access identity does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchCloudFrontOriginAccessIdentity = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified distribution does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchDistribution = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified configuration for field-level encryption doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchFieldLevelEncryptionConfig = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified profile for field-level encryption doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchFieldLevelEncryptionProfile = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The function does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchFunctionExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified invalidation does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchInvalidation = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>No origin exists with the specified <code>Origin Id</code>. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchOrigin = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The origin request policy does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchOriginRequestPolicy = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified public key doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchPublicKey = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The real-time log configuration does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchRealtimeLogConfig = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource that was specified is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchResource = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response headers policy does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchResponseHeadersPolicy = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified streaming distribution does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchStreamingDistribution = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An origin.</p>
    # 		       <p>An origin is the location where content is stored, and from which CloudFront gets content to
    # 			serve to viewers. To specify an origin:</p>
    # 		       <ul>
    #             <li>
    #                 <p>Use <code>S3OriginConfig</code> to specify an Amazon S3 bucket that is not
    # 					configured with static website hosting.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Use <code>CustomOriginConfig</code> to specify all other kinds of origins,
    # 					including:</p>
    # 				           <ul>
    #                   <li>
    # 						               <p>An Amazon S3 bucket that is configured with static website hosting</p>
    # 					             </li>
    #                   <li>
    # 						               <p>An Elastic Load Balancing load balancer</p>
    # 					             </li>
    #                   <li>
    # 						               <p>An AWS Elemental MediaPackage endpoint</p>
    # 					             </li>
    #                   <li>
    # 						               <p>An AWS Elemental MediaStore container</p>
    # 					             </li>
    #                   <li>
    # 						               <p>Any other HTTP server, running on an Amazon EC2 instance or any other
    # 							kind of host</p>
    # 					             </li>
    #                </ul>
    # 			         </li>
    #          </ul>
    # 		       <p>For the current maximum number of origins that you can specify per distribution, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html#limits-web-distributions">General Quotas on Web Distributions</a> in the <i>Amazon CloudFront Developer Guide</i>
    # 			(quotas were formerly referred to as limits).</p>
    #
    # @!attribute id
    #   <p>A unique identifier for the origin. This value must be unique within the
    #   			distribution.</p>
    #           <p>Use this value to specify the <code>TargetOriginId</code> in a
    #               <code>CacheBehavior</code> or <code>DefaultCacheBehavior</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The domain name for the origin.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html DownloadDistValuesDomainName">Origin Domain Name</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute origin_path
    #   <p>An optional path that CloudFront appends to the origin domain name when CloudFront requests content from
    #   			the origin.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html DownloadDistValuesOriginPath">Origin Path</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_headers
    #   <p>A list of HTTP header names and values that CloudFront adds to the requests that it sends to
    #               the origin.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/add-origin-custom-headers.html">Adding Custom Headers to Origin Requests</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [CustomHeaders]
    #
    # @!attribute s3_origin_config
    #   <p>Use this type to specify an origin that is an Amazon S3 bucket that is not configured with static
    #   			website hosting. To specify any other type of origin, including an Amazon S3 bucket that is
    #   			configured with static website hosting, use the <code>CustomOriginConfig</code> type
    #   			instead.</p>
    #
    #   @return [S3OriginConfig]
    #
    # @!attribute custom_origin_config
    #   <p>Use this type to specify an origin that is not an Amazon S3 bucket, with one exception. If the
    #   			Amazon S3 bucket is configured with static website hosting, use this type. If the Amazon S3 bucket
    #   			is not configured with static website hosting, use the <code>S3OriginConfig</code> type
    #   			instead.</p>
    #
    #   @return [CustomOriginConfig]
    #
    # @!attribute connection_attempts
    #   <p>The number of times that CloudFront attempts to connect to the origin. The minimum number
    #               is 1, the maximum is 3, and the default (if you don’t specify otherwise) is 3.</p>
    #           <p>For a custom origin (including an Amazon S3 bucket that’s configured with static
    #               website hosting), this value also specifies the number of times that CloudFront attempts to
    #               get a response from the origin, in the case of an <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html DownloadDistValuesOriginResponseTimeout">Origin Response Timeout</a>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html origin-connection-attempts">Origin Connection Attempts</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute connection_timeout
    #   <p>The number of seconds that CloudFront waits when trying to establish a connection to the origin.
    #   			The minimum timeout is 1 second, the maximum is 10 seconds, and the default (if you
    #   			don’t specify otherwise) is 10 seconds.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html origin-connection-timeout">Origin Connection Timeout</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute origin_shield
    #   <p>CloudFront Origin Shield. Using Origin Shield can help reduce the load on your
    #               origin.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html">Using Origin Shield</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [OriginShield]
    #
    Origin = ::Struct.new(
      :id,
      :domain_name,
      :origin_path,
      :custom_headers,
      :s3_origin_config,
      :custom_origin_config,
      :connection_attempts,
      :connection_timeout,
      :origin_shield,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains <code>HeaderName</code> and <code>HeaderValue</code>
    # 			elements, if any, for this distribution. </p>
    #
    # @!attribute header_name
    #   <p>The name of a header that you want CloudFront to send to your origin. For more information, see
    #   			<a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html">Adding Custom
    #   			Headers to Origin Requests</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute header_value
    #   <p>The value for the header that you specified in the <code>HeaderName</code>
    #   			field.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [String]
    #
    OriginCustomHeader = ::Struct.new(
      :header_name,
      :header_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::Cloudfront::Types::OriginCustomHeader "\
          "header_name=#{header_name || 'nil'}, "\
          "header_value=\"[SENSITIVE]\">"
      end
    end

    # <p>An origin group includes two origins (a primary origin and a second origin to failover to) and a failover criteria that you specify.
    # 		You create an origin group to support origin failover in CloudFront. When you create or update a distribution, you can specifiy
    # 		the origin group instead of a single origin, and CloudFront will failover from the primary origin to the second origin
    # 		under the failover conditions that you've chosen.</p>
    #
    # @!attribute id
    #   <p>The origin group's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute failover_criteria
    #   <p>A complex type that contains information about the failover criteria for an origin group.</p>
    #
    #   @return [OriginGroupFailoverCriteria]
    #
    # @!attribute members
    #   <p>A complex type that contains information about the origins in an origin group.</p>
    #
    #   @return [OriginGroupMembers]
    #
    OriginGroup = ::Struct.new(
      :id,
      :failover_criteria,
      :members,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex data type that includes information about the failover criteria for an origin group, including
    # 		the status codes for which CloudFront will failover from the primary origin to the second origin.</p>
    #
    # @!attribute status_codes
    #   <p>The status codes that, when returned from the primary origin, will trigger CloudFront to failover
    #   		to the second origin.</p>
    #
    #   @return [StatusCodes]
    #
    OriginGroupFailoverCriteria = ::Struct.new(
      :status_codes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An origin in an origin group.</p>
    #
    # @!attribute origin_id
    #   <p>The ID for an origin in an origin group.</p>
    #
    #   @return [String]
    #
    OriginGroupMember = ::Struct.new(
      :origin_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex data type for the origins included in an origin group.</p>
    #
    # @!attribute quantity
    #   <p>The number of origins in an origin group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>Items (origins) in an origin group.</p>
    #
    #   @return [Array<OriginGroupMember>]
    #
    OriginGroupMembers = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex data type for the origin groups specified for a distribution.</p>
    #
    # @!attribute quantity
    #   <p>The number of origin groups.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>The items (origin groups) in a distribution.</p>
    #
    #   @return [Array<OriginGroup>]
    #
    OriginGroups = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An origin request policy.</p>
    # 		       <p>When it’s attached to a cache behavior, the origin request policy determines the values that
    # 			CloudFront includes in requests that it sends to the origin. Each request that CloudFront sends to
    # 			the origin includes the following:</p>
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
    # 				           <p>All HTTP headers, cookies, and URL query strings that are specified in the
    # 					cache policy or the origin request policy. These can include items from the
    # 					viewer request and, in the case of headers, additional ones that are added by
    # 					CloudFront.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>CloudFront sends a request when it can’t find an object in its cache that matches the request. If
    # 			you want to send values to the origin and also include them in the cache key, use
    # 			<code>CachePolicy</code>.</p>
    #
    # @!attribute id
    #   <p>The unique identifier for the origin request policy.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time when the origin request policy was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute origin_request_policy_config
    #   <p>The origin request policy configuration.</p>
    #
    #   @return [OriginRequestPolicyConfig]
    #
    OriginRequestPolicy = ::Struct.new(
      :id,
      :last_modified_time,
      :origin_request_policy_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An origin request policy with this name already exists. You must provide a unique
    # 			name. To modify an existing origin request policy, use
    # 			<code>UpdateOriginRequestPolicy</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OriginRequestPolicyAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An origin request policy configuration.</p>
    # 		       <p>This configuration determines the values that CloudFront includes in requests that it sends to the
    # 			origin. Each request that CloudFront sends to the origin includes the following:</p>
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
    # 				           <p>All HTTP headers, cookies, and URL query strings that are specified in the
    # 					cache policy or the origin request policy. These can include items from the
    # 					viewer request and, in the case of headers, additional ones that are added by
    # 					CloudFront.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>CloudFront sends a request when it can’t find an object in its cache that matches the request. If
    # 			you want to send values to the origin and also include them in the cache key, use
    # 			<code>CachePolicy</code>.</p>
    #
    # @!attribute comment
    #   <p>A comment to describe the origin request policy. The comment cannot be longer than 128
    #   			characters.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A unique name to identify the origin request policy.</p>
    #
    #   @return [String]
    #
    # @!attribute headers_config
    #   <p>The HTTP headers to include in origin requests. These can include headers from viewer
    #   			requests and additional headers added by CloudFront.</p>
    #
    #   @return [OriginRequestPolicyHeadersConfig]
    #
    # @!attribute cookies_config
    #   <p>The cookies from viewer requests to include in origin requests.</p>
    #
    #   @return [OriginRequestPolicyCookiesConfig]
    #
    # @!attribute query_strings_config
    #   <p>The URL query strings from viewer requests to include in origin requests.</p>
    #
    #   @return [OriginRequestPolicyQueryStringsConfig]
    #
    OriginRequestPolicyConfig = ::Struct.new(
      :comment,
      :name,
      :headers_config,
      :cookies_config,
      :query_strings_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that determines whether any cookies in viewer requests (and if so, which cookies)
    # 			are included in requests that CloudFront sends to the origin.</p>
    #
    # @!attribute cookie_behavior
    #   <p>Determines whether cookies in viewer requests are included in requests that CloudFront sends to
    #   			the origin. Valid values are:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>none</code> – Cookies in viewer requests are not included in requests that CloudFront
    #   					sends to the origin. Even when this field is set to <code>none</code>, any
    #   					cookies that are listed in a <code>CachePolicy</code>
    #                     <i>are</i>
    #   					included in origin requests.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>whitelist</code> – The cookies in viewer requests that are listed in the
    #   					<code>CookieNames</code> type are included in requests that CloudFront sends to the
    #   					origin.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>all</code> – All cookies in viewer requests are included in requests that CloudFront sends
    #   					to the origin.</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute cookies
    #   <p>Contains a list of cookie names.</p>
    #
    #   @return [CookieNames]
    #
    OriginRequestPolicyCookiesConfig = ::Struct.new(
      :cookie_behavior,
      :cookies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that determines whether any HTTP headers (and if so, which headers) are included
    # 			in requests that CloudFront sends to the origin.</p>
    #
    # @!attribute header_behavior
    #   <p>Determines whether any HTTP headers are included in requests that CloudFront sends to the origin.
    #   			Valid values are:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>none</code> – HTTP headers are not included in requests that CloudFront sends to the
    #   					origin. Even when this field is set to <code>none</code>, any headers that are
    #   					listed in a <code>CachePolicy</code>
    #                     <i>are</i> included in origin
    #   					requests.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>whitelist</code> – The HTTP headers that are listed in the <code>Headers</code> type
    #   					are included in requests that CloudFront sends to the origin.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>allViewer</code> – All HTTP headers in viewer requests are included in requests that
    #   					CloudFront sends to the origin.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>allViewerAndWhitelistCloudFront</code> – All HTTP headers in viewer requests and the
    #   					additional CloudFront headers that are listed in the <code>Headers</code> type are
    #   					included in requests that CloudFront sends to the origin. The additional headers are
    #   					added by CloudFront.</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute headers
    #   <p>Contains a list of HTTP header names.</p>
    #
    #   @return [Headers]
    #
    OriginRequestPolicyHeadersConfig = ::Struct.new(
      :header_behavior,
      :headers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Cannot delete the origin request policy because it is attached to one or more cache
    # 			behaviors.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OriginRequestPolicyInUse = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of origin request policies.</p>
    #
    # @!attribute next_marker
    #   <p>If there are more items in the list than are in this response, this element is
    #   			present. It contains the value that you should use in the <code>Marker</code> field of a
    #   			subsequent request to continue listing origin request policies where you left
    #   			off.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of origin request policies requested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute quantity
    #   <p>The total number of origin request policies returned in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>Contains the origin request policies in the list.</p>
    #
    #   @return [Array<OriginRequestPolicySummary>]
    #
    OriginRequestPolicyList = ::Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that determines whether any URL query strings in viewer requests (and if so, which
    # 			query strings) are included in requests that CloudFront sends to the origin.</p>
    #
    # @!attribute query_string_behavior
    #   <p>Determines whether any URL query strings in viewer requests are included in requests that
    #   			CloudFront sends to the origin. Valid values are:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>none</code> – Query strings in viewer requests are not included in requests that
    #   					CloudFront sends to the origin. Even when this field is set to <code>none</code>, any
    #   					query strings that are listed in a <code>CachePolicy</code>
    #   					             <i>are</i> included in origin requests.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>whitelist</code> – The query strings in viewer requests that are listed in the
    #   					<code>QueryStringNames</code> type are included in requests that CloudFront sends to
    #   					the origin.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>all</code> – All query strings in viewer requests are included in requests that CloudFront
    #   					sends to the origin.</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute query_strings
    #   <p>Contains a list of the query strings in viewer requests that are included in requests that
    #   			CloudFront sends to the origin.</p>
    #
    #   @return [QueryStringNames]
    #
    OriginRequestPolicyQueryStringsConfig = ::Struct.new(
      :query_string_behavior,
      :query_strings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an origin request policy.</p>
    #
    # @!attribute type
    #   <p>The type of origin request policy, either <code>managed</code> (created by Amazon Web Services) or
    #   			<code>custom</code> (created in this Amazon Web Services account).</p>
    #
    #   @return [String]
    #
    # @!attribute origin_request_policy
    #   <p>The origin request policy.</p>
    #
    #   @return [OriginRequestPolicy]
    #
    OriginRequestPolicySummary = ::Struct.new(
      :type,
      :origin_request_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>CloudFront Origin Shield.</p>
    # 		       <p>Using Origin Shield can help reduce the load on your origin. For more
    #             information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html">Using Origin Shield</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute enabled
    #   <p>A flag that specifies whether Origin Shield is enabled.</p>
    #   		       <p>When it’s enabled, CloudFront routes all requests through Origin Shield, which can
    #               help protect your origin. When it’s disabled, CloudFront might send requests directly to
    #               your origin from multiple edge locations or regional edge caches.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute origin_shield_region
    #   <p>The Amazon Web Services Region for Origin Shield.</p>
    #   		       <p>Specify the Amazon Web Services Region that has the lowest latency to your origin.
    #               To specify a region, use the region code, not the region name.
    #               For example, specify the US East (Ohio) region as <code>us-east-2</code>.</p>
    #           <p>When you enable CloudFront Origin Shield, you must specify the Amazon Web Services Region for Origin
    #               Shield. For the list of Amazon Web Services Regions that you can specify, and for help choosing the best
    #               Region for your origin, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html choose-origin-shield-region">Choosing the Amazon Web Services Region for Origin Shield</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    OriginShield = ::Struct.new(
      :enabled,
      :origin_shield_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains information about the SSL/TLS protocols that CloudFront can use
    # 			when establishing an HTTPS connection with your origin. </p>
    #
    # @!attribute quantity
    #   <p>The number of SSL/TLS protocols that you want to allow CloudFront to use when establishing an
    #   			HTTPS connection with this origin. </p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A list that contains allowed SSL/TLS protocols for this distribution.</p>
    #
    #   @return [Array<String>]
    #
    OriginSslProtocols = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the origins for this distribution.</p>
    #
    # @!attribute quantity
    #   <p>The number of origins for this distribution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A list of origins.</p>
    #
    #   @return [Array<Origin>]
    #
    Origins = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This object determines the values that CloudFront includes in the cache key. These values can
    # 			include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to find an
    # 			object in its cache that it can return to the viewer.</p>
    # 		       <p>The headers, cookies, and query strings that are included in the cache key are automatically
    # 			included in requests that CloudFront sends to the origin. CloudFront sends a request when it can’t
    # 			find an object in its cache that matches the request’s cache key. If you want to send
    # 			values to the origin but <i>not</i> include them in the cache key, use
    # 			<code>OriginRequestPolicy</code>.</p>
    #
    # @!attribute enable_accept_encoding_gzip
    #   <p>A flag that can affect whether the <code>Accept-Encoding</code> HTTP header is
    #   			included in the cache key and included in requests that CloudFront sends to the origin.</p>
    #   		       <p>This field is related to the <code>EnableAcceptEncodingBrotli</code> field. If one or
    #   			both of these fields is <code>true</code>
    #               <i>and</i> the viewer request
    #   			includes the <code>Accept-Encoding</code> header, then CloudFront does the following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>Normalizes the value of the viewer’s <code>Accept-Encoding</code>
    #   					header</p>
    #   			         </li>
    #               <li>
    #   				           <p>Includes the normalized header in the cache key</p>
    #   			         </li>
    #               <li>
    #   				           <p>Includes the normalized header in the request to the origin, if a request is necessary</p>
    #   			         </li>
    #            </ul>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-policy-compressed-objects">Compression support</a> in the
    #               <i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <p>If you set this value to <code>true</code>, and this cache behavior also has an origin
    #   			request policy attached, do not include the <code>Accept-Encoding</code> header in the
    #   			origin request policy. CloudFront always includes the <code>Accept-Encoding</code> header in
    #   			origin requests when the value of this field is <code>true</code>, so including this
    #   			header in an origin request policy has no effect.</p>
    #   		       <p>If both of these fields are <code>false</code>, then CloudFront treats the
    #   			<code>Accept-Encoding</code> header the same as any other HTTP header in the viewer
    #   			request. By default, it’s not included in the cache key and it’s not included in origin
    #   			requests. In this case, you can manually add <code>Accept-Encoding</code> to the headers
    #   			whitelist like any other HTTP header.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_accept_encoding_brotli
    #   <p>A flag that can affect whether the <code>Accept-Encoding</code> HTTP header is
    #   			included in the cache key and included in requests that CloudFront sends to the origin.</p>
    #   		       <p>This field is related to the <code>EnableAcceptEncodingGzip</code> field. If one or
    #   			both of these fields is <code>true</code>
    #               <i>and</i> the viewer request
    #   			includes the <code>Accept-Encoding</code> header, then CloudFront does the following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>Normalizes the value of the viewer’s <code>Accept-Encoding</code>
    #   					header</p>
    #   			         </li>
    #               <li>
    #   				           <p>Includes the normalized header in the cache key</p>
    #   			         </li>
    #               <li>
    #   				           <p>Includes the normalized header in the request to the origin, if a request is necessary</p>
    #   			         </li>
    #            </ul>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html cache-policy-compressed-objects">Compression support</a> in the
    #               <i>Amazon CloudFront Developer Guide</i>.</p>
    #           <p>If you set this value to <code>true</code>, and this cache behavior also has an origin
    #   			request policy attached, do not include the <code>Accept-Encoding</code> header in the
    #   			origin request policy. CloudFront always includes the <code>Accept-Encoding</code> header in
    #   			origin requests when the value of this field is <code>true</code>, so including this
    #   			header in an origin request policy has no effect.</p>
    #   		       <p>If both of these fields are <code>false</code>, then CloudFront treats the
    #   			<code>Accept-Encoding</code> header the same as any other HTTP header in the viewer
    #   			request. By default, it’s not included in the cache key and it’s not included in origin
    #   			requests. In this case, you can manually add <code>Accept-Encoding</code> to the headers
    #   			whitelist like any other HTTP header.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute headers_config
    #   <p>An object that determines whether any HTTP headers (and if so, which headers) are
    #   			included in the cache key and automatically included in requests that CloudFront sends to the
    #   			origin.</p>
    #
    #   @return [CachePolicyHeadersConfig]
    #
    # @!attribute cookies_config
    #   <p>An object that determines whether any cookies in viewer requests (and if so, which cookies)
    #   			are included in the cache key and automatically included in requests that CloudFront sends to
    #   			the origin.</p>
    #
    #   @return [CachePolicyCookiesConfig]
    #
    # @!attribute query_strings_config
    #   <p>An object that determines whether any URL query strings in viewer requests (and if so, which
    #   			query strings) are included in the cache key and automatically included in requests that
    #   			CloudFront sends to the origin.</p>
    #
    #   @return [CachePolicyQueryStringsConfig]
    #
    ParametersInCacheKeyAndForwardedToOrigin = ::Struct.new(
      :enable_accept_encoding_gzip,
      :enable_accept_encoding_brotli,
      :headers_config,
      :cookies_config,
      :query_strings_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains information about the objects that you want to invalidate.
    # 			For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects">Specifying the Objects
    # 				to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
    #
    # @!attribute quantity
    #   <p>The number of invalidation paths specified for the objects that you want to invalidate.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A complex type that contains a list of the paths that you want to invalidate.</p>
    #
    #   @return [Array<String>]
    #
    Paths = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The precondition in one or more of the request fields evaluated to
    # 			<code>false</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PreconditionFailed = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A public key that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">signed URLs and signed cookies</a>, or with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html">field-level encryption</a>.</p>
    #
    # @!attribute id
    #   <p>The identifier of the public key.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time when the public key was uploaded.</p>
    #
    #   @return [Time]
    #
    # @!attribute public_key_config
    #   <p>Configuration information about a public key that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">signed URLs and signed cookies</a>, or with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html">field-level encryption</a>.</p>
    #
    #   @return [PublicKeyConfig]
    #
    PublicKey = ::Struct.new(
      :id,
      :created_time,
      :public_key_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified public key already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PublicKeyAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information about a public key that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">signed URLs and signed cookies</a>, or with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html">field-level encryption</a>.</p>
    #
    # @!attribute caller_reference
    #   <p>A string included in the request to help make sure that the request can’t be
    #   			replayed.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A name to help identify the public key.</p>
    #
    #   @return [String]
    #
    # @!attribute encoded_key
    #   <p>The public key that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">signed URLs and signed cookies</a>, or with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html">field-level encryption</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>A comment to describe the public key. The comment cannot be longer than 128
    #   			characters.</p>
    #
    #   @return [String]
    #
    PublicKeyConfig = ::Struct.new(
      :caller_reference,
      :name,
      :encoded_key,
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified public key is in use. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PublicKeyInUse = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of public keys that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">signed URLs and signed cookies</a>, or with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html">field-level encryption</a>.</p>
    #
    # @!attribute next_marker
    #   <p>If there are more elements to be listed, this element is present and contains
    #   			the value that you can use for the <code>Marker</code> request parameter to continue
    #   			listing your public keys where you left off.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of public keys you want in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute quantity
    #   <p>The number of public keys in the list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A list of public keys.</p>
    #
    #   @return [Array<PublicKeySummary>]
    #
    PublicKeyList = ::Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a public key.</p>
    #
    # @!attribute id
    #   <p>The identifier of the public key.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A name to help identify the public key.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time when the public key was uploaded.</p>
    #
    #   @return [Time]
    #
    # @!attribute encoded_key
    #   <p>The public key.</p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>A comment to describe the public key. The comment cannot be longer than 128
    #   			characters.</p>
    #
    #   @return [String]
    #
    PublicKeySummary = ::Struct.new(
      :id,
      :name,
      :created_time,
      :encoded_key,
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the function that you are publishing.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are publishing, which
    #   			you can get using <code>DescribeFunction</code>.</p>
    #
    #   @return [String]
    #
    PublishFunctionInput = ::Struct.new(
      :name,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute function_summary
    #   <p>Contains configuration information and metadata about a CloudFront function.</p>
    #
    #   @return [FunctionSummary]
    #
    PublishFunctionOutput = ::Struct.new(
      :function_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Query argument-profile mapping for field-level encryption.</p>
    #
    # @!attribute query_arg
    #   <p>Query argument for field-level encryption query argument-profile mapping.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_id
    #   <p>ID of profile to use for field-level encryption query argument-profile mapping</p>
    #
    #   @return [String]
    #
    QueryArgProfile = ::Struct.new(
      :query_arg,
      :profile_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration for query argument-profile mapping for field-level encryption.</p>
    #
    # @!attribute forward_when_query_arg_profile_is_unknown
    #   <p>Flag to set if you want a request to be forwarded to the origin even if the profile specified by the field-level encryption query argument,
    #   			fle-profile, is unknown.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute query_arg_profiles
    #   <p>Profiles specified for query argument-profile mapping for field-level encryption.</p>
    #
    #   @return [QueryArgProfiles]
    #
    QueryArgProfileConfig = ::Struct.new(
      :forward_when_query_arg_profile_is_unknown,
      :query_arg_profiles,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>No profile specified for the field-level encryption query argument.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    QueryArgProfileEmpty = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Query argument-profile mapping for field-level encryption.</p>
    #
    # @!attribute quantity
    #   <p>Number of profiles for query argument-profile mapping for field-level encryption.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>Number of items for query argument-profile mapping for field-level encryption.</p>
    #
    #   @return [Array<QueryArgProfile>]
    #
    QueryArgProfiles = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This field is deprecated. We recommend that you use a cache policy or an origin
    # 			request policy instead of this field.</p>
    # 		       <p>If you want to include query strings in the cache key, use
    # 			<code>QueryStringsConfig</code> in a cache policy. See
    # 			<code>CachePolicy</code>.</p>
    # 		       <p>If you want to send query strings to the origin but not include them in the cache key,
    # 			use <code>QueryStringsConfig</code> in an origin request policy. See
    # 			<code>OriginRequestPolicy</code>.</p>
    # 		       <p>A complex type that contains information about the query string parameters that you want
    # 			CloudFront to use for caching for a cache behavior.
    # 		</p>
    #
    # @!attribute quantity
    #   <p>The number of <code>whitelisted</code> query string parameters for a cache
    #   			behavior.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A list that contains the query string parameters that you want CloudFront to use
    #   			as a basis for caching for a cache behavior. If <code>Quantity</code> is 0, you can omit
    #   			<code>Items</code>. </p>
    #
    #   @return [Array<String>]
    #
    QueryStringCacheKeys = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a list of query string names.</p>
    #
    # @!attribute quantity
    #   <p>The number of query string names in the <code>Items</code> list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A list of query string names.</p>
    #
    #   @return [Array<String>]
    #
    QueryStringNames = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A real-time log configuration.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of this real-time log configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The unique name of this real-time log configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute sampling_rate
    #   <p>The sampling rate for this real-time log configuration. The sampling rate determines the
    #   			percentage of viewer requests that are represented in the real-time log data. The
    #   			sampling rate is an integer between 1 and 100, inclusive.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_points
    #   <p>Contains information about the Amazon Kinesis data stream where you are sending real-time
    #   			log data for this real-time log configuration.</p>
    #
    #   @return [Array<EndPoint>]
    #
    # @!attribute fields
    #   <p>A list of fields that are included in each real-time log record. In an API response, the
    #   			fields are provided in the same order in which they are sent to the Amazon Kinesis data
    #   			stream.</p>
    #   		       <p>For more information about fields, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html understand-real-time-log-config-fields">Real-time log configuration fields</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    RealtimeLogConfig = ::Struct.new(
      :arn,
      :name,
      :sampling_rate,
      :end_points,
      :fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A real-time log configuration with this name already exists. You must provide a unique name.
    # 			To modify an existing real-time log configuration, use
    # 			<code>UpdateRealtimeLogConfig</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RealtimeLogConfigAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Cannot delete the real-time log configuration because it is attached to one or more cache
    # 			behaviors.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RealtimeLogConfigInUse = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified real-time log configuration belongs to a different Amazon Web Services account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RealtimeLogConfigOwnerMismatch = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of real-time log configurations.</p>
    #
    # @!attribute max_items
    #   <p>The maximum number of real-time log configurations requested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>Contains the list of real-time log configurations.</p>
    #
    #   @return [Array<RealtimeLogConfig>]
    #
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more real-time log configurations than are contained
    #   			in this list.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute marker
    #   <p>This parameter indicates where this list of real-time log configurations begins. This list
    #   			includes real-time log configurations that occur after the marker.</p>
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>If there are more items in the list than are in this response, this element is present. It
    #   			contains the value that you should use in the <code>Marker</code> field of a subsequent
    #   			request to continue listing real-time log configurations where you left off. </p>
    #
    #   @return [String]
    #
    RealtimeLogConfigs = ::Struct.new(
      :max_items,
      :items,
      :is_truncated,
      :marker,
      :next_marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A subscription configuration for additional CloudWatch metrics.</p>
    #
    # @!attribute realtime_metrics_subscription_status
    #   <p>A flag that indicates whether additional CloudWatch metrics are enabled for a given
    #   			CloudFront distribution.</p>
    #
    #   @return [String]
    #
    RealtimeMetricsSubscriptionConfig = ::Struct.new(
      :realtime_metrics_subscription_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Cannot delete this resource because it is in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUse = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A response headers policy.</p>
    # 		       <p>A response headers policy contains information about a set of HTTP response headers
    # 			and their values.</p>
    # 		       <p>After you create a response headers policy, you can use its ID to attach it to one or more
    # 			cache behaviors in a CloudFront distribution. When it’s attached to a cache behavior, CloudFront
    # 			adds the headers in the policy to HTTP responses that it sends for requests that match
    # 			the cache behavior.</p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/adding-response-headers.html">Adding HTTP headers to CloudFront responses</a> in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute id
    #   <p>The identifier for the response headers policy.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time when the response headers policy was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute response_headers_policy_config
    #   <p>A response headers policy configuration.</p>
    #   		       <p>A response headers policy contains information about a set of HTTP response headers and
    #   			their values. CloudFront adds the headers in the policy to HTTP responses that it sends for
    #   			requests that match a cache behavior that’s associated with the policy.</p>
    #
    #   @return [ResponseHeadersPolicyConfig]
    #
    ResponseHeadersPolicy = ::Struct.new(
      :id,
      :last_modified_time,
      :response_headers_policy_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of HTTP header names that CloudFront includes as values for the
    # 				<code>Access-Control-Allow-Headers</code> HTTP response header.</p>
    # 		       <p>For more information about the <code>Access-Control-Allow-Headers</code> HTTP response
    # 			header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Headers">Access-Control-Allow-Headers</a> in the MDN Web Docs.</p>
    #
    # @!attribute quantity
    #   <p>The number of HTTP header names in the list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>The list of HTTP header names. You can specify <code>*</code> to allow all headers.</p>
    #
    #   @return [Array<String>]
    #
    ResponseHeadersPolicyAccessControlAllowHeaders = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of HTTP methods that CloudFront includes as values for the
    # 				<code>Access-Control-Allow-Methods</code> HTTP response header.</p>
    # 		       <p>For more information about the <code>Access-Control-Allow-Methods</code> HTTP response
    # 			header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Methods">Access-Control-Allow-Methods</a> in the MDN Web Docs.</p>
    #
    # @!attribute quantity
    #   <p>The number of HTTP methods in the list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>The list of HTTP methods. Valid values are:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>GET</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>DELETE</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>HEAD</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>OPTIONS</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>PATCH</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>POST</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>PUT</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>ALL</code>
    #                  </p>
    #   			         </li>
    #            </ul>
    #   		       <p>
    #               <code>ALL</code> is a special value that includes all of the listed HTTP
    #   			methods.</p>
    #
    #   @return [Array<String>]
    #
    ResponseHeadersPolicyAccessControlAllowMethods = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of origins (domain names) that CloudFront can use as the value for the
    # 			<code>Access-Control-Allow-Origin</code> HTTP response header.</p>
    # 		       <p>For more information about the <code>Access-Control-Allow-Origin</code> HTTP response
    # 			header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin">Access-Control-Allow-Origin</a> in the MDN Web Docs.</p>
    #
    # @!attribute quantity
    #   <p>The number of origins in the list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>The list of origins (domain names). You can specify <code>*</code> to allow all
    #   			origins.</p>
    #
    #   @return [Array<String>]
    #
    ResponseHeadersPolicyAccessControlAllowOrigins = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of HTTP headers that CloudFront includes as values for the
    # 				<code>Access-Control-Expose-Headers</code> HTTP response header.</p>
    # 		       <p>For more information about the <code>Access-Control-Expose-Headers</code> HTTP
    # 			response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Expose-Headers">Access-Control-Expose-Headers</a> in the MDN Web Docs.</p>
    #
    # @!attribute quantity
    #   <p>The number of HTTP headers in the list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>The list of HTTP headers. You can specify <code>*</code> to expose all headers.</p>
    #
    #   @return [Array<String>]
    #
    ResponseHeadersPolicyAccessControlExposeHeaders = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A response headers policy with this name already exists. You must provide a unique name. To
    # 			modify an existing response headers policy, use
    # 			<code>UpdateResponseHeadersPolicy</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResponseHeadersPolicyAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A response headers policy configuration.</p>
    # 		       <p>A response headers policy configuration contains metadata about the response headers policy,
    # 			and configurations for sets of HTTP response headers and their values. CloudFront adds the
    # 			headers in the policy to HTTP responses that it sends for requests that match a cache
    # 			behavior associated with the policy.</p>
    #
    # @!attribute comment
    #   <p>A comment to describe the response headers policy.</p>
    #   		       <p>The comment cannot be longer than 128 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A name to identify the response headers policy.</p>
    #   		       <p>The name must be unique for response headers policies in this Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute cors_config
    #   <p>A configuration for a set of HTTP response headers that are used for cross-origin
    #   			resource sharing (CORS).</p>
    #
    #   @return [ResponseHeadersPolicyCorsConfig]
    #
    # @!attribute security_headers_config
    #   <p>A configuration for a set of security-related HTTP response headers.</p>
    #
    #   @return [ResponseHeadersPolicySecurityHeadersConfig]
    #
    # @!attribute custom_headers_config
    #   <p>A configuration for a set of custom HTTP response headers.</p>
    #
    #   @return [ResponseHeadersPolicyCustomHeadersConfig]
    #
    ResponseHeadersPolicyConfig = ::Struct.new(
      :comment,
      :name,
      :cors_config,
      :security_headers_config,
      :custom_headers_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The policy directives and their values that CloudFront includes as values for the
    # 				<code>Content-Security-Policy</code> HTTP response header.</p>
    # 		       <p>For more information about the <code>Content-Security-Policy</code> HTTP response
    # 			header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy">Content-Security-Policy</a> in the MDN Web Docs.</p>
    #
    # @!attribute override
    #   <p>A Boolean that determines whether CloudFront overrides the <code>Content-Security-Policy</code>
    #   			HTTP response header received from the origin with the one specified in this response
    #   			headers policy.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute content_security_policy
    #   <p>The policy directives and their values that CloudFront includes as values for the
    #   				<code>Content-Security-Policy</code> HTTP response header.</p>
    #
    #   @return [String]
    #
    ResponseHeadersPolicyContentSecurityPolicy = ::Struct.new(
      :override,
      :content_security_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Determines whether CloudFront includes the <code>X-Content-Type-Options</code> HTTP response
    # 			header with its value set to <code>nosniff</code>.</p>
    # 		       <p>For more information about the <code>X-Content-Type-Options</code> HTTP response
    # 			header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options">X-Content-Type-Options</a> in the MDN Web Docs.</p>
    #
    # @!attribute override
    #   <p>A Boolean that determines whether CloudFront overrides the <code>X-Content-Type-Options</code>
    #   			HTTP response header received from the origin with the one specified in this response
    #   			headers policy.</p>
    #
    #   @return [Boolean]
    #
    ResponseHeadersPolicyContentTypeOptions = ::Struct.new(
      :override,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A configuration for a set of HTTP response headers that are used for cross-origin resource
    # 			sharing (CORS). CloudFront adds these headers to HTTP responses that it sends for CORS
    # 			requests that match a cache behavior associated with this response headers
    # 			policy.</p>
    # 		       <p>For more information about CORS, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">Cross-Origin Resource
    # 				Sharing (CORS)</a> in the MDN Web Docs.</p>
    #
    # @!attribute access_control_allow_origins
    #   <p>A list of origins (domain names) that CloudFront can use as the value for the
    #   			<code>Access-Control-Allow-Origin</code> HTTP response header.</p>
    #   		       <p>For more information about the <code>Access-Control-Allow-Origin</code> HTTP response
    #   			header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin">Access-Control-Allow-Origin</a> in the MDN Web Docs.</p>
    #
    #   @return [ResponseHeadersPolicyAccessControlAllowOrigins]
    #
    # @!attribute access_control_allow_headers
    #   <p>A list of HTTP header names that CloudFront includes as values for the
    #   				<code>Access-Control-Allow-Headers</code> HTTP response header.</p>
    #   		       <p>For more information about the <code>Access-Control-Allow-Headers</code> HTTP response
    #   			header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Headers">Access-Control-Allow-Headers</a> in the MDN Web Docs.</p>
    #
    #   @return [ResponseHeadersPolicyAccessControlAllowHeaders]
    #
    # @!attribute access_control_allow_methods
    #   <p>A list of HTTP methods that CloudFront includes as values for the
    #   				<code>Access-Control-Allow-Methods</code> HTTP response header.</p>
    #   		       <p>For more information about the <code>Access-Control-Allow-Methods</code> HTTP response
    #   			header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Methods">Access-Control-Allow-Methods</a> in the MDN Web Docs.</p>
    #
    #   @return [ResponseHeadersPolicyAccessControlAllowMethods]
    #
    # @!attribute access_control_allow_credentials
    #   <p>A Boolean that CloudFront uses as the value for the <code>Access-Control-Allow-Credentials</code>
    #   			HTTP response header.</p>
    #   		       <p>For more information about the <code>Access-Control-Allow-Credentials</code> HTTP
    #   			response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Credentials">Access-Control-Allow-Credentials</a> in the MDN Web Docs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute access_control_expose_headers
    #   <p>A list of HTTP headers that CloudFront includes as values for the
    #   				<code>Access-Control-Expose-Headers</code> HTTP response header.</p>
    #   		       <p>For more information about the <code>Access-Control-Expose-Headers</code> HTTP
    #   			response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Expose-Headers">Access-Control-Expose-Headers</a> in the MDN Web Docs.</p>
    #
    #   @return [ResponseHeadersPolicyAccessControlExposeHeaders]
    #
    # @!attribute access_control_max_age_sec
    #   <p>A number that CloudFront uses as the value for the <code>Access-Control-Max-Age</code> HTTP
    #   			response header.</p>
    #   		       <p>For more information about the <code>Access-Control-Max-Age</code> HTTP response
    #   			header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Max-Age">Access-Control-Max-Age</a> in the MDN Web Docs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute origin_override
    #   <p>A Boolean that determines whether CloudFront overrides HTTP response headers received from the
    #   			origin with the ones specified in this response headers policy.</p>
    #
    #   @return [Boolean]
    #
    ResponseHeadersPolicyCorsConfig = ::Struct.new(
      :access_control_allow_origins,
      :access_control_allow_headers,
      :access_control_allow_methods,
      :access_control_allow_credentials,
      :access_control_expose_headers,
      :access_control_max_age_sec,
      :origin_override,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP response header name and its value. CloudFront includes this header in HTTP responses that
    # 			it sends for requests that match a cache behavior that’s associated with this response
    # 			headers policy.</p>
    #
    # @!attribute header
    #   <p>The HTTP response header name.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for the HTTP response header.</p>
    #
    #   @return [String]
    #
    # @!attribute override
    #   <p>A Boolean that determines whether CloudFront overrides a response header with the same name
    #   			received from the origin with the header specified here.</p>
    #
    #   @return [Boolean]
    #
    ResponseHeadersPolicyCustomHeader = ::Struct.new(
      :header,
      :value,
      :override,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of HTTP response header names and their values. CloudFront includes these headers in HTTP
    # 			responses that it sends for requests that match a cache behavior that’s associated with
    # 			this response headers policy.</p>
    #
    # @!attribute quantity
    #   <p>The number of HTTP response headers in the list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>The list of HTTP response headers and their values.</p>
    #
    #   @return [Array<ResponseHeadersPolicyCustomHeader>]
    #
    ResponseHeadersPolicyCustomHeadersConfig = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Determines whether CloudFront includes the <code>X-Frame-Options</code> HTTP response header and
    # 			the header’s value.</p>
    # 		       <p>For more information about the <code>X-Frame-Options</code> HTTP response header, see
    # 				<a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options">X-Frame-Options</a> in the MDN Web Docs.</p>
    #
    # @!attribute override
    #   <p>A Boolean that determines whether CloudFront overrides the <code>X-Frame-Options</code> HTTP
    #   			response header received from the origin with the one specified in this response headers
    #   			policy.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute frame_option
    #   <p>The value of the <code>X-Frame-Options</code> HTTP response header. Valid values are
    #   				<code>DENY</code> and <code>SAMEORIGIN</code>. </p>
    #   		       <p>For more information about these values, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options">X-Frame-Options</a> in the MDN Web Docs.</p>
    #
    #   @return [String]
    #
    ResponseHeadersPolicyFrameOptions = ::Struct.new(
      :override,
      :frame_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Cannot delete the response headers policy because it is attached to one or more cache
    # 			behaviors in a CloudFront distribution. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResponseHeadersPolicyInUse = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of response headers policies.</p>
    #
    # @!attribute next_marker
    #   <p>If there are more items in the list than are in this response, this element is present. It
    #   			contains the value that you should use in the <code>Marker</code> field of a subsequent
    #   			request to continue listing response headers policies where you left off.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of response headers policies requested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute quantity
    #   <p>The number of response headers policies returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>The response headers policies in the list.</p>
    #
    #   @return [Array<ResponseHeadersPolicySummary>]
    #
    ResponseHeadersPolicyList = ::Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Determines whether CloudFront includes the <code>Referrer-Policy</code> HTTP response header and
    # 			the header’s value.</p>
    # 		       <p>For more information about the <code>Referrer-Policy</code> HTTP response header, see
    # 				<a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy">Referrer-Policy</a> in the MDN Web Docs.</p>
    #
    # @!attribute override
    #   <p>A Boolean that determines whether CloudFront overrides the <code>Referrer-Policy</code> HTTP
    #   			response header received from the origin with the one specified in this response headers
    #   			policy.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute referrer_policy
    #   <p>The value of the <code>Referrer-Policy</code> HTTP response header. Valid values
    #   			are:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>no-referrer</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>no-referrer-when-downgrade</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>origin</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>origin-when-cross-origin</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>same-origin</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>strict-origin</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>strict-origin-when-cross-origin</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>unsafe-url</code>
    #                  </p>
    #   			         </li>
    #            </ul>
    #   		       <p>For more information about these values, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy">Referrer-Policy</a> in the MDN Web Docs.</p>
    #
    #   @return [String]
    #
    ResponseHeadersPolicyReferrerPolicy = ::Struct.new(
      :override,
      :referrer_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A configuration for a set of security-related HTTP response headers. CloudFront adds these headers
    # 			to HTTP responses that it sends for requests that match a cache behavior associated with
    # 			this response headers policy.</p>
    #
    # @!attribute xss_protection
    #   <p>Determines whether CloudFront includes the <code>X-XSS-Protection</code> HTTP response header and
    #   			the header’s value.</p>
    #   		       <p>For more information about the <code>X-XSS-Protection</code> HTTP response header, see
    #   			<a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection">X-XSS-Protection</a> in the MDN Web Docs.</p>
    #
    #   @return [ResponseHeadersPolicyXSSProtection]
    #
    # @!attribute frame_options
    #   <p>Determines whether CloudFront includes the <code>X-Frame-Options</code> HTTP response header and
    #   			the header’s value.</p>
    #   		       <p>For more information about the <code>X-Frame-Options</code> HTTP response header, see
    #   			<a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options">X-Frame-Options</a> in the MDN Web Docs.</p>
    #
    #   @return [ResponseHeadersPolicyFrameOptions]
    #
    # @!attribute referrer_policy
    #   <p>Determines whether CloudFront includes the <code>Referrer-Policy</code> HTTP response header and
    #   			the header’s value.</p>
    #   		       <p>For more information about the <code>Referrer-Policy</code> HTTP response header, see
    #   			<a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy">Referrer-Policy</a> in the MDN Web Docs.</p>
    #
    #   @return [ResponseHeadersPolicyReferrerPolicy]
    #
    # @!attribute content_security_policy
    #   <p>The policy directives and their values that CloudFront includes as values for the
    #   				<code>Content-Security-Policy</code> HTTP response header.</p>
    #   		       <p>For more information about the <code>Content-Security-Policy</code> HTTP response
    #   			header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy">Content-Security-Policy</a> in the MDN Web Docs.</p>
    #
    #   @return [ResponseHeadersPolicyContentSecurityPolicy]
    #
    # @!attribute content_type_options
    #   <p>Determines whether CloudFront includes the <code>X-Content-Type-Options</code> HTTP response
    #   			header with its value set to <code>nosniff</code>.</p>
    #   		       <p>For more information about the <code>X-Content-Type-Options</code> HTTP response
    #   			header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options">X-Content-Type-Options</a> in the MDN Web Docs.</p>
    #
    #   @return [ResponseHeadersPolicyContentTypeOptions]
    #
    # @!attribute strict_transport_security
    #   <p>Determines whether CloudFront includes the <code>Strict-Transport-Security</code> HTTP response
    #   			header and the header’s value.</p>
    #   		       <p>For more information about the <code>Strict-Transport-Security</code> HTTP response
    #   			header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security">Strict-Transport-Security</a> in the MDN Web Docs.</p>
    #
    #   @return [ResponseHeadersPolicyStrictTransportSecurity]
    #
    ResponseHeadersPolicySecurityHeadersConfig = ::Struct.new(
      :xss_protection,
      :frame_options,
      :referrer_policy,
      :content_security_policy,
      :content_type_options,
      :strict_transport_security,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Determines whether CloudFront includes the <code>Strict-Transport-Security</code> HTTP response
    # 			header and the header’s value.</p>
    # 		       <p>For more information about the <code>Strict-Transport-Security</code> HTTP response
    # 			header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security">Strict-Transport-Security</a> in the MDN Web Docs.</p>
    #
    # @!attribute override
    #   <p>A Boolean that determines whether CloudFront overrides the <code>Strict-Transport-Security</code>
    #   			HTTP response header received from the origin with the one specified in this response
    #   			headers policy.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_subdomains
    #   <p>A Boolean that determines whether CloudFront includes the <code>includeSubDomains</code> directive
    #   			in the <code>Strict-Transport-Security</code> HTTP response header.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute preload
    #   <p>A Boolean that determines whether CloudFront includes the <code>preload</code> directive in the
    #   			<code>Strict-Transport-Security</code> HTTP response header.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute access_control_max_age_sec
    #   <p>A number that CloudFront uses as the value for the <code>max-age</code> directive in the
    #   				<code>Strict-Transport-Security</code> HTTP response header.</p>
    #
    #   @return [Integer]
    #
    ResponseHeadersPolicyStrictTransportSecurity = ::Struct.new(
      :override,
      :include_subdomains,
      :preload,
      :access_control_max_age_sec,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a response headers policy.</p>
    #
    # @!attribute type
    #   <p>The type of response headers policy, either <code>managed</code> (created by Amazon Web Services) or
    #   				<code>custom</code> (created in this Amazon Web Services account).</p>
    #
    #   @return [String]
    #
    # @!attribute response_headers_policy
    #   <p>The response headers policy.</p>
    #
    #   @return [ResponseHeadersPolicy]
    #
    ResponseHeadersPolicySummary = ::Struct.new(
      :type,
      :response_headers_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Determines whether CloudFront includes the <code>X-XSS-Protection</code> HTTP response header and
    # 			the header’s value.</p>
    # 		       <p>For more information about the <code>X-XSS-Protection</code> HTTP response header, see
    # 				<a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection">X-XSS-Protection</a> in the MDN Web Docs.</p>
    #
    # @!attribute override
    #   <p>A Boolean that determines whether CloudFront overrides the <code>X-XSS-Protection</code> HTTP
    #   			response header received from the origin with the one specified in this response headers
    #   			policy.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute protection
    #   <p>A Boolean that determines the value of the <code>X-XSS-Protection</code> HTTP response
    #   			header. When this setting is <code>true</code>, the value of the
    #   			<code>X-XSS-Protection</code> header is <code>1</code>. When this setting is
    #   			<code>false</code>, the value of the <code>X-XSS-Protection</code> header is
    #   			<code>0</code>.</p>
    #   		       <p>For more information about these settings, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection">X-XSS-Protection</a> in the MDN Web Docs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute mode_block
    #   <p>A Boolean that determines whether CloudFront includes the <code>mode=block</code> directive in the
    #   			<code>X-XSS-Protection</code> header.</p>
    #   		       <p>For more information about this directive, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection">X-XSS-Protection</a> in the MDN Web Docs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute report_uri
    #   <p>A reporting URI, which CloudFront uses as the value of the <code>report</code> directive in the
    #   			<code>X-XSS-Protection</code> header.</p>
    #   		       <p>You cannot specify a <code>ReportUri</code> when <code>ModeBlock</code> is
    #   			<code>true</code>.</p>
    #   		       <p>For more information about using a reporting URL, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection">X-XSS-Protection</a> in the MDN Web Docs.</p>
    #
    #   @return [String]
    #
    ResponseHeadersPolicyXSSProtection = ::Struct.new(
      :override,
      :protection,
      :mode_block,
      :report_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that identifies ways in which you want to restrict distribution of your
    # 			content.</p>
    #
    # @!attribute geo_restriction
    #   <p>A complex type that controls the countries in which your content is distributed. CloudFront
    #   			determines the location of your users using <code>MaxMind</code> GeoIP databases.</p>
    #
    #   @return [GeoRestriction]
    #
    Restrictions = ::Struct.new(
      :geo_restriction,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains information about the Amazon S3 bucket from which you want
    # 			CloudFront to get your media files for distribution.</p>
    #
    # @!attribute domain_name
    #   <p>The DNS name of the Amazon S3 origin. </p>
    #
    #   @return [String]
    #
    # @!attribute origin_access_identity
    #   <p>The CloudFront origin access identity to associate with the distribution. Use an origin
    #   			access identity to configure the distribution so that end users can only access objects in an
    #   			Amazon S3 bucket through CloudFront.</p>
    #   		       <p>If you want end users to be able to access objects using either the CloudFront URL or the
    #   			Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p>
    #   		       <p>To delete the origin access identity from an existing distribution, update the
    #   			distribution configuration and include an empty <code>OriginAccessIdentity</code>
    #   			element.</p>
    #   		       <p>To replace the origin access identity, update the distribution configuration and
    #   			specify the new origin access identity.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html">Using an Origin Access
    #   				Identity to Restrict Access to Your Amazon S3 Content</a> in the <i>
    #   				Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    S3Origin = ::Struct.new(
      :domain_name,
      :origin_access_identity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains information about the Amazon S3 origin. If the origin is a
    # 			custom origin or an S3 bucket that is configured as a website endpoint, use the
    #             <code>CustomOriginConfig</code> element instead.</p>
    #
    # @!attribute origin_access_identity
    #   <p>The CloudFront origin access identity to associate with the origin. Use an origin access
    #   			identity to configure the origin so that viewers can <i>only</i> access objects
    #   			in an Amazon S3 bucket through CloudFront. The format of the value is:</p>
    #   		       <p>origin-access-identity/cloudfront/<i>ID-of-origin-access-identity</i>
    #            </p>
    #   		       <p>where <code>
    #                  <i>ID-of-origin-access-identity</i>
    #               </code> is the value that
    #   			CloudFront returned in the <code>ID</code> element when you created the origin access
    #   			identity.</p>
    #   		       <p>If you want viewers to be able to access objects using either the CloudFront URL or the Amazon S3
    #   			URL, specify an empty <code>OriginAccessIdentity</code> element.</p>
    #   		       <p>To delete the origin access identity from an existing distribution, update the
    #   			distribution configuration and include an empty <code>OriginAccessIdentity</code>
    #   			element.</p>
    #   		       <p>To replace the origin access identity, update the distribution configuration and
    #   			specify the new origin access identity.</p>
    #   		       <p>For more information about the origin access identity, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the
    #   				<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    S3OriginConfig = ::Struct.new(
      :origin_access_identity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of Amazon Web Services accounts and the active CloudFront key pairs in each account that CloudFront can use to
    # 			verify the signatures of signed URLs and signed cookies.</p>
    #
    # @!attribute aws_account_number
    #   <p>An Amazon Web Services account number that contains active CloudFront key pairs that CloudFront can use to verify the
    #   			signatures of signed URLs and signed cookies. If the Amazon Web Services account that owns the key pairs
    #   			is the same account that owns the CloudFront distribution, the value of this field is
    #   			<code>self</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute key_pair_ids
    #   <p>A list of CloudFront key pair identifiers.</p>
    #
    #   @return [KeyPairIds]
    #
    Signer = ::Struct.new(
      :aws_account_number,
      :key_pair_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex data type for the status codes that you specify that, when returned by a primary origin, trigger
    # 		CloudFront to failover to a second origin.</p>
    #
    # @!attribute quantity
    #   <p>The number of status codes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>The items (status codes) for an origin group.</p>
    #
    #   @return [Array<Integer>]
    #
    StatusCodes = ::Struct.new(
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A streaming distribution tells CloudFront where you want RTMP content to be delivered from, and the details about how to
    # 			track and manage content delivery.</p>
    #
    # @!attribute id
    #   <p>The identifier for the RTMP distribution. For example:
    #   			<code>EGTXBD79EXAMPLE</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) for the distribution. For example:
    #   			<code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where
    #   			<code>123456789012</code> is your Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the RTMP distribution. When the status is <code>Deployed</code>,
    #   			the distribution's information is propagated to all CloudFront edge locations.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time that the distribution was last modified. </p>
    #
    #   @return [Time]
    #
    # @!attribute domain_name
    #   <p>The domain name that corresponds to the streaming distribution, for example, <code>s5c39gqb8ow64r.cloudfront.net</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute active_trusted_signers
    #   <p>A complex type that lists the Amazon Web Services accounts, if any, that you included in the
    #   				<code>TrustedSigners</code> complex type for this distribution. These are the accounts that
    #   			you want to allow to create signed URLs for private content.</p>
    #   		       <p>The <code>Signer</code> complex type lists the Amazon Web Services account number of the trusted
    #   			signer or <code>self</code> if the signer is the Amazon Web Services account that created the distribution.
    #   			The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are
    #   			associated with the trusted signer's Amazon Web Services account. If no <code>KeyPairId</code> element
    #   			appears for a <code>Signer</code>, that signer can't create signed URLs.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private
    #   				Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
    #
    #   @return [ActiveTrustedSigners]
    #
    # @!attribute streaming_distribution_config
    #   <p>The current configuration information for the RTMP distribution.</p>
    #
    #   @return [StreamingDistributionConfig]
    #
    StreamingDistribution = ::Struct.new(
      :id,
      :arn,
      :status,
      :last_modified_time,
      :domain_name,
      :active_trusted_signers,
      :streaming_distribution_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The caller reference you attempted to create the streaming distribution with
    # 			is associated with another distribution</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StreamingDistributionAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The RTMP distribution's configuration information.</p>
    #
    # @!attribute caller_reference
    #   <p>A unique value (for example, a date-time stamp) that ensures that the request can't be
    #   			replayed.</p>
    #   		       <p>If the value of <code>CallerReference</code> is new (regardless of the content of the
    #   			<code>StreamingDistributionConfig</code> object), CloudFront creates a new distribution.</p>
    #   		       <p>If <code>CallerReference</code> is a value that you already sent in a previous request to
    #   			create a distribution, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_origin
    #   <p>A complex type that contains information about the Amazon S3 bucket from which you want
    #   			CloudFront to get your media files for distribution. </p>
    #
    #   @return [S3Origin]
    #
    # @!attribute aliases
    #   <p>A complex type that contains information about CNAMEs (alternate domain names), if any,
    #   			for this streaming distribution. </p>
    #
    #   @return [Aliases]
    #
    # @!attribute comment
    #   <p>Any comments you want to include about the streaming distribution. </p>
    #
    #   @return [String]
    #
    # @!attribute logging
    #   <p>A complex type that controls whether access logs are written for the streaming
    #   			distribution. </p>
    #
    #   @return [StreamingLoggingConfig]
    #
    # @!attribute trusted_signers
    #   <p>A complex type that specifies any Amazon Web Services accounts that you want to permit to create signed
    #   			URLs for private content. If you want the distribution to use signed URLs, include this
    #   			element; if you want the distribution to use public URLs, remove this element. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through
    #   				CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
    #
    #   @return [TrustedSigners]
    #
    # @!attribute price_class
    #   <p>A complex type that contains information about price class for this streaming
    #   			distribution. </p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Whether the streaming distribution is enabled to accept user requests for
    #   			content.</p>
    #
    #   @return [Boolean]
    #
    StreamingDistributionConfig = ::Struct.new(
      :caller_reference,
      :s3_origin,
      :aliases,
      :comment,
      :logging,
      :trusted_signers,
      :price_class,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A streaming distribution Configuration and a list of tags to be associated with the
    # 			streaming distribution.</p>
    #
    # @!attribute streaming_distribution_config
    #   <p>A streaming distribution Configuration.</p>
    #
    #   @return [StreamingDistributionConfig]
    #
    # @!attribute tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    #
    #   @return [Tags]
    #
    StreamingDistributionConfigWithTags = ::Struct.new(
      :streaming_distribution_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A streaming distribution list. </p>
    #
    # @!attribute marker
    #   <p>The value you provided for the <code>Marker</code> request parameter. </p>
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains
    #   			the value you can use for the <code>Marker</code> request parameter to continue listing your
    #   			RTMP distributions where they left off. </p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The value you provided for the <code>MaxItems</code> request parameter. </p>
    #
    #   @return [Integer]
    #
    # @!attribute is_truncated
    #   <p>A flag that indicates whether more streaming distributions remain to be listed. If your
    #   			results were truncated, you can make a follow-up pagination request using the
    #   				<code>Marker</code> request parameter to retrieve more distributions in the list. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute quantity
    #   <p>The number of streaming distributions that were created by the current Amazon Web Services account.
    #   		</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A complex type that contains one <code>StreamingDistributionSummary</code> element for
    #   			each distribution that was created by the current Amazon Web Services account.</p>
    #
    #   @return [Array<StreamingDistributionSummary>]
    #
    StreamingDistributionList = ::Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified CloudFront distribution is not disabled. You must disable
    # 			the distribution before you can delete it.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StreamingDistributionNotDisabled = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A summary of the information for a CloudFront streaming distribution.</p>
    #
    # @!attribute id
    #   <p>The identifier for the distribution, for example, <code>EDFDVBD632BHDS5</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p> The ARN (Amazon Resource Name) for the streaming distribution. For example:
    #   				<code>arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5</code>, where
    #   				<code>123456789012</code> is your Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> Indicates the current status of the distribution. When the status is
    #   			<code>Deployed</code>, the distribution's information is fully propagated throughout the
    #   			Amazon CloudFront system.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The date and time the distribution was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute domain_name
    #   <p>The domain name corresponding to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_origin
    #   <p>A complex type that contains information about the Amazon S3 bucket from which you want
    #   			CloudFront to get your media files for distribution.</p>
    #
    #   @return [S3Origin]
    #
    # @!attribute aliases
    #   <p>A complex type that contains information about CNAMEs (alternate domain names), if any,
    #   			for this streaming distribution.</p>
    #
    #   @return [Aliases]
    #
    # @!attribute trusted_signers
    #   <p>A complex type that specifies the Amazon Web Services accounts, if any, that you want to allow to
    #   			create signed URLs for private content. If you want to require signed URLs in requests for
    #   			objects in the target origin that match the <code>PathPattern</code> for this cache behavior,
    #   			specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for
    #   				<code>Quantity</code> and <code>Items</code>.If you don't want to require signed URLs in
    #   			requests for objects that match <code>PathPattern</code>, specify <code>false</code> for
    #   				<code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.
    #   			To add, change, or remove one or more trusted signers, change <code>Enabled</code> to
    #   				<code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as
    #   			applicable, and specify all of the trusted signers that you want to include in the updated
    #   			distribution.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private
    #   			Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
    #
    #   @return [TrustedSigners]
    #
    # @!attribute comment
    #   <p>The comment originally specified when this distribution was created.</p>
    #
    #   @return [String]
    #
    # @!attribute price_class
    #   <p>A complex type that contains information about price class for this streaming
    #   			distribution. </p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Whether the distribution is enabled to accept end user requests for content.</p>
    #
    #   @return [Boolean]
    #
    StreamingDistributionSummary = ::Struct.new(
      :id,
      :arn,
      :status,
      :last_modified_time,
      :domain_name,
      :s3_origin,
      :aliases,
      :trusted_signers,
      :comment,
      :price_class,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that controls whether access logs are written for this streaming distribution.</p>
    #
    # @!attribute enabled
    #   <p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you don't
    #   			want to enable logging when you create a streaming distribution or if you want to disable
    #   			logging for an existing streaming distribution, specify <code>false</code> for
    #   				<code>Enabled</code>, and specify <code>empty Bucket</code> and <code>Prefix</code>
    #   			elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values
    #   			for <code>Bucket</code> and <code>Prefix</code>, the values are automatically deleted.
    #   		</p>
    #
    #   @return [Boolean]
    #
    # @!attribute bucket
    #   <p>The Amazon S3 bucket to store the access logs in, for example, <code>myawslogbucket.s3.amazonaws.com</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>An optional string that you want CloudFront to prefix to the access log filenames for this streaming distribution, for example,
    #   			<code>myprefix/</code>. If you want to enable logging, but you don't want to specify a prefix, you still must include
    #   			an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>
    #
    #   @return [String]
    #
    StreamingLoggingConfig = ::Struct.new(
      :enabled,
      :bucket,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A complex type that contains <code>Tag</code> key and <code>Tag</code> value.</p>
    #
    # @!attribute key
    #   <p> A string that contains <code>Tag</code> key.</p>
    #   		       <p>The string length should be between 1 and 128 characters. Valid characters include
    #   				<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters
    #   				<code>_ - . : / = + @</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p> A string that contains an optional <code>Tag</code> value.</p>
    #   		       <p>The string length should be between 0 and 256 characters. Valid characters include
    #   				<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters
    #   				<code>_ - . : / = + @</code>.</p>
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

    # <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
    #
    # @!attribute items
    #   <p> A complex type that contains <code>Tag</code> key elements.</p>
    #
    #   @return [Array<String>]
    #
    TagKeys = ::Struct.new(
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request to add tags to a CloudFront resource.</p>
    #
    # @!attribute resource
    #   <p> An ARN of a CloudFront resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
    #
    #   @return [Tags]
    #
    TagResourceInput = ::Struct.new(
      :resource,
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

    # <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
    #
    # @!attribute items
    #   <p> A complex type that contains <code>Tag</code> elements.</p>
    #
    #   @return [Array<Tag>]
    #
    Tags = ::Struct.new(
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The CloudFront function failed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TestFunctionFailed = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the function that you are testing.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are testing, which
    #   			you can get using <code>DescribeFunction</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute stage
    #   <p>The stage of the function that you are testing, either <code>DEVELOPMENT</code> or
    #   			<code>LIVE</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute event_object
    #   <p>The event object to test the function with. For more information about the structure of the
    #   			event object, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html test-function">Testing functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [String]
    #
    TestFunctionInput = ::Struct.new(
      :name,
      :if_match,
      :stage,
      :event_object,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::Cloudfront::Types::TestFunctionInput "\
          "name=#{name || 'nil'}, "\
          "if_match=#{if_match || 'nil'}, "\
          "stage=#{stage || 'nil'}, "\
          "event_object=\"[SENSITIVE]\">"
      end
    end

    # @!attribute test_result
    #   <p>An object that represents the result of running the function with the provided event
    #   			object.</p>
    #
    #   @return [TestResult]
    #
    TestFunctionOutput = ::Struct.new(
      :test_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the result of testing a CloudFront function with <code>TestFunction</code>.</p>
    #
    # @!attribute function_summary
    #   <p>Contains configuration information and metadata about the CloudFront function that was
    #   			tested.</p>
    #
    #   @return [FunctionSummary]
    #
    # @!attribute compute_utilization
    #   <p>The amount of time that the function took to run as a percentage of the maximum
    #   			allowed time. For example, a compute utilization of 35 means that the function completed
    #   			in 35% of the maximum allowed time.</p>
    #
    #   @return [String]
    #
    # @!attribute function_execution_logs
    #   <p>Contains the log lines that the function wrote (if any) when running the test.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [Array<String>]
    #
    # @!attribute function_error_message
    #   <p>If the result of testing the function was an error, this field contains the error
    #   			message.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [String]
    #
    # @!attribute function_output
    #   <p>The event object returned by the function. For more information about the structure of the
    #   			event object, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/functions-event-structure.html">Event object
    #   			structure</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [String]
    #
    TestResult = ::Struct.new(
      :function_summary,
      :compute_utilization,
      :function_execution_logs,
      :function_error_message,
      :function_output,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::Cloudfront::Types::TestResult "\
          "function_summary=#{function_summary || 'nil'}, "\
          "compute_utilization=#{compute_utilization || 'nil'}, "\
          "function_execution_logs=\"[SENSITIVE]\", "\
          "function_error_message=\"[SENSITIVE]\", "\
          "function_output=\"[SENSITIVE]\">"
      end
    end

    # <p>You cannot create more cache behaviors for the distribution.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyCacheBehaviors = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the maximum number of cache policies for this Amazon Web Services account. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyCachePolicies = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You cannot create anymore custom SSL/TLS certificates.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyCertificates = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Processing your request would cause you to exceed the maximum number of origin access identities allowed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyCloudFrontOriginAccessIdentities = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request contains more cookie names in the whitelist than are allowed per cache behavior.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyCookieNamesInWhiteList = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of cookies in the cache policy exceeds the maximum. For more information,
    # 			see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyCookiesInCachePolicy = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of cookies in the origin request policy exceeds the maximum. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyCookiesInOriginRequestPolicy = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of custom headers in the response headers policy exceeds the maximum.</p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 				<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyCustomHeadersInResponseHeadersPolicy = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request contains more CNAMEs than are allowed per distribution.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyDistributionCNAMEs = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Processing your request would cause you to exceed the maximum number of distributions allowed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyDistributions = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of distributions have been associated with the specified cache
    # 			policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyDistributionsAssociatedToCachePolicy = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of distributions have been associated with the specified configuration for field-level encryption.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyDistributionsAssociatedToFieldLevelEncryptionConfig = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of distributions that reference this key group is more than the maximum
    # 			allowed. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyDistributionsAssociatedToKeyGroup = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of distributions have been associated with the specified origin
    # 			request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyDistributionsAssociatedToOriginRequestPolicy = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of distributions have been associated with the specified response headers
    # 			policy.</p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 				<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyDistributionsAssociatedToResponseHeadersPolicy = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the maximum number of distributions that are associated with a CloudFront
    # 			function. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyDistributionsWithFunctionAssociations = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Processing your request would cause the maximum number of distributions with Lambda@Edge function associations per owner
    # 			to be exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyDistributionsWithLambdaAssociations = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of distributions have been associated with the specified Lambda@Edge
    # 			function.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyDistributionsWithSingleFunctionARN = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of configurations for field-level encryption have been created.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyFieldLevelEncryptionConfigs = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of content type profiles for field-level encryption have been created.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyFieldLevelEncryptionContentTypeProfiles = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of encryption entities for field-level encryption have been created.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyFieldLevelEncryptionEncryptionEntities = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of field patterns for field-level encryption have been created.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyFieldLevelEncryptionFieldPatterns = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of profiles for field-level encryption have been created.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyFieldLevelEncryptionProfiles = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of query arg profiles for field-level encryption have been created.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyFieldLevelEncryptionQueryArgProfiles = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the maximum number of CloudFront function associations for this
    # 			distribution. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyFunctionAssociations = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the maximum number of CloudFront functions for this Amazon Web Services account. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyFunctions = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of headers in the cache policy exceeds the maximum. For more information,
    # 			see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyHeadersInCachePolicy = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request contains too many headers in forwarded values.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyHeadersInForwardedValues = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of headers in the origin request policy exceeds the maximum. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyHeadersInOriginRequestPolicy = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded the maximum number of allowable InProgress invalidation batch requests, or invalidation objects.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyInvalidationsInProgress = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the maximum number of key groups for this Amazon Web Services account. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyKeyGroups = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of key groups referenced by this distribution is more than the maximum
    # 			allowed. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyKeyGroupsAssociatedToDistribution = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request contains more Lambda@Edge function associations than are allowed per distribution.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyLambdaFunctionAssociations = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request contains too many origin custom headers.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyOriginCustomHeaders = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Processing your request would cause you to exceed the maximum number of origin groups allowed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyOriginGroupsPerDistribution = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the maximum number of origin request policies for this Amazon Web Services account.
    # 			For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyOriginRequestPolicies = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You cannot create more origins for the distribution.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyOrigins = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of public keys for field-level encryption have been created. To create a new public key, delete one of the existing keys.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyPublicKeys = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of public keys in this key group is more than the maximum allowed. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyPublicKeysInKeyGroup = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request contains too many query string parameters.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyQueryStringParameters = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of query strings in the cache policy exceeds the maximum. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyQueryStringsInCachePolicy = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of query strings in the origin request policy exceeds the maximum. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyQueryStringsInOriginRequestPolicy = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the maximum number of real-time log configurations for this Amazon Web Services account.
    # 			For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRealtimeLogConfigs = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the maximum number of response headers policies for this
    # 			Amazon Web Services account.</p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
    # 				<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyResponseHeadersPolicies = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request contains more CNAMEs than are allowed per distribution.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyStreamingDistributionCNAMEs = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Processing your request would cause you to exceed the maximum number of streaming distributions allowed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyStreamingDistributions = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request contains more trusted signers than are allowed per distribution.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyTrustedSigners = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified key group does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TrustedKeyGroupDoesNotExist = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of key groups whose public keys CloudFront can use to verify the signatures of signed
    # 			URLs and signed cookies.</p>
    #
    # @!attribute enabled
    #   <p>This field is <code>true</code> if any of the key groups in the list have public keys that
    #   			CloudFront can use to verify the signatures of signed URLs and signed cookies. If not, this
    #   			field is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute quantity
    #   <p>The number of key groups in the list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A list of key groups identifiers.</p>
    #
    #   @return [Array<String>]
    #
    TrustedKeyGroups = ::Struct.new(
      :enabled,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more of your trusted signers don't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TrustedSignerDoesNotExist = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of Amazon Web Services accounts whose public keys CloudFront can use to verify the signatures of signed
    # 			URLs and signed cookies.</p>
    #
    # @!attribute enabled
    #   <p>This field is <code>true</code> if any of the Amazon Web Services accounts have public keys that CloudFront can
    #   			use to verify the signatures of signed URLs and signed cookies. If not, this field is
    #   			<code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute quantity
    #   <p>The number of Amazon Web Services accounts in the list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute items
    #   <p>A list of Amazon Web Services account identifiers.</p>
    #
    #   @return [Array<String>]
    #
    TrustedSigners = ::Struct.new(
      :enabled,
      :quantity,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This operation is not supported in this region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedOperation = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request to remove tags from a CloudFront resource.</p>
    #
    # @!attribute resource
    #   <p> An ARN of a CloudFront resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p> A complex type that contains zero or more <code>Tag</code> key elements.</p>
    #
    #   @return [TagKeys]
    #
    UntagResourceInput = ::Struct.new(
      :resource,
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

    # @!attribute cache_policy_config
    #   <p>A cache policy configuration.</p>
    #
    #   @return [CachePolicyConfig]
    #
    # @!attribute id
    #   <p>The unique identifier for the cache policy that you are updating. The identifier is returned
    #   			in a cache behavior’s <code>CachePolicyId</code> field in the response to
    #   			<code>GetDistributionConfig</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The version of the cache policy that you are updating. The version is returned in the cache
    #   			policy’s <code>ETag</code> field in the response to
    #   			<code>GetCachePolicyConfig</code>.</p>
    #
    #   @return [String]
    #
    UpdateCachePolicyInput = ::Struct.new(
      :cache_policy_config,
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cache_policy
    #   <p>A cache policy.</p>
    #
    #   @return [CachePolicy]
    #
    # @!attribute e_tag
    #   <p>The current version of the cache policy.</p>
    #
    #   @return [String]
    #
    UpdateCachePolicyOutput = ::Struct.new(
      :cache_policy,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to update an origin access identity.</p>
    #
    # @!attribute cloud_front_origin_access_identity_config
    #   <p>The identity's configuration information.</p>
    #
    #   @return [CloudFrontOriginAccessIdentityConfig]
    #
    # @!attribute id
    #   <p>The identity's id.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the
    #   			identity's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    UpdateCloudFrontOriginAccessIdentityInput = ::Struct.new(
      :cloud_front_origin_access_identity_config,
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    #
    # @!attribute cloud_front_origin_access_identity
    #   <p>The origin access identity's information.</p>
    #
    #   @return [CloudFrontOriginAccessIdentity]
    #
    # @!attribute e_tag
    #   <p>The current version of the configuration. For example:
    #   			<code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    UpdateCloudFrontOriginAccessIdentityOutput = ::Struct.new(
      :cloud_front_origin_access_identity,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to update a distribution.</p>
    #
    # @!attribute distribution_config
    #   <p>The distribution's configuration information.</p>
    #
    #   @return [DistributionConfig]
    #
    # @!attribute id
    #   <p>The distribution's id.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the
    #   			distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    UpdateDistributionInput = ::Struct.new(
      :distribution_config,
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    #
    # @!attribute distribution
    #   <p>The distribution's information.</p>
    #
    #   @return [Distribution]
    #
    # @!attribute e_tag
    #   <p>The current version of the configuration. For example:
    #   			<code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    UpdateDistributionOutput = ::Struct.new(
      :distribution,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute field_level_encryption_config
    #   <p>Request to update a field-level encryption configuration. </p>
    #
    #   @return [FieldLevelEncryptionConfig]
    #
    # @!attribute id
    #   <p>The ID of the configuration you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the configuration identity to update.
    #   			For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    UpdateFieldLevelEncryptionConfigInput = ::Struct.new(
      :field_level_encryption_config,
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute field_level_encryption
    #   <p>Return the results of updating the configuration.</p>
    #
    #   @return [FieldLevelEncryption]
    #
    # @!attribute e_tag
    #   <p>The value of the <code>ETag</code> header that you received when updating the configuration.
    #   			For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    UpdateFieldLevelEncryptionConfigOutput = ::Struct.new(
      :field_level_encryption,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute field_level_encryption_profile_config
    #   <p>Request to update a field-level encryption profile. </p>
    #
    #   @return [FieldLevelEncryptionProfileConfig]
    #
    # @!attribute id
    #   <p>The ID of the field-level encryption profile request. </p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the profile identity to update.
    #   			For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    UpdateFieldLevelEncryptionProfileInput = ::Struct.new(
      :field_level_encryption_profile_config,
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute field_level_encryption_profile
    #   <p>Return the results of updating the profile.</p>
    #
    #   @return [FieldLevelEncryptionProfile]
    #
    # @!attribute e_tag
    #   <p>The result of the field-level encryption profile request. </p>
    #
    #   @return [String]
    #
    UpdateFieldLevelEncryptionProfileOutput = ::Struct.new(
      :field_level_encryption_profile,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the function that you are updating.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are updating, which
    #   			you can get using <code>DescribeFunction</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute function_config
    #   <p>Configuration information about the function.</p>
    #
    #   @return [FunctionConfig]
    #
    # @!attribute function_code
    #   <p>The function code. For more information about writing a CloudFront function, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html">Writing function
    #   			code for CloudFront Functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [String]
    #
    UpdateFunctionInput = ::Struct.new(
      :name,
      :if_match,
      :function_config,
      :function_code,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::Cloudfront::Types::UpdateFunctionInput "\
          "name=#{name || 'nil'}, "\
          "if_match=#{if_match || 'nil'}, "\
          "function_config=#{function_config || 'nil'}, "\
          "function_code=\"[SENSITIVE]\">"
      end
    end

    # @!attribute function_summary
    #   <p>Contains configuration information and metadata about a CloudFront function.</p>
    #
    #   @return [FunctionSummary]
    #
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the CloudFront function.</p>
    #
    #   @return [String]
    #
    UpdateFunctionOutput = ::Struct.new(
      :function_summary,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute key_group_config
    #   <p>The key group configuration.</p>
    #
    #   @return [KeyGroupConfig]
    #
    # @!attribute id
    #   <p>The identifier of the key group that you are updating.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The version of the key group that you are updating. The version is the key group’s
    #   			<code>ETag</code> value.</p>
    #
    #   @return [String]
    #
    UpdateKeyGroupInput = ::Struct.new(
      :key_group_config,
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute key_group
    #   <p>The key group that was just updated.</p>
    #
    #   @return [KeyGroup]
    #
    # @!attribute e_tag
    #   <p>The identifier for this version of the key group.</p>
    #
    #   @return [String]
    #
    UpdateKeyGroupOutput = ::Struct.new(
      :key_group,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origin_request_policy_config
    #   <p>An origin request policy configuration.</p>
    #
    #   @return [OriginRequestPolicyConfig]
    #
    # @!attribute id
    #   <p>The unique identifier for the origin request policy that you are updating. The identifier is
    #   			returned in a cache behavior’s <code>OriginRequestPolicyId</code> field in the response
    #   			to <code>GetDistributionConfig</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The version of the origin request policy that you are updating. The version is returned in
    #   			the origin request policy’s <code>ETag</code> field in the response to
    #   			<code>GetOriginRequestPolicyConfig</code>.</p>
    #
    #   @return [String]
    #
    UpdateOriginRequestPolicyInput = ::Struct.new(
      :origin_request_policy_config,
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origin_request_policy
    #   <p>An origin request policy.</p>
    #
    #   @return [OriginRequestPolicy]
    #
    # @!attribute e_tag
    #   <p>The current version of the origin request policy.</p>
    #
    #   @return [String]
    #
    UpdateOriginRequestPolicyOutput = ::Struct.new(
      :origin_request_policy,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute public_key_config
    #   <p>A public key configuration.</p>
    #
    #   @return [PublicKeyConfig]
    #
    # @!attribute id
    #   <p>The identifier of the public key that you are updating.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the public key to update.
    #   			For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    UpdatePublicKeyInput = ::Struct.new(
      :public_key_config,
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute public_key
    #   <p>The public key.</p>
    #
    #   @return [PublicKey]
    #
    # @!attribute e_tag
    #   <p>The identifier of the current version of the public key.</p>
    #
    #   @return [String]
    #
    UpdatePublicKeyOutput = ::Struct.new(
      :public_key,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute end_points
    #   <p>Contains information about the Amazon Kinesis data stream where you are sending real-time
    #   			log data.</p>
    #
    #   @return [Array<EndPoint>]
    #
    # @!attribute fields
    #   <p>A list of fields to include in each real-time log record.</p>
    #   		       <p>For more information about fields, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html understand-real-time-log-config-fields">Real-time log configuration fields</a> in the
    #   			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute name
    #   <p>The name for this real-time log configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for this real-time log configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute sampling_rate
    #   <p>The sampling rate for this real-time log configuration. The sampling rate determines the
    #   			percentage of viewer requests that are represented in the real-time log data. You must
    #   			provide an integer between 1 and 100, inclusive.</p>
    #
    #   @return [Integer]
    #
    UpdateRealtimeLogConfigInput = ::Struct.new(
      :end_points,
      :fields,
      :name,
      :arn,
      :sampling_rate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute realtime_log_config
    #   <p>A real-time log configuration.</p>
    #
    #   @return [RealtimeLogConfig]
    #
    UpdateRealtimeLogConfigOutput = ::Struct.new(
      :realtime_log_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute response_headers_policy_config
    #   <p>A response headers policy configuration.</p>
    #
    #   @return [ResponseHeadersPolicyConfig]
    #
    # @!attribute id
    #   <p>The identifier for the response headers policy that you are updating.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The version of the response headers policy that you are updating.</p>
    #   		       <p>The version is returned in the cache policy’s <code>ETag</code> field in the response
    #   			to <code>GetResponseHeadersPolicyConfig</code>.</p>
    #
    #   @return [String]
    #
    UpdateResponseHeadersPolicyInput = ::Struct.new(
      :response_headers_policy_config,
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute response_headers_policy
    #   <p>A response headers policy.</p>
    #
    #   @return [ResponseHeadersPolicy]
    #
    # @!attribute e_tag
    #   <p>The current version of the response headers policy.</p>
    #
    #   @return [String]
    #
    UpdateResponseHeadersPolicyOutput = ::Struct.new(
      :response_headers_policy,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to update a streaming distribution.</p>
    #
    # @!attribute streaming_distribution_config
    #   <p>The streaming distribution's configuration information.</p>
    #
    #   @return [StreamingDistributionConfig]
    #
    # @!attribute id
    #   <p>The streaming distribution's id.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the
    #   			streaming distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    UpdateStreamingDistributionInput = ::Struct.new(
      :streaming_distribution_config,
      :id,
      :if_match,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    #
    # @!attribute streaming_distribution
    #   <p>The streaming distribution's information.</p>
    #
    #   @return [StreamingDistribution]
    #
    # @!attribute e_tag
    #   <p>The current version of the configuration. For example:
    #   			<code>E2QWRUHAPOMQZL</code>.</p>
    #
    #   @return [String]
    #
    UpdateStreamingDistributionOutput = ::Struct.new(
      :streaming_distribution,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that determines the distribution’s SSL/TLS configuration for communicating
    # 			with viewers.</p>
    # 		       <p>If the distribution doesn’t use <code>Aliases</code> (also known as alternate domain
    # 			names or CNAMEs)—that is, if the distribution uses the CloudFront domain name such as
    # 			<code>d111111abcdef8.cloudfront.net</code>—set <code>CloudFrontDefaultCertificate</code>
    # 			to <code>true</code> and leave all other fields empty.</p>
    # 		       <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), use
    # 			the fields in this type to specify the following settings:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Which viewers the distribution accepts HTTPS connections from: only viewers that support
    # 					<a href="https://en.wikipedia.org/wiki/Server_Name_Indication">server name
    # 					indication (SNI)</a> (recommended), or all viewers including those that
    # 					don’t support SNI.</p>
    # 				           <ul>
    #                   <li>
    # 						               <p>To accept HTTPS connections from only viewers that support SNI, set
    # 							<code>SSLSupportMethod</code> to <code>sni-only</code>. This is
    # 							recommended. Most browsers and clients support
    #                             SNI.
    #                             </p>
    # 					             </li>
    #                   <li>
    # 						               <p>To accept HTTPS connections from all viewers, including those that don’t support SNI,
    # 							set <code>SSLSupportMethod</code> to <code>vip</code>. This is not
    # 							recommended, and results in additional monthly charges from
    # 							CloudFront.</p>
    # 					             </li>
    #                </ul>
    # 			         </li>
    #             <li>
    # 				           <p>The minimum SSL/TLS protocol version that the distribution can use to
    # 					communicate with viewers. To specify a minimum version, choose a value for
    # 					<code>MinimumProtocolVersion</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy">Security Policy</a> in the
    # 					<i>Amazon CloudFront Developer Guide</i>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The location of the SSL/TLS certificate, <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html">Certificate Manager (ACM)</a> (recommended) or <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Identity and Access Management (IAM)</a>. You specify the location
    # 					by setting a value in one of the following fields (not both):</p>
    # 				           <ul>
    #                   <li>
    # 						               <p>
    #                         <code>ACMCertificateArn</code>
    #                      </p>
    # 					             </li>
    #                   <li>
    # 						               <p>
    #                         <code>IAMCertificateId</code>
    #                      </p>
    # 					             </li>
    #                </ul>
    # 			         </li>
    #          </ul>
    # 		       <p>All distributions support HTTPS connections from viewers. To require viewers to use
    # 			HTTPS only, or to redirect them from HTTP to HTTPS, use
    # 			<code>ViewerProtocolPolicy</code> in the <code>CacheBehavior</code> or
    # 			<code>DefaultCacheBehavior</code>. To specify how CloudFront should use SSL/TLS to
    # 			communicate with your custom origin, use <code>CustomOriginConfig</code>.</p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https.html">Using
    # 			HTTPS with CloudFront</a> and <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-alternate-domain-names.html">
    # 			Using Alternate Domain Names and HTTPS</a> in the
    # 			<i>Amazon CloudFront Developer Guide</i>.</p>
    #
    # @!attribute cloud_front_default_certificate
    #   <p>If the distribution uses the CloudFront domain name such as
    #   			<code>d111111abcdef8.cloudfront.net</code>, set this field to <code>true</code>.</p>
    #   		       <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), set
    #   			this field to <code>false</code> and specify values for the following fields:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>ACMCertificateArn</code> or <code>IAMCertificateId</code> (specify a value for one,
    #   					not both)</p>
    #   				
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>MinimumProtocolVersion</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>SSLSupportMethod</code>
    #                  </p>
    #   			         </li>
    #            </ul>
    #
    #   @return [Boolean]
    #
    # @!attribute iam_certificate_id
    #   <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs) and
    #   			the SSL/TLS certificate is stored in <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Identity and Access Management (IAM)</a>, provide the ID of the IAM
    #   			certificate.</p>
    #   		       <p>If you specify an IAM certificate ID, you must also specify values for
    #   			<code>MinimumProtocolVersion</code> and <code>SSLSupportMethod</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute acm_certificate_arn
    #   <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs) and
    #   			the SSL/TLS certificate is stored in <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html">Certificate Manager (ACM)</a>, provide the Amazon Resource
    #   			Name (ARN) of the ACM certificate. CloudFront only supports ACM certificates in the US
    #   			East (N. Virginia) Region (<code>us-east-1</code>).</p>
    #   		       <p>If you specify an ACM certificate ARN, you must also specify values for
    #   			<code>MinimumProtocolVersion</code> and <code>SSLSupportMethod</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute ssl_support_method
    #   <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), specify
    #   			which viewers the distribution accepts HTTPS connections from.</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>sni-only</code> – The distribution accepts HTTPS connections from only viewers that
    #   					support <a href="https://en.wikipedia.org/wiki/Server_Name_Indication">server
    #   					name indication (SNI)</a>. This is recommended. Most browsers and clients support SNI.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>vip</code> – The distribution accepts HTTPS connections from all viewers including
    #   					those that don’t support SNI. This is not recommended, and results in additional
    #   					monthly charges from CloudFront.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>static-ip</code> - Do not specify this value unless your distribution
    #   					has been enabled for this feature by the CloudFront team. If you have a use case
    #   					that requires static IP addresses for a distribution, contact CloudFront through
    #   					the <a href="https://console.aws.amazon.com/support/home">Amazon Web Services Support Center</a>.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>If the distribution uses the CloudFront domain name such as
    #   			<code>d111111abcdef8.cloudfront.net</code>, don’t set a value for this field.</p>
    #
    #   @return [String]
    #
    # @!attribute minimum_protocol_version
    #   <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs),
    #   			specify the security policy that you want CloudFront to use for HTTPS connections with
    #   			viewers. The security policy determines two settings:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>The minimum SSL/TLS protocol that CloudFront can use to communicate with
    #   					viewers.</p>
    #   			         </li>
    #               <li>
    #   				           <p>The ciphers that CloudFront can use to encrypt the content that it returns to
    #   					viewers.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html DownloadDistValues-security-policy">Security Policy</a> and <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html secure-connections-supported-ciphers">Supported Protocols and Ciphers Between Viewers and
    #   			CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   		       <note>
    #   			         <p>On the CloudFront console, this setting is called <b>Security
    #   				Policy</b>.</p>
    #   		       </note>
    #   		       <p>When you’re using SNI only (you set <code>SSLSupportMethod</code> to <code>sni-only</code>),
    #   			you must specify <code>TLSv1</code> or higher.</p>
    #   		       <p>If the distribution uses the CloudFront domain name such as
    #   			<code>d111111abcdef8.cloudfront.net</code> (you set
    #   			<code>CloudFrontDefaultCertificate</code> to <code>true</code>), CloudFront automatically sets
    #   			the security policy to <code>TLSv1</code> regardless of the value that you set
    #   			here.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate
    #   <p>This field is deprecated. Use one of the following fields instead:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>ACMCertificateArn</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>IAMCertificateId</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>CloudFrontDefaultCertificate</code>
    #                  </p>
    #   			         </li>
    #            </ul>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute certificate_source
    #   <p>This field is deprecated. Use one of the following fields instead:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>ACMCertificateArn</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>IAMCertificateId</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>CloudFrontDefaultCertificate</code>
    #                  </p>
    #   			         </li>
    #            </ul>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    ViewerCertificate = ::Struct.new(
      :cloud_front_default_certificate,
      :iam_certificate_id,
      :acm_certificate_arn,
      :ssl_support_method,
      :minimum_protocol_version,
      :certificate,
      :certificate_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
