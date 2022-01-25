# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Lambda
  module Types

    # <p>Limits that are related to concurrency and storage. All file and storage sizes are in bytes.</p>
    #
    # @!attribute total_code_size
    #   <p>The amount of storage space that you can use for all deployment packages and layer archives.</p>
    #
    #   @return [Integer]
    #
    # @!attribute code_size_unzipped
    #   <p>The maximum size of a function's deployment package and layers when they're extracted.</p>
    #
    #   @return [Integer]
    #
    # @!attribute code_size_zipped
    #   <p>The maximum size of a deployment package when it's uploaded directly to AWS Lambda. Use Amazon S3 for larger
    #         files.</p>
    #
    #   @return [Integer]
    #
    # @!attribute concurrent_executions
    #   <p>The maximum number of simultaneous function executions.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unreserved_concurrent_executions
    #   <p>The maximum number of simultaneous function executions, minus the capacity that's reserved for individual
    #         functions with <a>PutFunctionConcurrency</a>.</p>
    #
    #   @return [Integer]
    #
    AccountLimit = ::Struct.new(
      :total_code_size,
      :code_size_unzipped,
      :code_size_zipped,
      :concurrent_executions,
      :unreserved_concurrent_executions,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The number of functions and amount of storage in use.</p>
    #
    # @!attribute total_code_size
    #   <p>The amount of storage space, in bytes, that's being used by deployment packages and layer archives.</p>
    #
    #   @return [Integer]
    #
    # @!attribute function_count
    #   <p>The number of Lambda functions.</p>
    #
    #   @return [Integer]
    #
    AccountUsage = ::Struct.new(
      :total_code_size,
      :function_count,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The version number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute statement_id
    #   <p>An identifier that distinguishes the policy from others on the same layer version.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The API action that grants access to the layer. For example, <code>lambda:GetLayerVersion</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute principal
    #   <p>An account ID, or <code>*</code> to grant permission to all AWS accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_id
    #   <p>With the principal set to <code>*</code>, grant permission to all accounts in the specified
    #         organization.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>Only update the policy if the revision ID matches the ID specified. Use this option to avoid modifying a
    #         policy that has changed since you last read it.</p>
    #
    #   @return [String]
    #
    AddLayerVersionPermissionInput = ::Struct.new(
      :layer_name,
      :version_number,
      :statement_id,
      :action,
      :principal,
      :organization_id,
      :revision_id,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute statement
    #   <p>The permission statement.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>A unique identifier for the current revision of the policy.</p>
    #
    #   @return [String]
    #
    AddLayerVersionPermissionOutput = ::Struct.new(
      :statement,
      :revision_id,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute statement_id
    #   <p>A statement identifier that differentiates the statement from others in the same policy.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The action that the principal can use on the function. For example, <code>lambda:InvokeFunction</code> or
    #           <code>lambda:GetFunction</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute principal
    #   <p>The AWS service or account that invokes the function. If you specify a service, use <code>SourceArn</code> or
    #           <code>SourceAccount</code> to limit who can invoke the function through that service.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>For AWS services, the ARN of the AWS resource that invokes the function. For example, an Amazon S3 bucket or
    #         Amazon SNS topic.</p>
    #
    #   @return [String]
    #
    # @!attribute source_account
    #   <p>For Amazon S3, the ID of the account that owns the resource. Use this together with <code>SourceArn</code> to
    #         ensure that the resource is owned by the specified account. It is possible for an Amazon S3 bucket to be deleted
    #         by its owner and recreated by another account.</p>
    #
    #   @return [String]
    #
    # @!attribute event_source_token
    #   <p>For Alexa Smart Home functions, a token that must be supplied by the invoker.</p>
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>Specify a version or alias to add permissions to a published version of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>Only update the policy if the revision ID matches the ID that's specified. Use this option to avoid modifying a
    #         policy that has changed since you last read it.</p>
    #
    #   @return [String]
    #
    AddPermissionInput = ::Struct.new(
      :function_name,
      :statement_id,
      :action,
      :principal,
      :source_arn,
      :source_account,
      :event_source_token,
      :qualifier,
      :revision_id,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute statement
    #   <p>The permission statement that's added to the function policy.</p>
    #
    #   @return [String]
    #
    AddPermissionOutput = ::Struct.new(
      :statement,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Provides configuration information about a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">alias</a>.</p>
    #
    # @!attribute alias_arn
    #   <p>The Amazon Resource Name (ARN) of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute member_name
    #   <p>The name of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute function_version
    #   <p>The function version that the alias invokes.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">routing
    #           configuration</a> of the alias.</p>
    #
    #   @return [AliasRoutingConfiguration]
    #
    # @!attribute revision_id
    #   <p>A unique identifier that changes when you update the alias.</p>
    #
    #   @return [String]
    #
    AliasConfiguration = ::Struct.new(
      :alias_arn,
      :member_name,
      :function_version,
      :description,
      :routing_config,
      :revision_id,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">traffic-shifting</a> configuration of a Lambda function alias.</p>
    #
    # @!attribute additional_version_weights
    #   <p>The second version, and the percentage of traffic that's routed to it.</p>
    #
    #   @return [Hash<String, Float>]
    #
    AliasRoutingConfiguration = ::Struct.new(
      :additional_version_weights,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>List of signing profiles that can sign a code package. </p>
    #
    # @!attribute signing_profile_version_arns
    #   <p>The Amazon Resource Name (ARN) for each of the signing profiles. A signing profile defines a trusted user
    #         who can sign a code package. </p>
    #
    #   @return [Array<String>]
    #
    AllowedPublishers = ::Struct.new(
      :signing_profile_version_arns,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Details about a Code signing configuration. </p>
    #
    # @!attribute code_signing_config_id
    #   <p>Unique identifer for the Code signing configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute code_signing_config_arn
    #   <p>The Amazon Resource Name (ARN) of the Code signing configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Code signing configuration description.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_publishers
    #   <p>List of allowed publishers.</p>
    #
    #   @return [AllowedPublishers]
    #
    # @!attribute code_signing_policies
    #   <p>The code signing policy controls the validation failure action for signature mismatch or expiry.</p>
    #
    #   @return [CodeSigningPolicies]
    #
    # @!attribute last_modified
    #   <p>The date and time that the Code signing configuration was last modified, in ISO-8601 format (YYYY-MM-DDThh:mm:ss.sTZD). </p>
    #
    #   @return [String]
    #
    CodeSigningConfig = ::Struct.new(
      :code_signing_config_id,
      :code_signing_config_arn,
      :description,
      :allowed_publishers,
      :code_signing_policies,
      :last_modified,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The specified code signing configuration does not exist.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CodeSigningConfigNotFoundException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Code signing configuration policies specifies the validation failure action for signature mismatch or
    #        expiry.</p>
    #
    # @!attribute untrusted_artifact_on_deployment
    #   <p>Code signing configuration policy for deployment validation failure. If you set the policy to
    #         <code>Enforce</code>, Lambda blocks the deployment request if signature validation checks fail. If you set the
    #         policy to <code>Warn</code>, Lambda allows the deployment and creates a CloudWatch log. </p>
    #            <p>Default value: <code>Warn</code>
    #            </p>
    #
    #   @return [String]
    #
    CodeSigningPolicies = ::Struct.new(
      :untrusted_artifact_on_deployment,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>You have exceeded your maximum total code size per account. <a href="https://docs.aws.amazon.com/lambda/latest/dg/limits.html">Learn more</a>
    #          </p>
    #
    # @!attribute type
    #   <p>The exception type.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CodeStorageExceededException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The code signature failed one or more of the validation checks for signature mismatch or expiry, and the code signing policy
    #       is set to ENFORCE. Lambda blocks the deployment. </p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CodeVerificationFailedException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute reserved_concurrent_executions
    #   <p>The number of concurrent executions that are reserved for this function. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html">Managing Concurrency</a>.</p>
    #
    #   @return [Integer]
    #
    Concurrency = ::Struct.new(
      :reserved_concurrent_executions,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute member_name
    #   <p>The name of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute function_version
    #   <p>The function version that the alias invokes.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html configuring-alias-routing">routing
    #           configuration</a> of the alias.</p>
    #
    #   @return [AliasRoutingConfiguration]
    #
    CreateAliasInput = ::Struct.new(
      :function_name,
      :member_name,
      :function_version,
      :description,
      :routing_config,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Provides configuration information about a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">alias</a>.</p>
    #
    # @!attribute alias_arn
    #   <p>The Amazon Resource Name (ARN) of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute member_name
    #   <p>The name of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute function_version
    #   <p>The function version that the alias invokes.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">routing
    #           configuration</a> of the alias.</p>
    #
    #   @return [AliasRoutingConfiguration]
    #
    # @!attribute revision_id
    #   <p>A unique identifier that changes when you update the alias.</p>
    #
    #   @return [String]
    #
    CreateAliasOutput = ::Struct.new(
      :alias_arn,
      :member_name,
      :function_version,
      :description,
      :routing_config,
      :revision_id,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute description
    #   <p>Descriptive name for this code signing configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_publishers
    #   <p>Signing profiles for this code signing configuration.</p>
    #
    #   @return [AllowedPublishers]
    #
    # @!attribute code_signing_policies
    #   <p>The code signing policies define the actions to take if the validation checks fail. </p>
    #
    #   @return [CodeSigningPolicies]
    #
    CreateCodeSigningConfigInput = ::Struct.new(
      :description,
      :allowed_publishers,
      :code_signing_policies,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute code_signing_config
    #   <p>The code signing configuration.</p>
    #
    #   @return [CodeSigningConfig]
    #
    CreateCodeSigningConfigOutput = ::Struct.new(
      :code_signing_config,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Amazon Kinesis</b> - The ARN of the data stream or a stream consumer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon DynamoDB Streams</b> - The ARN of the stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Simple Queue Service</b> - The ARN of the queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Managed Streaming for Apache Kafka</b> - The ARN of the cluster.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Version or Alias ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>If true, the event source mapping is active. Set to false to pause polling and invocation.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute batch_size
    #   <p>The maximum number of items to retrieve in a single batch.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Amazon Kinesis</b> - Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon DynamoDB Streams</b> - Default 100. Max 1,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Simple Queue Service</b> - Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Managed Streaming for Apache Kafka</b> - Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Self-Managed Apache Kafka</b> - Default 100. Max 10,000.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_batching_window_in_seconds
    #   <p>(Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute parallelization_factor
    #   <p>(Streams) The number of batches to process from each shard concurrently.</p>
    #
    #   @return [Integer]
    #
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams
    #         sources. <code>AT_TIMESTAMP</code> is only supported for Amazon Kinesis streams.</p>
    #
    #   @return [String]
    #
    # @!attribute starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start
    #         reading.</p>
    #
    #   @return [Time]
    #
    # @!attribute destination_config
    #   <p>(Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.</p>
    #
    #   @return [DestinationConfig]
    #
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Streams) Discard records older than the specified age. The default value is infinite (-1).</p>
    #
    #   @return [Integer]
    #
    # @!attribute bisect_batch_on_function_error
    #   <p>(Streams) If the function returns an error, split the batch in two and retry.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute maximum_retry_attempts
    #   <p>(Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records will be retried until the record expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tumbling_window_in_seconds
    #   <p>(Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute topics
    #   <p>The name of the Kafka topic.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute queues
    #   <p>
    #         (MQ) The name of the Amazon MQ broker destination queue to consume.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_access_configurations
    #   <p>An array of the authentication protocol, or the VPC components to secure your event source.</p>
    #
    #   @return [Array<SourceAccessConfiguration>]
    #
    # @!attribute self_managed_event_source
    #   <p>The Self-Managed Apache Kafka cluster to send records.</p>
    #
    #   @return [SelfManagedEventSource]
    #
    # @!attribute function_response_types
    #   <p>(Streams) A list of current response type enums applied to the event source mapping.</p>
    #
    #   @return [Array<String>]
    #
    CreateEventSourceMappingInput = ::Struct.new(
      :event_source_arn,
      :function_name,
      :enabled,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :starting_position,
      :starting_position_timestamp,
      :destination_config,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :tumbling_window_in_seconds,
      :topics,
      :queues,
      :source_access_configurations,
      :self_managed_event_source,
      :function_response_types,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>A mapping between an AWS resource and an AWS Lambda function. See <a>CreateEventSourceMapping</a> for details.</p>
    #
    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #
    #   @return [String]
    #
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams
    #         sources. <code>AT_TIMESTAMP</code> is only supported for Amazon Kinesis streams.</p>
    #
    #   @return [String]
    #
    # @!attribute starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start
    #         reading.</p>
    #
    #   @return [Time]
    #
    # @!attribute batch_size
    #   <p>The maximum number of items to retrieve in a single batch.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_batching_window_in_seconds
    #   <p>(Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds. The default value is zero.</p>
    #
    #   @return [Integer]
    #
    # @!attribute parallelization_factor
    #   <p>(Streams) The number of batches to process from each shard concurrently. The default value is 1.</p>
    #
    #   @return [Integer]
    #
    # @!attribute event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p>
    #
    #   @return [String]
    #
    # @!attribute function_arn
    #   <p>The ARN of the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date that the event source mapping was last updated, or its state changed.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_processing_result
    #   <p>The result of the last AWS Lambda invocation of your Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the event source mapping. It can be one of the following: <code>Creating</code>,
    #         <code>Enabling</code>, <code>Enabled</code>, <code>Disabling</code>, <code>Disabled</code>,
    #         <code>Updating</code>, or <code>Deleting</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute state_transition_reason
    #   <p>Indicates whether the last change to the event source mapping was made by a user, or by the Lambda
    #         service.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_config
    #   <p>(Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.</p>
    #
    #   @return [DestinationConfig]
    #
    # @!attribute topics
    #   <p>The name of the Kafka topic.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute queues
    #   <p>
    #         (MQ) The name of the Amazon MQ broker destination queue to consume.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_access_configurations
    #   <p>An array of the authentication protocol, or the VPC components to secure your event source.</p>
    #
    #   @return [Array<SourceAccessConfiguration>]
    #
    # @!attribute self_managed_event_source
    #   <p>The Self-Managed Apache Kafka cluster for your event source.</p>
    #
    #   @return [SelfManagedEventSource]
    #
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Streams) Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bisect_batch_on_function_error
    #   <p>(Streams) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute maximum_retry_attempts
    #   <p>(Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tumbling_window_in_seconds
    #   <p>(Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute function_response_types
    #   <p>(Streams) A list of current response type enums applied to the event source mapping.</p>
    #
    #   @return [Array<String>]
    #
    CreateEventSourceMappingOutput = ::Struct.new(
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :function_arn,
      :last_modified,
      :last_processing_result,
      :state,
      :state_transition_reason,
      :destination_config,
      :topics,
      :queues,
      :source_access_configurations,
      :self_managed_event_source,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :tumbling_window_in_seconds,
      :function_response_types,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">runtime</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the function's execution role.</p>
    #
    #   @return [String]
    #
    # @!attribute handler
    #   <p>The name of the method within your code that Lambda calls to execute your function. The format includes the
    #         file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information,
    #         see <a href="https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html">Programming Model</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>The code for the function.</p>
    #
    #   @return [FunctionCode]
    #
    # @!attribute description
    #   <p>A description of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout
    #   <p>The amount of time that Lambda allows a function to run before stopping it. The default is 3 seconds. The
    #         maximum allowed value is 900 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory_size
    #   <p>The amount of memory available to the function at runtime. Increasing the function's memory also increases its CPU
    #         allocation. The default value is 128 MB. The value can be any multiple of 1 MB.</p>
    #
    #   @return [Integer]
    #
    # @!attribute publish
    #   <p>Set to true to publish the first version of the function during creation.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute vpc_config
    #   <p>For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC.
    #         When you connect a function to a VPC, it can only access resources and the internet through that VPC. For more
    #         information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">VPC Settings</a>.</p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for ZIP archive.</p>
    #
    #   @return [String]
    #
    # @!attribute dead_letter_config
    #   <p>A dead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events
    #         when they fail processing. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html dlq">Dead Letter Queues</a>.</p>
    #
    #   @return [DeadLetterConfig]
    #
    # @!attribute environment
    #   <p>Environment variables that are accessible from function code during execution.</p>
    #
    #   @return [Environment]
    #
    # @!attribute kms_key_arn
    #   <p>The ARN of the AWS Key Management Service (AWS KMS) key that's used to encrypt your function's environment
    #         variables. If it's not provided, AWS Lambda uses a default service key.</p>
    #
    #   @return [String]
    #
    # @!attribute tracing_config
    #   <p>Set <code>Mode</code> to <code>Active</code> to sample and trace a subset of incoming requests with AWS
    #         X-Ray.</p>
    #
    #   @return [TracingConfig]
    #
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a> to apply to the
    #         function.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute layers
    #   <p>A list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">function layers</a>
    #         to add to the function's execution environment. Specify each layer by its ARN, including the version.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute file_system_configs
    #   <p>Connection settings for an Amazon EFS file system.</p>
    #
    #   @return [Array<FileSystemConfig>]
    #
    # @!attribute image_config
    #   <p>
    #               <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-parms.html">Container image configuration
    #         values</a> that override the values in the container image Dockerfile.</p>
    #
    #   @return [ImageConfig]
    #
    # @!attribute code_signing_config_arn
    #   <p>To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration
    #   includes a set of signing profiles, which define the trusted publishers for this function.</p>
    #
    #   @return [String]
    #
    CreateFunctionInput = ::Struct.new(
      :function_name,
      :runtime,
      :role,
      :handler,
      :code,
      :description,
      :timeout,
      :memory_size,
      :publish,
      :vpc_config,
      :package_type,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :tags,
      :layers,
      :file_system_configs,
      :image_config,
      :code_signing_config_arn,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Details about a function's configuration.</p>
    #
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute function_arn
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute runtime
    #   <p>The runtime environment for the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The function's execution role.</p>
    #
    #   @return [String]
    #
    # @!attribute handler
    #   <p>The function that Lambda calls to begin executing your function.</p>
    #
    #   @return [String]
    #
    # @!attribute code_size
    #   <p>The size of the function's deployment package, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   <p>The function's description.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout
    #   <p>The amount of time in seconds that Lambda allows a function to run before stopping it.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory_size
    #   <p>The amount of memory available to the function at runtime. </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified
    #   <p>The date and time that the function was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #
    #   @return [String]
    #
    # @!attribute code_sha256
    #   <p>The SHA256 hash of the function's deployment package.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>The function's networking configuration.</p>
    #
    #   @return [VpcConfigResponse]
    #
    # @!attribute dead_letter_config
    #   <p>The function's dead letter queue.</p>
    #
    #   @return [DeadLetterConfig]
    #
    # @!attribute environment
    #   <p>The function's environment variables.</p>
    #
    #   @return [EnvironmentResponse]
    #
    # @!attribute kms_key_arn
    #   <p>The KMS key that's used to encrypt the function's environment variables. This key is only returned if you've
    #         configured a customer managed CMK.</p>
    #
    #   @return [String]
    #
    # @!attribute tracing_config
    #   <p>The function's AWS X-Ray tracing configuration.</p>
    #
    #   @return [TracingConfigResponse]
    #
    # @!attribute master_arn
    #   <p>For Lambda@Edge functions, the ARN of the master function.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The latest updated revision of the function or alias.</p>
    #
    #   @return [String]
    #
    # @!attribute layers
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">
    #         layers</a>.</p>
    #
    #   @return [Array<Layer>]
    #
    # @!attribute state
    #   <p>The current state of the function. When the state is <code>Inactive</code>, you can reactivate the function by
    #         invoking it.</p>
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>The reason for the function's current state.</p>
    #
    #   @return [String]
    #
    # @!attribute state_reason_code
    #   <p>The reason code for the function's current state. When the code is <code>Creating</code>, you can't invoke or
    #         modify the function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status
    #   <p>The status of the last update that was performed on the function. This is first set to <code>Successful</code>
    #         after function creation completes.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status_reason
    #   <p>The reason for the last update that was performed on the function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status_reason_code
    #   <p>The reason code for the last update that was performed on the function.</p>
    #
    #   @return [String]
    #
    # @!attribute file_system_configs
    #   <p>Connection settings for an Amazon EFS file system.</p>
    #
    #   @return [Array<FileSystemConfig>]
    #
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #
    #   @return [String]
    #
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #
    #   @return [ImageConfigResponse]
    #
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #
    #   @return [String]
    #
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #
    #   @return [String]
    #
    CreateFunctionOutput = ::Struct.new(
      :function_name,
      :function_arn,
      :runtime,
      :role,
      :handler,
      :code_size,
      :description,
      :timeout,
      :memory_size,
      :last_modified,
      :code_sha256,
      :version,
      :vpc_config,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :master_arn,
      :revision_id,
      :layers,
      :state,
      :state_reason,
      :state_reason_code,
      :last_update_status,
      :last_update_status_reason,
      :last_update_status_reason_code,
      :file_system_configs,
      :package_type,
      :image_config_response,
      :signing_profile_version_arn,
      :signing_job_arn,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq">dead-letter queue</a> for
    #       failed asynchronous invocations.</p>
    #
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.</p>
    #
    #   @return [String]
    #
    DeadLetterConfig = ::Struct.new(
      :target_arn,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute member_name
    #   <p>The name of the alias.</p>
    #
    #   @return [String]
    #
    DeleteAliasInput = ::Struct.new(
      :function_name,
      :member_name,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    DeleteAliasOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #
    #   @return [String]
    #
    DeleteCodeSigningConfigInput = ::Struct.new(
      :code_signing_config_arn,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    DeleteCodeSigningConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #
    #   @return [String]
    #
    DeleteEventSourceMappingInput = ::Struct.new(
      :uuid,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>A mapping between an AWS resource and an AWS Lambda function. See <a>CreateEventSourceMapping</a> for details.</p>
    #
    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #
    #   @return [String]
    #
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams
    #         sources. <code>AT_TIMESTAMP</code> is only supported for Amazon Kinesis streams.</p>
    #
    #   @return [String]
    #
    # @!attribute starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start
    #         reading.</p>
    #
    #   @return [Time]
    #
    # @!attribute batch_size
    #   <p>The maximum number of items to retrieve in a single batch.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_batching_window_in_seconds
    #   <p>(Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds. The default value is zero.</p>
    #
    #   @return [Integer]
    #
    # @!attribute parallelization_factor
    #   <p>(Streams) The number of batches to process from each shard concurrently. The default value is 1.</p>
    #
    #   @return [Integer]
    #
    # @!attribute event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p>
    #
    #   @return [String]
    #
    # @!attribute function_arn
    #   <p>The ARN of the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date that the event source mapping was last updated, or its state changed.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_processing_result
    #   <p>The result of the last AWS Lambda invocation of your Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the event source mapping. It can be one of the following: <code>Creating</code>,
    #         <code>Enabling</code>, <code>Enabled</code>, <code>Disabling</code>, <code>Disabled</code>,
    #         <code>Updating</code>, or <code>Deleting</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute state_transition_reason
    #   <p>Indicates whether the last change to the event source mapping was made by a user, or by the Lambda
    #         service.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_config
    #   <p>(Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.</p>
    #
    #   @return [DestinationConfig]
    #
    # @!attribute topics
    #   <p>The name of the Kafka topic.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute queues
    #   <p>
    #         (MQ) The name of the Amazon MQ broker destination queue to consume.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_access_configurations
    #   <p>An array of the authentication protocol, or the VPC components to secure your event source.</p>
    #
    #   @return [Array<SourceAccessConfiguration>]
    #
    # @!attribute self_managed_event_source
    #   <p>The Self-Managed Apache Kafka cluster for your event source.</p>
    #
    #   @return [SelfManagedEventSource]
    #
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Streams) Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bisect_batch_on_function_error
    #   <p>(Streams) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute maximum_retry_attempts
    #   <p>(Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tumbling_window_in_seconds
    #   <p>(Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute function_response_types
    #   <p>(Streams) A list of current response type enums applied to the event source mapping.</p>
    #
    #   @return [Array<String>]
    #
    DeleteEventSourceMappingOutput = ::Struct.new(
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :function_arn,
      :last_modified,
      :last_processing_result,
      :state,
      :state_transition_reason,
      :destination_config,
      :topics,
      :queues,
      :source_access_configurations,
      :self_managed_event_source,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :tumbling_window_in_seconds,
      :function_response_types,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    DeleteFunctionCodeSigningConfigInput = ::Struct.new(
      :function_name,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    DeleteFunctionCodeSigningConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    DeleteFunctionConcurrencyInput = ::Struct.new(
      :function_name,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    DeleteFunctionConcurrencyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>A version number or alias name.</p>
    #
    #   @return [String]
    #
    DeleteFunctionEventInvokeConfigInput = ::Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    DeleteFunctionEventInvokeConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function or version.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:1</code> (with version).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>Specify a version to delete. You can't delete a version that's referenced by an alias.</p>
    #
    #   @return [String]
    #
    DeleteFunctionInput = ::Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    DeleteFunctionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The version number.</p>
    #
    #   @return [Integer]
    #
    DeleteLayerVersionInput = ::Struct.new(
      :layer_name,
      :version_number,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    DeleteLayerVersionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>The version number or alias name.</p>
    #
    #   @return [String]
    #
    DeleteProvisionedConcurrencyConfigInput = ::Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    DeleteProvisionedConcurrencyConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>A configuration object that specifies the destination of an event after Lambda processes it.</p>
    #
    # @!attribute on_success
    #   <p>The destination configuration for successful invocations.</p>
    #
    #   @return [OnSuccess]
    #
    # @!attribute on_failure
    #   <p>The destination configuration for failed invocations.</p>
    #
    #   @return [OnFailure]
    #
    DestinationConfig = ::Struct.new(
      :on_success,
      :on_failure,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Need additional permissions to configure VPC settings.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EC2AccessDeniedException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>AWS Lambda was throttled by Amazon EC2 during Lambda function initialization using the execution role provided
    #       for the Lambda function.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EC2ThrottledException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>AWS Lambda received an unexpected EC2 client exception while setting up for the Lambda function.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute ec2_error_code
    #
    #   @return [String]
    #
    EC2UnexpectedException = ::Struct.new(
      :type,
      :message,
      :ec2_error_code,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>An error occured when reading from or writing to a connected file system.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EFSIOException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The function couldn't make a network connection to the configured file system.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EFSMountConnectivityException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The function couldn't mount the configured file system due to a permission or configuration issue.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EFSMountFailureException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The function was able to make a network connection to the configured file system, but the mount operation
    #       timed out.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EFSMountTimeoutException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>AWS Lambda was not able to create an elastic network interface in the VPC, specified as part of Lambda
    #       function configuration, because the limit for network interfaces has been reached.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ENILimitReachedException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>A function's environment variable settings.</p>
    #
    # @!attribute variables
    #   <p>Environment variable key-value pairs.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [Hash<String, String>]
    #
    Environment = ::Struct.new(
      :variables,
      keyword_init: true
    ) do
      include Seahorse::Structure

      def to_s
        "#<struct AWS::Lambda::Types::Environment "\
          "variables=\"[SENSITIVE]\">"
      end
    end

    # <p>Error messages for environment variables that couldn't be applied.</p>
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The error message.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [String]
    #
    EnvironmentError = ::Struct.new(
      :error_code,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure

      def to_s
        "#<struct AWS::Lambda::Types::EnvironmentError "\
          "error_code=#{error_code || 'nil'}, "\
          "message=\"[SENSITIVE]\">"
      end
    end

    # <p>The results of an operation to update or read environment variables. If the operation is successful, the
    #       response contains the environment variables. If it failed, the response contains details about the error.</p>
    #
    # @!attribute variables
    #   <p>Environment variable key-value pairs.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute error
    #   <p>Error messages for environment variables that couldn't be applied.</p>
    #
    #   @return [EnvironmentError]
    #
    EnvironmentResponse = ::Struct.new(
      :variables,
      :error,
      keyword_init: true
    ) do
      include Seahorse::Structure

      def to_s
        "#<struct AWS::Lambda::Types::EnvironmentResponse "\
          "variables=\"[SENSITIVE]\", "\
          "error=#{error || 'nil'}>"
      end
    end

    # <p>A mapping between an AWS resource and an AWS Lambda function. See <a>CreateEventSourceMapping</a> for details.</p>
    #
    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #
    #   @return [String]
    #
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams
    #         sources. <code>AT_TIMESTAMP</code> is only supported for Amazon Kinesis streams.</p>
    #
    #   @return [String]
    #
    # @!attribute starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start
    #         reading.</p>
    #
    #   @return [Time]
    #
    # @!attribute batch_size
    #   <p>The maximum number of items to retrieve in a single batch.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_batching_window_in_seconds
    #   <p>(Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds. The default value is zero.</p>
    #
    #   @return [Integer]
    #
    # @!attribute parallelization_factor
    #   <p>(Streams) The number of batches to process from each shard concurrently. The default value is 1.</p>
    #
    #   @return [Integer]
    #
    # @!attribute event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p>
    #
    #   @return [String]
    #
    # @!attribute function_arn
    #   <p>The ARN of the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date that the event source mapping was last updated, or its state changed.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_processing_result
    #   <p>The result of the last AWS Lambda invocation of your Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the event source mapping. It can be one of the following: <code>Creating</code>,
    #         <code>Enabling</code>, <code>Enabled</code>, <code>Disabling</code>, <code>Disabled</code>,
    #         <code>Updating</code>, or <code>Deleting</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute state_transition_reason
    #   <p>Indicates whether the last change to the event source mapping was made by a user, or by the Lambda
    #         service.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_config
    #   <p>(Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.</p>
    #
    #   @return [DestinationConfig]
    #
    # @!attribute topics
    #   <p>The name of the Kafka topic.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute queues
    #   <p>
    #         (MQ) The name of the Amazon MQ broker destination queue to consume.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_access_configurations
    #   <p>An array of the authentication protocol, or the VPC components to secure your event source.</p>
    #
    #   @return [Array<SourceAccessConfiguration>]
    #
    # @!attribute self_managed_event_source
    #   <p>The Self-Managed Apache Kafka cluster for your event source.</p>
    #
    #   @return [SelfManagedEventSource]
    #
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Streams) Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bisect_batch_on_function_error
    #   <p>(Streams) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute maximum_retry_attempts
    #   <p>(Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tumbling_window_in_seconds
    #   <p>(Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute function_response_types
    #   <p>(Streams) A list of current response type enums applied to the event source mapping.</p>
    #
    #   @return [Array<String>]
    #
    EventSourceMappingConfiguration = ::Struct.new(
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :function_arn,
      :last_modified,
      :last_processing_result,
      :state,
      :state_transition_reason,
      :destination_config,
      :topics,
      :queues,
      :source_access_configurations,
      :self_managed_event_source,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :tumbling_window_in_seconds,
      :function_response_types,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Details about the connection between a Lambda function and an Amazon EFS file system.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon EFS access point that provides access to the file system.</p>
    #
    #   @return [String]
    #
    # @!attribute local_mount_path
    #   <p>The path where the function can access the file system, starting with <code>/mnt/</code>.</p>
    #
    #   @return [String]
    #
    FileSystemConfig = ::Struct.new(
      :arn,
      :local_mount_path,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The code for the Lambda function. You can specify either an object in Amazon S3, upload a .zip file archive deployment
    #       package directly, or specify the URI of a container image.</p>
    #
    # @!attribute zip_file
    #   <p>The base64-encoded contents of the deployment package. AWS SDK and AWS CLI clients handle the encoding for
    #     you.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [String]
    #
    # @!attribute s3_bucket
    #   <p>An Amazon S3 bucket in the same AWS Region as your function. The bucket can be in a different AWS account.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key
    #   <p>The Amazon S3 key of the deployment package.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_object_version
    #   <p>For versioned objects, the version of the deployment package object to use.</p>
    #
    #   @return [String]
    #
    # @!attribute image_uri
    #   <p>URI of a container image in the Amazon ECR registry.</p>
    #
    #   @return [String]
    #
    FunctionCode = ::Struct.new(
      :zip_file,
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :image_uri,
      keyword_init: true
    ) do
      include Seahorse::Structure

      def to_s
        "#<struct AWS::Lambda::Types::FunctionCode "\
          "zip_file=\"[SENSITIVE]\", "\
          "s3_bucket=#{s3_bucket || 'nil'}, "\
          "s3_key=#{s3_key || 'nil'}, "\
          "s3_object_version=#{s3_object_version || 'nil'}, "\
          "image_uri=#{image_uri || 'nil'}>"
      end
    end

    # <p>Details about a function's deployment package.</p>
    #
    # @!attribute repository_type
    #   <p>The service that's hosting the file.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>A presigned URL that you can use to download the deployment package.</p>
    #
    #   @return [String]
    #
    # @!attribute image_uri
    #   <p>URI of a container image in the Amazon ECR registry.</p>
    #
    #   @return [String]
    #
    # @!attribute resolved_image_uri
    #   <p>The resolved URI for the image.</p>
    #
    #   @return [String]
    #
    FunctionCodeLocation = ::Struct.new(
      :repository_type,
      :location,
      :image_uri,
      :resolved_image_uri,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Details about a function's configuration.</p>
    #
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute function_arn
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute runtime
    #   <p>The runtime environment for the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The function's execution role.</p>
    #
    #   @return [String]
    #
    # @!attribute handler
    #   <p>The function that Lambda calls to begin executing your function.</p>
    #
    #   @return [String]
    #
    # @!attribute code_size
    #   <p>The size of the function's deployment package, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   <p>The function's description.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout
    #   <p>The amount of time in seconds that Lambda allows a function to run before stopping it.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory_size
    #   <p>The amount of memory available to the function at runtime. </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified
    #   <p>The date and time that the function was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #
    #   @return [String]
    #
    # @!attribute code_sha256
    #   <p>The SHA256 hash of the function's deployment package.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>The function's networking configuration.</p>
    #
    #   @return [VpcConfigResponse]
    #
    # @!attribute dead_letter_config
    #   <p>The function's dead letter queue.</p>
    #
    #   @return [DeadLetterConfig]
    #
    # @!attribute environment
    #   <p>The function's environment variables.</p>
    #
    #   @return [EnvironmentResponse]
    #
    # @!attribute kms_key_arn
    #   <p>The KMS key that's used to encrypt the function's environment variables. This key is only returned if you've
    #         configured a customer managed CMK.</p>
    #
    #   @return [String]
    #
    # @!attribute tracing_config
    #   <p>The function's AWS X-Ray tracing configuration.</p>
    #
    #   @return [TracingConfigResponse]
    #
    # @!attribute master_arn
    #   <p>For Lambda@Edge functions, the ARN of the master function.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The latest updated revision of the function or alias.</p>
    #
    #   @return [String]
    #
    # @!attribute layers
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">
    #         layers</a>.</p>
    #
    #   @return [Array<Layer>]
    #
    # @!attribute state
    #   <p>The current state of the function. When the state is <code>Inactive</code>, you can reactivate the function by
    #         invoking it.</p>
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>The reason for the function's current state.</p>
    #
    #   @return [String]
    #
    # @!attribute state_reason_code
    #   <p>The reason code for the function's current state. When the code is <code>Creating</code>, you can't invoke or
    #         modify the function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status
    #   <p>The status of the last update that was performed on the function. This is first set to <code>Successful</code>
    #         after function creation completes.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status_reason
    #   <p>The reason for the last update that was performed on the function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status_reason_code
    #   <p>The reason code for the last update that was performed on the function.</p>
    #
    #   @return [String]
    #
    # @!attribute file_system_configs
    #   <p>Connection settings for an Amazon EFS file system.</p>
    #
    #   @return [Array<FileSystemConfig>]
    #
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #
    #   @return [String]
    #
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #
    #   @return [ImageConfigResponse]
    #
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #
    #   @return [String]
    #
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #
    #   @return [String]
    #
    FunctionConfiguration = ::Struct.new(
      :function_name,
      :function_arn,
      :runtime,
      :role,
      :handler,
      :code_size,
      :description,
      :timeout,
      :memory_size,
      :last_modified,
      :code_sha256,
      :version,
      :vpc_config,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :master_arn,
      :revision_id,
      :layers,
      :state,
      :state_reason,
      :state_reason_code,
      :last_update_status,
      :last_update_status_reason,
      :last_update_status_reason_code,
      :file_system_configs,
      :package_type,
      :image_config_response,
      :signing_profile_version_arn,
      :signing_job_arn,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute last_modified
    #   <p>The date and time that the configuration was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    #
    #   @return [Integer]
    #
    # @!attribute destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p>
    #            <p class="title">
    #               <b>Destinations</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Queue</b> - The ARN of an SQS queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Topic</b> - The ARN of an SNS topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p>
    #               </li>
    #            </ul>
    #
    #   @return [DestinationConfig]
    #
    FunctionEventInvokeConfig = ::Struct.new(
      :last_modified,
      :function_arn,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    GetAccountSettingsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute account_limit
    #   <p>Limits that are related to concurrency and code storage.</p>
    #
    #   @return [AccountLimit]
    #
    # @!attribute account_usage
    #   <p>The number of functions and amount of storage in use.</p>
    #
    #   @return [AccountUsage]
    #
    GetAccountSettingsOutput = ::Struct.new(
      :account_limit,
      :account_usage,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute member_name
    #   <p>The name of the alias.</p>
    #
    #   @return [String]
    #
    GetAliasInput = ::Struct.new(
      :function_name,
      :member_name,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Provides configuration information about a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">alias</a>.</p>
    #
    # @!attribute alias_arn
    #   <p>The Amazon Resource Name (ARN) of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute member_name
    #   <p>The name of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute function_version
    #   <p>The function version that the alias invokes.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">routing
    #           configuration</a> of the alias.</p>
    #
    #   @return [AliasRoutingConfiguration]
    #
    # @!attribute revision_id
    #   <p>A unique identifier that changes when you update the alias.</p>
    #
    #   @return [String]
    #
    GetAliasOutput = ::Struct.new(
      :alias_arn,
      :member_name,
      :function_version,
      :description,
      :routing_config,
      :revision_id,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration. </p>
    #
    #   @return [String]
    #
    GetCodeSigningConfigInput = ::Struct.new(
      :code_signing_config_arn,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute code_signing_config
    #   <p>The code signing configuration</p>
    #
    #   @return [CodeSigningConfig]
    #
    GetCodeSigningConfigOutput = ::Struct.new(
      :code_signing_config,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #
    #   @return [String]
    #
    GetEventSourceMappingInput = ::Struct.new(
      :uuid,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>A mapping between an AWS resource and an AWS Lambda function. See <a>CreateEventSourceMapping</a> for details.</p>
    #
    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #
    #   @return [String]
    #
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams
    #         sources. <code>AT_TIMESTAMP</code> is only supported for Amazon Kinesis streams.</p>
    #
    #   @return [String]
    #
    # @!attribute starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start
    #         reading.</p>
    #
    #   @return [Time]
    #
    # @!attribute batch_size
    #   <p>The maximum number of items to retrieve in a single batch.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_batching_window_in_seconds
    #   <p>(Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds. The default value is zero.</p>
    #
    #   @return [Integer]
    #
    # @!attribute parallelization_factor
    #   <p>(Streams) The number of batches to process from each shard concurrently. The default value is 1.</p>
    #
    #   @return [Integer]
    #
    # @!attribute event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p>
    #
    #   @return [String]
    #
    # @!attribute function_arn
    #   <p>The ARN of the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date that the event source mapping was last updated, or its state changed.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_processing_result
    #   <p>The result of the last AWS Lambda invocation of your Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the event source mapping. It can be one of the following: <code>Creating</code>,
    #         <code>Enabling</code>, <code>Enabled</code>, <code>Disabling</code>, <code>Disabled</code>,
    #         <code>Updating</code>, or <code>Deleting</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute state_transition_reason
    #   <p>Indicates whether the last change to the event source mapping was made by a user, or by the Lambda
    #         service.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_config
    #   <p>(Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.</p>
    #
    #   @return [DestinationConfig]
    #
    # @!attribute topics
    #   <p>The name of the Kafka topic.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute queues
    #   <p>
    #         (MQ) The name of the Amazon MQ broker destination queue to consume.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_access_configurations
    #   <p>An array of the authentication protocol, or the VPC components to secure your event source.</p>
    #
    #   @return [Array<SourceAccessConfiguration>]
    #
    # @!attribute self_managed_event_source
    #   <p>The Self-Managed Apache Kafka cluster for your event source.</p>
    #
    #   @return [SelfManagedEventSource]
    #
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Streams) Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bisect_batch_on_function_error
    #   <p>(Streams) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute maximum_retry_attempts
    #   <p>(Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tumbling_window_in_seconds
    #   <p>(Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute function_response_types
    #   <p>(Streams) A list of current response type enums applied to the event source mapping.</p>
    #
    #   @return [Array<String>]
    #
    GetEventSourceMappingOutput = ::Struct.new(
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :function_arn,
      :last_modified,
      :last_processing_result,
      :state,
      :state_transition_reason,
      :destination_config,
      :topics,
      :queues,
      :source_access_configurations,
      :self_managed_event_source,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :tumbling_window_in_seconds,
      :function_response_types,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    GetFunctionCodeSigningConfigInput = ::Struct.new(
      :function_name,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    GetFunctionCodeSigningConfigOutput = ::Struct.new(
      :code_signing_config_arn,
      :function_name,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    GetFunctionConcurrencyInput = ::Struct.new(
      :function_name,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute reserved_concurrent_executions
    #   <p>The number of simultaneous executions that are reserved for the function.</p>
    #
    #   @return [Integer]
    #
    GetFunctionConcurrencyOutput = ::Struct.new(
      :reserved_concurrent_executions,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>Specify a version or alias to get details about a published version of the function.</p>
    #
    #   @return [String]
    #
    GetFunctionConfigurationInput = ::Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Details about a function's configuration.</p>
    #
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute function_arn
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute runtime
    #   <p>The runtime environment for the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The function's execution role.</p>
    #
    #   @return [String]
    #
    # @!attribute handler
    #   <p>The function that Lambda calls to begin executing your function.</p>
    #
    #   @return [String]
    #
    # @!attribute code_size
    #   <p>The size of the function's deployment package, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   <p>The function's description.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout
    #   <p>The amount of time in seconds that Lambda allows a function to run before stopping it.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory_size
    #   <p>The amount of memory available to the function at runtime. </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified
    #   <p>The date and time that the function was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #
    #   @return [String]
    #
    # @!attribute code_sha256
    #   <p>The SHA256 hash of the function's deployment package.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>The function's networking configuration.</p>
    #
    #   @return [VpcConfigResponse]
    #
    # @!attribute dead_letter_config
    #   <p>The function's dead letter queue.</p>
    #
    #   @return [DeadLetterConfig]
    #
    # @!attribute environment
    #   <p>The function's environment variables.</p>
    #
    #   @return [EnvironmentResponse]
    #
    # @!attribute kms_key_arn
    #   <p>The KMS key that's used to encrypt the function's environment variables. This key is only returned if you've
    #         configured a customer managed CMK.</p>
    #
    #   @return [String]
    #
    # @!attribute tracing_config
    #   <p>The function's AWS X-Ray tracing configuration.</p>
    #
    #   @return [TracingConfigResponse]
    #
    # @!attribute master_arn
    #   <p>For Lambda@Edge functions, the ARN of the master function.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The latest updated revision of the function or alias.</p>
    #
    #   @return [String]
    #
    # @!attribute layers
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">
    #         layers</a>.</p>
    #
    #   @return [Array<Layer>]
    #
    # @!attribute state
    #   <p>The current state of the function. When the state is <code>Inactive</code>, you can reactivate the function by
    #         invoking it.</p>
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>The reason for the function's current state.</p>
    #
    #   @return [String]
    #
    # @!attribute state_reason_code
    #   <p>The reason code for the function's current state. When the code is <code>Creating</code>, you can't invoke or
    #         modify the function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status
    #   <p>The status of the last update that was performed on the function. This is first set to <code>Successful</code>
    #         after function creation completes.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status_reason
    #   <p>The reason for the last update that was performed on the function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status_reason_code
    #   <p>The reason code for the last update that was performed on the function.</p>
    #
    #   @return [String]
    #
    # @!attribute file_system_configs
    #   <p>Connection settings for an Amazon EFS file system.</p>
    #
    #   @return [Array<FileSystemConfig>]
    #
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #
    #   @return [String]
    #
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #
    #   @return [ImageConfigResponse]
    #
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #
    #   @return [String]
    #
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #
    #   @return [String]
    #
    GetFunctionConfigurationOutput = ::Struct.new(
      :function_name,
      :function_arn,
      :runtime,
      :role,
      :handler,
      :code_size,
      :description,
      :timeout,
      :memory_size,
      :last_modified,
      :code_sha256,
      :version,
      :vpc_config,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :master_arn,
      :revision_id,
      :layers,
      :state,
      :state_reason,
      :state_reason_code,
      :last_update_status,
      :last_update_status_reason,
      :last_update_status_reason_code,
      :file_system_configs,
      :package_type,
      :image_config_response,
      :signing_profile_version_arn,
      :signing_job_arn,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>A version number or alias name.</p>
    #
    #   @return [String]
    #
    GetFunctionEventInvokeConfigInput = ::Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute last_modified
    #   <p>The date and time that the configuration was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    #
    #   @return [Integer]
    #
    # @!attribute destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p>
    #            <p class="title">
    #               <b>Destinations</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Queue</b> - The ARN of an SQS queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Topic</b> - The ARN of an SNS topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p>
    #               </li>
    #            </ul>
    #
    #   @return [DestinationConfig]
    #
    GetFunctionEventInvokeConfigOutput = ::Struct.new(
      :last_modified,
      :function_arn,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>Specify a version or alias to get details about a published version of the function.</p>
    #
    #   @return [String]
    #
    GetFunctionInput = ::Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute configuration
    #   <p>The configuration of the function or version.</p>
    #
    #   @return [FunctionConfiguration]
    #
    # @!attribute code
    #   <p>The deployment package of the function or version.</p>
    #
    #   @return [FunctionCodeLocation]
    #
    # @!attribute tags
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute concurrency
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html">reserved
    #           concurrency</a>.</p>
    #
    #   @return [Concurrency]
    #
    GetFunctionOutput = ::Struct.new(
      :configuration,
      :code,
      :tags,
      :concurrency,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the layer version.</p>
    #
    #   @return [String]
    #
    GetLayerVersionByArnInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute content
    #   <p>Details about the layer version.</p>
    #
    #   @return [LayerVersionContentOutput]
    #
    # @!attribute layer_arn
    #   <p>The ARN of the layer.</p>
    #
    #   @return [String]
    #
    # @!attribute layer_version_arn
    #   <p>The ARN of the layer version.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the version.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date that the layer version was created, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compatible_runtimes
    #   <p>The layer's compatible runtimes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute license_info
    #   <p>The layer's software license.</p>
    #
    #   @return [String]
    #
    GetLayerVersionByArnOutput = ::Struct.new(
      :content,
      :layer_arn,
      :layer_version_arn,
      :description,
      :created_date,
      :version,
      :compatible_runtimes,
      :license_info,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The version number.</p>
    #
    #   @return [Integer]
    #
    GetLayerVersionInput = ::Struct.new(
      :layer_name,
      :version_number,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute content
    #   <p>Details about the layer version.</p>
    #
    #   @return [LayerVersionContentOutput]
    #
    # @!attribute layer_arn
    #   <p>The ARN of the layer.</p>
    #
    #   @return [String]
    #
    # @!attribute layer_version_arn
    #   <p>The ARN of the layer version.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the version.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date that the layer version was created, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compatible_runtimes
    #   <p>The layer's compatible runtimes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute license_info
    #   <p>The layer's software license.</p>
    #
    #   @return [String]
    #
    GetLayerVersionOutput = ::Struct.new(
      :content,
      :layer_arn,
      :layer_version_arn,
      :description,
      :created_date,
      :version,
      :compatible_runtimes,
      :license_info,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The version number.</p>
    #
    #   @return [Integer]
    #
    GetLayerVersionPolicyInput = ::Struct.new(
      :layer_name,
      :version_number,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute policy
    #   <p>The policy document.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>A unique identifier for the current revision of the policy.</p>
    #
    #   @return [String]
    #
    GetLayerVersionPolicyOutput = ::Struct.new(
      :policy,
      :revision_id,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>Specify a version or alias to get the policy for that resource.</p>
    #
    #   @return [String]
    #
    GetPolicyInput = ::Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute policy
    #   <p>The resource-based policy.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>A unique identifier for the current revision of the policy.</p>
    #
    #   @return [String]
    #
    GetPolicyOutput = ::Struct.new(
      :policy,
      :revision_id,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>The version number or alias name.</p>
    #
    #   @return [String]
    #
    GetProvisionedConcurrencyConfigInput = ::Struct.new(
      :function_name,
      :qualifier,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute requested_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency requested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute available_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency available.</p>
    #
    #   @return [Integer]
    #
    # @!attribute allocated_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency allocated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the allocation process.</p>
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>For failed allocations, the reason that provisioned concurrency could not be allocated.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date and time that a user last updated the configuration, in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601 format</a>.</p>
    #
    #   @return [String]
    #
    GetProvisionedConcurrencyConfigOutput = ::Struct.new(
      :requested_provisioned_concurrent_executions,
      :available_provisioned_concurrent_executions,
      :allocated_provisioned_concurrent_executions,
      :status,
      :status_reason,
      :last_modified,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Configuration values that override the container image Dockerfile settings. See
    #       <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms">Container settings</a>. </p>
    #
    # @!attribute entry_point
    #   <p>Specifies the entry point to their application, which is typically the location of the runtime
    #         executable.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute command
    #   <p>Specifies parameters that you want to pass in with ENTRYPOINT. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute working_directory
    #   <p>Specifies the working directory.</p>
    #
    #   @return [String]
    #
    ImageConfig = ::Struct.new(
      :entry_point,
      :command,
      :working_directory,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Error response to GetFunctionConfiguration.</p>
    #
    # @!attribute error_code
    #   <p>Error code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Error message.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [String]
    #
    ImageConfigError = ::Struct.new(
      :error_code,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure

      def to_s
        "#<struct AWS::Lambda::Types::ImageConfigError "\
          "error_code=#{error_code || 'nil'}, "\
          "message=\"[SENSITIVE]\">"
      end
    end

    # <p>Response to GetFunctionConfiguration request.</p>
    #
    # @!attribute image_config
    #   <p>Configuration values that override the container image Dockerfile.</p>
    #
    #   @return [ImageConfig]
    #
    # @!attribute error
    #   <p>Error response to GetFunctionConfiguration.</p>
    #
    #   @return [ImageConfigError]
    #
    ImageConfigResponse = ::Struct.new(
      :image_config,
      :error,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The code signature failed the integrity check. Lambda always blocks deployment if the integrity check
    #       fails, even if code signing policy is set to WARN.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidCodeSignatureException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>One of the parameters in the request is invalid.</p>
    #
    # @!attribute type
    #   <p>The exception type.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The exception message.</p>
    #
    #   @return [String]
    #
    InvalidParameterValueException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The request body could not be parsed as JSON.</p>
    #
    # @!attribute type
    #   <p>The exception type.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The exception message.</p>
    #
    #   @return [String]
    #
    InvalidRequestContentException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The runtime or runtime version specified is not supported.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRuntimeException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The Security Group ID provided in the Lambda function VPC configuration is invalid.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSecurityGroupIDException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The Subnet ID provided in the Lambda function VPC configuration is invalid.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSubnetIDException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>AWS Lambda could not unzip the deployment package.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidZipFileException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @deprecated
    #
    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute invoke_args
    #   <p>The JSON that you want to provide to your Lambda function as input.</p>
    #
    #   @return [String]
    #
    InvokeAsyncInput = ::Struct.new(
      :function_name,
      :invoke_args,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>A success response (<code>202 Accepted</code>) indicates that the request is queued for invocation. </p>
    #
    # @deprecated
    #
    # @!attribute status
    #   <p>The status code.</p>
    #
    #   @return [Integer]
    #
    InvokeAsyncOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute invocation_type
    #   <p>Choose from the following options.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RequestResponse</code> (default) - Invoke the function synchronously. Keep the connection open until
    #             the function returns a response or times out. The API response includes the function response and additional
    #             data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Event</code> - Invoke the function asynchronously. Send events that fail multiple times to the
    #             function's dead-letter queue (if it's configured). The API response only includes a status code.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DryRun</code> - Validate parameter values and verify that the user or role has permission to invoke
    #             the function.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute log_type
    #   <p>Set to <code>Tail</code> to include the execution log in the response.</p>
    #
    #   @return [String]
    #
    # @!attribute client_context
    #   <p>Up to 3583 bytes of base64-encoded data about the invoking client to pass to the function in the context
    #         object.</p>
    #
    #   @return [String]
    #
    # @!attribute payload
    #   <p>The JSON that you want to provide to your Lambda function as input.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>Specify a version or alias to invoke a published version of the function.</p>
    #
    #   @return [String]
    #
    InvokeInput = ::Struct.new(
      :function_name,
      :invocation_type,
      :log_type,
      :client_context,
      :payload,
      :qualifier,
      keyword_init: true
    ) do
      include Seahorse::Structure

      def to_s
        "#<struct AWS::Lambda::Types::InvokeInput "\
          "function_name=#{function_name || 'nil'}, "\
          "invocation_type=#{invocation_type || 'nil'}, "\
          "log_type=#{log_type || 'nil'}, "\
          "client_context=#{client_context || 'nil'}, "\
          "payload=\"[SENSITIVE]\", "\
          "qualifier=#{qualifier || 'nil'}>"
      end
    end

    # @!attribute status_code
    #   <p>The HTTP status code is in the 200 range for a successful request. For the <code>RequestResponse</code>
    #         invocation type, this status code is 200. For the <code>Event</code> invocation type, this status code is 202. For
    #         the <code>DryRun</code> invocation type, the status code is 204.</p>
    #
    #   @return [Integer]
    #
    # @!attribute function_error
    #   <p>If present, indicates that an error occurred during function execution. Details about the error are included
    #         in the response payload.</p>
    #
    #   @return [String]
    #
    # @!attribute log_result
    #   <p>The last 4 KB of the execution log, which is base64 encoded.</p>
    #
    #   @return [String]
    #
    # @!attribute payload
    #   <p>The response from the function, or an error object.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [String]
    #
    # @!attribute executed_version
    #   <p>The version of the function that executed. When you invoke a function with an alias, this indicates which
    #         version the alias resolved to.</p>
    #
    #   @return [String]
    #
    InvokeOutput = ::Struct.new(
      :status_code,
      :function_error,
      :log_result,
      :payload,
      :executed_version,
      keyword_init: true
    ) do
      include Seahorse::Structure

      def to_s
        "#<struct AWS::Lambda::Types::InvokeOutput "\
          "status_code=#{status_code || 'nil'}, "\
          "function_error=#{function_error || 'nil'}, "\
          "log_result=#{log_result || 'nil'}, "\
          "payload=\"[SENSITIVE]\", "\
          "executed_version=#{executed_version || 'nil'}>"
      end
    end

    # <p>Lambda was unable to decrypt the environment variables because KMS access was denied. Check the Lambda
    #       function's KMS permissions.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSAccessDeniedException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Lambda was unable to decrypt the environment variables because the KMS key used is disabled. Check the Lambda
    #       function's KMS key settings.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSDisabledException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Lambda was unable to decrypt the environment variables because the KMS key used is in an invalid state for
    #       Decrypt. Check the function's KMS key settings.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSInvalidStateException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Lambda was unable to decrypt the environment variables because the KMS key was not found. Check the function's
    #       KMS key settings. </p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSNotFoundException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>An <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS Lambda
    #         layer</a>.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the function layer.</p>
    #
    #   @return [String]
    #
    # @!attribute code_size
    #   <p>The size of the layer archive in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute signing_profile_version_arn
    #   <p>The Amazon Resource Name (ARN) for a signing profile version.</p>
    #
    #   @return [String]
    #
    # @!attribute signing_job_arn
    #   <p>The Amazon Resource Name (ARN)  of a signing job.</p>
    #
    #   @return [String]
    #
    Layer = ::Struct.new(
      :arn,
      :code_size,
      :signing_profile_version_arn,
      :signing_job_arn,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>A ZIP archive that contains the contents of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS Lambda
    #         layer</a>. You can specify either an Amazon S3 location,
    #       or upload a layer archive directly.</p>
    #
    # @!attribute s3_bucket
    #   <p>The Amazon S3 bucket of the layer archive.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key
    #   <p>The Amazon S3 key of the layer archive.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_object_version
    #   <p>For versioned objects, the version of the layer archive object to use.</p>
    #
    #   @return [String]
    #
    # @!attribute zip_file
    #   <p>The base64-encoded contents of the layer archive. AWS SDK and AWS CLI clients handle the encoding for
    #         you.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [String]
    #
    LayerVersionContentInput = ::Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :zip_file,
      keyword_init: true
    ) do
      include Seahorse::Structure

      def to_s
        "#<struct AWS::Lambda::Types::LayerVersionContentInput "\
          "s3_bucket=#{s3_bucket || 'nil'}, "\
          "s3_key=#{s3_key || 'nil'}, "\
          "s3_object_version=#{s3_object_version || 'nil'}, "\
          "zip_file=\"[SENSITIVE]\">"
      end
    end

    # <p>Details about a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS Lambda
    #         layer</a>.</p>
    #
    # @!attribute location
    #   <p>A link to the layer archive in Amazon S3 that is valid for 10 minutes.</p>
    #
    #   @return [String]
    #
    # @!attribute code_sha256
    #   <p>The SHA-256 hash of the layer archive.</p>
    #
    #   @return [String]
    #
    # @!attribute code_size
    #   <p>The size of the layer archive in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute signing_profile_version_arn
    #   <p>The Amazon Resource Name (ARN) for a signing profile version.</p>
    #
    #   @return [String]
    #
    # @!attribute signing_job_arn
    #   <p>The Amazon Resource Name (ARN)  of a signing job.</p>
    #
    #   @return [String]
    #
    LayerVersionContentOutput = ::Struct.new(
      :location,
      :code_sha256,
      :code_size,
      :signing_profile_version_arn,
      :signing_job_arn,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Details about a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS Lambda
    #         layer</a>.</p>
    #
    # @!attribute layer_version_arn
    #   <p>The ARN of the layer version.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   <p>The description of the version.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date that the version was created, in ISO 8601 format. For example, <code>2018-11-27T15:10:45.123+0000</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute compatible_runtimes
    #   <p>The layer's compatible runtimes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute license_info
    #   <p>The layer's open-source license.</p>
    #
    #   @return [String]
    #
    LayerVersionsListItem = ::Struct.new(
      :layer_version_arn,
      :version,
      :description,
      :created_date,
      :compatible_runtimes,
      :license_info,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Details about an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS Lambda
    #         layer</a>.</p>
    #
    # @!attribute layer_name
    #   <p>The name of the layer.</p>
    #
    #   @return [String]
    #
    # @!attribute layer_arn
    #   <p>The Amazon Resource Name (ARN) of the function layer.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_matching_version
    #   <p>The newest version of the layer.</p>
    #
    #   @return [LayerVersionsListItem]
    #
    LayersListItem = ::Struct.new(
      :layer_name,
      :layer_arn,
      :latest_matching_version,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute function_version
    #   <p>Specify a function version to only list aliases that invoke that version.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>Limit the number of aliases returned.</p>
    #
    #   @return [Integer]
    #
    ListAliasesInput = ::Struct.new(
      :function_name,
      :function_version,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    # @!attribute aliases
    #   <p>A list of aliases.</p>
    #
    #   @return [Array<AliasConfiguration>]
    #
    ListAliasesOutput = ::Struct.new(
      :next_marker,
      :aliases,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>Maximum number of items to return.</p>
    #
    #   @return [Integer]
    #
    ListCodeSigningConfigsInput = ::Struct.new(
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    # @!attribute code_signing_configs
    #   <p>The code signing configurations</p>
    #
    #   @return [Array<CodeSigningConfig>]
    #
    ListCodeSigningConfigsOutput = ::Struct.new(
      :next_marker,
      :code_signing_configs,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Amazon Kinesis</b> - The ARN of the data stream or a stream consumer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon DynamoDB Streams</b> - The ARN of the stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Simple Queue Service</b> - The ARN of the queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Managed Streaming for Apache Kafka</b> - The ARN of the cluster.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Version or Alias ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>A pagination token returned by a previous call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of event source mappings to return.</p>
    #
    #   @return [Integer]
    #
    ListEventSourceMappingsInput = ::Struct.new(
      :event_source_arn,
      :function_name,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute next_marker
    #   <p>A pagination token that's returned when the response doesn't contain all event source mappings.</p>
    #
    #   @return [String]
    #
    # @!attribute event_source_mappings
    #   <p>A list of event source mappings.</p>
    #
    #   @return [Array<EventSourceMappingConfiguration>]
    #
    ListEventSourceMappingsOutput = ::Struct.new(
      :next_marker,
      :event_source_mappings,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of configurations to return.</p>
    #
    #   @return [Integer]
    #
    ListFunctionEventInvokeConfigsInput = ::Struct.new(
      :function_name,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_event_invoke_configs
    #   <p>A list of configurations.</p>
    #
    #   @return [Array<FunctionEventInvokeConfig>]
    #
    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ListFunctionEventInvokeConfigsOutput = ::Struct.new(
      :function_event_invoke_configs,
      :next_marker,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>Maximum number of items to return.</p>
    #
    #   @return [Integer]
    #
    ListFunctionsByCodeSigningConfigInput = ::Struct.new(
      :code_signing_config_arn,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    # @!attribute function_arns
    #   <p>The function ARNs. </p>
    #
    #   @return [Array<String>]
    #
    ListFunctionsByCodeSigningConfigOutput = ::Struct.new(
      :next_marker,
      :function_arns,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute master_region
    #   <p>For Lambda@Edge functions, the AWS Region of the master function. For example, <code>us-east-1</code> filters
    #         the list of functions to only include Lambda@Edge functions replicated from a master function in US East (N.
    #         Virginia). If specified, you must set <code>FunctionVersion</code> to <code>ALL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute function_version
    #   <p>Set to <code>ALL</code> to include entries for all published versions of each function.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of functions to return in the response. Note that <code>ListFunctions</code> returns a maximum of 50 items in each response,
    #         even if you set the number higher.</p>
    #
    #   @return [Integer]
    #
    ListFunctionsInput = ::Struct.new(
      :master_region,
      :function_version,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>A list of Lambda functions.</p>
    #
    # @!attribute next_marker
    #   <p>The really long line of documentaiton input that goes on and on and on and on on.  Some other data.  long url  diff --git a/codegen/sdk-codegen/aws-models/lambda.2015-03-31.json b/codegen/sdk-codegen/aws-models/lambda.2015-03-31.json blah blah blah other things:  create mode 100644 codegen/smithy-aws-ruby-codegen/src/main/java/software/amazon/smithy/aws/ruby/codegen/protocol/restjson/generators/ParserGenerator.java token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    # @!attribute functions
    #   <p>A list of Lambda functions.</p>
    #
    #   @return [Array<FunctionConfiguration>]
    #
    ListFunctionsOutput = ::Struct.new(
      :next_marker,
      :functions,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute compatible_runtime
    #   <p>A runtime identifier. For example, <code>go1.x</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>A pagination token returned by a previous call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of versions to return.</p>
    #
    #   @return [Integer]
    #
    ListLayerVersionsInput = ::Struct.new(
      :compatible_runtime,
      :layer_name,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute next_marker
    #   <p>A pagination token returned when the response doesn't contain all versions.</p>
    #
    #   @return [String]
    #
    # @!attribute layer_versions
    #   <p>A list of versions.</p>
    #
    #   @return [Array<LayerVersionsListItem>]
    #
    ListLayerVersionsOutput = ::Struct.new(
      :next_marker,
      :layer_versions,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute compatible_runtime
    #   <p>A runtime identifier. For example, <code>go1.x</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>A pagination token returned by a previous call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of layers to return.</p>
    #
    #   @return [Integer]
    #
    ListLayersInput = ::Struct.new(
      :compatible_runtime,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute next_marker
    #   <p>A pagination token returned when the response doesn't contain all layers.</p>
    #
    #   @return [String]
    #
    # @!attribute layers
    #   <p>A list of function layers.</p>
    #
    #   @return [Array<LayersListItem>]
    #
    ListLayersOutput = ::Struct.new(
      :next_marker,
      :layers,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>Specify a number to limit the number of configurations returned.</p>
    #
    #   @return [Integer]
    #
    ListProvisionedConcurrencyConfigsInput = ::Struct.new(
      :function_name,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute provisioned_concurrency_configs
    #   <p>A list of provisioned concurrency configurations.</p>
    #
    #   @return [Array<ProvisionedConcurrencyConfigListItem>]
    #
    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ListProvisionedConcurrencyConfigsOutput = ::Struct.new(
      :provisioned_concurrency_configs,
      :next_marker,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute resource
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    ListTagsInput = ::Struct.new(
      :resource,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute tags
    #   <p>The function's tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of versions to return.</p>
    #
    #   @return [Integer]
    #
    ListVersionsByFunctionInput = ::Struct.new(
      :function_name,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute next_marker
    #   <p>The pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    # @!attribute versions
    #   <p>A list of Lambda function versions.</p>
    #
    #   @return [Array<FunctionConfiguration>]
    #
    ListVersionsByFunctionOutput = ::Struct.new(
      :next_marker,
      :versions,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>A destination for events that failed processing.</p>
    #
    # @!attribute destination
    #   <p>The Amazon Resource Name (ARN) of the destination resource.</p>
    #
    #   @return [String]
    #
    OnFailure = ::Struct.new(
      :destination,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>A destination for events that were processed successfully.</p>
    #
    # @!attribute destination
    #   <p>The Amazon Resource Name (ARN) of the destination resource.</p>
    #
    #   @return [String]
    #
    OnSuccess = ::Struct.new(
      :destination,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The permissions policy for the resource is too large. <a href="https://docs.aws.amazon.com/lambda/latest/dg/limits.html">Learn more</a>
    #          </p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PolicyLengthExceededException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The RevisionId provided does not match the latest RevisionId for the Lambda function or alias. Call the
    #         <code>GetFunction</code> or the <code>GetAlias</code> API to retrieve the latest RevisionId for your
    #       resource.</p>
    #
    # @!attribute type
    #   <p>The exception type.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The exception message.</p>
    #
    #   @return [String]
    #
    PreconditionFailedException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Details about the provisioned concurrency configuration for a function alias or version.</p>
    #
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the alias or version.</p>
    #
    #   @return [String]
    #
    # @!attribute requested_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency requested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute available_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency available.</p>
    #
    #   @return [Integer]
    #
    # @!attribute allocated_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency allocated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the allocation process.</p>
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>For failed allocations, the reason that provisioned concurrency could not be allocated.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date and time that a user last updated the configuration, in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601 format</a>.</p>
    #
    #   @return [String]
    #
    ProvisionedConcurrencyConfigListItem = ::Struct.new(
      :function_arn,
      :requested_provisioned_concurrent_executions,
      :available_provisioned_concurrent_executions,
      :allocated_provisioned_concurrent_executions,
      :status,
      :status_reason,
      :last_modified,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The specified configuration does not exist.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ProvisionedConcurrencyConfigNotFoundException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the version.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The function layer archive.</p>
    #
    #   @return [LayerVersionContentInput]
    #
    # @!attribute compatible_runtimes
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">function
    #           runtimes</a>. Used for filtering with <a>ListLayers</a> and <a>ListLayerVersions</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute license_info
    #   <p>The layer's software license. It can be any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>An <a href="https://spdx.org/licenses/">SPDX license identifier</a>. For example,
    #             <code>MIT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The URL of a license hosted on the internet. For example,
    #             <code>https://opensource.org/licenses/MIT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The full text of the license.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    PublishLayerVersionInput = ::Struct.new(
      :layer_name,
      :description,
      :content,
      :compatible_runtimes,
      :license_info,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute content
    #   <p>Details about the layer version.</p>
    #
    #   @return [LayerVersionContentOutput]
    #
    # @!attribute layer_arn
    #   <p>The ARN of the layer.</p>
    #
    #   @return [String]
    #
    # @!attribute layer_version_arn
    #   <p>The ARN of the layer version.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the version.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date that the layer version was created, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compatible_runtimes
    #   <p>The layer's compatible runtimes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute license_info
    #   <p>The layer's software license.</p>
    #
    #   @return [String]
    #
    PublishLayerVersionOutput = ::Struct.new(
      :content,
      :layer_arn,
      :layer_version_arn,
      :description,
      :created_date,
      :version,
      :compatible_runtimes,
      :license_info,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute code_sha256
    #   <p>Only publish a version if the hash value matches the value that's specified. Use this option to avoid
    #         publishing a version if the function code has changed since you last updated it. You can get the hash for the
    #         version that you uploaded from the output of <a>UpdateFunctionCode</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the version to override the description in the function configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>Only update the function if the revision ID matches the ID that's specified. Use this option to avoid
    #         publishing a version if the function configuration has changed since you last updated it.</p>
    #
    #   @return [String]
    #
    PublishVersionInput = ::Struct.new(
      :function_name,
      :code_sha256,
      :description,
      :revision_id,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Details about a function's configuration.</p>
    #
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute function_arn
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute runtime
    #   <p>The runtime environment for the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The function's execution role.</p>
    #
    #   @return [String]
    #
    # @!attribute handler
    #   <p>The function that Lambda calls to begin executing your function.</p>
    #
    #   @return [String]
    #
    # @!attribute code_size
    #   <p>The size of the function's deployment package, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   <p>The function's description.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout
    #   <p>The amount of time in seconds that Lambda allows a function to run before stopping it.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory_size
    #   <p>The amount of memory available to the function at runtime. </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified
    #   <p>The date and time that the function was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #
    #   @return [String]
    #
    # @!attribute code_sha256
    #   <p>The SHA256 hash of the function's deployment package.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>The function's networking configuration.</p>
    #
    #   @return [VpcConfigResponse]
    #
    # @!attribute dead_letter_config
    #   <p>The function's dead letter queue.</p>
    #
    #   @return [DeadLetterConfig]
    #
    # @!attribute environment
    #   <p>The function's environment variables.</p>
    #
    #   @return [EnvironmentResponse]
    #
    # @!attribute kms_key_arn
    #   <p>The KMS key that's used to encrypt the function's environment variables. This key is only returned if you've
    #         configured a customer managed CMK.</p>
    #
    #   @return [String]
    #
    # @!attribute tracing_config
    #   <p>The function's AWS X-Ray tracing configuration.</p>
    #
    #   @return [TracingConfigResponse]
    #
    # @!attribute master_arn
    #   <p>For Lambda@Edge functions, the ARN of the master function.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The latest updated revision of the function or alias.</p>
    #
    #   @return [String]
    #
    # @!attribute layers
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">
    #         layers</a>.</p>
    #
    #   @return [Array<Layer>]
    #
    # @!attribute state
    #   <p>The current state of the function. When the state is <code>Inactive</code>, you can reactivate the function by
    #         invoking it.</p>
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>The reason for the function's current state.</p>
    #
    #   @return [String]
    #
    # @!attribute state_reason_code
    #   <p>The reason code for the function's current state. When the code is <code>Creating</code>, you can't invoke or
    #         modify the function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status
    #   <p>The status of the last update that was performed on the function. This is first set to <code>Successful</code>
    #         after function creation completes.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status_reason
    #   <p>The reason for the last update that was performed on the function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status_reason_code
    #   <p>The reason code for the last update that was performed on the function.</p>
    #
    #   @return [String]
    #
    # @!attribute file_system_configs
    #   <p>Connection settings for an Amazon EFS file system.</p>
    #
    #   @return [Array<FileSystemConfig>]
    #
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #
    #   @return [String]
    #
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #
    #   @return [ImageConfigResponse]
    #
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #
    #   @return [String]
    #
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #
    #   @return [String]
    #
    PublishVersionOutput = ::Struct.new(
      :function_name,
      :function_arn,
      :runtime,
      :role,
      :handler,
      :code_size,
      :description,
      :timeout,
      :memory_size,
      :last_modified,
      :code_sha256,
      :version,
      :vpc_config,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :master_arn,
      :revision_id,
      :layers,
      :state,
      :state_reason,
      :state_reason_code,
      :last_update_status,
      :last_update_status_reason,
      :last_update_status_reason_code,
      :file_system_configs,
      :package_type,
      :image_config_response,
      :signing_profile_version_arn,
      :signing_job_arn,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    PutFunctionCodeSigningConfigInput = ::Struct.new(
      :code_signing_config_arn,
      :function_name,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    PutFunctionCodeSigningConfigOutput = ::Struct.new(
      :code_signing_config_arn,
      :function_name,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_concurrent_executions
    #   <p>The number of simultaneous executions to reserve for the function.</p>
    #
    #   @return [Integer]
    #
    PutFunctionConcurrencyInput = ::Struct.new(
      :function_name,
      :reserved_concurrent_executions,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute reserved_concurrent_executions
    #   <p>The number of concurrent executions that are reserved for this function. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html">Managing Concurrency</a>.</p>
    #
    #   @return [Integer]
    #
    PutFunctionConcurrencyOutput = ::Struct.new(
      :reserved_concurrent_executions,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>A version number or alias name.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    #
    #   @return [Integer]
    #
    # @!attribute destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p>
    #            <p class="title">
    #               <b>Destinations</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Queue</b> - The ARN of an SQS queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Topic</b> - The ARN of an SNS topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p>
    #               </li>
    #            </ul>
    #
    #   @return [DestinationConfig]
    #
    PutFunctionEventInvokeConfigInput = ::Struct.new(
      :function_name,
      :qualifier,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute last_modified
    #   <p>The date and time that the configuration was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    #
    #   @return [Integer]
    #
    # @!attribute destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p>
    #            <p class="title">
    #               <b>Destinations</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Queue</b> - The ARN of an SQS queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Topic</b> - The ARN of an SNS topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p>
    #               </li>
    #            </ul>
    #
    #   @return [DestinationConfig]
    #
    PutFunctionEventInvokeConfigOutput = ::Struct.new(
      :last_modified,
      :function_arn,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>The version number or alias name.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency to allocate for the version or alias.</p>
    #
    #   @return [Integer]
    #
    PutProvisionedConcurrencyConfigInput = ::Struct.new(
      :function_name,
      :qualifier,
      :provisioned_concurrent_executions,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute requested_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency requested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute available_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency available.</p>
    #
    #   @return [Integer]
    #
    # @!attribute allocated_provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency allocated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the allocation process.</p>
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>For failed allocations, the reason that provisioned concurrency could not be allocated.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date and time that a user last updated the configuration, in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601 format</a>.</p>
    #
    #   @return [String]
    #
    PutProvisionedConcurrencyConfigOutput = ::Struct.new(
      :requested_provisioned_concurrent_executions,
      :available_provisioned_concurrent_executions,
      :allocated_provisioned_concurrent_executions,
      :status,
      :status_reason,
      :last_modified,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The version number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute statement_id
    #   <p>The identifier that was specified when the statement was added.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>Only update the policy if the revision ID matches the ID specified. Use this option to avoid modifying a
    #         policy that has changed since you last read it.</p>
    #
    #   @return [String]
    #
    RemoveLayerVersionPermissionInput = ::Struct.new(
      :layer_name,
      :version_number,
      :statement_id,
      :revision_id,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    RemoveLayerVersionPermissionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute statement_id
    #   <p>Statement ID of the permission to remove.</p>
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>Specify a version or alias to remove permissions from a published version of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>Only update the policy if the revision ID matches the ID that's specified. Use this option to avoid modifying a
    #         policy that has changed since you last read it.</p>
    #
    #   @return [String]
    #
    RemovePermissionInput = ::Struct.new(
      :function_name,
      :statement_id,
      :qualifier,
      :revision_id,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    RemovePermissionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The request payload exceeded the <code>Invoke</code> request body JSON input limit. For more information, see
    #         <a href="https://docs.aws.amazon.com/lambda/latest/dg/limits.html">Limits</a>. </p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RequestTooLargeException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The resource already exists, or another operation is in progress.</p>
    #
    # @!attribute type
    #   <p>The exception type.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The exception message.</p>
    #
    #   @return [String]
    #
    ResourceConflictException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The operation conflicts with the resource's availability. For example, you attempted to update an EventSource
    #       Mapping in CREATING, or tried to delete a EventSource mapping currently in the UPDATING state.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The resource specified in the request does not exist.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The function is inactive and its VPC connection is no longer available. Wait for the VPC connection to
    #       reestablish and try again.</p>
    #
    # @!attribute type
    #   <p>The exception type.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The exception message.</p>
    #
    #   @return [String]
    #
    ResourceNotReadyException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The Self-Managed Apache Kafka cluster for your event source.</p>
    #
    # @!attribute endpoints
    #   <p>The list of bootstrap servers for your Kafka brokers in the following format: <code>"KAFKA_BOOTSTRAP_SERVERS": ["abc.xyz.com:xxxx","abc2.xyz.com:xxxx"]</code>.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    SelfManagedEventSource = ::Struct.new(
      :endpoints,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The AWS Lambda service encountered an internal error.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>You can specify the authentication protocol, or the VPC components to secure access to your event source.</p>
    #
    # @!attribute type
    #   <p>The type of authentication protocol or the VPC components for your event source. For example: <code>"Type":"SASL_SCRAM_512_AUTH"</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BASIC_AUTH</code> - (MQ) The Secrets Manager secret that stores your broker credentials.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VPC_SUBNET</code> - The subnets associated with your VPC. Lambda connects to these subnets to fetch data from your Self-Managed Apache Kafka cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VPC_SECURITY_GROUP</code> - The VPC security group used to manage access to your Self-Managed Apache Kafka brokers.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SASL_SCRAM_256_AUTH</code> - The Secrets Manager ARN of your secret key used for SASL SCRAM-256 authentication of your Self-Managed Apache Kafka brokers.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SASL_SCRAM_512_AUTH</code> - The Secrets Manager ARN of your secret key used for SASL SCRAM-512 authentication of your Self-Managed Apache Kafka brokers.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute uri
    #   <p>The value for your chosen configuration in <code>Type</code>. For example: <code>"URI": "arn:aws:secretsmanager:us-east-1:01234567890:secret:MyBrokerSecretName"</code>.</p>
    #
    #   @return [String]
    #
    SourceAccessConfiguration = ::Struct.new(
      :type,
      :uri,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>AWS Lambda was not able to set up VPC access for the Lambda function because one or more configured subnets
    #       has no available IP addresses.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubnetIPAddressLimitReachedException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute resource
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to apply to the function.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource,
      :tags,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The request throughput limit was exceeded.</p>
    #
    # @!attribute retry_after_seconds
    #   <p>The number of seconds the caller should wait before retrying.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :retry_after_seconds,
      :type,
      :message,
      :reason,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The function's AWS X-Ray tracing configuration. To sample and record incoming requests, set <code>Mode</code>
    #       to <code>Active</code>.</p>
    #
    # @!attribute mode
    #   <p>The tracing mode.</p>
    #
    #   @return [String]
    #
    TracingConfig = ::Struct.new(
      :mode,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The function's AWS X-Ray tracing configuration.</p>
    #
    # @!attribute mode
    #   <p>The tracing mode.</p>
    #
    #   @return [String]
    #
    TracingConfigResponse = ::Struct.new(
      :mode,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The content type of the <code>Invoke</code> request body is not JSON.</p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedMediaTypeException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute resource
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the function.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource,
      :tag_keys,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute member_name
    #   <p>The name of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute function_version
    #   <p>The function version that the alias invokes.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html configuring-alias-routing">routing
    #           configuration</a> of the alias.</p>
    #
    #   @return [AliasRoutingConfiguration]
    #
    # @!attribute revision_id
    #   <p>Only update the alias if the revision ID matches the ID that's specified. Use this option to avoid modifying
    #         an alias that has changed since you last read it.</p>
    #
    #   @return [String]
    #
    UpdateAliasInput = ::Struct.new(
      :function_name,
      :member_name,
      :function_version,
      :description,
      :routing_config,
      :revision_id,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Provides configuration information about a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">alias</a>.</p>
    #
    # @!attribute alias_arn
    #   <p>The Amazon Resource Name (ARN) of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute member_name
    #   <p>The name of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute function_version
    #   <p>The function version that the alias invokes.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">routing
    #           configuration</a> of the alias.</p>
    #
    #   @return [AliasRoutingConfiguration]
    #
    # @!attribute revision_id
    #   <p>A unique identifier that changes when you update the alias.</p>
    #
    #   @return [String]
    #
    UpdateAliasOutput = ::Struct.new(
      :alias_arn,
      :member_name,
      :function_version,
      :description,
      :routing_config,
      :revision_id,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Descriptive name for this code signing configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_publishers
    #   <p>Signing profiles for this code signing configuration.</p>
    #
    #   @return [AllowedPublishers]
    #
    # @!attribute code_signing_policies
    #   <p>The code signing policy.</p>
    #
    #   @return [CodeSigningPolicies]
    #
    UpdateCodeSigningConfigInput = ::Struct.new(
      :code_signing_config_arn,
      :description,
      :allowed_publishers,
      :code_signing_policies,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute code_signing_config
    #   <p>The code signing configuration</p>
    #
    #   @return [CodeSigningConfig]
    #
    UpdateCodeSigningConfigOutput = ::Struct.new(
      :code_signing_config,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #
    #   @return [String]
    #
    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Version or Alias ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>If true, the event source mapping is active. Set to false to pause polling and invocation.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute batch_size
    #   <p>The maximum number of items to retrieve in a single batch.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Amazon Kinesis</b> - Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon DynamoDB Streams</b> - Default 100. Max 1,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Simple Queue Service</b> - Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Managed Streaming for Apache Kafka</b> - Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Self-Managed Apache Kafka</b> - Default 100. Max 10,000.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_batching_window_in_seconds
    #   <p>(Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute destination_config
    #   <p>(Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.</p>
    #
    #   @return [DestinationConfig]
    #
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Streams) Discard records older than the specified age. The default value is infinite (-1).</p>
    #
    #   @return [Integer]
    #
    # @!attribute bisect_batch_on_function_error
    #   <p>(Streams) If the function returns an error, split the batch in two and retry.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute maximum_retry_attempts
    #   <p>(Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records will be retried until the record expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute parallelization_factor
    #   <p>(Streams) The number of batches to process from each shard concurrently.</p>
    #
    #   @return [Integer]
    #
    # @!attribute source_access_configurations
    #   <p>An array of the authentication protocol, or the VPC components to secure your event source.</p>
    #
    #   @return [Array<SourceAccessConfiguration>]
    #
    # @!attribute tumbling_window_in_seconds
    #   <p>(Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute function_response_types
    #   <p>(Streams) A list of current response type enums applied to the event source mapping.</p>
    #
    #   @return [Array<String>]
    #
    UpdateEventSourceMappingInput = ::Struct.new(
      :uuid,
      :function_name,
      :enabled,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :destination_config,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :parallelization_factor,
      :source_access_configurations,
      :tumbling_window_in_seconds,
      :function_response_types,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>A mapping between an AWS resource and an AWS Lambda function. See <a>CreateEventSourceMapping</a> for details.</p>
    #
    # @!attribute uuid
    #   <p>The identifier of the event source mapping.</p>
    #
    #   @return [String]
    #
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams
    #         sources. <code>AT_TIMESTAMP</code> is only supported for Amazon Kinesis streams.</p>
    #
    #   @return [String]
    #
    # @!attribute starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start
    #         reading.</p>
    #
    #   @return [Time]
    #
    # @!attribute batch_size
    #   <p>The maximum number of items to retrieve in a single batch.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_batching_window_in_seconds
    #   <p>(Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds. The default value is zero.</p>
    #
    #   @return [Integer]
    #
    # @!attribute parallelization_factor
    #   <p>(Streams) The number of batches to process from each shard concurrently. The default value is 1.</p>
    #
    #   @return [Integer]
    #
    # @!attribute event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p>
    #
    #   @return [String]
    #
    # @!attribute function_arn
    #   <p>The ARN of the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date that the event source mapping was last updated, or its state changed.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_processing_result
    #   <p>The result of the last AWS Lambda invocation of your Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the event source mapping. It can be one of the following: <code>Creating</code>,
    #         <code>Enabling</code>, <code>Enabled</code>, <code>Disabling</code>, <code>Disabled</code>,
    #         <code>Updating</code>, or <code>Deleting</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute state_transition_reason
    #   <p>Indicates whether the last change to the event source mapping was made by a user, or by the Lambda
    #         service.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_config
    #   <p>(Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.</p>
    #
    #   @return [DestinationConfig]
    #
    # @!attribute topics
    #   <p>The name of the Kafka topic.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute queues
    #   <p>
    #         (MQ) The name of the Amazon MQ broker destination queue to consume.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_access_configurations
    #   <p>An array of the authentication protocol, or the VPC components to secure your event source.</p>
    #
    #   @return [Array<SourceAccessConfiguration>]
    #
    # @!attribute self_managed_event_source
    #   <p>The Self-Managed Apache Kafka cluster for your event source.</p>
    #
    #   @return [SelfManagedEventSource]
    #
    # @!attribute maximum_record_age_in_seconds
    #   <p>(Streams) Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bisect_batch_on_function_error
    #   <p>(Streams) If the function returns an error, split the batch in two and retry. The default value is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute maximum_retry_attempts
    #   <p>(Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tumbling_window_in_seconds
    #   <p>(Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute function_response_types
    #   <p>(Streams) A list of current response type enums applied to the event source mapping.</p>
    #
    #   @return [Array<String>]
    #
    UpdateEventSourceMappingOutput = ::Struct.new(
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :function_arn,
      :last_modified,
      :last_processing_result,
      :state,
      :state_transition_reason,
      :destination_config,
      :topics,
      :queues,
      :source_access_configurations,
      :self_managed_event_source,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :tumbling_window_in_seconds,
      :function_response_types,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute zip_file
    #   <p>The base64-encoded contents of the deployment package. AWS SDK and AWS CLI clients handle the encoding for
    #         you.</p>
    #
    #   @note
    #     This shape is sensitive and must be handled with care.
    #
    #   @return [String]
    #
    # @!attribute s3_bucket
    #   <p>An Amazon S3 bucket in the same AWS Region as your function. The bucket can be in a different AWS account.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key
    #   <p>The Amazon S3 key of the deployment package.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_object_version
    #   <p>For versioned objects, the version of the deployment package object to use.</p>
    #
    #   @return [String]
    #
    # @!attribute image_uri
    #   <p>URI of a container image in the Amazon ECR registry.</p>
    #
    #   @return [String]
    #
    # @!attribute publish
    #   <p>Set to true to publish a new version of the function after updating the code. This has the same effect as
    #         calling <a>PublishVersion</a> separately.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute dry_run
    #   <p>Set to true to validate the request parameters and access permissions without modifying the function
    #         code.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute revision_id
    #   <p>Only update the function if the revision ID matches the ID that's specified. Use this option to avoid modifying a
    #         function that has changed since you last read it.</p>
    #
    #   @return [String]
    #
    UpdateFunctionCodeInput = ::Struct.new(
      :function_name,
      :zip_file,
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :image_uri,
      :publish,
      :dry_run,
      :revision_id,
      keyword_init: true
    ) do
      include Seahorse::Structure

      def to_s
        "#<struct AWS::Lambda::Types::UpdateFunctionCodeInput "\
          "function_name=#{function_name || 'nil'}, "\
          "zip_file=\"[SENSITIVE]\", "\
          "s3_bucket=#{s3_bucket || 'nil'}, "\
          "s3_key=#{s3_key || 'nil'}, "\
          "s3_object_version=#{s3_object_version || 'nil'}, "\
          "image_uri=#{image_uri || 'nil'}, "\
          "publish=#{publish || 'nil'}, "\
          "dry_run=#{dry_run || 'nil'}, "\
          "revision_id=#{revision_id || 'nil'}>"
      end
    end

    # <p>Details about a function's configuration.</p>
    #
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute function_arn
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute runtime
    #   <p>The runtime environment for the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The function's execution role.</p>
    #
    #   @return [String]
    #
    # @!attribute handler
    #   <p>The function that Lambda calls to begin executing your function.</p>
    #
    #   @return [String]
    #
    # @!attribute code_size
    #   <p>The size of the function's deployment package, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   <p>The function's description.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout
    #   <p>The amount of time in seconds that Lambda allows a function to run before stopping it.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory_size
    #   <p>The amount of memory available to the function at runtime. </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified
    #   <p>The date and time that the function was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #
    #   @return [String]
    #
    # @!attribute code_sha256
    #   <p>The SHA256 hash of the function's deployment package.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>The function's networking configuration.</p>
    #
    #   @return [VpcConfigResponse]
    #
    # @!attribute dead_letter_config
    #   <p>The function's dead letter queue.</p>
    #
    #   @return [DeadLetterConfig]
    #
    # @!attribute environment
    #   <p>The function's environment variables.</p>
    #
    #   @return [EnvironmentResponse]
    #
    # @!attribute kms_key_arn
    #   <p>The KMS key that's used to encrypt the function's environment variables. This key is only returned if you've
    #         configured a customer managed CMK.</p>
    #
    #   @return [String]
    #
    # @!attribute tracing_config
    #   <p>The function's AWS X-Ray tracing configuration.</p>
    #
    #   @return [TracingConfigResponse]
    #
    # @!attribute master_arn
    #   <p>For Lambda@Edge functions, the ARN of the master function.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The latest updated revision of the function or alias.</p>
    #
    #   @return [String]
    #
    # @!attribute layers
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">
    #         layers</a>.</p>
    #
    #   @return [Array<Layer>]
    #
    # @!attribute state
    #   <p>The current state of the function. When the state is <code>Inactive</code>, you can reactivate the function by
    #         invoking it.</p>
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>The reason for the function's current state.</p>
    #
    #   @return [String]
    #
    # @!attribute state_reason_code
    #   <p>The reason code for the function's current state. When the code is <code>Creating</code>, you can't invoke or
    #         modify the function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status
    #   <p>The status of the last update that was performed on the function. This is first set to <code>Successful</code>
    #         after function creation completes.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status_reason
    #   <p>The reason for the last update that was performed on the function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status_reason_code
    #   <p>The reason code for the last update that was performed on the function.</p>
    #
    #   @return [String]
    #
    # @!attribute file_system_configs
    #   <p>Connection settings for an Amazon EFS file system.</p>
    #
    #   @return [Array<FileSystemConfig>]
    #
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #
    #   @return [String]
    #
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #
    #   @return [ImageConfigResponse]
    #
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #
    #   @return [String]
    #
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #
    #   @return [String]
    #
    UpdateFunctionCodeOutput = ::Struct.new(
      :function_name,
      :function_arn,
      :runtime,
      :role,
      :handler,
      :code_size,
      :description,
      :timeout,
      :memory_size,
      :last_modified,
      :code_sha256,
      :version,
      :vpc_config,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :master_arn,
      :revision_id,
      :layers,
      :state,
      :state_reason,
      :state_reason_code,
      :last_update_status,
      :last_update_status_reason,
      :last_update_status_reason_code,
      :file_system_configs,
      :package_type,
      :image_config_response,
      :signing_profile_version_arn,
      :signing_job_arn,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the function's execution role.</p>
    #
    #   @return [String]
    #
    # @!attribute handler
    #   <p>The name of the method within your code that Lambda calls to execute your function. The format includes the
    #         file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information,
    #         see <a href="https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html">Programming Model</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout
    #   <p>The amount of time that Lambda allows a function to run before stopping it. The default is 3 seconds. The
    #         maximum allowed value is 900 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory_size
    #   <p>The amount of memory available to the function at runtime. Increasing the function's memory also increases its CPU
    #         allocation. The default value is 128 MB. The value can be any multiple of 1 MB.</p>
    #
    #   @return [Integer]
    #
    # @!attribute vpc_config
    #   <p>For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC.
    #         When you connect a function to a VPC, it can only access resources and the internet through that VPC. For more
    #         information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">VPC Settings</a>.</p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute environment
    #   <p>Environment variables that are accessible from function code during execution.</p>
    #
    #   @return [Environment]
    #
    # @!attribute runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">runtime</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute dead_letter_config
    #   <p>A dead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events
    #         when they fail processing. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html dlq">Dead Letter Queues</a>.</p>
    #
    #   @return [DeadLetterConfig]
    #
    # @!attribute kms_key_arn
    #   <p>The ARN of the AWS Key Management Service (AWS KMS) key that's used to encrypt your function's environment
    #         variables. If it's not provided, AWS Lambda uses a default service key.</p>
    #
    #   @return [String]
    #
    # @!attribute tracing_config
    #   <p>Set <code>Mode</code> to <code>Active</code> to sample and trace a subset of incoming requests with AWS
    #         X-Ray.</p>
    #
    #   @return [TracingConfig]
    #
    # @!attribute revision_id
    #   <p>Only update the function if the revision ID matches the ID that's specified. Use this option to avoid modifying a
    #         function that has changed since you last read it.</p>
    #
    #   @return [String]
    #
    # @!attribute layers
    #   <p>A list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">function layers</a>
    #         to add to the function's execution environment. Specify each layer by its ARN, including the version.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute file_system_configs
    #   <p>Connection settings for an Amazon EFS file system.</p>
    #
    #   @return [Array<FileSystemConfig>]
    #
    # @!attribute image_config
    #   <p>
    #               <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-parms.html">Container image configuration
    #           values</a> that override the values in the container image Dockerfile.</p>
    #
    #   @return [ImageConfig]
    #
    UpdateFunctionConfigurationInput = ::Struct.new(
      :function_name,
      :role,
      :handler,
      :description,
      :timeout,
      :memory_size,
      :vpc_config,
      :environment,
      :runtime,
      :dead_letter_config,
      :kms_key_arn,
      :tracing_config,
      :revision_id,
      :layers,
      :file_system_configs,
      :image_config,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>Details about a function's configuration.</p>
    #
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute function_arn
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute runtime
    #   <p>The runtime environment for the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The function's execution role.</p>
    #
    #   @return [String]
    #
    # @!attribute handler
    #   <p>The function that Lambda calls to begin executing your function.</p>
    #
    #   @return [String]
    #
    # @!attribute code_size
    #   <p>The size of the function's deployment package, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   <p>The function's description.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout
    #   <p>The amount of time in seconds that Lambda allows a function to run before stopping it.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory_size
    #   <p>The amount of memory available to the function at runtime. </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified
    #   <p>The date and time that the function was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #
    #   @return [String]
    #
    # @!attribute code_sha256
    #   <p>The SHA256 hash of the function's deployment package.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>The function's networking configuration.</p>
    #
    #   @return [VpcConfigResponse]
    #
    # @!attribute dead_letter_config
    #   <p>The function's dead letter queue.</p>
    #
    #   @return [DeadLetterConfig]
    #
    # @!attribute environment
    #   <p>The function's environment variables.</p>
    #
    #   @return [EnvironmentResponse]
    #
    # @!attribute kms_key_arn
    #   <p>The KMS key that's used to encrypt the function's environment variables. This key is only returned if you've
    #         configured a customer managed CMK.</p>
    #
    #   @return [String]
    #
    # @!attribute tracing_config
    #   <p>The function's AWS X-Ray tracing configuration.</p>
    #
    #   @return [TracingConfigResponse]
    #
    # @!attribute master_arn
    #   <p>For Lambda@Edge functions, the ARN of the master function.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The latest updated revision of the function or alias.</p>
    #
    #   @return [String]
    #
    # @!attribute layers
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">
    #         layers</a>.</p>
    #
    #   @return [Array<Layer>]
    #
    # @!attribute state
    #   <p>The current state of the function. When the state is <code>Inactive</code>, you can reactivate the function by
    #         invoking it.</p>
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>The reason for the function's current state.</p>
    #
    #   @return [String]
    #
    # @!attribute state_reason_code
    #   <p>The reason code for the function's current state. When the code is <code>Creating</code>, you can't invoke or
    #         modify the function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status
    #   <p>The status of the last update that was performed on the function. This is first set to <code>Successful</code>
    #         after function creation completes.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status_reason
    #   <p>The reason for the last update that was performed on the function.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status_reason_code
    #   <p>The reason code for the last update that was performed on the function.</p>
    #
    #   @return [String]
    #
    # @!attribute file_system_configs
    #   <p>Connection settings for an Amazon EFS file system.</p>
    #
    #   @return [Array<FileSystemConfig>]
    #
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>
    #
    #   @return [String]
    #
    # @!attribute image_config_response
    #   <p>The function's image configuration values.</p>
    #
    #   @return [ImageConfigResponse]
    #
    # @!attribute signing_profile_version_arn
    #   <p>The ARN of the signing profile version.</p>
    #
    #   @return [String]
    #
    # @!attribute signing_job_arn
    #   <p>The ARN of the signing job.</p>
    #
    #   @return [String]
    #
    UpdateFunctionConfigurationOutput = ::Struct.new(
      :function_name,
      :function_arn,
      :runtime,
      :role,
      :handler,
      :code_size,
      :description,
      :timeout,
      :memory_size,
      :last_modified,
      :code_sha256,
      :version,
      :vpc_config,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :master_arn,
      :revision_id,
      :layers,
      :state,
      :state_reason,
      :state_reason_code,
      :last_update_status,
      :last_update_status_reason,
      :last_update_status_reason_code,
      :file_system_configs,
      :package_type,
      :image_config_response,
      :signing_profile_version_arn,
      :signing_job_arn,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>A version number or alias name.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    #
    #   @return [Integer]
    #
    # @!attribute destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p>
    #            <p class="title">
    #               <b>Destinations</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Queue</b> - The ARN of an SQS queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Topic</b> - The ARN of an SNS topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p>
    #               </li>
    #            </ul>
    #
    #   @return [DestinationConfig]
    #
    UpdateFunctionEventInvokeConfigInput = ::Struct.new(
      :function_name,
      :qualifier,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # @!attribute last_modified
    #   <p>The date and time that the configuration was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    #
    #   @return [Integer]
    #
    # @!attribute destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p>
    #            <p class="title">
    #               <b>Destinations</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Queue</b> - The ARN of an SQS queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Topic</b> - The ARN of an SNS topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p>
    #               </li>
    #            </ul>
    #
    #   @return [DestinationConfig]
    #
    UpdateFunctionEventInvokeConfigOutput = ::Struct.new(
      :last_modified,
      :function_arn,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The VPC security groups and subnets that are attached to a Lambda function. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">VPC Settings</a>.</p>
    #
    # @!attribute subnet_ids
    #   <p>A list of VPC subnet IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>A list of VPC security groups IDs.</p>
    #
    #   @return [Array<String>]
    #
    VpcConfig = ::Struct.new(
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

    # <p>The VPC security groups and subnets that are attached to a Lambda function.</p>
    #
    # @!attribute subnet_ids
    #   <p>A list of VPC subnet IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>A list of VPC security groups IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC.</p>
    #
    #   @return [String]
    #
    VpcConfigResponse = ::Struct.new(
      :subnet_ids,
      :security_group_ids,
      :vpc_id,
      keyword_init: true
    ) do
      include Seahorse::Structure
    end

  end
end
