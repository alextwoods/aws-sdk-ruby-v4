# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApplicationAutoScaling
  module Types

    # Includes enum constants for AdjustmentType
    #
    module AdjustmentType
      # No documentation available.
      #
      ChangeInCapacity = "ChangeInCapacity"

      # No documentation available.
      #
      PercentChangeInCapacity = "PercentChangeInCapacity"

      # No documentation available.
      #
      ExactCapacity = "ExactCapacity"
    end

    # <p>Represents a CloudWatch alarm associated with a scaling policy.</p>
    #
    # @!attribute alarm_name
    #   <p>The name of the alarm.</p>
    #
    #   @return [String]
    #
    # @!attribute alarm_arn
    #   <p>The Amazon Resource Name (ARN) of the alarm.</p>
    #
    #   @return [String]
    #
    Alarm = ::Struct.new(
      :alarm_name,
      :alarm_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Concurrent updates caused an exception, for example, if you request an update to an
    #          Application Auto Scaling resource that already has a pending update.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConcurrentUpdateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a CloudWatch metric of your choosing for a target tracking scaling policy to use
    #          with Application Auto Scaling.</p>
    #          <p>For information about the available metrics for a service, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html">Amazon Web Services
    #             Services That Publish CloudWatch Metrics</a> in the <i>Amazon CloudWatch User
    #             Guide</i>.</p>
    #          <p>To create your customized metric specification:</p>
    #          <ul>
    #             <li>
    #                <p>Add values for each required parameter from CloudWatch. You can use an existing metric,
    #                or a new metric that you create. To use your own metric, you must first publish the
    #                metric to CloudWatch. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html">Publish Custom
    #                   Metrics</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>Choose a metric that changes proportionally with capacity. The value of the metric
    #                should increase or decrease in inverse proportion to the number of capacity units.
    #                That is, the value of the metric should decrease when capacity increases, and
    #                increase when capacity decreases. </p>
    #             </li>
    #          </ul>
    #          <p>For more information about CloudWatch, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html">Amazon CloudWatch
    #             Concepts</a>. </p>
    #
    # @!attribute metric_name
    #   <p>The name of the metric. </p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute dimensions
    #   <p>The dimensions of the metric. </p>
    #            <p>Conditional: If you published your metric with dimensions, you must specify the same
    #            dimensions in your scaling policy.</p>
    #
    #   @return [Array<MetricDimension>]
    #
    # @!attribute statistic
    #   <p>The statistic of the metric.</p>
    #
    #   Enum, one of: ["Average", "Minimum", "Maximum", "SampleCount", "Sum"]
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit of the metric.</p>
    #
    #   @return [String]
    #
    CustomizedMetricSpecification = ::Struct.new(
      :metric_name,
      :namespace,
      :dimensions,
      :statistic,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_name
    #   <p>The name of the scaling policy.</p>
    #
    #   @return [String]
    #
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    #   Enum, one of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute scalable_dimension
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
    #   Enum, one of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #
    #   @return [String]
    #
    DeleteScalingPolicyInput = ::Struct.new(
      :policy_name,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteScalingPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    #   Enum, one of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #
    #   @return [String]
    #
    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute scalable_dimension
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
    #   Enum, one of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #
    #   @return [String]
    #
    DeleteScheduledActionInput = ::Struct.new(
      :service_namespace,
      :scheduled_action_name,
      :resource_id,
      :scalable_dimension,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteScheduledActionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    #   Enum, one of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute scalable_dimension
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
    #   Enum, one of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #
    #   @return [String]
    #
    DeregisterScalableTargetInput = ::Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterScalableTargetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    #   Enum, one of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #
    #   @return [String]
    #
    # @!attribute resource_ids
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
    #   @return [Array<String>]
    #
    # @!attribute scalable_dimension
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
    #   Enum, one of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of scalable targets. This value can be between 1 and
    #            50. The default value is 50.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 50 results and a
    #               <code>NextToken</code> value, if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeScalableTargetsInput = ::Struct.new(
      :service_namespace,
      :resource_ids,
      :scalable_dimension,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scalable_targets
    #   <p>The scalable targets that match the request parameters.</p>
    #
    #   @return [Array<ScalableTarget>]
    #
    # @!attribute next_token
    #   <p>The token required to get the next set of results. This value is <code>null</code> if
    #            there are no more results to return.</p>
    #
    #   @return [String]
    #
    DescribeScalableTargetsOutput = ::Struct.new(
      :scalable_targets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    #   Enum, one of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute scalable_dimension
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
    #   Enum, one of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of scalable targets. This value can be between 1 and
    #            50. The default value is 50.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 50 results and a
    #               <code>NextToken</code> value, if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeScalingActivitiesInput = ::Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scaling_activities
    #   <p>A list of scaling activity objects.</p>
    #
    #   @return [Array<ScalingActivity>]
    #
    # @!attribute next_token
    #   <p>The token required to get the next set of results. This value is <code>null</code> if
    #            there are no more results to return.</p>
    #
    #   @return [String]
    #
    DescribeScalingActivitiesOutput = ::Struct.new(
      :scaling_activities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_names
    #   <p>The names of the scaling policies to describe.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    #   Enum, one of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute scalable_dimension
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
    #   Enum, one of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of scalable targets. This value can be between 1 and 10. The default
    #            value is 10.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 10 results and a <code>NextToken</code> value, if
    #            applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeScalingPoliciesInput = ::Struct.new(
      :policy_names,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scaling_policies
    #   <p>Information about the scaling policies.</p>
    #
    #   @return [Array<ScalingPolicy>]
    #
    # @!attribute next_token
    #   <p>The token required to get the next set of results. This value is <code>null</code> if
    #            there are no more results to return.</p>
    #
    #   @return [String]
    #
    DescribeScalingPoliciesOutput = ::Struct.new(
      :scaling_policies,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduled_action_names
    #   <p>The names of the scheduled actions to describe.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    #   Enum, one of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute scalable_dimension
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
    #   Enum, one of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of scheduled action results. This value can be between
    #            1 and 50. The default value is 50.</p>
    #            <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
    #            at a time, along with a <code>NextToken</code> value. To get the next set of results,
    #            include the <code>NextToken</code> value in a subsequent call. If this parameter is not
    #            used, the operation returns up to 50 results and a
    #               <code>NextToken</code> value, if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeScheduledActionsInput = ::Struct.new(
      :scheduled_action_names,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduled_actions
    #   <p>Information about the scheduled actions.</p>
    #
    #   @return [Array<ScheduledAction>]
    #
    # @!attribute next_token
    #   <p>The token required to get the next set of results. This value is <code>null</code> if
    #            there are no more results to return.</p>
    #
    #   @return [String]
    #
    DescribeScheduledActionsOutput = ::Struct.new(
      :scheduled_actions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Failed access to resources caused an exception. This exception is thrown when Application Auto Scaling
    #          is unable to retrieve the alarms associated with a scaling policy due to a client error,
    #          for example, if the role ARN specified for a scalable target does not have permission to
    #          call the CloudWatch <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html">DescribeAlarms</a> on your behalf.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FailedResourceAccessException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service encountered an internal error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServiceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The next token supplied was invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A per-account resource limit is exceeded. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-limits.html">Application Auto Scaling service quotas</a>.</p>
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

    # Includes enum constants for MetricAggregationType
    #
    module MetricAggregationType
      # No documentation available.
      #
      Average = "Average"

      # No documentation available.
      #
      Minimum = "Minimum"

      # No documentation available.
      #
      Maximum = "Maximum"
    end

    # <p>Describes the dimension names and values associated with a metric.</p>
    #
    # @!attribute name
    #   <p>The name of the dimension.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the dimension.</p>
    #
    #   @return [String]
    #
    MetricDimension = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MetricStatistic
    #
    module MetricStatistic
      # No documentation available.
      #
      Average = "Average"

      # No documentation available.
      #
      Minimum = "Minimum"

      # No documentation available.
      #
      Maximum = "Maximum"

      # No documentation available.
      #
      SampleCount = "SampleCount"

      # No documentation available.
      #
      Sum = "Sum"
    end

    # Includes enum constants for MetricType
    #
    module MetricType
      # No documentation available.
      #
      DynamoDBReadCapacityUtilization = "DynamoDBReadCapacityUtilization"

      # No documentation available.
      #
      DynamoDBWriteCapacityUtilization = "DynamoDBWriteCapacityUtilization"

      # No documentation available.
      #
      ALBRequestCountPerTarget = "ALBRequestCountPerTarget"

      # No documentation available.
      #
      RDSReaderAverageCPUUtilization = "RDSReaderAverageCPUUtilization"

      # No documentation available.
      #
      RDSReaderAverageDatabaseConnections = "RDSReaderAverageDatabaseConnections"

      # No documentation available.
      #
      EC2SpotFleetRequestAverageCPUUtilization = "EC2SpotFleetRequestAverageCPUUtilization"

      # No documentation available.
      #
      EC2SpotFleetRequestAverageNetworkIn = "EC2SpotFleetRequestAverageNetworkIn"

      # No documentation available.
      #
      EC2SpotFleetRequestAverageNetworkOut = "EC2SpotFleetRequestAverageNetworkOut"

      # No documentation available.
      #
      SageMakerVariantInvocationsPerInstance = "SageMakerVariantInvocationsPerInstance"

      # No documentation available.
      #
      ECSServiceAverageCPUUtilization = "ECSServiceAverageCPUUtilization"

      # No documentation available.
      #
      ECSServiceAverageMemoryUtilization = "ECSServiceAverageMemoryUtilization"

      # No documentation available.
      #
      AppStreamAverageCapacityUtilization = "AppStreamAverageCapacityUtilization"

      # No documentation available.
      #
      ComprehendInferenceUtilization = "ComprehendInferenceUtilization"

      # No documentation available.
      #
      LambdaProvisionedConcurrencyUtilization = "LambdaProvisionedConcurrencyUtilization"

      # No documentation available.
      #
      CassandraReadCapacityUtilization = "CassandraReadCapacityUtilization"

      # No documentation available.
      #
      CassandraWriteCapacityUtilization = "CassandraWriteCapacityUtilization"

      # No documentation available.
      #
      KafkaBrokerStorageUtilization = "KafkaBrokerStorageUtilization"

      # No documentation available.
      #
      ElastiCachePrimaryEngineCPUUtilization = "ElastiCachePrimaryEngineCPUUtilization"

      # No documentation available.
      #
      ElastiCacheReplicaEngineCPUUtilization = "ElastiCacheReplicaEngineCPUUtilization"

      # No documentation available.
      #
      ElastiCacheDatabaseMemoryUsageCountedForEvictPercentage = "ElastiCacheDatabaseMemoryUsageCountedForEvictPercentage"

      # No documentation available.
      #
      NeptuneReaderAverageCPUUtilization = "NeptuneReaderAverageCPUUtilization"
    end

    # <p>The specified object could not be found. For any operation that depends on the existence
    #          of a scalable target, this exception is thrown if the scalable target with the specified
    #          service namespace, resource ID, and scalable dimension does not exist. For any operation
    #          that deletes or deregisters a resource, this exception is thrown if the resource cannot be
    #          found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ObjectNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PolicyType
    #
    module PolicyType
      # No documentation available.
      #
      StepScaling = "StepScaling"

      # No documentation available.
      #
      TargetTrackingScaling = "TargetTrackingScaling"
    end

    # <p>Represents a predefined metric for a target tracking scaling policy to use with
    #          Application Auto Scaling.</p>
    #          <p>Only the Amazon Web Services that you're using send metrics to Amazon CloudWatch. To determine whether a
    #          desired metric already exists by looking up its namespace and dimension using the CloudWatch
    #          metrics dashboard in the console, follow the procedure in <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/monitoring-cloudwatch.html">Building dashboards
    #             with CloudWatch</a> in the <i>Application Auto Scaling User Guide</i>.</p>
    #
    # @!attribute predefined_metric_type
    #   <p>The metric type. The <code>ALBRequestCountPerTarget</code> metric type applies only to
    #            Spot Fleet requests and ECS services.</p>
    #
    #   Enum, one of: ["DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn", "EC2SpotFleetRequestAverageNetworkOut", "SageMakerVariantInvocationsPerInstance", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization", "AppStreamAverageCapacityUtilization", "ComprehendInferenceUtilization", "LambdaProvisionedConcurrencyUtilization", "CassandraReadCapacityUtilization", "CassandraWriteCapacityUtilization", "KafkaBrokerStorageUtilization", "ElastiCachePrimaryEngineCPUUtilization", "ElastiCacheReplicaEngineCPUUtilization", "ElastiCacheDatabaseMemoryUsageCountedForEvictPercentage", "NeptuneReaderAverageCPUUtilization"]
    #
    #   @return [String]
    #
    # @!attribute resource_label
    #   <p>Identifies the resource associated with the metric type. You can't specify a resource
    #            label unless the metric type is <code>ALBRequestCountPerTarget</code> and there is a target
    #            group attached to the Spot Fleet request or ECS service.</p>
    #            <p>You create the resource label by appending the final portion of the load balancer ARN
    #               and the final portion of the target group ARN into a single value, separated by a forward
    #               slash (/). The format of the resource label is:</p>
    #           <p>
    #               <code>app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff</code>.</p>
    #           <p>Where:</p>
    #           <ul>
    #               <li>
    #                   <p>app/<load-balancer-name>/<load-balancer-id> is the final portion of
    #                       the load balancer ARN</p>
    #               </li>
    #               <li>
    #                   <p>targetgroup/<target-group-name>/<target-group-id> is the final portion
    #                       of the target group ARN.</p>
    #               </li>
    #            </ul>
    #           <p>To find the ARN for an Application Load Balancer, use the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
    #               the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    #
    #   @return [String]
    #
    PredefinedMetricSpecification = ::Struct.new(
      :predefined_metric_type,
      :resource_label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_name
    #   <p>The name of the scaling policy.</p>
    #
    #   @return [String]
    #
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    #   Enum, one of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute scalable_dimension
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
    #   Enum, one of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #
    #   @return [String]
    #
    # @!attribute policy_type
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
    #   Enum, one of: ["StepScaling", "TargetTrackingScaling"]
    #
    #   @return [String]
    #
    # @!attribute step_scaling_policy_configuration
    #   <p>A step scaling policy.</p>
    #            <p>This parameter is required if you are creating a policy and the policy type is
    #               <code>StepScaling</code>.</p>
    #
    #   @return [StepScalingPolicyConfiguration]
    #
    # @!attribute target_tracking_scaling_policy_configuration
    #   <p>A target tracking scaling policy. Includes support for predefined or customized
    #            metrics.</p>
    #            <p>This parameter is required if you are creating a policy and the policy type is
    #               <code>TargetTrackingScaling</code>.</p>
    #
    #   @return [TargetTrackingScalingPolicyConfiguration]
    #
    PutScalingPolicyInput = ::Struct.new(
      :policy_name,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :policy_type,
      :step_scaling_policy_configuration,
      :target_tracking_scaling_policy_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resulting scaling policy.</p>
    #
    #   @return [String]
    #
    # @!attribute alarms
    #   <p>The CloudWatch alarms created for the target tracking scaling policy.</p>
    #
    #   @return [Array<Alarm>]
    #
    PutScalingPolicyOutput = ::Struct.new(
      :policy_arn,
      :alarms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    #   Enum, one of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #
    #   @return [String]
    #
    # @!attribute schedule
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
    #   @return [String]
    #
    # @!attribute timezone
    #   <p>Specifies the time zone used when setting a scheduled action by using an at or cron
    #            expression. If a time zone is not provided, UTC is used by default.</p>
    #            <p>Valid values are the canonical names of the IANA time zones supported by Joda-Time (such
    #            as <code>Etc/GMT+9</code> or <code>Pacific/Tahiti</code>). For more information, see <a href="https://www.joda.org/joda-time/timezones.html">https://www.joda.org/joda-time/timezones.html</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action. This name must be unique among all other scheduled
    #            actions on the specified scalable target. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute scalable_dimension
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
    #   Enum, one of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The date and time for this scheduled action to start, in UTC.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The date and time for the recurring schedule to end, in UTC.</p>
    #
    #   @return [Time]
    #
    # @!attribute scalable_target_action
    #   <p>The new minimum and maximum capacity. You can set both values or just one. At the
    #            scheduled time, if the current capacity is below the minimum capacity, Application Auto Scaling scales out
    #            to the minimum capacity. If the current capacity is above the maximum capacity, Application Auto Scaling
    #            scales in to the maximum capacity.</p>
    #
    #   @return [ScalableTargetAction]
    #
    PutScheduledActionInput = ::Struct.new(
      :service_namespace,
      :schedule,
      :timezone,
      :scheduled_action_name,
      :resource_id,
      :scalable_dimension,
      :start_time,
      :end_time,
      :scalable_target_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutScheduledActionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
    #            by your own application or service, use <code>custom-resource</code> instead.</p>
    #
    #   Enum, one of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute scalable_dimension
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
    #   Enum, one of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #
    #   @return [String]
    #
    # @!attribute min_capacity
    #   <p>The minimum value that you plan to scale in to. When a scaling policy is in effect,
    #         Application Auto Scaling can scale in (contract) as needed to the minimum capacity limit in response to
    #         changing demand. This property is required when registering a new scalable target.</p>
    #            <p>For certain resources, the minimum value allowed is 0. This includes Lambda provisioned
    #         concurrency, Spot Fleet, ECS services, Aurora DB clusters, EMR clusters, and custom resources.
    #         For all other resources, the minimum value allowed is 1.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_capacity
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
    #   @return [Integer]
    #
    # @!attribute role_arn
    #   <p>This parameter is required for services that do not support service-linked roles (such as
    #         Amazon EMR), and it must specify the ARN of an IAM role that allows Application Auto Scaling to modify the scalable
    #         target on your behalf. </p>
    #            <p>If the service supports service-linked roles, Application Auto Scaling uses a service-linked role, which
    #         it creates if it does not yet exist. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html security_iam_service-with-iam-roles">Application Auto Scaling IAM roles</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute suspended_state
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
    #   @return [SuspendedState]
    #
    RegisterScalableTargetInput = ::Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :min_capacity,
      :max_capacity,
      :role_arn,
      :suspended_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RegisterScalableTargetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScalableDimension
    #
    module ScalableDimension
      # No documentation available.
      #
      ECSServiceDesiredCount = "ecs:service:DesiredCount"

      # No documentation available.
      #
      EC2SpotFleetRequestTargetCapacity = "ec2:spot-fleet-request:TargetCapacity"

      # No documentation available.
      #
      EMRInstanceGroupInstanceCount = "elasticmapreduce:instancegroup:InstanceCount"

      # No documentation available.
      #
      AppstreamFleetDesiredCapacity = "appstream:fleet:DesiredCapacity"

      # No documentation available.
      #
      DynamoDBTableReadCapacityUnits = "dynamodb:table:ReadCapacityUnits"

      # No documentation available.
      #
      DynamoDBTableWriteCapacityUnits = "dynamodb:table:WriteCapacityUnits"

      # No documentation available.
      #
      DynamoDBIndexReadCapacityUnits = "dynamodb:index:ReadCapacityUnits"

      # No documentation available.
      #
      DynamoDBIndexWriteCapacityUnits = "dynamodb:index:WriteCapacityUnits"

      # No documentation available.
      #
      RDSClusterReadReplicaCount = "rds:cluster:ReadReplicaCount"

      # No documentation available.
      #
      SageMakerVariantDesiredInstanceCount = "sagemaker:variant:DesiredInstanceCount"

      # No documentation available.
      #
      CustomResourceScalableDimension = "custom-resource:ResourceType:Property"

      # No documentation available.
      #
      ComprehendDocClassifierEndpointInferenceUnits = "comprehend:document-classifier-endpoint:DesiredInferenceUnits"

      # No documentation available.
      #
      ComprehendEntityRecognizerEndpointInferenceUnits = "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits"

      # No documentation available.
      #
      LambdaFunctionProvisionedConcurrency = "lambda:function:ProvisionedConcurrency"

      # No documentation available.
      #
      CassandraTableReadCapacityUnits = "cassandra:table:ReadCapacityUnits"

      # No documentation available.
      #
      CassandraTableWriteCapacityUnits = "cassandra:table:WriteCapacityUnits"

      # No documentation available.
      #
      KafkaBrokerStorageVolumeSize = "kafka:broker-storage:VolumeSize"

      # No documentation available.
      #
      ElastiCacheReplicationGroupNodeGroups = "elasticache:replication-group:NodeGroups"

      # No documentation available.
      #
      ElastiCacheReplicationGroupReplicas = "elasticache:replication-group:Replicas"

      # No documentation available.
      #
      NeptuneClusterReadReplicaCount = "neptune:cluster:ReadReplicaCount"
    end

    # <p>Represents a scalable target.</p>
    #
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource, or a
    #               <code>custom-resource</code>.</p>
    #
    #   Enum, one of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute scalable_dimension
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
    #   Enum, one of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #
    #   @return [String]
    #
    # @!attribute min_capacity
    #   <p>The minimum value to scale to in response to a scale-in activity.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_capacity
    #   <p>The maximum value to scale to in response to a scale-out activity.</p>
    #
    #   @return [Integer]
    #
    # @!attribute role_arn
    #   <p>The ARN of an IAM role that allows Application Auto Scaling to modify the scalable target on your
    #            behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The Unix timestamp for when the scalable target was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute suspended_state
    #   <p>Specifies whether the scaling activities for a scalable target are in a suspended state.
    #         </p>
    #
    #   @return [SuspendedState]
    #
    ScalableTarget = ::Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :min_capacity,
      :max_capacity,
      :role_arn,
      :creation_time,
      :suspended_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the minimum and maximum capacity for a scheduled action.</p>
    #
    # @!attribute min_capacity
    #   <p>The minimum capacity.</p>
    #            <p>For certain resources, the minimum value allowed is 0. This includes Lambda provisioned
    #         concurrency, Spot Fleet, ECS services, Aurora DB clusters, EMR clusters, and custom resources.
    #         For all other resources, the minimum value allowed is 1.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_capacity
    #   <p>The maximum capacity.</p>
    #            <p>Although you can specify a large maximum capacity, note that service quotas may impose
    #            lower limits. Each service has its own default quotas for the maximum capacity of the
    #            resource. If you want to specify a higher limit, you can request an increase. For more
    #            information, consult the documentation for that service. For information about the default
    #            quotas for each service, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html">Service Endpoints and
    #               Quotas</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    #   @return [Integer]
    #
    ScalableTargetAction = ::Struct.new(
      :min_capacity,
      :max_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a scaling activity.</p>
    #
    # @!attribute activity_id
    #   <p>The unique identifier of the scaling activity.</p>
    #
    #   @return [String]
    #
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource, or a
    #               <code>custom-resource</code>.</p>
    #
    #   Enum, one of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute scalable_dimension
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
    #   Enum, one of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A simple description of what action the scaling activity intends to accomplish.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A simple description of what caused the scaling activity to happen.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The Unix timestamp for when the scaling activity began.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The Unix timestamp for when the scaling activity ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute status_code
    #   <p>Indicates the status of the scaling activity.</p>
    #
    #   Enum, one of: ["Pending", "InProgress", "Successful", "Overridden", "Unfulfilled", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A simple message about the current status of the scaling activity.</p>
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>The details about the scaling activity.</p>
    #
    #   @return [String]
    #
    ScalingActivity = ::Struct.new(
      :activity_id,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :description,
      :cause,
      :start_time,
      :end_time,
      :status_code,
      :status_message,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScalingActivityStatusCode
    #
    module ScalingActivityStatusCode
      # No documentation available.
      #
      Pending = "Pending"

      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      Successful = "Successful"

      # No documentation available.
      #
      Overridden = "Overridden"

      # No documentation available.
      #
      Unfulfilled = "Unfulfilled"

      # No documentation available.
      #
      Failed = "Failed"
    end

    # <p>Represents a scaling policy to use with Application Auto Scaling.</p>
    #          <p>For more information about configuring scaling policies for a specific service, see
    #             <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/getting-started.html">Getting started with Application Auto Scaling</a> in the
    #          <i>Application Auto Scaling User Guide</i>.</p>
    #
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the scaling policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name of the scaling policy.</p>
    #
    #   @return [String]
    #
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource, or a
    #               <code>custom-resource</code>.</p>
    #
    #   Enum, one of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute scalable_dimension
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
    #   Enum, one of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #
    #   @return [String]
    #
    # @!attribute policy_type
    #   <p>The scaling policy type.</p>
    #
    #   Enum, one of: ["StepScaling", "TargetTrackingScaling"]
    #
    #   @return [String]
    #
    # @!attribute step_scaling_policy_configuration
    #   <p>A step scaling policy.</p>
    #
    #   @return [StepScalingPolicyConfiguration]
    #
    # @!attribute target_tracking_scaling_policy_configuration
    #   <p>A target tracking scaling policy.</p>
    #
    #   @return [TargetTrackingScalingPolicyConfiguration]
    #
    # @!attribute alarms
    #   <p>The CloudWatch alarms associated with the scaling policy.</p>
    #
    #   @return [Array<Alarm>]
    #
    # @!attribute creation_time
    #   <p>The Unix timestamp for when the scaling policy was created.</p>
    #
    #   @return [Time]
    #
    ScalingPolicy = ::Struct.new(
      :policy_arn,
      :policy_name,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :policy_type,
      :step_scaling_policy_configuration,
      :target_tracking_scaling_policy_configuration,
      :alarms,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a scheduled action.</p>
    #
    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_action_arn
    #   <p>The Amazon Resource Name (ARN) of the scheduled action.</p>
    #
    #   @return [String]
    #
    # @!attribute service_namespace
    #   <p>The namespace of the Amazon Web Services service that provides the resource, or a
    #               <code>custom-resource</code>.</p>
    #
    #   Enum, one of: ["ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker", "custom-resource", "comprehend", "lambda", "cassandra", "kafka", "elasticache", "neptune"]
    #
    #   @return [String]
    #
    # @!attribute schedule
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
    #   @return [String]
    #
    # @!attribute timezone
    #   <p>The time zone used when referring to the date and time of a scheduled action, when the
    #            scheduled action uses an at or cron expression.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute scalable_dimension
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
    #   Enum, one of: ["ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount", "custom-resource:ResourceType:Property", "comprehend:document-classifier-endpoint:DesiredInferenceUnits", "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits", "lambda:function:ProvisionedConcurrency", "cassandra:table:ReadCapacityUnits", "cassandra:table:WriteCapacityUnits", "kafka:broker-storage:VolumeSize", "elasticache:replication-group:NodeGroups", "elasticache:replication-group:Replicas", "neptune:cluster:ReadReplicaCount"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The date and time that the action is scheduled to begin, in UTC.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The date and time that the action is scheduled to end, in UTC.</p>
    #
    #   @return [Time]
    #
    # @!attribute scalable_target_action
    #   <p>The new minimum and maximum capacity. You can set both values or just one. At the
    #            scheduled time, if the current capacity is below the minimum capacity, Application Auto Scaling scales out
    #            to the minimum capacity. If the current capacity is above the maximum capacity, Application Auto Scaling
    #            scales in to the maximum capacity.</p>
    #
    #   @return [ScalableTargetAction]
    #
    # @!attribute creation_time
    #   <p>The date and time that the scheduled action was created.</p>
    #
    #   @return [Time]
    #
    ScheduledAction = ::Struct.new(
      :scheduled_action_name,
      :scheduled_action_arn,
      :service_namespace,
      :schedule,
      :timezone,
      :resource_id,
      :scalable_dimension,
      :start_time,
      :end_time,
      :scalable_target_action,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServiceNamespace
    #
    module ServiceNamespace
      # No documentation available.
      #
      ECS = "ecs"

      # No documentation available.
      #
      EMR = "elasticmapreduce"

      # No documentation available.
      #
      EC2 = "ec2"

      # No documentation available.
      #
      APPSTREAM = "appstream"

      # No documentation available.
      #
      DYNAMODB = "dynamodb"

      # No documentation available.
      #
      RDS = "rds"

      # No documentation available.
      #
      SAGEMAKER = "sagemaker"

      # No documentation available.
      #
      CUSTOM_RESOURCE = "custom-resource"

      # No documentation available.
      #
      COMPREHEND = "comprehend"

      # No documentation available.
      #
      LAMBDA = "lambda"

      # No documentation available.
      #
      CASSANDRA = "cassandra"

      # No documentation available.
      #
      KAFKA = "kafka"

      # No documentation available.
      #
      ELASTICACHE = "elasticache"

      # No documentation available.
      #
      NEPTUNE = "neptune"
    end

    # <p>Represents a step adjustment for a <a href="https://docs.aws.amazon.com/autoscaling/application/APIReference/API_StepScalingPolicyConfiguration.html">StepScalingPolicyConfiguration</a>. Describes an adjustment based on the difference
    #          between the value of the aggregated CloudWatch metric and the breach threshold that you've
    #          defined for the alarm. </p>
    #          <p>For the following examples, suppose that you have an alarm with a breach threshold of
    #          50:</p>
    #          <ul>
    #             <li>
    #                <p>To trigger the adjustment when the metric is greater than or equal to 50 and less
    #                than 60, specify a lower bound of 0 and an upper bound of 10.</p>
    #             </li>
    #             <li>
    #                <p>To trigger the adjustment when the metric is greater than 40 and less than or
    #                equal to 50, specify a lower bound of -10 and an upper bound of 0.</p>
    #             </li>
    #          </ul>
    #          <p>There are a few rules for the step adjustments for your step policy:</p>
    #          <ul>
    #             <li>
    #                <p>The ranges of your step adjustments can't overlap or have a gap.</p>
    #             </li>
    #             <li>
    #                <p>At most one step adjustment can have a null lower bound. If one step adjustment
    #                has a negative lower bound, then there must be a step adjustment with a null lower
    #                bound.</p>
    #             </li>
    #             <li>
    #                <p>At most one step adjustment can have a null upper bound. If one step adjustment
    #                has a positive upper bound, then there must be a step adjustment with a null upper
    #                bound.</p>
    #             </li>
    #             <li>
    #                <p>The upper and lower bound can't be null in the same step adjustment.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute metric_interval_lower_bound
    #   <p>The lower bound for the difference between the alarm threshold and the CloudWatch metric. If
    #            the metric value is above the breach threshold, the lower bound is inclusive (the metric
    #            must be greater than or equal to the threshold plus the lower bound). Otherwise, it is
    #            exclusive (the metric must be greater than the threshold plus the lower bound). A null
    #            value indicates negative infinity.</p>
    #
    #   @return [Float]
    #
    # @!attribute metric_interval_upper_bound
    #   <p>The upper bound for the difference between the alarm threshold and the CloudWatch metric. If
    #            the metric value is above the breach threshold, the upper bound is exclusive (the metric
    #            must be less than the threshold plus the upper bound). Otherwise, it is inclusive (the
    #            metric must be less than or equal to the threshold plus the upper bound). A null value
    #            indicates positive infinity.</p>
    #            <p>The upper bound must be greater than the lower bound.</p>
    #
    #   @return [Float]
    #
    # @!attribute scaling_adjustment
    #   <p>The amount by which to scale, based on the specified adjustment type. A positive value
    #            adds to the current capacity while a negative number removes from the current capacity. For
    #            exact capacity, you must specify a positive value.</p>
    #
    #   @return [Integer]
    #
    StepAdjustment = ::Struct.new(
      :metric_interval_lower_bound,
      :metric_interval_upper_bound,
      :scaling_adjustment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a step scaling policy configuration to use with Application Auto Scaling.</p>
    #
    # @!attribute adjustment_type
    #   <p>Specifies how the <code>ScalingAdjustment</code> value in a <a href="https://docs.aws.amazon.com/autoscaling/application/APIReference/API_StepAdjustment.html">StepAdjustment</a> is interpreted (for example, an absolute number or a
    #            percentage). The valid values are <code>ChangeInCapacity</code>,
    #            <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>. </p>
    #            <p>
    #               <code>AdjustmentType</code> is required if you are adding a new step scaling policy
    #            configuration.</p>
    #
    #   Enum, one of: ["ChangeInCapacity", "PercentChangeInCapacity", "ExactCapacity"]
    #
    #   @return [String]
    #
    # @!attribute step_adjustments
    #   <p>A set of adjustments that enable you to scale based on the size of the alarm
    #            breach.</p>
    #            <p>At least one step adjustment is required if you are adding a new step scaling policy
    #            configuration.</p>
    #
    #   @return [Array<StepAdjustment>]
    #
    # @!attribute min_adjustment_magnitude
    #   <p>The minimum value to scale by when the adjustment type is
    #               <code>PercentChangeInCapacity</code>. For example, suppose that you create a step
    #            scaling policy to scale out an Amazon ECS service by 25 percent and you specify a
    #               <code>MinAdjustmentMagnitude</code> of 2. If the service has 4 tasks and the scaling
    #            policy is performed, 25 percent of 4 is 1. However, because you specified a
    #               <code>MinAdjustmentMagnitude</code> of 2, Application Auto Scaling scales out the service by 2
    #            tasks.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cooldown
    #   <p>The amount of time, in seconds, to wait for a previous scaling activity to take effect. </p>
    #            <p>With scale-out policies, the intention is to continuously (but not excessively) scale out.
    #         After Application Auto Scaling successfully scales out using a step scaling policy, it starts to calculate the
    #         cooldown time. The scaling policy won't increase the desired capacity again unless either a
    #         larger scale out is triggered or the cooldown period ends. While the cooldown period is in
    #         effect, capacity added by the initiating scale-out activity is calculated as part of the
    #         desired capacity for the next scale-out activity. For example, when an alarm triggers a step
    #         scaling policy to increase the capacity by 2, the scaling activity completes successfully, and
    #         a cooldown period starts. If the alarm triggers again during the cooldown period but at a more
    #         aggressive step adjustment of 3, the previous increase of 2 is considered part of the current
    #         capacity. Therefore, only 1 is added to the capacity.</p>
    #            <p>With scale-in policies, the intention is to scale in conservatively to protect your
    #         application’s availability, so scale-in activities are blocked until the cooldown period has
    #         expired. However, if another alarm triggers a scale-out activity during the cooldown period
    #         after a scale-in activity, Application Auto Scaling scales out the target immediately. In this case, the
    #         cooldown period for the scale-in activity stops and doesn't complete.</p>
    #            <p>Application Auto Scaling provides a default value of 600 for Amazon ElastiCache replication groups
    #             and a default value of 300 for the following scalable targets:</p>
    #            <ul>
    #               <li>
    #                  <p>AppStream 2.0 fleets</p>
    #              </li>
    #               <li>
    #                  <p>Aurora DB clusters</p>
    #              </li>
    #               <li>
    #                  <p>ECS services</p>
    #              </li>
    #               <li>
    #                  <p>EMR clusters</p>
    #              </li>
    #               <li>
    #                  <p> Neptune clusters</p>
    #              </li>
    #               <li>
    #                  <p>SageMaker endpoint variants</p>
    #              </li>
    #               <li>
    #                  <p>Spot Fleets</p>
    #              </li>
    #               <li>
    #                  <p>Custom resources</p>
    #              </li>
    #            </ul>
    #            <p>For all other scalable targets, the default value is 0:</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Comprehend document classification and entity recognizer endpoints</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB tables and global secondary indexes</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Keyspaces tables</p>
    #              </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency</p>
    #              </li>
    #               <li>
    #                  <p>Amazon MSK broker storage</p>
    #              </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute metric_aggregation_type
    #   <p>The aggregation type for the CloudWatch metrics. Valid values are <code>Minimum</code>,
    #               <code>Maximum</code>, and <code>Average</code>. If the aggregation type is null, the
    #            value is treated as <code>Average</code>.</p>
    #
    #   Enum, one of: ["Average", "Minimum", "Maximum"]
    #
    #   @return [String]
    #
    StepScalingPolicyConfiguration = ::Struct.new(
      :adjustment_type,
      :step_adjustments,
      :min_adjustment_magnitude,
      :cooldown,
      :metric_aggregation_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies whether the scaling activities for a scalable target are in a suspended state.
    #       </p>
    #
    # @!attribute dynamic_scaling_in_suspended
    #   <p>Whether scale in by a target tracking scaling policy or a step scaling policy is
    #            suspended. Set the value to <code>true</code> if you don't want Application Auto Scaling to remove capacity
    #            when a scaling policy is triggered. The default is <code>false</code>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute dynamic_scaling_out_suspended
    #   <p>Whether scale out by a target tracking scaling policy or a step scaling policy is
    #            suspended. Set the value to <code>true</code> if you don't want Application Auto Scaling to add capacity
    #            when a scaling policy is triggered. The default is <code>false</code>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute scheduled_scaling_suspended
    #   <p>Whether scheduled scaling is suspended. Set the value to <code>true</code> if you don't
    #            want Application Auto Scaling to add or remove capacity by initiating scheduled actions. The default is
    #               <code>false</code>. </p>
    #
    #   @return [Boolean]
    #
    SuspendedState = ::Struct.new(
      :dynamic_scaling_in_suspended,
      :dynamic_scaling_out_suspended,
      :scheduled_scaling_suspended,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a target tracking scaling policy configuration to use with Application Auto Scaling.</p>
    #
    # @!attribute target_value
    #   <p>The target value for the metric. Although this property accepts numbers of type Double,
    #            it won't accept values that are either too small or too large. Values must be in the range
    #            of -2^360 to 2^360. The value must be a valid number based on the choice of metric. For
    #            example, if the metric is CPU utilization, then the target value is a percent value that
    #            represents how much of the CPU can be used before scaling out. </p>
    #
    #   @return [Float]
    #
    # @!attribute predefined_metric_specification
    #   <p>A predefined metric. You can specify either a predefined metric or a customized
    #            metric.</p>
    #
    #   @return [PredefinedMetricSpecification]
    #
    # @!attribute customized_metric_specification
    #   <p>A customized metric. You can specify either a predefined metric or a customized
    #            metric.</p>
    #
    #   @return [CustomizedMetricSpecification]
    #
    # @!attribute scale_out_cooldown
    #   <p>The amount of time, in seconds, to wait for a previous scale-out activity to take
    #         effect.</p>
    #            <p>With the <i>scale-out cooldown period</i>, the intention is to continuously
    #         (but not excessively) scale out. After Application Auto Scaling successfully scales out using a target
    #         tracking scaling policy, it starts to calculate the cooldown time. The scaling policy won't
    #         increase the desired capacity again unless either a larger scale out is triggered or the
    #         cooldown period ends. While the cooldown period is in effect, the capacity added by the
    #         initiating scale-out activity is calculated as part of the desired capacity for the next
    #         scale-out activity.</p>
    #            <p>Application Auto Scaling provides a default value of 600 for Amazon ElastiCache replication groups
    #             and a default value of 300 for the following scalable targets:</p>
    #            <ul>
    #               <li>
    #                  <p>AppStream 2.0 fleets</p>
    #              </li>
    #               <li>
    #                  <p>Aurora DB clusters</p>
    #              </li>
    #               <li>
    #                  <p>ECS services</p>
    #              </li>
    #               <li>
    #                  <p>EMR clusters</p>
    #              </li>
    #               <li>
    #                  <p> Neptune clusters</p>
    #              </li>
    #               <li>
    #                  <p>SageMaker endpoint variants</p>
    #              </li>
    #               <li>
    #                  <p>Spot Fleets</p>
    #              </li>
    #               <li>
    #                  <p>Custom resources</p>
    #              </li>
    #            </ul>
    #            <p>For all other scalable targets, the default value is 0:</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Comprehend document classification and entity recognizer endpoints</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB tables and global secondary indexes</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Keyspaces tables</p>
    #              </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency</p>
    #              </li>
    #               <li>
    #                  <p>Amazon MSK broker storage</p>
    #              </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute scale_in_cooldown
    #   <p>The amount of time, in seconds, after a scale-in activity completes before another
    #         scale-in activity can start.</p>
    #            <p>With the <i>scale-in cooldown period</i>, the intention is to scale in
    #         conservatively to protect your application’s availability, so scale-in activities are blocked
    #         until the cooldown period has expired. However, if another alarm triggers a scale-out activity
    #         during the scale-in cooldown period, Application Auto Scaling scales out the target immediately. In this case,
    #         the scale-in cooldown period stops and doesn't complete.</p>
    #            <p>Application Auto Scaling provides a default value of 600 for Amazon ElastiCache replication groups
    #             and a default value of 300 for the following scalable targets:</p>
    #            <ul>
    #               <li>
    #                  <p>AppStream 2.0 fleets</p>
    #              </li>
    #               <li>
    #                  <p>Aurora DB clusters</p>
    #              </li>
    #               <li>
    #                  <p>ECS services</p>
    #              </li>
    #               <li>
    #                  <p>EMR clusters</p>
    #              </li>
    #               <li>
    #                  <p> Neptune clusters</p>
    #              </li>
    #               <li>
    #                  <p>SageMaker endpoint variants</p>
    #              </li>
    #               <li>
    #                  <p>Spot Fleets</p>
    #              </li>
    #               <li>
    #                  <p>Custom resources</p>
    #              </li>
    #            </ul>
    #            <p>For all other scalable targets, the default value is 0:</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Comprehend document classification and entity recognizer endpoints</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB tables and global secondary indexes</p>
    #              </li>
    #               <li>
    #                  <p>Amazon Keyspaces tables</p>
    #              </li>
    #               <li>
    #                  <p>Lambda provisioned concurrency</p>
    #              </li>
    #               <li>
    #                  <p>Amazon MSK broker storage</p>
    #              </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute disable_scale_in
    #   <p>Indicates whether scale in by the target tracking scaling policy is disabled. If the
    #            value is <code>true</code>, scale in is disabled and the target tracking scaling policy
    #            won't remove capacity from the scalable target. Otherwise, scale in is enabled and the
    #            target tracking scaling policy can remove capacity from the scalable target. The default
    #            value is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    TargetTrackingScalingPolicyConfiguration = ::Struct.new(
      :target_value,
      :predefined_metric_specification,
      :customized_metric_specification,
      :scale_out_cooldown,
      :scale_in_cooldown,
      :disable_scale_in,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An exception was thrown for a validation issue. Review the available parameters for the
    #          API request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
