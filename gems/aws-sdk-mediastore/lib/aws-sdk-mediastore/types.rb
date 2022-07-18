# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaStore
  module Types

    # <p>This section describes operations that you can perform on an AWS Elemental MediaStore
    #          container.</p>
    #
    # @!attribute endpoint
    #   <p>The DNS endpoint of the container. Use the endpoint to identify the specific
    #            container when sending requests to the data plane. The service assigns this value when the
    #            container is created. Once the value has been assigned, it does not change.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>Unix timestamp.</p>
    #
    #   @return [Time]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the container. The ARN has the following
    #            format:</p>
    #            <p>arn:aws:<region>:<account that owns this container>:container/<name of
    #            container> </p>
    #            <p>For example: arn:aws:mediastore:us-west-2:111122223333:container/movies </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the container.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of container creation or deletion. The status is one of the following:
    #               <code>CREATING</code>, <code>ACTIVE</code>, or <code>DELETING</code>. While the service
    #            is creating the container, the status is <code>CREATING</code>. When the endpoint is
    #            available, the status changes to <code>ACTIVE</code>.</p>
    #
    #   Enum, one of: ["ACTIVE", "CREATING", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute access_logging_enabled
    #   <p>The state of access logging on the container. This value is <code>false</code> by default, indicating that AWS Elemental MediaStore does not send access logs to Amazon CloudWatch Logs. When you enable access logging on the container, MediaStore changes this value to <code>true</code>, indicating that the service delivers access logs for objects stored in that container to CloudWatch Logs.</p>
    #
    #   @return [Boolean]
    #
    Container = ::Struct.new(
      :endpoint,
      :creation_time,
      :arn,
      :name,
      :status,
      :access_logging_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The container that you specified in the request already exists or is being
    #          updated.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ContainerInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContainerLevelMetrics
    #
    module ContainerLevelMetrics
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>The container that you specified in the request does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ContainerNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContainerStatus
    #
    module ContainerStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>The CORS policy that you specified in the request does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CorsPolicyNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rule for a CORS policy. You can add up to 100 rules to a CORS policy. If more than
    #          one rule applies, the service uses the first applicable rule listed.</p>
    #
    # @!attribute allowed_origins
    #   <p>One or more response headers that you want users to be able to access from their
    #            applications (for example, from a JavaScript <code>XMLHttpRequest</code> object).</p>
    #            <p>Each CORS rule must have at least one <code>AllowedOrigins</code> element. The string
    #            value can include only one wildcard character (*), for example, http://*.example.com.
    #            Additionally, you can specify only one wildcard character to allow cross-origin access for
    #            all origins.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute allowed_methods
    #   <p>Identifies an HTTP method that the origin that is specified in the rule is allowed to
    #            execute.</p>
    #            <p>Each CORS rule must contain at least one <code>AllowedMethods</code> and one
    #               <code>AllowedOrigins</code> element.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute allowed_headers
    #   <p>Specifies which headers are allowed in a preflight <code>OPTIONS</code> request
    #            through the <code>Access-Control-Request-Headers</code> header. Each header name that is
    #            specified in <code>Access-Control-Request-Headers</code> must have a corresponding entry in
    #            the rule. Only the headers that were requested are sent back. </p>
    #            <p>This element can contain only one wildcard character (*).</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_age_seconds
    #   <p>The time in seconds that your browser caches the preflight response for the specified
    #            resource.</p>
    #            <p>A CORS rule can have only one <code>MaxAgeSeconds</code> element.</p>
    #
    #   @return [Integer]
    #
    # @!attribute expose_headers
    #   <p>One or more headers in the response that you want users to be able to access from
    #            their applications (for example, from a JavaScript <code>XMLHttpRequest</code>
    #            object).</p>
    #            <p>This element is optional for each rule.</p>
    #
    #   @return [Array<String>]
    #
    CorsRule = ::Struct.new(
      :allowed_origins,
      :allowed_methods,
      :allowed_headers,
      :max_age_seconds,
      :expose_headers,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_age_seconds ||= 0
      end
    end

    # @!attribute container_name
    #   <p>The name for the container. The name must be from 1 to 255 characters. Container
    #            names must be unique to your AWS account within a specific region. As an example, you could
    #            create a container named <code>movies</code> in every region, as long as you don’t have an
    #            existing container with that name.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of key:value pairs that you define. These values can be anything that you want. Typically, the tag key represents a category (such as
    #              "environment") and the tag value represents a specific value within that category (such as "test," "development," or "production"). You can add up to 50
    #              tags to each container. For more information about tagging, including naming and usage conventions, see <a href="https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html">Tagging Resources in MediaStore</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateContainerInput = ::Struct.new(
      :container_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container
    #   <p>ContainerARN: The Amazon Resource Name (ARN) of the newly created container. The ARN
    #            has the following format: arn:aws:<region>:<account that owns this
    #            container>:container/<name of container>. For example:
    #            arn:aws:mediastore:us-west-2:111122223333:container/movies </p>
    #            <p>ContainerName: The container name as specified in the request.</p>
    #            <p>CreationTime: Unix time stamp.</p>
    #            <p>Status: The status of container creation or deletion. The status is one of the
    #            following: <code>CREATING</code>, <code>ACTIVE</code>, or <code>DELETING</code>. While the
    #            service is creating the container, the status is <code>CREATING</code>. When an endpoint is
    #            available, the status changes to <code>ACTIVE</code>.</p>
    #            <p>The return value does not include the container's endpoint. To make downstream
    #            requests, you must obtain this value by using <a>DescribeContainer</a> or <a>ListContainers</a>.</p>
    #
    #   @return [Container]
    #
    CreateContainerOutput = ::Struct.new(
      :container,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container to delete. </p>
    #
    #   @return [String]
    #
    DeleteContainerInput = ::Struct.new(
      :container_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteContainerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container that holds the policy.</p>
    #
    #   @return [String]
    #
    DeleteContainerPolicyInput = ::Struct.new(
      :container_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteContainerPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container to remove the policy from.</p>
    #
    #   @return [String]
    #
    DeleteCorsPolicyInput = ::Struct.new(
      :container_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCorsPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container that holds the object lifecycle policy.</p>
    #
    #   @return [String]
    #
    DeleteLifecyclePolicyInput = ::Struct.new(
      :container_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLifecyclePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container that is associated with the metric policy that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteMetricPolicyInput = ::Struct.new(
      :container_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteMetricPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container to query.</p>
    #
    #   @return [String]
    #
    DescribeContainerInput = ::Struct.new(
      :container_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container
    #   <p>The name of the queried container.</p>
    #
    #   @return [Container]
    #
    DescribeContainerOutput = ::Struct.new(
      :container,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container. </p>
    #
    #   @return [String]
    #
    GetContainerPolicyInput = ::Struct.new(
      :container_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>The contents of the access policy.</p>
    #
    #   @return [String]
    #
    GetContainerPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container that the policy is assigned to.</p>
    #
    #   @return [String]
    #
    GetCorsPolicyInput = ::Struct.new(
      :container_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cors_policy
    #   <p>The CORS policy assigned to the container.</p>
    #
    #   @return [Array<CorsRule>]
    #
    GetCorsPolicyOutput = ::Struct.new(
      :cors_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container that the object lifecycle policy is assigned to.</p>
    #
    #   @return [String]
    #
    GetLifecyclePolicyInput = ::Struct.new(
      :container_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lifecycle_policy
    #   <p>The object lifecycle policy that is assigned to the container.</p>
    #
    #   @return [String]
    #
    GetLifecyclePolicyOutput = ::Struct.new(
      :lifecycle_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container that is associated with the metric policy.</p>
    #
    #   @return [String]
    #
    GetMetricPolicyInput = ::Struct.new(
      :container_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute metric_policy
    #   <p>The metric policy that is associated with the specific container.</p>
    #
    #   @return [MetricPolicy]
    #
    GetMetricPolicyOutput = ::Struct.new(
      :metric_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service is temporarily unavailable.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerError = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A service limit has been exceeded.</p>
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

    # @!attribute next_token
    #   <p>Only if you used <code>MaxResults</code> in the first command, enter the token (which
    #            was included in the previous response) to obtain the next set of containers. This token is
    #            included in a response only if there actually are more containers to list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Enter the maximum number of containers in the response. Use from 1 to 255 characters.
    #         </p>
    #
    #   @return [Integer]
    #
    ListContainersInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute containers
    #   <p>The names of the containers.</p>
    #
    #   @return [Array<Container>]
    #
    # @!attribute next_token
    #   <p>
    #               <code>NextToken</code> is the token to use in the next call to <code>ListContainers</code>.
    #            This token is returned only if you included the <code>MaxResults</code> tag in the original
    #            command, and only if there are still containers to return. </p>
    #
    #   @return [String]
    #
    ListContainersOutput = ::Struct.new(
      :containers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource
    #   <p>The Amazon Resource Name (ARN) for the container.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>An array of key:value pairs that are assigned to the container.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MethodName
    #
    module MethodName
      # No documentation available.
      #
      PUT = "PUT"

      # No documentation available.
      #
      GET = "GET"

      # No documentation available.
      #
      DELETE = "DELETE"

      # No documentation available.
      #
      HEAD = "HEAD"
    end

    # <p>The metric policy that is associated with the container. A metric policy allows AWS Elemental MediaStore to send metrics to Amazon CloudWatch. In the policy, you must indicate whether you want MediaStore to send container-level metrics. You can also include rules to define groups of objects that you want MediaStore to send object-level metrics for.</p>
    #          <p>To view examples of how to construct a metric policy for your use case, see <a href="https://docs.aws.amazon.com/mediastore/latest/ug/policies-metric-examples.html">Example Metric Policies</a>.</p>
    #
    # @!attribute container_level_metrics
    #   <p>A setting to enable or disable metrics at the container level.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute metric_policy_rules
    #   <p>A parameter that holds an array of rules that enable metrics at the object level. This parameter is optional, but if you choose to include it, you must also include at least one rule. By default, you can include up to five rules. You can also <a href="https://console.aws.amazon.com/servicequotas/home?region=us-east-1 !/services/mediastore/quotas">request a quota increase</a> to allow up to 300 rules per policy.</p>
    #
    #   @return [Array<MetricPolicyRule>]
    #
    MetricPolicy = ::Struct.new(
      :container_level_metrics,
      :metric_policy_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A setting that enables metrics at the object level. Each rule contains an object group and an object group name. If the policy includes the MetricPolicyRules parameter, you must include at least one rule. Each metric policy can include up to five rules by default. You can also <a href="https://console.aws.amazon.com/servicequotas/home?region=us-east-1#!/services/mediastore/quotas">request a quota increase</a> to allow up to 300 rules per policy.</p>
    #
    # @!attribute object_group
    #   <p>A path or file name that defines which objects to include in the group. Wildcards (*) are acceptable.</p>
    #
    #   @return [String]
    #
    # @!attribute object_group_name
    #   <p>A name that allows you to refer to the object group.</p>
    #
    #   @return [String]
    #
    MetricPolicyRule = ::Struct.new(
      :object_group,
      :object_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The policy that you specified in the request does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PolicyNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The contents of the policy, which includes the following: </p>
    #            <ul>
    #               <li>
    #                  <p>One <code>Version</code> tag</p>
    #               </li>
    #               <li>
    #                  <p>One <code>Statement</code> tag that contains the standard tags for the
    #                  policy.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    PutContainerPolicyInput = ::Struct.new(
      :container_name,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutContainerPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container that you want to assign the CORS policy to.</p>
    #
    #   @return [String]
    #
    # @!attribute cors_policy
    #   <p>The CORS policy to apply to the container.  </p>
    #
    #   @return [Array<CorsRule>]
    #
    PutCorsPolicyInput = ::Struct.new(
      :container_name,
      :cors_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutCorsPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container that you want to assign the object lifecycle policy to.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_policy
    #   <p>The object lifecycle policy to apply to the container.</p>
    #
    #   @return [String]
    #
    PutLifecyclePolicyInput = ::Struct.new(
      :container_name,
      :lifecycle_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutLifecyclePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container that you want to add the metric policy to.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_policy
    #   <p>The metric policy that you want to associate with the container. In the policy, you must indicate whether you want MediaStore to send container-level metrics. You can also include up to five rules to define groups of objects that you want MediaStore to send object-level metrics for.  If you include rules in the policy, construct each rule with both of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>An object group that defines which objects to include in the group. The definition can be a path or a file name, but it can't have more than 900 characters. Valid characters are: a-z, A-Z, 0-9, _ (underscore), = (equal), : (colon), . (period), - (hyphen), ~ (tilde), / (forward slash), and * (asterisk). Wildcards (*) are acceptable.</p>
    #               </li>
    #               <li>
    #                  <p>An object group name that allows you to refer to the object group. The name can't have more than 30 characters. Valid characters are: a-z, A-Z, 0-9, and _ (underscore).</p>
    #               </li>
    #            </ul>
    #
    #   @return [MetricPolicy]
    #
    PutMetricPolicyInput = ::Struct.new(
      :container_name,
      :metric_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutMetricPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container that you want to start access logging on.</p>
    #
    #   @return [String]
    #
    StartAccessLoggingInput = ::Struct.new(
      :container_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartAccessLoggingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_name
    #   <p>The name of the container that you want to stop access logging on.</p>
    #
    #   @return [String]
    #
    StopAccessLoggingInput = ::Struct.new(
      :container_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopAccessLoggingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A collection of tags associated with a container. Each tag consists of a key:value pair, which can be anything you define. Typically, the tag key
    #             represents a category (such as "environment") and the tag value represents a specific value within that category (such as "test," "development," or
    #             "production"). You can add up to 50
    #             tags to each container. For more information about tagging, including naming and usage conventions, see <a href="https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html">Tagging Resources in MediaStore</a>.</p>
    #
    # @!attribute key
    #   <p>Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as "customer." Tag keys are
    #               case-sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as "companyA" or
    #               "companyB." Tag values are case-sensitive.</p>
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

    # @!attribute resource
    #   <p>The Amazon Resource Name (ARN) for the container. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of key:value pairs that you want to add to the container. You need to specify only the tags that you want to add or update. For example,
    #               suppose a container already has two tags (customer:CompanyA and priority:High). You want to change the priority tag and also add a third tag
    #               (type:Contract). For TagResource, you specify the following tags: priority:Medium, type:Contract. The result is that your container has three tags:
    #               customer:CompanyA, priority:Medium, and type:Contract.</p>
    #
    #   @return [Array<Tag>]
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

    # @!attribute resource
    #   <p>The Amazon Resource Name (ARN) for the container.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A comma-separated list of keys for tags that you want to remove from the container. For example, if your container has two tags (customer:CompanyA
    #               and priority:High) and you want to remove one of the tags (priority:High), you specify the key for the tag that you want to remove
    #               (priority).</p>
    #
    #   @return [Array<String>]
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

  end
end
