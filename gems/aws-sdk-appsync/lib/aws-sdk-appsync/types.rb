# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppSync
  module Types

    # <p>You don't have access to perform this operation on this resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an additional authentication provider.</p>
    #
    # @!attribute authentication_type
    #   <p>The authentication type: API key, Identity and Access Management (IAM), OpenID
    #            Connect (OIDC), Amazon Cognito user pools, or Lambda.</p>
    #
    #   Enum, one of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute open_id_connect_config
    #   <p>The OIDC configuration.</p>
    #
    #   @return [OpenIDConnectConfig]
    #
    # @!attribute user_pool_config
    #   <p>The Amazon Cognito user pool configuration.</p>
    #
    #   @return [CognitoUserPoolConfig]
    #
    # @!attribute lambda_authorizer_config
    #   <p>Configuration for Lambda function authorization.</p>
    #
    #   @return [LambdaAuthorizerConfig]
    #
    AdditionalAuthenticationProvider = ::Struct.new(
      :authentication_type,
      :open_id_connect_config,
      :user_pool_config,
      :lambda_authorizer_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an <code>ApiAssociation</code> object.</p>
    #
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #
    #   @return [String]
    #
    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute association_status
    #   <p>Identifies the status of an association.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>PROCESSING</b>: The API association is being
    #                  created. You cannot modify association requests during processing.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SUCCESS</b>: The API association was successful.
    #                  You can modify associations after success.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FAILED</b>: The API association has failed. You
    #                  can modify associations after failure.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PROCESSING", "FAILED", "SUCCESS"]
    #
    #   @return [String]
    #
    # @!attribute deployment_detail
    #   <p>Details about the last deployment status.</p>
    #
    #   @return [String]
    #
    ApiAssociation = ::Struct.new(
      :domain_name,
      :api_id,
      :association_status,
      :deployment_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>ApiCache</code> object.</p>
    #
    # @!attribute ttl
    #   <p>TTL in seconds for cache entries.</p>
    #            <p>Valid values are 1–3,600 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute api_caching_behavior
    #   <p>Caching behavior.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>FULL_REQUEST_CACHING</b>: All requests are fully
    #                  cached.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PER_RESOLVER_CACHING</b>: Individual resolvers
    #                  that you specify are cached.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING"]
    #
    #   @return [String]
    #
    # @!attribute transit_encryption_enabled
    #   <p>Transit encryption flag when connecting to cache. You cannot update this setting after
    #            creation.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute at_rest_encryption_enabled
    #   <p>At-rest encryption flag for cache. You cannot update this setting after creation.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute type
    #   <p>The cache instance type. Valid values are </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SMALL</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MEDIUM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XLARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_2X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_4X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_8X</code> (not available in all regions)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_12X</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>
    #            <p>The following legacy instance types are available, but their use is discouraged:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>T2_SMALL</b>: A t2.small instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>T2_MEDIUM</b>: A t2.medium instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_LARGE</b>: A r4.large instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The cache instance status.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>AVAILABLE</b>: The instance is available for
    #                  use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>CREATING</b>: The instance is currently
    #                  creating.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DELETING</b>: The instance is currently
    #                  deleting.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>MODIFYING</b>: The instance is currently
    #                  modifying.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FAILED</b>: The instance has failed
    #                  creation.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["AVAILABLE", "CREATING", "DELETING", "MODIFYING", "FAILED"]
    #
    #   @return [String]
    #
    ApiCache = ::Struct.new(
      :ttl,
      :api_caching_behavior,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled,
      :type,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.ttl ||= 0
        self.transit_encryption_enabled ||= false
        self.at_rest_encryption_enabled ||= false
      end
    end

    # Includes enum constants for ApiCacheStatus
    #
    module ApiCacheStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      MODIFYING = "MODIFYING"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for ApiCacheType
    #
    module ApiCacheType
      # No documentation available.
      #
      T2_SMALL = "T2_SMALL"

      # No documentation available.
      #
      T2_MEDIUM = "T2_MEDIUM"

      # No documentation available.
      #
      R4_LARGE = "R4_LARGE"

      # No documentation available.
      #
      R4_XLARGE = "R4_XLARGE"

      # No documentation available.
      #
      R4_2XLARGE = "R4_2XLARGE"

      # No documentation available.
      #
      R4_4XLARGE = "R4_4XLARGE"

      # No documentation available.
      #
      R4_8XLARGE = "R4_8XLARGE"

      # No documentation available.
      #
      SMALL = "SMALL"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      LARGE = "LARGE"

      # No documentation available.
      #
      XLARGE = "XLARGE"

      # No documentation available.
      #
      LARGE_2X = "LARGE_2X"

      # No documentation available.
      #
      LARGE_4X = "LARGE_4X"

      # No documentation available.
      #
      LARGE_8X = "LARGE_8X"

      # No documentation available.
      #
      LARGE_12X = "LARGE_12X"
    end

    # Includes enum constants for ApiCachingBehavior
    #
    module ApiCachingBehavior
      # No documentation available.
      #
      FULL_REQUEST_CACHING = "FULL_REQUEST_CACHING"

      # No documentation available.
      #
      PER_RESOLVER_CACHING = "PER_RESOLVER_CACHING"
    end

    # <p>Describes an API key.</p>
    #          <p>Customers invoke AppSync GraphQL API operations with API keys as an
    #          identity mechanism. There are two key versions:</p>
    #          <p>
    #             <b>da1</b>: We introduced this version at launch in November
    #          2017. These keys always expire after 7 days. Amazon DynamoDB TTL manages key
    #          expiration. These keys ceased to be valid after February 21, 2018, and they should no
    #          longer be used.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ListApiKeys</code> returns the expiration time in milliseconds.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreateApiKey</code> returns the expiration time in
    #                milliseconds.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UpdateApiKey</code> is not available for this key version.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DeleteApiKey</code> deletes the item from the table.</p>
    #             </li>
    #             <li>
    #                <p>Expiration is stored in DynamoDB as milliseconds. This results in a
    #                bug where keys are not automatically deleted because DynamoDB expects the
    #                TTL to be stored in seconds. As a one-time action, we deleted these keys from the
    #                table on February 21, 2018.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>da2</b>: We introduced this version in February 2018 when
    #             AppSync added support to extend key expiration.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ListApiKeys</code> returns the expiration time and deletion time in
    #                seconds.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreateApiKey</code> returns the expiration time and deletion time in
    #                seconds and accepts a user-provided expiration time in seconds.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UpdateApiKey</code> returns the expiration time and and deletion time in
    #                seconds and accepts a user-provided expiration time in seconds. Expired API keys are
    #                kept for 60 days after the expiration time. You can update the key expiration time as
    #                long as the key isn't deleted.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DeleteApiKey</code> deletes the item from the table.</p>
    #             </li>
    #             <li>
    #                <p>Expiration is stored in DynamoDB as seconds. After the expiration
    #                time, using the key to authenticate will fail. However, you can reinstate the key
    #                before deletion.</p>
    #             </li>
    #             <li>
    #                <p>Deletion is stored in DynamoDB as seconds. The key is deleted after
    #                deletion time.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute id
    #   <p>The API key ID.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the purpose of the API key.</p>
    #
    #   @return [String]
    #
    # @!attribute expires
    #   <p>The time after which the API key expires. The date is represented as seconds since the
    #            epoch, rounded down to the nearest hour.</p>
    #
    #   @return [Integer]
    #
    # @!attribute deletes
    #   <p>The time after which the API key is deleted. The date is represented as seconds since
    #            the epoch, rounded down to the nearest hour.</p>
    #
    #   @return [Integer]
    #
    ApiKey = ::Struct.new(
      :id,
      :description,
      :expires,
      :deletes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.expires ||= 0
        self.deletes ||= 0
      end
    end

    # <p>The API key exceeded a limit. Try your request again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ApiKeyLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The API key expiration must be set to a value between 1 and 365 days from creation (for
    #             <code>CreateApiKey</code>) or from update (for <code>UpdateApiKey</code>).</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ApiKeyValidityOutOfBoundsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The GraphQL API exceeded a limit. Try your request again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ApiLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #
    #   @return [String]
    #
    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    AssociateApiInput = ::Struct.new(
      :domain_name,
      :api_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_association
    #   <p>The <code>ApiAssociation</code> object.</p>
    #
    #   @return [ApiAssociation]
    #
    AssociateApiOutput = ::Struct.new(
      :api_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssociationStatus
    #
    module AssociationStatus
      # No documentation available.
      #
      Processing = "PROCESSING"

      # No documentation available.
      #
      Failed = "FAILED"

      # No documentation available.
      #
      Success = "SUCCESS"
    end

    # Includes enum constants for AuthenticationType
    #
    module AuthenticationType
      # No documentation available.
      #
      API_KEY = "API_KEY"

      # No documentation available.
      #
      AWS_IAM = "AWS_IAM"

      # No documentation available.
      #
      AMAZON_COGNITO_USER_POOLS = "AMAZON_COGNITO_USER_POOLS"

      # No documentation available.
      #
      OPENID_CONNECT = "OPENID_CONNECT"

      # No documentation available.
      #
      AWS_LAMBDA = "AWS_LAMBDA"
    end

    # <p>The authorization configuration in case the HTTP endpoint requires authorization.</p>
    #
    # @!attribute authorization_type
    #   <p>The authorization type that the HTTP endpoint requires.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>AWS_IAM</b>: The authorization type is Signature
    #                  Version 4 (SigV4).</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["AWS_IAM"]
    #
    #   @return [String]
    #
    # @!attribute aws_iam_config
    #   <p>The Identity and Access Management (IAM) settings.</p>
    #
    #   @return [AwsIamConfig]
    #
    AuthorizationConfig = ::Struct.new(
      :authorization_type,
      :aws_iam_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuthorizationType
    #
    module AuthorizationType
      # No documentation available.
      #
      AWS_IAM = "AWS_IAM"
    end

    # <p>The Identity and Access Management (IAM) configuration.</p>
    #
    # @!attribute signing_region
    #   <p>The signing Amazon Web Services Region for IAM authorization.</p>
    #
    #   @return [String]
    #
    # @!attribute signing_service_name
    #   <p>The signing service name for IAM authorization.</p>
    #
    #   @return [String]
    #
    AwsIamConfig = ::Struct.new(
      :signing_region,
      :signing_service_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request is not well formed. For example, a value is invalid or a required field is
    #          missing. Check the field values, and then try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The caching configuration for a resolver that has caching activated.</p>
    #
    # @!attribute ttl
    #   <p>The TTL in seconds for a resolver that has caching activated.</p>
    #            <p>Valid values are 1–3,600 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute caching_keys
    #   <p>The caching keys for a resolver that has caching activated.</p>
    #            <p>Valid values are entries from the <code>$context.arguments</code>,
    #               <code>$context.source</code>, and <code>$context.identity</code> maps.</p>
    #
    #   @return [Array<String>]
    #
    CachingConfig = ::Struct.new(
      :ttl,
      :caching_keys,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.ttl ||= 0
      end
    end

    # <p>Describes an Amazon Cognito user pool configuration.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region in which the user pool was created.</p>
    #
    #   @return [String]
    #
    # @!attribute app_id_client_regex
    #   <p>A regular expression for validating the incoming Amazon Cognito user pool app client
    #            ID.</p>
    #
    #   @return [String]
    #
    CognitoUserPoolConfig = ::Struct.new(
      :user_pool_id,
      :aws_region,
      :app_id_client_regex,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Another modification is in progress at this time and it must complete before you can
    #          make your change.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConflictDetectionType
    #
    module ConflictDetectionType
      # No documentation available.
      #
      VERSION = "VERSION"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for ConflictHandlerType
    #
    module ConflictHandlerType
      # No documentation available.
      #
      OPTIMISTIC_CONCURRENCY = "OPTIMISTIC_CONCURRENCY"

      # No documentation available.
      #
      LAMBDA = "LAMBDA"

      # No documentation available.
      #
      AUTOMERGE = "AUTOMERGE"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>Represents the input of a <code>CreateApiCache</code> operation.</p>
    #
    # @!attribute api_id
    #   <p>The GraphQL API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute ttl
    #   <p>TTL in seconds for cache entries.</p>
    #            <p>Valid values are 1–3,600 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute transit_encryption_enabled
    #   <p>Transit encryption flag when connecting to cache. You cannot update this setting after
    #            creation.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute at_rest_encryption_enabled
    #   <p>At-rest encryption flag for cache. You cannot update this setting after creation.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute api_caching_behavior
    #   <p>Caching behavior.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>FULL_REQUEST_CACHING</b>: All requests are fully
    #                  cached.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PER_RESOLVER_CACHING</b>: Individual resolvers
    #                  that you specify are cached.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The cache instance type. Valid values are </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SMALL</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MEDIUM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XLARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_2X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_4X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_8X</code> (not available in all regions)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_12X</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>
    #            <p>The following legacy instance types are available, but their use is discouraged:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>T2_SMALL</b>: A t2.small instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>T2_MEDIUM</b>: A t2.medium instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_LARGE</b>: A r4.large instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"]
    #
    #   @return [String]
    #
    CreateApiCacheInput = ::Struct.new(
      :api_id,
      :ttl,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled,
      :api_caching_behavior,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.ttl ||= 0
        self.transit_encryption_enabled ||= false
        self.at_rest_encryption_enabled ||= false
      end
    end

    # <p>Represents the output of a <code>CreateApiCache</code> operation.</p>
    #
    # @!attribute api_cache
    #   <p>The <code>ApiCache</code> object.</p>
    #
    #   @return [ApiCache]
    #
    CreateApiCacheOutput = ::Struct.new(
      :api_cache,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The ID for your GraphQL API.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the purpose of the API key.</p>
    #
    #   @return [String]
    #
    # @!attribute expires
    #   <p>From the creation time, the time after which the API key expires. The date is
    #            represented as seconds since the epoch, rounded down to the nearest hour. The default value
    #            for this parameter is 7 days from creation time. For more information, see .</p>
    #
    #   @return [Integer]
    #
    CreateApiKeyInput = ::Struct.new(
      :api_id,
      :description,
      :expires,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.expires ||= 0
      end
    end

    # @!attribute api_key
    #   <p>The API key.</p>
    #
    #   @return [ApiKey]
    #
    CreateApiKeyOutput = ::Struct.new(
      :api_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID for the GraphQL API for the <code>DataSource</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A user-supplied name for the <code>DataSource</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the <code>DataSource</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the <code>DataSource</code>.</p>
    #
    #   Enum, one of: ["AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE", "AMAZON_OPENSEARCH_SERVICE"]
    #
    #   @return [String]
    #
    # @!attribute service_role_arn
    #   <p>The Identity and Access Management (IAM) service role Amazon Resource Name (ARN)
    #            for the data source. The system assumes this role when accessing the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute dynamodb_config
    #   <p>Amazon DynamoDB settings.</p>
    #
    #   @return [DynamodbDataSourceConfig]
    #
    # @!attribute lambda_config
    #   <p>Lambda settings.</p>
    #
    #   @return [LambdaDataSourceConfig]
    #
    # @!attribute elasticsearch_config
    #   <p>Amazon OpenSearch Service settings.</p>
    #            <p>As of September 2021, Amazon Elasticsearch service is Amazon OpenSearch Service. This
    #            configuration is deprecated. For new data sources, use <a>CreateDataSourceRequest$openSearchServiceConfig</a> to create an OpenSearch data source.</p>
    #
    #   @return [ElasticsearchDataSourceConfig]
    #
    # @!attribute open_search_service_config
    #   <p>Amazon OpenSearch Service settings.</p>
    #
    #   @return [OpenSearchServiceDataSourceConfig]
    #
    # @!attribute http_config
    #   <p>HTTP endpoint settings.</p>
    #
    #   @return [HttpDataSourceConfig]
    #
    # @!attribute relational_database_config
    #   <p>Relational database settings.</p>
    #
    #   @return [RelationalDatabaseDataSourceConfig]
    #
    CreateDataSourceInput = ::Struct.new(
      :api_id,
      :name,
      :description,
      :type,
      :service_role_arn,
      :dynamodb_config,
      :lambda_config,
      :elasticsearch_config,
      :open_search_service_config,
      :http_config,
      :relational_database_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_source
    #   <p>The <code>DataSource</code> object.</p>
    #
    #   @return [DataSource]
    #
    CreateDataSourceOutput = ::Struct.new(
      :data_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate. This can be an Certificate Manager
    #               (ACM) certificate or an Identity and Access Management (IAM)
    #            server certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the <code>DomainName</code>.</p>
    #
    #   @return [String]
    #
    CreateDomainNameInput = ::Struct.new(
      :domain_name,
      :certificate_arn,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name_config
    #   <p>The configuration for the <code>DomainName</code>.</p>
    #
    #   @return [DomainNameConfig]
    #
    CreateDomainNameOutput = ::Struct.new(
      :domain_name_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The GraphQL API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The <code>Function</code> name. The function name does not have to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The <code>Function</code> description.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_name
    #   <p>The <code>Function</code>
    #               <code>DataSource</code> name.</p>
    #
    #   @return [String]
    #
    # @!attribute request_mapping_template
    #   <p>The <code>Function</code> request mapping template. Functions support only the
    #            2018-05-29 version of the request mapping template.</p>
    #
    #   @return [String]
    #
    # @!attribute response_mapping_template
    #   <p>The <code>Function</code> response mapping template.</p>
    #
    #   @return [String]
    #
    # @!attribute function_version
    #   <p>The <code>version</code> of the request mapping template. Currently, the supported value
    #            is 2018-05-29.</p>
    #
    #   @return [String]
    #
    # @!attribute sync_config
    #   <p>Describes a Sync configuration for a resolver.</p>
    #            <p>Specifies which Conflict Detection strategy and Resolution strategy to use when the
    #            resolver is invoked.</p>
    #
    #   @return [SyncConfig]
    #
    # @!attribute max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #
    #   @return [Integer]
    #
    CreateFunctionInput = ::Struct.new(
      :api_id,
      :name,
      :description,
      :data_source_name,
      :request_mapping_template,
      :response_mapping_template,
      :function_version,
      :sync_config,
      :max_batch_size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_batch_size ||= 0
      end
    end

    # @!attribute function_configuration
    #   <p>The <code>Function</code> object.</p>
    #
    #   @return [FunctionConfiguration]
    #
    CreateFunctionOutput = ::Struct.new(
      :function_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A user-supplied name for the <code>GraphqlApi</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute log_config
    #   <p>The Amazon CloudWatch Logs configuration.</p>
    #
    #   @return [LogConfig]
    #
    # @!attribute authentication_type
    #   <p>The authentication type: API key, Identity and Access Management (IAM), OpenID
    #            Connect (OIDC), Amazon Cognito user pools, or Lambda.</p>
    #
    #   Enum, one of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute user_pool_config
    #   <p>The Amazon Cognito user pool configuration.</p>
    #
    #   @return [UserPoolConfig]
    #
    # @!attribute open_id_connect_config
    #   <p>The OIDC configuration.</p>
    #
    #   @return [OpenIDConnectConfig]
    #
    # @!attribute tags
    #   <p>A <code>TagMap</code> object.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute additional_authentication_providers
    #   <p>A list of additional authentication providers for the <code>GraphqlApi</code>
    #            API.</p>
    #
    #   @return [Array<AdditionalAuthenticationProvider>]
    #
    # @!attribute xray_enabled
    #   <p>A flag indicating whether to use X-Ray tracing for the
    #               <code>GraphqlApi</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute lambda_authorizer_config
    #   <p>Configuration for Lambda function authorization.</p>
    #
    #   @return [LambdaAuthorizerConfig]
    #
    CreateGraphqlApiInput = ::Struct.new(
      :name,
      :log_config,
      :authentication_type,
      :user_pool_config,
      :open_id_connect_config,
      :tags,
      :additional_authentication_providers,
      :xray_enabled,
      :lambda_authorizer_config,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.xray_enabled ||= false
      end
    end

    # @!attribute graphql_api
    #   <p>The <code>GraphqlApi</code>.</p>
    #
    #   @return [GraphqlApi]
    #
    CreateGraphqlApiOutput = ::Struct.new(
      :graphql_api,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The ID for the GraphQL API for which the resolver is being created.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the <code>Type</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute field_name
    #   <p>The name of the field to attach the resolver to.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_name
    #   <p>The name of the data source for which the resolver is being created.</p>
    #
    #   @return [String]
    #
    # @!attribute request_mapping_template
    #   <p>The mapping template to use for requests.</p>
    #            <p>A resolver uses a request mapping template to convert a GraphQL expression into a format
    #            that a data source can understand. Mapping templates are written in Apache Velocity
    #            Template Language (VTL).</p>
    #            <p>VTL request mapping templates are optional when using an Lambda data
    #            source. For all other data sources, VTL request and response mapping templates are
    #            required.</p>
    #
    #   @return [String]
    #
    # @!attribute response_mapping_template
    #   <p>The mapping template to use for responses from the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute kind
    #   <p>The resolver type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is
    #                  the default resolver type. You can use a UNIT resolver to run a GraphQL query against
    #                  a single data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PIPELINE</b>: A PIPELINE resolver type. You can
    #                  use a PIPELINE resolver to invoke a series of <code>Function</code> objects in a
    #                  serial manner. You can use a pipeline resolver to run a GraphQL query against
    #                  multiple data sources.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["UNIT", "PIPELINE"]
    #
    #   @return [String]
    #
    # @!attribute pipeline_config
    #   <p>The <code>PipelineConfig</code>.</p>
    #
    #   @return [PipelineConfig]
    #
    # @!attribute sync_config
    #   <p>The <code>SyncConfig</code> for a resolver attached to a versioned data source.</p>
    #
    #   @return [SyncConfig]
    #
    # @!attribute caching_config
    #   <p>The caching configuration for the resolver.</p>
    #
    #   @return [CachingConfig]
    #
    # @!attribute max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #
    #   @return [Integer]
    #
    CreateResolverInput = ::Struct.new(
      :api_id,
      :type_name,
      :field_name,
      :data_source_name,
      :request_mapping_template,
      :response_mapping_template,
      :kind,
      :pipeline_config,
      :sync_config,
      :caching_config,
      :max_batch_size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_batch_size ||= 0
      end
    end

    # @!attribute resolver
    #   <p>The <code>Resolver</code> object.</p>
    #
    #   @return [Resolver]
    #
    CreateResolverOutput = ::Struct.new(
      :resolver,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>The type definition, in GraphQL Schema Definition Language (SDL) format.</p>
    #            <p>For more information, see the <a href="http://graphql.org/learn/schema/">GraphQL SDL
    #               documentation</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The type format: SDL or JSON.</p>
    #
    #   Enum, one of: ["SDL", "JSON"]
    #
    #   @return [String]
    #
    CreateTypeInput = ::Struct.new(
      :api_id,
      :definition,
      :format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type
    #   <p>The <code>Type</code> object.</p>
    #
    #   @return [Type]
    #
    CreateTypeOutput = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a data source.</p>
    #
    # @!attribute data_source_arn
    #   <p>The data source Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the data source.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>AWS_LAMBDA</b>: The data source is an Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AMAZON_DYNAMODB</b>: The data source is an Amazon DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AMAZON_ELASTICSEARCH</b>: The data source is an
    #                     Amazon OpenSearch Service domain.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AMAZON_OPENSEARCH_SERVICE</b>: The data source is
    #                  an Amazon OpenSearch Service domain.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>NONE</b>: There is no data source. Use this type
    #                  when you want to invoke a GraphQL operation without connecting to a data source, such
    #                  as when you're performing data transformation with resolvers or invoking a
    #                  subscription from a mutation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>HTTP</b>: The data source is an HTTP
    #                  endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>RELATIONAL_DATABASE</b>: The data source is a
    #                  relational database.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE", "AMAZON_OPENSEARCH_SERVICE"]
    #
    #   @return [String]
    #
    # @!attribute service_role_arn
    #   <p>The Identity and Access Management (IAM) service role Amazon Resource Name (ARN)
    #            for the data source. The system assumes this role when accessing the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute dynamodb_config
    #   <p>DynamoDB settings.</p>
    #
    #   @return [DynamodbDataSourceConfig]
    #
    # @!attribute lambda_config
    #   <p>Lambda settings.</p>
    #
    #   @return [LambdaDataSourceConfig]
    #
    # @!attribute elasticsearch_config
    #   <p>Amazon OpenSearch Service settings.</p>
    #
    #   @return [ElasticsearchDataSourceConfig]
    #
    # @!attribute open_search_service_config
    #   <p>Amazon OpenSearch Service settings.</p>
    #
    #   @return [OpenSearchServiceDataSourceConfig]
    #
    # @!attribute http_config
    #   <p>HTTP endpoint settings.</p>
    #
    #   @return [HttpDataSourceConfig]
    #
    # @!attribute relational_database_config
    #   <p>Relational database settings.</p>
    #
    #   @return [RelationalDatabaseDataSourceConfig]
    #
    DataSource = ::Struct.new(
      :data_source_arn,
      :name,
      :description,
      :type,
      :service_role_arn,
      :dynamodb_config,
      :lambda_config,
      :elasticsearch_config,
      :open_search_service_config,
      :http_config,
      :relational_database_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataSourceType
    #
    module DataSourceType
      # No documentation available.
      #
      AWS_LAMBDA = "AWS_LAMBDA"

      # No documentation available.
      #
      AMAZON_DYNAMODB = "AMAZON_DYNAMODB"

      # No documentation available.
      #
      AMAZON_ELASTICSEARCH = "AMAZON_ELASTICSEARCH"

      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      HTTP = "HTTP"

      # No documentation available.
      #
      RELATIONAL_DATABASE = "RELATIONAL_DATABASE"

      # No documentation available.
      #
      AMAZON_OPENSEARCH_SERVICE = "AMAZON_OPENSEARCH_SERVICE"
    end

    # Includes enum constants for DefaultAction
    #
    module DefaultAction
      # No documentation available.
      #
      ALLOW = "ALLOW"

      # No documentation available.
      #
      DENY = "DENY"
    end

    # <p>Represents the input of a <code>DeleteApiCache</code> operation.</p>
    #
    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    DeleteApiCacheInput = ::Struct.new(
      :api_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>DeleteApiCache</code> operation.</p>
    #
    DeleteApiCacheOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID for the API key.</p>
    #
    #   @return [String]
    #
    DeleteApiKeyInput = ::Struct.new(
      :api_id,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteApiKeyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    DeleteDataSourceInput = ::Struct.new(
      :api_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDataSourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #
    #   @return [String]
    #
    DeleteDomainNameInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDomainNameOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The GraphQL API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute function_id
    #   <p>The <code>Function</code> ID.</p>
    #
    #   @return [String]
    #
    DeleteFunctionInput = ::Struct.new(
      :api_id,
      :function_id,
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

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    DeleteGraphqlApiInput = ::Struct.new(
      :api_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteGraphqlApiOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the resolver type.</p>
    #
    #   @return [String]
    #
    # @!attribute field_name
    #   <p>The resolver field name.</p>
    #
    #   @return [String]
    #
    DeleteResolverInput = ::Struct.new(
      :api_id,
      :type_name,
      :field_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResolverOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The type name.</p>
    #
    #   @return [String]
    #
    DeleteTypeInput = ::Struct.new(
      :api_id,
      :type_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTypeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a Delta Sync configuration.</p>
    #
    # @!attribute base_table_ttl
    #   <p>The number of minutes that an Item is stored in the data source.</p>
    #
    #   @return [Integer]
    #
    # @!attribute delta_sync_table_name
    #   <p>The Delta Sync table name.</p>
    #
    #   @return [String]
    #
    # @!attribute delta_sync_table_ttl
    #   <p>The number of minutes that a Delta Sync log entry is stored in the Delta Sync
    #            table.</p>
    #
    #   @return [Integer]
    #
    DeltaSyncConfig = ::Struct.new(
      :base_table_ttl,
      :delta_sync_table_name,
      :delta_sync_table_ttl,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.base_table_ttl ||= 0
        self.delta_sync_table_ttl ||= 0
      end
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #
    #   @return [String]
    #
    DisassociateApiInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateApiOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a configuration for a custom domain.</p>
    #
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the <code>DomainName</code> configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate. This can be an Certificate Manager
    #               (ACM) certificate or an Identity and Access Management (IAM)
    #            server certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute appsync_domain_name
    #   <p>The domain name that AppSync provides.</p>
    #
    #   @return [String]
    #
    # @!attribute hosted_zone_id
    #   <p>The ID of your Amazon Route 53 hosted zone.</p>
    #
    #   @return [String]
    #
    DomainNameConfig = ::Struct.new(
      :domain_name,
      :description,
      :certificate_arn,
      :appsync_domain_name,
      :hosted_zone_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an Amazon DynamoDB data source configuration.</p>
    #
    # @!attribute table_name
    #   <p>The table name.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute use_caller_credentials
    #   <p>Set to TRUE to use Amazon Cognito credentials with this data source.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute delta_sync_config
    #   <p>The <code>DeltaSyncConfig</code> for a versioned data source.</p>
    #
    #   @return [DeltaSyncConfig]
    #
    # @!attribute versioned
    #   <p>Set to TRUE to use Conflict Detection and Resolution with this data source.</p>
    #
    #   @return [Boolean]
    #
    DynamodbDataSourceConfig = ::Struct.new(
      :table_name,
      :aws_region,
      :use_caller_credentials,
      :delta_sync_config,
      :versioned,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.use_caller_credentials ||= false
        self.versioned ||= false
      end
    end

    # <p>Describes an OpenSearch data source configuration.</p>
    #          <p>As of September 2021, Amazon Elasticsearch service is Amazon OpenSearch Service. This
    #          configuration is deprecated. For new data sources, use <a>OpenSearchServiceDataSourceConfig</a> to specify an OpenSearch data
    #          source.</p>
    #
    # @!attribute endpoint
    #   <p>The endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    ElasticsearchDataSourceConfig = ::Struct.new(
      :endpoint,
      :aws_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FieldLogLevel
    #
    module FieldLogLevel
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # <p>Represents the input of a <code>FlushApiCache</code> operation.</p>
    #
    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    FlushApiCacheInput = ::Struct.new(
      :api_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>FlushApiCache</code> operation.</p>
    #
    FlushApiCacheOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A function is a reusable entity. You can use multiple functions to compose the resolver
    #          logic.</p>
    #
    # @!attribute function_id
    #   <p>A unique ID representing the <code>Function</code> object.</p>
    #
    #   @return [String]
    #
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>Function</code> object.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>Function</code> object.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The <code>Function</code> description.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_name
    #   <p>The name of the <code>DataSource</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute request_mapping_template
    #   <p>The <code>Function</code> request mapping template. Functions support only the
    #            2018-05-29 version of the request mapping template.</p>
    #
    #   @return [String]
    #
    # @!attribute response_mapping_template
    #   <p>The <code>Function</code> response mapping template.</p>
    #
    #   @return [String]
    #
    # @!attribute function_version
    #   <p>The version of the request mapping template. Currently, only the 2018-05-29 version of
    #            the template is supported.</p>
    #
    #   @return [String]
    #
    # @!attribute sync_config
    #   <p>Describes a Sync configuration for a resolver.</p>
    #            <p>Specifies which Conflict Detection strategy and Resolution strategy to use when the
    #            resolver is invoked.</p>
    #
    #   @return [SyncConfig]
    #
    # @!attribute max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #
    #   @return [Integer]
    #
    FunctionConfiguration = ::Struct.new(
      :function_id,
      :function_arn,
      :name,
      :description,
      :data_source_name,
      :request_mapping_template,
      :response_mapping_template,
      :function_version,
      :sync_config,
      :max_batch_size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_batch_size ||= 0
      end
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #
    #   @return [String]
    #
    GetApiAssociationInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_association
    #   <p>The <code>ApiAssociation</code> object.</p>
    #
    #   @return [ApiAssociation]
    #
    GetApiAssociationOutput = ::Struct.new(
      :api_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>GetApiCache</code> operation.</p>
    #
    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    GetApiCacheInput = ::Struct.new(
      :api_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>GetApiCache</code> operation.</p>
    #
    # @!attribute api_cache
    #   <p>The <code>ApiCache</code> object.</p>
    #
    #   @return [ApiCache]
    #
    GetApiCacheOutput = ::Struct.new(
      :api_cache,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    GetDataSourceInput = ::Struct.new(
      :api_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_source
    #   <p>The <code>DataSource</code> object.</p>
    #
    #   @return [DataSource]
    #
    GetDataSourceOutput = ::Struct.new(
      :data_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #
    #   @return [String]
    #
    GetDomainNameInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name_config
    #   <p>The configuration for the <code>DomainName</code>.</p>
    #
    #   @return [DomainNameConfig]
    #
    GetDomainNameOutput = ::Struct.new(
      :domain_name_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The GraphQL API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute function_id
    #   <p>The <code>Function</code> ID.</p>
    #
    #   @return [String]
    #
    GetFunctionInput = ::Struct.new(
      :api_id,
      :function_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute function_configuration
    #   <p>The <code>Function</code> object.</p>
    #
    #   @return [FunctionConfiguration]
    #
    GetFunctionOutput = ::Struct.new(
      :function_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID for the GraphQL API.</p>
    #
    #   @return [String]
    #
    GetGraphqlApiInput = ::Struct.new(
      :api_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute graphql_api
    #   <p>The <code>GraphqlApi</code> object.</p>
    #
    #   @return [GraphqlApi]
    #
    GetGraphqlApiOutput = ::Struct.new(
      :graphql_api,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The schema format: SDL or JSON.</p>
    #
    #   Enum, one of: ["SDL", "JSON"]
    #
    #   @return [String]
    #
    # @!attribute include_directives
    #   <p>A flag that specifies whether the schema introspection should contain directives.</p>
    #
    #   @return [Boolean]
    #
    GetIntrospectionSchemaInput = ::Struct.new(
      :api_id,
      :format,
      :include_directives,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema
    #   <p>The schema, in GraphQL Schema Definition Language (SDL) format.</p>
    #            <p>For more information, see the <a href="http://graphql.org/learn/schema/">GraphQL SDL
    #               documentation</a>.</p>
    #
    #   @return [String]
    #
    GetIntrospectionSchemaOutput = ::Struct.new(
      :schema,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The resolver type name.</p>
    #
    #   @return [String]
    #
    # @!attribute field_name
    #   <p>The resolver field name.</p>
    #
    #   @return [String]
    #
    GetResolverInput = ::Struct.new(
      :api_id,
      :type_name,
      :field_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolver
    #   <p>The <code>Resolver</code> object.</p>
    #
    #   @return [Resolver]
    #
    GetResolverOutput = ::Struct.new(
      :resolver,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    GetSchemaCreationStatusInput = ::Struct.new(
      :api_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The current state of the schema (PROCESSING, FAILED, SUCCESS, or NOT_APPLICABLE). When
    #            the schema is in the ACTIVE state, you can add data.</p>
    #
    #   Enum, one of: ["PROCESSING", "ACTIVE", "DELETING", "FAILED", "SUCCESS", "NOT_APPLICABLE"]
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>Detailed information about the status of the schema creation operation.</p>
    #
    #   @return [String]
    #
    GetSchemaCreationStatusOutput = ::Struct.new(
      :status,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The type name.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The type format: SDL or JSON.</p>
    #
    #   Enum, one of: ["SDL", "JSON"]
    #
    #   @return [String]
    #
    GetTypeInput = ::Struct.new(
      :api_id,
      :type_name,
      :format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type
    #   <p>The <code>Type</code> object.</p>
    #
    #   @return [Type]
    #
    GetTypeOutput = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The GraphQL schema is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    GraphQLSchemaException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a GraphQL API.</p>
    #
    # @!attribute name
    #   <p>The API name.</p>
    #
    #   @return [String]
    #
    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_type
    #   <p>The authentication type.</p>
    #
    #   Enum, one of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute log_config
    #   <p>The Amazon CloudWatch Logs configuration.</p>
    #
    #   @return [LogConfig]
    #
    # @!attribute user_pool_config
    #   <p>The Amazon Cognito user pool configuration.</p>
    #
    #   @return [UserPoolConfig]
    #
    # @!attribute open_id_connect_config
    #   <p>The OpenID Connect configuration.</p>
    #
    #   @return [OpenIDConnectConfig]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute uris
    #   <p>The URIs.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>The tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute additional_authentication_providers
    #   <p>A list of additional authentication providers for the <code>GraphqlApi</code>
    #            API.</p>
    #
    #   @return [Array<AdditionalAuthenticationProvider>]
    #
    # @!attribute xray_enabled
    #   <p>A flag indicating whether to use X-Ray tracing for this
    #               <code>GraphqlApi</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute waf_web_acl_arn
    #   <p>The ARN of the WAF access control list (ACL) associated with this
    #               <code>GraphqlApi</code>, if one exists.</p>
    #
    #   @return [String]
    #
    # @!attribute lambda_authorizer_config
    #   <p>Configuration for Lambda function authorization.</p>
    #
    #   @return [LambdaAuthorizerConfig]
    #
    GraphqlApi = ::Struct.new(
      :name,
      :api_id,
      :authentication_type,
      :log_config,
      :user_pool_config,
      :open_id_connect_config,
      :arn,
      :uris,
      :tags,
      :additional_authentication_providers,
      :xray_enabled,
      :waf_web_acl_arn,
      :lambda_authorizer_config,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.xray_enabled ||= false
      end
    end

    # <p>Describes an HTTP data source configuration.</p>
    #
    # @!attribute endpoint
    #   <p>The HTTP URL endpoint. You can specify either the domain name or IP, and port
    #            combination, and the URL scheme must be HTTP or HTTPS. If you don't specify the port,
    #               AppSync uses the default port 80 for the HTTP endpoint and port 443 for
    #            HTTPS endpoints.</p>
    #
    #   @return [String]
    #
    # @!attribute authorization_config
    #   <p>The authorization configuration in case the HTTP endpoint requires authorization.</p>
    #
    #   @return [AuthorizationConfig]
    #
    HttpDataSourceConfig = ::Struct.new(
      :endpoint,
      :authorization_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal AppSync error occurred. Try your request again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalFailureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A <code>LambdaAuthorizerConfig</code> specifies how to authorize AppSync
    #          API access when using the <code>AWS_LAMBDA</code> authorizer mode. Be aware that an AppSync API can have only one Lambda authorizer configured at a
    #          time.</p>
    #
    # @!attribute authorizer_result_ttl_in_seconds
    #   <p>The number of seconds a response should be cached for. The default is 5 minutes (300
    #            seconds). The Lambda function can override this by returning a
    #               <code>ttlOverride</code> key in its response. A value of 0 disables caching of
    #            responses.</p>
    #
    #   @return [Integer]
    #
    # @!attribute authorizer_uri
    #   <p>The Amazon Resource Name (ARN) of the Lambda function to be called for
    #            authorization. This can be a standard Lambda ARN, a version ARN
    #               (<code>.../v3</code>), or an alias ARN. </p>
    #            <p>
    #               <b>Note</b>: This Lambda function must have the
    #            following resource-based policy assigned to it. When configuring Lambda
    #            authorizers in the console, this is done for you. To use the Command Line Interface
    #               (CLI), run the following:</p>
    #            <p>
    #               <code>aws lambda add-permission --function-name
    #               "arn:aws:lambda:us-east-2:111122223333:function:my-function" --statement-id "appsync"
    #               --principal appsync.amazonaws.com --action lambda:InvokeFunction</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute identity_validation_expression
    #   <p>A regular expression for validation of tokens before the Lambda function is
    #            called.</p>
    #
    #   @return [String]
    #
    LambdaAuthorizerConfig = ::Struct.new(
      :authorizer_result_ttl_in_seconds,
      :authorizer_uri,
      :identity_validation_expression,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.authorizer_result_ttl_in_seconds ||= 0
      end
    end

    # <p>The <code>LambdaConflictHandlerConfig</code> object when configuring <code>LAMBDA</code>
    #          as the Conflict Handler.</p>
    #
    # @!attribute lambda_conflict_handler_arn
    #   <p>The Amazon Resource Name (ARN) for the Lambda function to use as the
    #            Conflict Handler.</p>
    #
    #   @return [String]
    #
    LambdaConflictHandlerConfig = ::Struct.new(
      :lambda_conflict_handler_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an Lambda data source configuration.</p>
    #
    # @!attribute lambda_function_arn
    #   <p>The Amazon Resource Name (ARN) for the Lambda function.</p>
    #
    #   @return [String]
    #
    LambdaDataSourceConfig = ::Struct.new(
      :lambda_function_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request exceeded a limit. Try your request again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    #   @return [Integer]
    #
    ListApiKeysInput = ::Struct.new(
      :api_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute api_keys
    #   <p>The <code>ApiKey</code> objects.</p>
    #
    #   @return [Array<ApiKey>]
    #
    # @!attribute next_token
    #   <p>An identifier to pass in the next request to this operation to return the next set of
    #            items in the list.</p>
    #
    #   @return [String]
    #
    ListApiKeysOutput = ::Struct.new(
      :api_keys,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    #   @return [Integer]
    #
    ListDataSourcesInput = ::Struct.new(
      :api_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute data_sources
    #   <p>The <code>DataSource</code> objects.</p>
    #
    #   @return [Array<DataSource>]
    #
    # @!attribute next_token
    #   <p>An identifier to pass in the next request to this operation to return the next set of
    #            items in the list.</p>
    #
    #   @return [String]
    #
    ListDataSourcesOutput = ::Struct.new(
      :data_sources,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The API token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    #   @return [Integer]
    #
    ListDomainNamesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute domain_name_configs
    #   <p>Lists configurations for multiple domain names.</p>
    #
    #   @return [Array<DomainNameConfig>]
    #
    # @!attribute next_token
    #   <p>The API token.</p>
    #
    #   @return [String]
    #
    ListDomainNamesOutput = ::Struct.new(
      :domain_name_configs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The GraphQL API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    #   @return [Integer]
    #
    ListFunctionsInput = ::Struct.new(
      :api_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute functions
    #   <p>A list of <code>Function</code> objects.</p>
    #
    #   @return [Array<FunctionConfiguration>]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    ListFunctionsOutput = ::Struct.new(
      :functions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    #   @return [Integer]
    #
    ListGraphqlApisInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute graphql_apis
    #   <p>The <code>GraphqlApi</code> objects.</p>
    #
    #   @return [Array<GraphqlApi>]
    #
    # @!attribute next_token
    #   <p>An identifier to pass in the next request to this operation to return the next set of
    #            items in the list.</p>
    #
    #   @return [String]
    #
    ListGraphqlApisOutput = ::Struct.new(
      :graphql_apis,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute function_id
    #   <p>The function ID.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    #   @return [Integer]
    #
    ListResolversByFunctionInput = ::Struct.new(
      :api_id,
      :function_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute resolvers
    #   <p>The list of resolvers.</p>
    #
    #   @return [Array<Resolver>]
    #
    # @!attribute next_token
    #   <p>An identifier that you can use to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    ListResolversByFunctionOutput = ::Struct.new(
      :resolvers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The type name.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    #   @return [Integer]
    #
    ListResolversInput = ::Struct.new(
      :api_id,
      :type_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute resolvers
    #   <p>The <code>Resolver</code> objects.</p>
    #
    #   @return [Array<Resolver>]
    #
    # @!attribute next_token
    #   <p>An identifier to pass in the next request to this operation to return the next set of
    #            items in the list.</p>
    #
    #   @return [String]
    #
    ListResolversOutput = ::Struct.new(
      :resolvers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The <code>GraphqlApi</code> Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>A <code>TagMap</code> object.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The type format: SDL or JSON.</p>
    #
    #   Enum, one of: ["SDL", "JSON"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    #   @return [Integer]
    #
    ListTypesInput = ::Struct.new(
      :api_id,
      :format,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute types
    #   <p>The <code>Type</code> objects.</p>
    #
    #   @return [Array<Type>]
    #
    # @!attribute next_token
    #   <p>An identifier to pass in the next request to this operation to return the next set of
    #            items in the list.</p>
    #
    #   @return [String]
    #
    ListTypesOutput = ::Struct.new(
      :types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon CloudWatch Logs configuration.</p>
    #
    # @!attribute field_log_level
    #   <p>The field logging level. Values can be NONE, ERROR, or ALL.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>NONE</b>: No field-level logs are
    #                  captured.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ERROR</b>: Logs the following information only for
    #                  the fields that are in error:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The error section in the server response.</p>
    #                     </li>
    #                     <li>
    #                        <p>Field-level errors.</p>
    #                     </li>
    #                     <li>
    #                        <p>The generated request/response functions that got resolved for error
    #                        fields.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ALL</b>: The following information is logged for
    #                  all fields in the query:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Field-level tracing information.</p>
    #                     </li>
    #                     <li>
    #                        <p>The generated request/response functions that got resolved for each
    #                        field.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NONE", "ERROR", "ALL"]
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_logs_role_arn
    #   <p>The service role that AppSync assumes to publish to CloudWatch
    #            logs in your account.</p>
    #
    #   @return [String]
    #
    # @!attribute exclude_verbose_content
    #   <p>Set to TRUE to exclude sections that contain information such as headers, context, and
    #            evaluated mapping templates, regardless of logging level.</p>
    #
    #   @return [Boolean]
    #
    LogConfig = ::Struct.new(
      :field_log_level,
      :cloud_watch_logs_role_arn,
      :exclude_verbose_content,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.exclude_verbose_content ||= false
      end
    end

    # <p>The resource specified in the request was not found. Check the resource, and then try
    #          again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an OpenID Connect (OIDC) configuration.</p>
    #
    # @!attribute issuer
    #   <p>The issuer for the OIDC configuration. The issuer returned by discovery must exactly
    #            match the value of <code>iss</code> in the ID token.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The client identifier of the relying party at the OpenID identity provider. This
    #            identifier is typically obtained when the relying party is registered with the OpenID
    #            identity provider. You can specify a regular expression so that AppSync can
    #            validate against multiple client identifiers at a time.</p>
    #
    #   @return [String]
    #
    # @!attribute iat_ttl
    #   <p>The number of milliseconds that a token is valid after it's issued to a user.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auth_ttl
    #   <p>The number of milliseconds that a token is valid after being authenticated.</p>
    #
    #   @return [Integer]
    #
    OpenIDConnectConfig = ::Struct.new(
      :issuer,
      :client_id,
      :iat_ttl,
      :auth_ttl,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.iat_ttl ||= 0
        self.auth_ttl ||= 0
      end
    end

    # <p>Describes an OpenSearch data source configuration.</p>
    #
    # @!attribute endpoint
    #   <p>The endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    OpenSearchServiceDataSourceConfig = ::Struct.new(
      :endpoint,
      :aws_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OutputType
    #
    module OutputType
      # No documentation available.
      #
      SDL = "SDL"

      # No documentation available.
      #
      JSON = "JSON"
    end

    # <p>The pipeline configuration for a resolver of kind <code>PIPELINE</code>.</p>
    #
    # @!attribute functions
    #   <p>A list of <code>Function</code> objects.</p>
    #
    #   @return [Array<String>]
    #
    PipelineConfig = ::Struct.new(
      :functions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Relational Database Service (Amazon RDS) HTTP endpoint configuration.</p>
    #
    # @!attribute aws_region
    #   <p>Amazon Web Services Region for Amazon RDS HTTP endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>Amazon RDS cluster Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>Logical database name.</p>
    #
    #   @return [String]
    #
    # @!attribute schema
    #   <p>Logical schema name.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_secret_store_arn
    #   <p>Amazon Web Services secret store Amazon Resource Name (ARN) for database
    #            credentials.</p>
    #
    #   @return [String]
    #
    RdsHttpEndpointConfig = ::Struct.new(
      :aws_region,
      :db_cluster_identifier,
      :database_name,
      :schema,
      :aws_secret_store_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a relational database data source configuration.</p>
    #
    # @!attribute relational_database_source_type
    #   <p>Source type for the relational database.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>RDS_HTTP_ENDPOINT</b>: The relational database
    #                  source type is an Amazon Relational Database Service (Amazon RDS) HTTP
    #                  endpoint.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["RDS_HTTP_ENDPOINT"]
    #
    #   @return [String]
    #
    # @!attribute rds_http_endpoint_config
    #   <p>Amazon RDS HTTP endpoint settings.</p>
    #
    #   @return [RdsHttpEndpointConfig]
    #
    RelationalDatabaseDataSourceConfig = ::Struct.new(
      :relational_database_source_type,
      :rds_http_endpoint_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RelationalDatabaseSourceType
    #
    module RelationalDatabaseSourceType
      # No documentation available.
      #
      RDS_HTTP_ENDPOINT = "RDS_HTTP_ENDPOINT"
    end

    # <p>Describes a resolver.</p>
    #
    # @!attribute type_name
    #   <p>The resolver type name.</p>
    #
    #   @return [String]
    #
    # @!attribute field_name
    #   <p>The resolver field name.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_name
    #   <p>The resolver data source name.</p>
    #
    #   @return [String]
    #
    # @!attribute resolver_arn
    #   <p>The resolver Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute request_mapping_template
    #   <p>The request mapping template.</p>
    #
    #   @return [String]
    #
    # @!attribute response_mapping_template
    #   <p>The response mapping template.</p>
    #
    #   @return [String]
    #
    # @!attribute kind
    #   <p>The resolver type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is
    #                  the default resolver type. You can use a UNIT resolver to run a GraphQL query against
    #                  a single data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PIPELINE</b>: A PIPELINE resolver type. You can
    #                  use a PIPELINE resolver to invoke a series of <code>Function</code> objects in a
    #                  serial manner. You can use a pipeline resolver to run a GraphQL query against
    #                  multiple data sources.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["UNIT", "PIPELINE"]
    #
    #   @return [String]
    #
    # @!attribute pipeline_config
    #   <p>The <code>PipelineConfig</code>.</p>
    #
    #   @return [PipelineConfig]
    #
    # @!attribute sync_config
    #   <p>The <code>SyncConfig</code> for a resolver attached to a versioned data source.</p>
    #
    #   @return [SyncConfig]
    #
    # @!attribute caching_config
    #   <p>The caching configuration for the resolver.</p>
    #
    #   @return [CachingConfig]
    #
    # @!attribute max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #
    #   @return [Integer]
    #
    Resolver = ::Struct.new(
      :type_name,
      :field_name,
      :data_source_name,
      :resolver_arn,
      :request_mapping_template,
      :response_mapping_template,
      :kind,
      :pipeline_config,
      :sync_config,
      :caching_config,
      :max_batch_size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_batch_size ||= 0
      end
    end

    # Includes enum constants for ResolverKind
    #
    module ResolverKind
      # No documentation available.
      #
      UNIT = "UNIT"

      # No documentation available.
      #
      PIPELINE = "PIPELINE"
    end

    # Includes enum constants for SchemaStatus
    #
    module SchemaStatus
      # No documentation available.
      #
      Processing = "PROCESSING"

      # No documentation available.
      #
      Active = "ACTIVE"

      # No documentation available.
      #
      Deleting = "DELETING"

      # No documentation available.
      #
      Failed = "FAILED"

      # No documentation available.
      #
      Success = "SUCCESS"

      # No documentation available.
      #
      NotApplicable = "NOT_APPLICABLE"
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>The schema definition, in GraphQL schema language format.</p>
    #
    #   @return [String]
    #
    StartSchemaCreationInput = ::Struct.new(
      :api_id,
      :definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The current state of the schema (PROCESSING, FAILED, SUCCESS, or NOT_APPLICABLE). When
    #            the schema is in the ACTIVE state, you can add data.</p>
    #
    #   Enum, one of: ["PROCESSING", "ACTIVE", "DELETING", "FAILED", "SUCCESS", "NOT_APPLICABLE"]
    #
    #   @return [String]
    #
    StartSchemaCreationOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a Sync configuration for a resolver.</p>
    #          <p>Specifies which Conflict Detection strategy and Resolution strategy to use when the
    #          resolver is invoked.</p>
    #
    # @!attribute conflict_handler
    #   <p>The Conflict Resolution strategy to perform in the event of a conflict.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>OPTIMISTIC_CONCURRENCY</b>: Resolve conflicts by
    #                  rejecting mutations when versions don't match the latest version at the
    #                  server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AUTOMERGE</b>: Resolve conflicts with the
    #                  Automerge conflict resolution strategy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>LAMBDA</b>: Resolve conflicts with an Lambda function supplied in the
    #                  <code>LambdaConflictHandlerConfig</code>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute conflict_detection
    #   <p>The Conflict Detection strategy to use.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>VERSION</b>: Detect conflicts based on object
    #                  versions for this resolver.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>NONE</b>: Do not detect conflicts when invoking
    #                  this resolver.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["VERSION", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute lambda_conflict_handler_config
    #   <p>The <code>LambdaConflictHandlerConfig</code> when configuring <code>LAMBDA</code> as the
    #            Conflict Handler.</p>
    #
    #   @return [LambdaConflictHandlerConfig]
    #
    SyncConfig = ::Struct.new(
      :conflict_handler,
      :conflict_detection,
      :lambda_conflict_handler_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The <code>GraphqlApi</code> Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A <code>TagMap</code> object.</p>
    #
    #   @return [Hash<String, String>]
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

    # <p>Describes a type.</p>
    #
    # @!attribute name
    #   <p>The type name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The type description.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The type Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>The type definition.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The type format: SDL or JSON.</p>
    #
    #   Enum, one of: ["SDL", "JSON"]
    #
    #   @return [String]
    #
    Type = ::Struct.new(
      :name,
      :description,
      :arn,
      :definition,
      :format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TypeDefinitionFormat
    #
    module TypeDefinitionFormat
      # No documentation available.
      #
      SDL = "SDL"

      # No documentation available.
      #
      JSON = "JSON"
    end

    # <p>You aren't authorized to perform this operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnauthorizedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The <code>GraphqlApi</code> Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of <code>TagKey</code> objects.</p>
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

    # <p>Represents the input of a <code>UpdateApiCache</code> operation.</p>
    #
    # @!attribute api_id
    #   <p>The GraphQL API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute ttl
    #   <p>TTL in seconds for cache entries.</p>
    #            <p>Valid values are 1–3,600 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute api_caching_behavior
    #   <p>Caching behavior.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>FULL_REQUEST_CACHING</b>: All requests are fully
    #                  cached.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PER_RESOLVER_CACHING</b>: Individual resolvers
    #                  that you specify are cached.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The cache instance type. Valid values are </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SMALL</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MEDIUM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XLARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_2X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_4X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_8X</code> (not available in all regions)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_12X</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>
    #            <p>The following legacy instance types are available, but their use is discouraged:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>T2_SMALL</b>: A t2.small instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>T2_MEDIUM</b>: A t2.medium instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_LARGE</b>: A r4.large instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"]
    #
    #   @return [String]
    #
    UpdateApiCacheInput = ::Struct.new(
      :api_id,
      :ttl,
      :api_caching_behavior,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.ttl ||= 0
      end
    end

    # <p>Represents the output of a <code>UpdateApiCache</code> operation.</p>
    #
    # @!attribute api_cache
    #   <p>The <code>ApiCache</code> object.</p>
    #
    #   @return [ApiCache]
    #
    UpdateApiCacheOutput = ::Struct.new(
      :api_cache,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The ID for the GraphQL API.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The API key ID.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the purpose of the API key.</p>
    #
    #   @return [String]
    #
    # @!attribute expires
    #   <p>From the update time, the time after which the API key expires. The date is represented
    #            as seconds since the epoch. For more information, see .</p>
    #
    #   @return [Integer]
    #
    UpdateApiKeyInput = ::Struct.new(
      :api_id,
      :id,
      :description,
      :expires,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.expires ||= 0
      end
    end

    # @!attribute api_key
    #   <p>The API key.</p>
    #
    #   @return [ApiKey]
    #
    UpdateApiKeyOutput = ::Struct.new(
      :api_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The new name for the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The new description for the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The new data source type.</p>
    #
    #   Enum, one of: ["AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE", "AMAZON_OPENSEARCH_SERVICE"]
    #
    #   @return [String]
    #
    # @!attribute service_role_arn
    #   <p>The new service role Amazon Resource Name (ARN) for the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute dynamodb_config
    #   <p>The new Amazon DynamoDB configuration.</p>
    #
    #   @return [DynamodbDataSourceConfig]
    #
    # @!attribute lambda_config
    #   <p>The new Lambda configuration.</p>
    #
    #   @return [LambdaDataSourceConfig]
    #
    # @!attribute elasticsearch_config
    #   <p>The new OpenSearch configuration.</p>
    #            <p>As of September 2021, Amazon Elasticsearch service is Amazon OpenSearch Service. This
    #            configuration is deprecated. Instead, use <a>UpdateDataSourceRequest$openSearchServiceConfig</a> to update an OpenSearch data source.</p>
    #
    #   @return [ElasticsearchDataSourceConfig]
    #
    # @!attribute open_search_service_config
    #   <p>The new OpenSearch configuration.</p>
    #
    #   @return [OpenSearchServiceDataSourceConfig]
    #
    # @!attribute http_config
    #   <p>The new HTTP endpoint configuration.</p>
    #
    #   @return [HttpDataSourceConfig]
    #
    # @!attribute relational_database_config
    #   <p>The new relational database configuration.</p>
    #
    #   @return [RelationalDatabaseDataSourceConfig]
    #
    UpdateDataSourceInput = ::Struct.new(
      :api_id,
      :name,
      :description,
      :type,
      :service_role_arn,
      :dynamodb_config,
      :lambda_config,
      :elasticsearch_config,
      :open_search_service_config,
      :http_config,
      :relational_database_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_source
    #   <p>The updated <code>DataSource</code> object.</p>
    #
    #   @return [DataSource]
    #
    UpdateDataSourceOutput = ::Struct.new(
      :data_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the <code>DomainName</code>.</p>
    #
    #   @return [String]
    #
    UpdateDomainNameInput = ::Struct.new(
      :domain_name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name_config
    #   <p>The configuration for the <code>DomainName</code>.</p>
    #
    #   @return [DomainNameConfig]
    #
    UpdateDomainNameOutput = ::Struct.new(
      :domain_name_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The GraphQL API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The <code>Function</code> name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The <code>Function</code> description.</p>
    #
    #   @return [String]
    #
    # @!attribute function_id
    #   <p>The function ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_name
    #   <p>The <code>Function</code>
    #               <code>DataSource</code> name.</p>
    #
    #   @return [String]
    #
    # @!attribute request_mapping_template
    #   <p>The <code>Function</code> request mapping template. Functions support only the
    #            2018-05-29 version of the request mapping template.</p>
    #
    #   @return [String]
    #
    # @!attribute response_mapping_template
    #   <p>The <code>Function</code> request mapping template.</p>
    #
    #   @return [String]
    #
    # @!attribute function_version
    #   <p>The <code>version</code> of the request mapping template. Currently, the supported value
    #            is 2018-05-29.</p>
    #
    #   @return [String]
    #
    # @!attribute sync_config
    #   <p>Describes a Sync configuration for a resolver.</p>
    #            <p>Specifies which Conflict Detection strategy and Resolution strategy to use when the
    #            resolver is invoked.</p>
    #
    #   @return [SyncConfig]
    #
    # @!attribute max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #
    #   @return [Integer]
    #
    UpdateFunctionInput = ::Struct.new(
      :api_id,
      :name,
      :description,
      :function_id,
      :data_source_name,
      :request_mapping_template,
      :response_mapping_template,
      :function_version,
      :sync_config,
      :max_batch_size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_batch_size ||= 0
      end
    end

    # @!attribute function_configuration
    #   <p>The <code>Function</code> object.</p>
    #
    #   @return [FunctionConfiguration]
    #
    UpdateFunctionOutput = ::Struct.new(
      :function_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The new name for the <code>GraphqlApi</code> object.</p>
    #
    #   @return [String]
    #
    # @!attribute log_config
    #   <p>The Amazon CloudWatch Logs configuration for the <code>GraphqlApi</code> object.</p>
    #
    #   @return [LogConfig]
    #
    # @!attribute authentication_type
    #   <p>The new authentication type for the <code>GraphqlApi</code> object.</p>
    #
    #   Enum, one of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute user_pool_config
    #   <p>The new Amazon Cognito user pool configuration for the <code>~GraphqlApi</code>
    #            object.</p>
    #
    #   @return [UserPoolConfig]
    #
    # @!attribute open_id_connect_config
    #   <p>The OpenID Connect configuration for the <code>GraphqlApi</code> object.</p>
    #
    #   @return [OpenIDConnectConfig]
    #
    # @!attribute additional_authentication_providers
    #   <p>A list of additional authentication providers for the <code>GraphqlApi</code>
    #            API.</p>
    #
    #   @return [Array<AdditionalAuthenticationProvider>]
    #
    # @!attribute xray_enabled
    #   <p>A flag indicating whether to use X-Ray tracing for the
    #               <code>GraphqlApi</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute lambda_authorizer_config
    #   <p>Configuration for Lambda function authorization.</p>
    #
    #   @return [LambdaAuthorizerConfig]
    #
    UpdateGraphqlApiInput = ::Struct.new(
      :api_id,
      :name,
      :log_config,
      :authentication_type,
      :user_pool_config,
      :open_id_connect_config,
      :additional_authentication_providers,
      :xray_enabled,
      :lambda_authorizer_config,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.xray_enabled ||= false
      end
    end

    # @!attribute graphql_api
    #   <p>The updated <code>GraphqlApi</code> object.</p>
    #
    #   @return [GraphqlApi]
    #
    UpdateGraphqlApiOutput = ::Struct.new(
      :graphql_api,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The new type name.</p>
    #
    #   @return [String]
    #
    # @!attribute field_name
    #   <p>The new field name.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_name
    #   <p>The new data source name.</p>
    #
    #   @return [String]
    #
    # @!attribute request_mapping_template
    #   <p>The new request mapping template.</p>
    #            <p>A resolver uses a request mapping template to convert a GraphQL expression into a format
    #            that a data source can understand. Mapping templates are written in Apache Velocity
    #            Template Language (VTL).</p>
    #            <p>VTL request mapping templates are optional when using an Lambda data
    #            source. For all other data sources, VTL request and response mapping templates are
    #            required.</p>
    #
    #   @return [String]
    #
    # @!attribute response_mapping_template
    #   <p>The new response mapping template.</p>
    #
    #   @return [String]
    #
    # @!attribute kind
    #   <p>The resolver type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is
    #                  the default resolver type. You can use a UNIT resolver to run a GraphQL query against
    #                  a single data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PIPELINE</b>: A PIPELINE resolver type. You can
    #                  use a PIPELINE resolver to invoke a series of <code>Function</code> objects in a
    #                  serial manner. You can use a pipeline resolver to run a GraphQL query against
    #                  multiple data sources.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["UNIT", "PIPELINE"]
    #
    #   @return [String]
    #
    # @!attribute pipeline_config
    #   <p>The <code>PipelineConfig</code>.</p>
    #
    #   @return [PipelineConfig]
    #
    # @!attribute sync_config
    #   <p>The <code>SyncConfig</code> for a resolver attached to a versioned data source.</p>
    #
    #   @return [SyncConfig]
    #
    # @!attribute caching_config
    #   <p>The caching configuration for the resolver.</p>
    #
    #   @return [CachingConfig]
    #
    # @!attribute max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #
    #   @return [Integer]
    #
    UpdateResolverInput = ::Struct.new(
      :api_id,
      :type_name,
      :field_name,
      :data_source_name,
      :request_mapping_template,
      :response_mapping_template,
      :kind,
      :pipeline_config,
      :sync_config,
      :caching_config,
      :max_batch_size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_batch_size ||= 0
      end
    end

    # @!attribute resolver
    #   <p>The updated <code>Resolver</code> object.</p>
    #
    #   @return [Resolver]
    #
    UpdateResolverOutput = ::Struct.new(
      :resolver,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The new type name.</p>
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>The new definition.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The new type format: SDL or JSON.</p>
    #
    #   Enum, one of: ["SDL", "JSON"]
    #
    #   @return [String]
    #
    UpdateTypeInput = ::Struct.new(
      :api_id,
      :type_name,
      :definition,
      :format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type
    #   <p>The updated <code>Type</code> object.</p>
    #
    #   @return [Type]
    #
    UpdateTypeOutput = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an Amazon Cognito user pool configuration.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region in which the user pool was created.</p>
    #
    #   @return [String]
    #
    # @!attribute default_action
    #   <p>The action that you want your GraphQL API to take when a request that uses Amazon Cognito user pool authentication doesn't match the Amazon Cognito user pool
    #            configuration.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute app_id_client_regex
    #   <p>A regular expression for validating the incoming Amazon Cognito user pool app client
    #            ID.</p>
    #
    #   @return [String]
    #
    UserPoolConfig = ::Struct.new(
      :user_pool_id,
      :aws_region,
      :default_action,
      :app_id_client_regex,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
