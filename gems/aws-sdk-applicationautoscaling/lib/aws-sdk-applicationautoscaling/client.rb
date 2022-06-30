# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::ApplicationAutoScaling
  # An API client for AnyScaleFrontendService
  # See {#initialize} for a full list of supported configuration options
  # <p>With Application Auto Scaling, you can configure automatic scaling for the following
  #       resources:</p>
  #          <ul>
  #             <li>
  #                <p>Amazon AppStream 2.0 fleets</p>
  #             </li>
  #             <li>
  #                <p>Amazon Aurora Replicas</p>
  #             </li>
  #             <li>
  #                <p>Amazon Comprehend document classification and entity recognizer endpoints</p>
  #             </li>
  #             <li>
  #                <p>Amazon DynamoDB tables and global secondary indexes throughput capacity</p>
  #             </li>
  #             <li>
  #                <p>Amazon ECS services</p>
  #             </li>
  #             <li>
  #                <p>Amazon ElastiCache for Redis clusters (replication groups)</p>
  #             </li>
  #             <li>
  #                <p>Amazon EMR clusters</p>
  #             </li>
  #             <li>
  #                <p>Amazon Keyspaces (for Apache Cassandra) tables</p>
  #             </li>
  #             <li>
  #                <p>Lambda function provisioned concurrency</p>
  #             </li>
  #             <li>
  #                <p>Amazon Managed Streaming for Apache Kafka broker storage</p>
  #             </li>
  #             <li>
  #                <p>Amazon Neptune clusters</p>
  #             </li>
  #             <li>
  #                <p>Amazon SageMaker endpoint variants</p>
  #             </li>
  #             <li>
  #                <p>Spot Fleets (Amazon EC2)</p>
  #             </li>
  #             <li>
  #                <p>Custom resources provided by your own applications or services</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>API Summary</b>
  #          </p>
  #          <p>The Application Auto Scaling service API includes three key sets of actions: </p>
  #          <ul>
  #             <li>
  #                <p>Register and manage scalable targets - Register Amazon Web Services or custom resources as scalable
  #           targets (a resource that Application Auto Scaling can scale), set minimum and maximum capacity limits, and
  #           retrieve information on existing scalable targets.</p>
  #             </li>
  #             <li>
  #                <p>Configure and manage automatic scaling - Define scaling policies to dynamically scale
  #           your resources in response to CloudWatch alarms, schedule one-time or recurring scaling actions,
  #           and retrieve your recent scaling activity history.</p>
  #             </li>
  #             <li>
  #                <p>Suspend and resume scaling - Temporarily suspend and later resume automatic scaling by
  #           calling the <a href="https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html">RegisterScalableTarget</a> API action for any Application Auto Scaling scalable target. You can
  #           suspend and resume (individually or in combination) scale-out activities that are
  #           triggered by a scaling policy, scale-in activities that are triggered by a scaling policy,
  #           and scheduled scaling.</p>
  #             </li>
  #          </ul>
  #
  #
  #          <p>To learn more about Application Auto Scaling, including information about granting IAM users required
  #       permissions for Application Auto Scaling actions, see the <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html">Application Auto Scaling User
  #         Guide</a>.</p>
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
    def initialize(config = AWS::SDK::ApplicationAutoScaling::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Deletes the specified scaling policy for an Application Auto Scaling scalable target.</p>
    #          <p>Deleting a step scaling policy deletes the underlying alarm action, but does not delete
    #          the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated
    #          action.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html#delete-step-scaling-policy">Delete a step scaling policy</a> and <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html#delete-target-tracking-policy">Delete a target tracking scaling policy</a> in the
    #             <i>Application Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteScalingPolicyInput}.
    #
    # @option params [String] :policy_name
    #   <p>The name of the scaling policy.</p>
    #
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scalable target.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name
    #                  and service name. Example: <code>service/default/sample-webapp</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #              </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>table/my-table</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name.
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>.
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN.
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #              </li>
    #            </ul>
    #
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #              </li>
    #            </ul>
    #
    # @return [Types::DeleteScalingPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scaling_policy(
    #     policy_name: 'PolicyName', # required
    #     service_namespace: 'ecs', # required - accepts ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #     resource_id: 'ResourceId', # required
    #     scalable_dimension: 'ecs:service:DesiredCount' # required - accepts ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteScalingPolicyOutput
    #
    def delete_scaling_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteScalingPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteScalingPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteScalingPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ObjectNotFoundException, Errors::ConcurrentUpdateException, Errors::InternalServiceException]),
        data_parser: Parsers::DeleteScalingPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteScalingPolicy,
        stubs: @stubs,
        params_class: Params::DeleteScalingPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_scaling_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified scheduled action for an Application Auto Scaling scalable target.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-additional-cli-commands.html#delete-scheduled-action">Delete a scheduled action</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteScheduledActionInput}.
    #
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scheduled action.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name
    #                  and service name. Example: <code>service/default/sample-webapp</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #              </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>table/my-table</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name.
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>.
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN.
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #              </li>
    #            </ul>
    #
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #              </li>
    #            </ul>
    #
    # @return [Types::DeleteScheduledActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scheduled_action(
    #     service_namespace: 'ecs', # required - accepts ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #     scheduled_action_name: 'ScheduledActionName', # required
    #     resource_id: 'ResourceId', # required
    #     scalable_dimension: 'ecs:service:DesiredCount' # required - accepts ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteScheduledActionOutput
    #
    def delete_scheduled_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteScheduledActionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteScheduledActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteScheduledAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ObjectNotFoundException, Errors::ConcurrentUpdateException, Errors::InternalServiceException]),
        data_parser: Parsers::DeleteScheduledAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteScheduledAction,
        stubs: @stubs,
        params_class: Params::DeleteScheduledActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_scheduled_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters an Application Auto Scaling scalable target when you have finished using it. To see which
    #          resources have been registered, use <a href="https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html">DescribeScalableTargets</a>. </p>
    #          <note>
    #             <p>Deregistering a scalable target deletes the scaling policies and the scheduled
    #             actions that are associated with it.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeregisterScalableTargetInput}.
    #
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scalable target.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name
    #                  and service name. Example: <code>service/default/sample-webapp</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #              </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>table/my-table</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name.
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>.
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN.
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #              </li>
    #            </ul>
    #
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension associated with the scalable target.
    #         This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #              </li>
    #            </ul>
    #
    # @return [Types::DeregisterScalableTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_scalable_target(
    #     service_namespace: 'ecs', # required - accepts ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #     resource_id: 'ResourceId', # required
    #     scalable_dimension: 'ecs:service:DesiredCount' # required - accepts ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterScalableTargetOutput
    #
    def deregister_scalable_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterScalableTargetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterScalableTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterScalableTarget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ObjectNotFoundException, Errors::ConcurrentUpdateException, Errors::InternalServiceException]),
        data_parser: Parsers::DeregisterScalableTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterScalableTarget,
        stubs: @stubs,
        params_class: Params::DeregisterScalableTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_scalable_target
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the scalable targets in the specified namespace.</p>
    #          <p>You can filter the results using <code>ResourceIds</code> and
    #             <code>ScalableDimension</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScalableTargetsInput}.
    #
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    # @option params [Array<String>] :resource_ids
    #   <p>The identifier of the resource associated with the scalable target.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name
    #                  and service name. Example: <code>service/default/sample-webapp</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #              </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>table/my-table</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name.
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>.
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN.
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #              </li>
    #            </ul>
    #
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension associated with the scalable target.
    #         This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #              </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of scalable targets. This value can be between 1 and
    #            50. The default value is 50.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 50 results and a
    #               <code>NextToken</code> value, if applicable.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @return [Types::DescribeScalableTargetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scalable_targets(
    #     service_namespace: 'ecs', # required - accepts ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #     resource_ids: [
    #       'member'
    #     ],
    #     scalable_dimension: 'ecs:service:DesiredCount', # accepts ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeScalableTargetsOutput
    #   resp.data.scalable_targets #=> Array<ScalableTarget>
    #   resp.data.scalable_targets[0] #=> Types::ScalableTarget
    #   resp.data.scalable_targets[0].service_namespace #=> String, one of ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #   resp.data.scalable_targets[0].resource_id #=> String
    #   resp.data.scalable_targets[0].scalable_dimension #=> String, one of ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #   resp.data.scalable_targets[0].min_capacity #=> Integer
    #   resp.data.scalable_targets[0].max_capacity #=> Integer
    #   resp.data.scalable_targets[0].role_arn #=> String
    #   resp.data.scalable_targets[0].creation_time #=> Time
    #   resp.data.scalable_targets[0].suspended_state #=> Types::SuspendedState
    #   resp.data.scalable_targets[0].suspended_state.dynamic_scaling_in_suspended #=> Boolean
    #   resp.data.scalable_targets[0].suspended_state.dynamic_scaling_out_suspended #=> Boolean
    #   resp.data.scalable_targets[0].suspended_state.scheduled_scaling_suspended #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_scalable_targets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScalableTargetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScalableTargetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeScalableTargets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ValidationException, Errors::ConcurrentUpdateException, Errors::InternalServiceException]),
        data_parser: Parsers::DescribeScalableTargets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeScalableTargets,
        stubs: @stubs,
        params_class: Params::DescribeScalableTargetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_scalable_targets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides descriptive information about the scaling activities in the specified namespace
    #          from the previous six weeks.</p>
    #          <p>You can filter the results using <code>ResourceId</code> and
    #             <code>ScalableDimension</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScalingActivitiesInput}.
    #
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scaling activity.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name
    #                  and service name. Example: <code>service/default/sample-webapp</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #              </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>table/my-table</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name.
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>.
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN.
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #              </li>
    #            </ul>
    #
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.
    #         If you specify a scalable dimension, you must also specify a resource ID.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #              </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of scalable targets. This value can be between 1 and
    #            50. The default value is 50.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 50 results and a
    #               <code>NextToken</code> value, if applicable.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @return [Types::DescribeScalingActivitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_activities(
    #     service_namespace: 'ecs', # required - accepts ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #     resource_id: 'ResourceId',
    #     scalable_dimension: 'ecs:service:DesiredCount', # accepts ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeScalingActivitiesOutput
    #   resp.data.scaling_activities #=> Array<ScalingActivity>
    #   resp.data.scaling_activities[0] #=> Types::ScalingActivity
    #   resp.data.scaling_activities[0].activity_id #=> String
    #   resp.data.scaling_activities[0].service_namespace #=> String, one of ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #   resp.data.scaling_activities[0].resource_id #=> String
    #   resp.data.scaling_activities[0].scalable_dimension #=> String, one of ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #   resp.data.scaling_activities[0].description #=> String
    #   resp.data.scaling_activities[0].cause #=> String
    #   resp.data.scaling_activities[0].start_time #=> Time
    #   resp.data.scaling_activities[0].end_time #=> Time
    #   resp.data.scaling_activities[0].status_code #=> String, one of ["Pending", "InProgress", "Successful", "Overridden", "Unfulfilled", "Failed"]
    #   resp.data.scaling_activities[0].status_message #=> String
    #   resp.data.scaling_activities[0].details #=> String
    #   resp.data.next_token #=> String
    #
    def describe_scaling_activities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScalingActivitiesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScalingActivitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeScalingActivities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ValidationException, Errors::ConcurrentUpdateException, Errors::InternalServiceException]),
        data_parser: Parsers::DescribeScalingActivities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeScalingActivities,
        stubs: @stubs,
        params_class: Params::DescribeScalingActivitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_scaling_activities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the Application Auto Scaling scaling policies for the specified service namespace.</p>
    #          <p>You can filter the results using <code>ResourceId</code>,
    #          <code>ScalableDimension</code>, and <code>PolicyNames</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html">Target tracking scaling policies</a> and <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html">Step scaling policies</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScalingPoliciesInput}.
    #
    # @option params [Array<String>] :policy_names
    #   <p>The names of the scaling policies to describe.</p>
    #
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scaling policy.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name
    #                  and service name. Example: <code>service/default/sample-webapp</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #              </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>table/my-table</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name.
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>.
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN.
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #              </li>
    #            </ul>
    #
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.
    #         If you specify a scalable dimension, you must also specify a resource ID.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #              </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of scalable targets. This value can be between 1 and 10. The default
    #            value is 10.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 10 results and a <code>NextToken</code> value, if
    #            applicable.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @return [Types::DescribeScalingPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_policies(
    #     policy_names: [
    #       'member'
    #     ],
    #     service_namespace: 'ecs', # required - accepts ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #     resource_id: 'ResourceId',
    #     scalable_dimension: 'ecs:service:DesiredCount', # accepts ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeScalingPoliciesOutput
    #   resp.data.scaling_policies #=> Array<ScalingPolicy>
    #   resp.data.scaling_policies[0] #=> Types::ScalingPolicy
    #   resp.data.scaling_policies[0].policy_arn #=> String
    #   resp.data.scaling_policies[0].policy_name #=> String
    #   resp.data.scaling_policies[0].service_namespace #=> String, one of ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #   resp.data.scaling_policies[0].resource_id #=> String
    #   resp.data.scaling_policies[0].scalable_dimension #=> String, one of ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #   resp.data.scaling_policies[0].policy_type #=> String, one of ["StepScaling", "TargetTrackingScaling"]
    #   resp.data.scaling_policies[0].step_scaling_policy_configuration #=> Types::StepScalingPolicyConfiguration
    #   resp.data.scaling_policies[0].step_scaling_policy_configuration.adjustment_type #=> String, one of ["ChangeInCapacity", "PercentChangeInCapacity", "ExactCapacity"]
    #   resp.data.scaling_policies[0].step_scaling_policy_configuration.step_adjustments #=> Array<StepAdjustment>
    #   resp.data.scaling_policies[0].step_scaling_policy_configuration.step_adjustments[0] #=> Types::StepAdjustment
    #   resp.data.scaling_policies[0].step_scaling_policy_configuration.step_adjustments[0].metric_interval_lower_bound #=> Float
    #   resp.data.scaling_policies[0].step_scaling_policy_configuration.step_adjustments[0].metric_interval_upper_bound #=> Float
    #   resp.data.scaling_policies[0].step_scaling_policy_configuration.step_adjustments[0].scaling_adjustment #=> Integer
    #   resp.data.scaling_policies[0].step_scaling_policy_configuration.min_adjustment_magnitude #=> Integer
    #   resp.data.scaling_policies[0].step_scaling_policy_configuration.cooldown #=> Integer
    #   resp.data.scaling_policies[0].step_scaling_policy_configuration.metric_aggregation_type #=> String, one of ["Average", "Minimum", "Maximum"]
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration #=> Types::TargetTrackingScalingPolicyConfiguration
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.predefined_metric_specification #=> Types::PredefinedMetricSpecification
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.predefined_metric_specification.predefined_metric_type #=> String, one of ["DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn", "EC2SpotFleetRequestAverageNetworkOut", "SageMakerVariantInvocationsPerInstance", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization", "AppStreamAverageCapacityUtilization", "ComprehendInferenceUtilization", "LambdaProvisionedConcurrencyUtilization", "CassandraReadCapacityUtilization", "CassandraWriteCapacityUtilization", "KafkaBrokerStorageUtilization", "ElastiCachePrimaryEngineCPUUtilization", "ElastiCacheReplicaEngineCPUUtilization", "ElastiCacheDatabaseMemoryUsageCountedForEvictPercentage", "NeptuneReaderAverageCPUUtilization"]
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.predefined_metric_specification.resource_label #=> String
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification #=> Types::CustomizedMetricSpecification
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification.metric_name #=> String
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification.namespace #=> String
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification.dimensions #=> Array<MetricDimension>
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification.dimensions[0] #=> Types::MetricDimension
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification.dimensions[0].name #=> String
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification.dimensions[0].value #=> String
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification.statistic #=> String, one of ["Average", "Minimum", "Maximum", "SampleCount", "Sum"]
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.customized_metric_specification.unit #=> String
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.data.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.data.scaling_policies[0].alarms #=> Array<Alarm>
    #   resp.data.scaling_policies[0].alarms[0] #=> Types::Alarm
    #   resp.data.scaling_policies[0].alarms[0].alarm_name #=> String
    #   resp.data.scaling_policies[0].alarms[0].alarm_arn #=> String
    #   resp.data.scaling_policies[0].creation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_scaling_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScalingPoliciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScalingPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeScalingPolicies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::FailedResourceAccessException, Errors::ValidationException, Errors::ConcurrentUpdateException, Errors::InternalServiceException]),
        data_parser: Parsers::DescribeScalingPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeScalingPolicies,
        stubs: @stubs,
        params_class: Params::DescribeScalingPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_scaling_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the Application Auto Scaling scheduled actions for the specified service namespace.</p>
    #          <p>You can filter the results using the <code>ResourceId</code>,
    #             <code>ScalableDimension</code>, and <code>ScheduledActionNames</code> parameters.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html">Scheduled scaling</a> and <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-additional-cli-commands.html">Managing scheduled scaling</a> in the
    #          <i>Application Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScheduledActionsInput}.
    #
    # @option params [Array<String>] :scheduled_action_names
    #   <p>The names of the scheduled actions to describe.</p>
    #
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scheduled action.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name
    #                  and service name. Example: <code>service/default/sample-webapp</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #              </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>table/my-table</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name.
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>.
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN.
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #              </li>
    #            </ul>
    #
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.
    #         If you specify a scalable dimension, you must also specify a resource ID.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #              </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of scheduled action results. This value can be between
    #            1 and 50. The default value is 50.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 50 results and a
    #               <code>NextToken</code> value, if applicable.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @return [Types::DescribeScheduledActionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scheduled_actions(
    #     scheduled_action_names: [
    #       'member'
    #     ],
    #     service_namespace: 'ecs', # required - accepts ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #     resource_id: 'ResourceId',
    #     scalable_dimension: 'ecs:service:DesiredCount', # accepts ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeScheduledActionsOutput
    #   resp.data.scheduled_actions #=> Array<ScheduledAction>
    #   resp.data.scheduled_actions[0] #=> Types::ScheduledAction
    #   resp.data.scheduled_actions[0].scheduled_action_name #=> String
    #   resp.data.scheduled_actions[0].scheduled_action_arn #=> String
    #   resp.data.scheduled_actions[0].service_namespace #=> String, one of ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #   resp.data.scheduled_actions[0].schedule #=> String
    #   resp.data.scheduled_actions[0].timezone #=> String
    #   resp.data.scheduled_actions[0].resource_id #=> String
    #   resp.data.scheduled_actions[0].scalable_dimension #=> String, one of ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #   resp.data.scheduled_actions[0].start_time #=> Time
    #   resp.data.scheduled_actions[0].end_time #=> Time
    #   resp.data.scheduled_actions[0].scalable_target_action #=> Types::ScalableTargetAction
    #   resp.data.scheduled_actions[0].scalable_target_action.min_capacity #=> Integer
    #   resp.data.scheduled_actions[0].scalable_target_action.max_capacity #=> Integer
    #   resp.data.scheduled_actions[0].creation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_scheduled_actions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScheduledActionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScheduledActionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeScheduledActions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ValidationException, Errors::ConcurrentUpdateException, Errors::InternalServiceException]),
        data_parser: Parsers::DescribeScheduledActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeScheduledActions,
        stubs: @stubs,
        params_class: Params::DescribeScheduledActionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_scheduled_actions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a scaling policy for an Application Auto Scaling scalable target.</p>
    #          <p>Each scalable target is identified by a service namespace, resource ID, and scalable
    #          dimension. A scaling policy applies to the scalable target identified by those three
    #          attributes. You cannot create a scaling policy until you have registered the resource as a
    #          scalable target.</p>
    #          <p>Multiple scaling policies can be in force at the same time for the same scalable target.
    #          You can have one or more target tracking scaling policies, one or more step scaling
    #          policies, or both. However, there is a chance that multiple policies could conflict,
    #          instructing the scalable target to scale out or in at the same time. Application Auto Scaling gives
    #          precedence to the policy that provides the largest capacity for both scale out and scale
    #          in. For example, if one policy increases capacity by 3, another policy increases capacity
    #          by 200 percent, and the current capacity is 10, Application Auto Scaling uses the policy with the highest
    #          calculated capacity (200% of 10 = 20) and scales out to 30. </p>
    #          <p>We recommend caution, however, when using target tracking scaling policies with step
    #          scaling policies because conflicts between these policies can cause undesirable behavior.
    #          For example, if the step scaling policy initiates a scale-in activity before the target
    #          tracking policy is ready to scale in, the scale-in activity will not be blocked. After the
    #          scale-in activity completes, the target tracking policy could instruct the scalable target
    #          to scale out again. </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html">Target tracking scaling policies</a> and <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html">Step scaling policies</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    #          <note>
    #             <p>If a scalable target is deregistered, the scalable target is no longer available to
    #             execute scaling policies. Any scaling policies that were specified for the scalable
    #             target are deleted.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutScalingPolicyInput}.
    #
    # @option params [String] :policy_name
    #   <p>The name of the scaling policy.</p>
    #
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scaling policy.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name
    #                  and service name. Example: <code>service/default/sample-webapp</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #              </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>table/my-table</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name.
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>.
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN.
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #              </li>
    #            </ul>
    #
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #              </li>
    #            </ul>
    #
    # @option params [String] :policy_type
    #   <p>The policy type. This parameter is required if you are creating a scaling policy.</p>
    #            <p>The following policy types are supported: </p>
    #            <p>
    #               <code>TargetTrackingScaling</code>—Not supported for Amazon EMR</p>
    #            <p>
    #               <code>StepScaling</code>—Not supported for DynamoDB, Amazon Comprehend, Lambda, Amazon Keyspaces, Amazon MSK, Amazon ElastiCache, or
    #         Neptune.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html">Target
    #           tracking scaling policies</a> and <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html">Step scaling policies</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    #
    # @option params [StepScalingPolicyConfiguration] :step_scaling_policy_configuration
    #   <p>A step scaling policy.</p>
    #            <p>This parameter is required if you are creating a policy and the policy type is
    #               <code>StepScaling</code>.</p>
    #
    # @option params [TargetTrackingScalingPolicyConfiguration] :target_tracking_scaling_policy_configuration
    #   <p>A target tracking scaling policy. Includes support for predefined or customized
    #            metrics.</p>
    #            <p>This parameter is required if you are creating a policy and the policy type is
    #               <code>TargetTrackingScaling</code>.</p>
    #
    # @return [Types::PutScalingPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scaling_policy(
    #     policy_name: 'PolicyName', # required
    #     service_namespace: 'ecs', # required - accepts ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #     resource_id: 'ResourceId', # required
    #     scalable_dimension: 'ecs:service:DesiredCount', # required - accepts ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #     policy_type: 'StepScaling', # accepts ["StepScaling", "TargetTrackingScaling"]
    #     step_scaling_policy_configuration: {
    #       adjustment_type: 'ChangeInCapacity', # accepts ["ChangeInCapacity", "PercentChangeInCapacity", "ExactCapacity"]
    #       step_adjustments: [
    #         {
    #           metric_interval_lower_bound: 1.0,
    #           metric_interval_upper_bound: 1.0,
    #           scaling_adjustment: 1 # required
    #         }
    #       ],
    #       min_adjustment_magnitude: 1,
    #       cooldown: 1,
    #       metric_aggregation_type: 'Average' # accepts ["Average", "Minimum", "Maximum"]
    #     },
    #     target_tracking_scaling_policy_configuration: {
    #       target_value: 1.0, # required
    #       predefined_metric_specification: {
    #         predefined_metric_type: 'DynamoDBReadCapacityUtilization', # required - accepts ["DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn", "EC2SpotFleetRequestAverageNetworkOut", "SageMakerVariantInvocationsPerInstance", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization", "AppStreamAverageCapacityUtilization", "ComprehendInferenceUtilization", "LambdaProvisionedConcurrencyUtilization", "CassandraReadCapacityUtilization", "CassandraWriteCapacityUtilization", "KafkaBrokerStorageUtilization", "ElastiCachePrimaryEngineCPUUtilization", "ElastiCacheReplicaEngineCPUUtilization", "ElastiCacheDatabaseMemoryUsageCountedForEvictPercentage", "NeptuneReaderAverageCPUUtilization"]
    #         resource_label: 'ResourceLabel'
    #       },
    #       customized_metric_specification: {
    #         metric_name: 'MetricName', # required
    #         namespace: 'Namespace', # required
    #         dimensions: [
    #           {
    #             name: 'Name', # required
    #             value: 'Value' # required
    #           }
    #         ],
    #         statistic: 'Average', # required - accepts ["Average", "Minimum", "Maximum", "SampleCount", "Sum"]
    #         unit: 'Unit'
    #       },
    #       scale_out_cooldown: 1,
    #       scale_in_cooldown: 1,
    #       disable_scale_in: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutScalingPolicyOutput
    #   resp.data.policy_arn #=> String
    #   resp.data.alarms #=> Array<Alarm>
    #   resp.data.alarms[0] #=> Types::Alarm
    #   resp.data.alarms[0].alarm_name #=> String
    #   resp.data.alarms[0].alarm_arn #=> String
    #
    def put_scaling_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutScalingPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutScalingPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutScalingPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedResourceAccessException, Errors::ValidationException, Errors::ObjectNotFoundException, Errors::ConcurrentUpdateException, Errors::InternalServiceException, Errors::LimitExceededException]),
        data_parser: Parsers::PutScalingPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutScalingPolicy,
        stubs: @stubs,
        params_class: Params::PutScalingPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_scaling_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a scheduled action for an Application Auto Scaling scalable target. </p>
    #          <p>Each scalable target is identified by a service namespace, resource ID, and scalable
    #          dimension. A scheduled action applies to the scalable target identified by those three
    #          attributes. You cannot create a scheduled action until you have registered the resource as
    #          a scalable target.</p>
    #          <p>When start and end times are specified with a recurring schedule using a cron expression
    #          or rates, they form the boundaries for when the recurring action starts and stops.</p>
    #          <p>To update a scheduled action, specify the parameters that you want to change. If you
    #          don't specify start and end times, the old values are deleted.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html">Scheduled scaling</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    #          <note>
    #             <p>If a scalable target is deregistered, the scalable target is no longer available to
    #             run scheduled actions. Any scheduled actions that were specified for the scalable target
    #             are deleted.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutScheduledActionInput}.
    #
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    # @option params [String] :schedule
    #   <p>The schedule for this action. The following formats are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>At expressions - "<code>at(<i>yyyy</i>-<i>mm</i>-<i>dd</i>T<i>hh</i>:<i>mm</i>:<i>ss</i>)</code>"</p>
    #               </li>
    #               <li>
    #                  <p>Rate expressions - "<code>rate(<i>value</i>
    #                        <i>unit</i>)</code>"</p>
    #               </li>
    #               <li>
    #                  <p>Cron expressions - "<code>cron(<i>fields</i>)</code>"</p>
    #               </li>
    #            </ul>
    #            <p>At expressions are useful for one-time schedules. Cron expressions are useful for
    #            scheduled actions that run periodically at a specified date and time, and rate expressions
    #            are useful for scheduled actions that run at a regular interval.</p>
    #            <p>At and cron expressions use Universal Coordinated Time (UTC) by
    #            default.</p>
    #            <p>The cron format consists of six fields separated by white spaces: [Minutes] [Hours] [Day_of_Month] [Month] [Day_of_Week] [Year].</p>
    #            <p>For rate expressions, <i>value</i> is a positive integer and <i>unit</i> is
    #            <code>minute</code> | <code>minutes</code> | <code>hour</code> | <code>hours</code> | <code>day</code> | <code>days</code>.</p>
    #              <p>For more information and examples, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/examples-scheduled-actions.html">Example scheduled actions for Application Auto Scaling</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    #
    # @option params [String] :timezone
    #   <p>Specifies the time zone used when setting a scheduled action by using an at or cron
    #            expression. If a time zone is not provided, UTC is used by default.</p>
    #            <p>Valid values are the canonical names of the IANA time zones supported by Joda-Time (such
    #            as <code>Etc/GMT+9</code> or <code>Pacific/Tahiti</code>). For more information, see <a href="https://www.joda.org/joda-time/timezones.html">https://www.joda.org/joda-time/timezones.html</a>.</p>
    #
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action. This name must be unique among all other scheduled
    #            actions on the specified scalable target. </p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the resource associated with the scheduled action.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name
    #                  and service name. Example: <code>service/default/sample-webapp</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #              </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>table/my-table</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name.
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>.
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN.
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #              </li>
    #            </ul>
    #
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #              </li>
    #            </ul>
    #
    # @option params [Time] :start_time
    #   <p>The date and time for this scheduled action to start, in UTC.</p>
    #
    # @option params [Time] :end_time
    #   <p>The date and time for the recurring schedule to end, in UTC.</p>
    #
    # @option params [ScalableTargetAction] :scalable_target_action
    #   <p>The new minimum and maximum capacity. You can set both values or just one. At the
    #            scheduled time, if the current capacity is below the minimum capacity, Application Auto Scaling scales out
    #            to the minimum capacity. If the current capacity is above the maximum capacity, Application Auto Scaling
    #            scales in to the maximum capacity.</p>
    #
    # @return [Types::PutScheduledActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scheduled_action(
    #     service_namespace: 'ecs', # required - accepts ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #     schedule: 'Schedule',
    #     timezone: 'Timezone',
    #     scheduled_action_name: 'ScheduledActionName', # required
    #     resource_id: 'ResourceId', # required
    #     scalable_dimension: 'ecs:service:DesiredCount', # required - accepts ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     scalable_target_action: {
    #       min_capacity: 1,
    #       max_capacity: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutScheduledActionOutput
    #
    def put_scheduled_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutScheduledActionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutScheduledActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutScheduledAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ObjectNotFoundException, Errors::ConcurrentUpdateException, Errors::InternalServiceException, Errors::LimitExceededException]),
        data_parser: Parsers::PutScheduledAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutScheduledAction,
        stubs: @stubs,
        params_class: Params::PutScheduledActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_scheduled_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers or updates a scalable target. </p>
    #          <p>A scalable target is a resource that Application Auto Scaling can scale out and scale in. Scalable
    #          targets are uniquely identified by the combination of resource ID, scalable dimension, and
    #          namespace. </p>
    #          <p>When you register a new scalable target, you must specify values for minimum and maximum
    #          capacity. Current capacity will be adjusted within the specified range when scaling starts.
    #          Application Auto Scaling scaling policies will not scale capacity to values that are outside of this
    #          range.</p>
    #          <p>After you register a scalable target, you do not need to register it again to use other
    #          Application Auto Scaling operations. To see which resources have been registered, use <a href="https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html">DescribeScalableTargets</a>. You can also view the scaling policies for a service
    #          namespace by using <a href="https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html">DescribeScalableTargets</a>. If you no longer need a scalable target, you can
    #          deregister it by using <a href="https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DeregisterScalableTarget.html">DeregisterScalableTarget</a>.</p>
    #          <p>To update a scalable target, specify the parameters that you want to change. Include the
    #          parameters that identify the scalable target: resource ID, scalable dimension, and
    #          namespace. Any parameters that you don't specify are not changed by this update request. </p>
    #          <note>
    #             <p>If you call the <code>RegisterScalableTarget</code> API to update an existing
    #             scalable target, Application Auto Scaling retrieves the current capacity of the resource. If it is below
    #             the minimum capacity or above the maximum capacity, Application Auto Scaling adjusts the capacity of the
    #             scalable target to place it within these bounds, even if you don't include the
    #                <code>MinCapacity</code> or <code>MaxCapacity</code> request parameters.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::RegisterScalableTargetInput}.
    #
    # @option params [String] :service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the resource that is associated with the scalable target.
    #         This string consists of the resource type and unique identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name
    #                  and service name. Example: <code>service/default/sample-webapp</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
    #                  Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
    #              </li>
    #               <li>
    #                  <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
    #                  Example: <code>fleet/sample-fleet</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>table/my-table</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name.
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
    #                  Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
    #                  is available in our <a href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
    #                     repository</a>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>.
    #                  Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name.
    #                  Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN.
    #                  Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
    #                  Example: <code>replication-group/mycluster</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
    #              </li>
    #            </ul>
    #
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension associated with the scalable target.
    #         This string consists of the service namespace, resource type, and scaling property.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
    #              </li>
    #               <li>
    #                 <p>
    #                     <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
    #              </li>
    #            </ul>
    #
    # @option params [Integer] :min_capacity
    #   <p>The minimum value that you plan to scale in to. When a scaling policy is in effect,
    #         Application Auto Scaling can scale in (contract) as needed to the minimum capacity limit in response to
    #         changing demand. This property is required when registering a new scalable target.</p>
    #            <p>For certain resources, the minimum value allowed is 0. This includes Lambda provisioned
    #         concurrency, Spot Fleet, ECS services, Aurora DB clusters, EMR clusters, and custom resources.
    #         For all other resources, the minimum value allowed is 1.</p>
    #
    # @option params [Integer] :max_capacity
    #   <p>The maximum value that you plan to scale out to. When a scaling policy is in effect,
    #            Application Auto Scaling can scale out (expand) as needed to the maximum capacity limit in response to
    #            changing demand. This property is required when registering a new scalable target.</p>
    #            <p>Although you can specify a large maximum capacity, note that service quotas may impose
    #            lower limits. Each service has its own default quotas for the maximum capacity of the
    #            resource. If you want to specify a higher limit, you can request an increase. For more
    #            information, consult the documentation for that service. For information about the default
    #            quotas for each service, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html">Service Endpoints and
    #               Quotas</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :role_arn
    #   <p>This parameter is required for services that do not support service-linked roles (such as
    #         Amazon EMR), and it must specify the ARN of an IAM role that allows Application Auto Scaling to modify the scalable
    #         target on your behalf. </p>
    #            <p>If the service supports service-linked roles, Application Auto Scaling uses a service-linked role, which
    #         it creates if it does not yet exist. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-roles">Application Auto Scaling IAM roles</a>.</p>
    #
    # @option params [SuspendedState] :suspended_state
    #   <p>An embedded object that contains attributes and attribute values that are used to
    #            suspend and resume automatic scaling. Setting the value of an attribute to
    #               <code>true</code> suspends the specified scaling activities. Setting it to
    #               <code>false</code> (default) resumes the specified scaling activities. </p>
    #            <p>
    #               <b>Suspension Outcomes</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>For <code>DynamicScalingInSuspended</code>, while a suspension is in effect, all
    #                  scale-in activities that are triggered by a scaling policy are suspended.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>DynamicScalingOutSuspended</code>, while a suspension is in effect, all
    #                  scale-out activities that are triggered by a scaling policy are suspended.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>ScheduledScalingSuspended</code>, while a suspension is in effect, all
    #                  scaling activities that involve scheduled actions are suspended. </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-suspend-resume-scaling.html">Suspending and resuming scaling</a> in the <i>Application Auto Scaling User
    #            Guide</i>.</p>
    #
    # @return [Types::RegisterScalableTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_scalable_target(
    #     service_namespace: 'ecs', # required - accepts ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #     resource_id: 'ResourceId', # required
    #     scalable_dimension: 'ecs:service:DesiredCount', # required - accepts ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #     min_capacity: 1,
    #     max_capacity: 1,
    #     role_arn: 'RoleARN',
    #     suspended_state: {
    #       dynamic_scaling_in_suspended: false,
    #       dynamic_scaling_out_suspended: false,
    #       scheduled_scaling_suspended: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterScalableTargetOutput
    #
    def register_scalable_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterScalableTargetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterScalableTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterScalableTarget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConcurrentUpdateException, Errors::InternalServiceException, Errors::LimitExceededException]),
        data_parser: Parsers::RegisterScalableTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterScalableTarget,
        stubs: @stubs,
        params_class: Params::RegisterScalableTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_scalable_target
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
