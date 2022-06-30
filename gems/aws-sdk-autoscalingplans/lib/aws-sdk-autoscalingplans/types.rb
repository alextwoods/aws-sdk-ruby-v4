# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AutoScalingPlans
  module Types

    # <p>Represents an application source.</p>
    #
    # @!attribute cloud_formation_stack_arn
    #   <p>The Amazon Resource Name (ARN) of a AWS CloudFormation stack.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_filters
    #   <p>A set of tags (up to 50).</p>
    #
    #   @return [Array<TagFilter>]
    #
    ApplicationSource = ::Struct.new(
      :cloud_formation_stack_arn,
      :tag_filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Concurrent updates caused an exception, for example, if you request an update to a
    #          scaling plan that already has a pending update.</p>
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

    # @!attribute scaling_plan_name
    #   <p>The name of the scaling plan. Names cannot contain vertical bars, colons, or forward
    #            slashes.</p>
    #
    #   @return [String]
    #
    # @!attribute application_source
    #   <p>A CloudFormation stack or set of tags. You can create one scaling plan per application
    #            source.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ApplicationSource.html">ApplicationSource</a> in the <i>AWS Auto Scaling API Reference</i>.</p>
    #
    #   @return [ApplicationSource]
    #
    # @!attribute scaling_instructions
    #   <p>The scaling instructions.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html">ScalingInstruction</a> in the <i>AWS Auto Scaling API Reference</i>.</p>
    #
    #   @return [Array<ScalingInstruction>]
    #
    CreateScalingPlanInput = ::Struct.new(
      :scaling_plan_name,
      :application_source,
      :scaling_instructions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scaling_plan_version
    #   <p>The version number of the scaling plan. This value is always <code>1</code>. Currently,
    #            you cannot have multiple scaling plan versions.</p>
    #
    #   @return [Integer]
    #
    CreateScalingPlanOutput = ::Struct.new(
      :scaling_plan_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a CloudWatch metric of your choosing that can be used for predictive scaling. </p>
    #          <p>For predictive scaling to work with a customized load metric specification, AWS Auto Scaling
    #          needs access to the <code>Sum</code> and <code>Average</code> statistics that CloudWatch computes
    #          from metric data.</p>
    #          <p>When you choose a load metric, make sure that the required <code>Sum</code> and
    #             <code>Average</code> statistics for your metric are available in CloudWatch and that they
    #          provide relevant data for predictive scaling. The <code>Sum</code> statistic must represent
    #          the total load on the resource, and the <code>Average</code> statistic must represent the
    #          average load per capacity unit of the resource. For example, there is a metric that counts
    #          the number of requests processed by your Auto Scaling group. If the <code>Sum</code> statistic
    #          represents the total request count processed by the group, then the <code>Average</code>
    #          statistic for the specified metric must represent the average request count processed by
    #          each instance of the group. </p>
    #          <p>If you publish your own metrics, you can aggregate the data points at a given interval
    #          and then publish the aggregated data points to CloudWatch. Before AWS Auto Scaling generates the
    #          forecast, it sums up all the metric data points that occurred within each hour to match the
    #          granularity period that is used in the forecast (60 minutes).</p>
    #          <p>For information about terminology, available metrics, or how to publish new metrics, see
    #             <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html">Amazon CloudWatch
    #             Concepts</a> in the <i>Amazon CloudWatch User Guide</i>. </p>
    #          <p>After creating your scaling plan, you can use the AWS Auto Scaling console to visualize
    #          forecasts for the specified metric. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/plans/userguide/gs-create-scaling-plan.html#gs-view-resource">View
    #             Scaling Information for a Resource</a> in the
    #          <i>AWS Auto Scaling User Guide</i>.</p>
    #
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute dimensions
    #   <p>The dimensions of the metric.</p>
    #            <p>Conditional: If you published your metric with dimensions, you must specify the same
    #            dimensions in your customized load metric specification.</p>
    #
    #   @return [Array<MetricDimension>]
    #
    # @!attribute statistic
    #   <p>The statistic of the metric. The only valid value is <code>Sum</code>.</p>
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
    CustomizedLoadMetricSpecification = ::Struct.new(
      :metric_name,
      :namespace,
      :dimensions,
      :statistic,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a CloudWatch metric of your choosing that can be used for dynamic scaling as part
    #          of a target tracking scaling policy. </p>
    #          <p>To create your customized scaling metric specification:</p>
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
    #                That is, the value of the metric should decrease when capacity increases. </p>
    #             </li>
    #          </ul>
    #          <p>For information about terminology, available metrics, or how to publish new metrics, see
    #             <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html">Amazon CloudWatch
    #             Concepts</a> in the <i>Amazon CloudWatch User Guide</i>. </p>
    #
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute dimensions
    #   <p>The dimensions of the metric.</p>
    #            <p>Conditional: If you published your metric with dimensions, you must specify the same
    #            dimensions in your customized scaling metric specification.</p>
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
    #   <p>The unit of the metric. </p>
    #
    #   @return [String]
    #
    CustomizedScalingMetricSpecification = ::Struct.new(
      :metric_name,
      :namespace,
      :dimensions,
      :statistic,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a single value in the forecast data used for predictive scaling.</p>
    #
    # @!attribute timestamp
    #   <p>The time stamp for the data point in UTC format.</p>
    #
    #   @return [Time]
    #
    # @!attribute value
    #   <p>The value of the data point.</p>
    #
    #   @return [Float]
    #
    Datapoint = ::Struct.new(
      :timestamp,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scaling_plan_name
    #   <p>The name of the scaling plan.</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_plan_version
    #   <p>The version number of the scaling plan. Currently, the only valid value is
    #               <code>1</code>.</p>
    #
    #   @return [Integer]
    #
    DeleteScalingPlanInput = ::Struct.new(
      :scaling_plan_name,
      :scaling_plan_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteScalingPlanOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scaling_plan_name
    #   <p>The name of the scaling plan.</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_plan_version
    #   <p>The version number of the scaling plan. Currently, the only valid value is
    #               <code>1</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_results
    #   <p>The maximum number of scalable resources to return. The value must be between
    #            1 and 50. The default value is 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeScalingPlanResourcesInput = ::Struct.new(
      :scaling_plan_name,
      :scaling_plan_version,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scaling_plan_resources
    #   <p>Information about the scalable resources.</p>
    #
    #   @return [Array<ScalingPlanResource>]
    #
    # @!attribute next_token
    #   <p>The token required to get the next set of results. This value is <code>null</code> if
    #            there are no more results to return.</p>
    #
    #   @return [String]
    #
    DescribeScalingPlanResourcesOutput = ::Struct.new(
      :scaling_plan_resources,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scaling_plan_names
    #   <p>The names of the scaling plans (up to 10). If you specify application sources, you
    #            cannot specify scaling plan names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute scaling_plan_version
    #   <p>The version number of the scaling plan. Currently, the only valid value is
    #               <code>1</code>.</p>
    #            <note>
    #               <p>If you specify a scaling plan version, you must also specify a scaling plan
    #               name.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute application_sources
    #   <p>The sources for the applications (up to 10). If you specify scaling plan names, you
    #            cannot specify application sources.</p>
    #
    #   @return [Array<ApplicationSource>]
    #
    # @!attribute max_results
    #   <p>The maximum number of scalable resources to return. This value can be between
    #            1 and 50. The default value is 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeScalingPlansInput = ::Struct.new(
      :scaling_plan_names,
      :scaling_plan_version,
      :application_sources,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scaling_plans
    #   <p>Information about the scaling plans.</p>
    #
    #   @return [Array<ScalingPlan>]
    #
    # @!attribute next_token
    #   <p>The token required to get the next set of results. This value is <code>null</code> if
    #            there are no more results to return.</p>
    #
    #   @return [String]
    #
    DescribeScalingPlansOutput = ::Struct.new(
      :scaling_plans,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ForecastDataType
    #
    module ForecastDataType
      # No documentation available.
      #
      CapacityForecast = "CapacityForecast"

      # No documentation available.
      #
      LoadForecast = "LoadForecast"

      # No documentation available.
      #
      ScheduledActionMinCapacity = "ScheduledActionMinCapacity"

      # No documentation available.
      #
      ScheduledActionMaxCapacity = "ScheduledActionMaxCapacity"
    end

    # @!attribute scaling_plan_name
    #   <p>The name of the scaling plan.</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_plan_version
    #   <p>The version number of the scaling plan. Currently, the only valid value is
    #               <code>1</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute service_namespace
    #   <p>The namespace of the AWS service. The only valid value is <code>autoscaling</code>.
    #         </p>
    #
    #   Enum, one of: ["autoscaling", "ecs", "ec2", "rds", "dynamodb"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource. This string consists of a prefix (<code>autoScalingGroup</code>)
    #            followed by the name of a specified Auto Scaling group (<code>my-asg</code>). Example:
    #               <code>autoScalingGroup/my-asg</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute scalable_dimension
    #   <p>The scalable dimension for the resource. The only valid value is
    #               <code>autoscaling:autoScalingGroup:DesiredCapacity</code>. </p>
    #
    #   Enum, one of: ["autoscaling:autoScalingGroup:DesiredCapacity", "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "rds:cluster:ReadReplicaCount", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits"]
    #
    #   @return [String]
    #
    # @!attribute forecast_data_type
    #   <p>The type of forecast data to get.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LoadForecast</code>: The load metric forecast. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CapacityForecast</code>: The capacity forecast. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ScheduledActionMinCapacity</code>: The minimum capacity for each scheduled
    #                  scaling action. This data is calculated as the larger of two values: the capacity
    #                  forecast or the minimum capacity in the scaling instruction.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ScheduledActionMaxCapacity</code>: The maximum capacity for each scheduled
    #                  scaling action. The calculation used is determined by the predictive scaling maximum
    #                  capacity behavior setting in the scaling instruction.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CapacityForecast", "LoadForecast", "ScheduledActionMinCapacity", "ScheduledActionMaxCapacity"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The inclusive start time of the time range for the forecast data to get. The date and
    #            time can be at most 56 days before the current date and time. </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The exclusive end time of the time range for the forecast data to get. The maximum time
    #            duration between the start and end time is seven days. </p>
    #            <p>Although this parameter can accept a date and time that is more than two days in the
    #            future, the availability of forecast data has limits. AWS Auto Scaling only issues forecasts for
    #            periods of two days in advance.</p>
    #
    #   @return [Time]
    #
    GetScalingPlanResourceForecastDataInput = ::Struct.new(
      :scaling_plan_name,
      :scaling_plan_version,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :forecast_data_type,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datapoints
    #   <p>The data points to return.</p>
    #
    #   @return [Array<Datapoint>]
    #
    GetScalingPlanResourceForecastDataOutput = ::Struct.new(
      :datapoints,
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

    # <p>The token provided is not valid.</p>
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

    # <p>Your account exceeded a limit. This exception is thrown when a per-account resource
    #          limit is exceeded.</p>
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

    # Includes enum constants for LoadMetricType
    #
    module LoadMetricType
      # No documentation available.
      #
      ASGTotalCPUUtilization = "ASGTotalCPUUtilization"

      # No documentation available.
      #
      ASGTotalNetworkIn = "ASGTotalNetworkIn"

      # No documentation available.
      #
      ASGTotalNetworkOut = "ASGTotalNetworkOut"

      # No documentation available.
      #
      ALBTargetGroupRequestCount = "ALBTargetGroupRequestCount"
    end

    # <p>Represents a dimension for a customized metric.</p>
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

    # <p>The specified object could not be found.</p>
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
      TargetTrackingScaling = "TargetTrackingScaling"
    end

    # <p>Represents a predefined metric that can be used for predictive scaling.</p>
    #          <p>After creating your scaling plan, you can use the AWS Auto Scaling console to visualize
    #          forecasts for the specified metric. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/plans/userguide/gs-create-scaling-plan.html#gs-view-resource">View
    #             Scaling Information for a Resource</a> in the
    #          <i>AWS Auto Scaling User Guide</i>.</p>
    #
    # @!attribute predefined_load_metric_type
    #   <p>The metric type.</p>
    #
    #   Enum, one of: ["ASGTotalCPUUtilization", "ASGTotalNetworkIn", "ASGTotalNetworkOut", "ALBTargetGroupRequestCount"]
    #
    #   @return [String]
    #
    # @!attribute resource_label
    #   <p>Identifies the resource associated with the metric type. You can't specify a resource
    #            label unless the metric type is <code>ALBTargetGroupRequestCount</code> and there is a
    #            target group for an Application Load Balancer attached to the Auto Scaling group.</p>
    #            <p>You create the resource label by appending the final portion of the load balancer ARN
    #            and the final portion of the target group ARN into a single value, separated by a forward
    #            slash (/). The format is
    #            app/<load-balancer-name>/<load-balancer-id>/targetgroup/<target-group-name>/<target-group-id>,
    #            where:</p>
    #            <ul>
    #               <li>
    #                  <p>app/<load-balancer-name>/<load-balancer-id> is the final portion of
    #                  the load balancer ARN</p>
    #               </li>
    #               <li>
    #                  <p>targetgroup/<target-group-name>/<target-group-id> is the final portion
    #                  of the target group ARN.</p>
    #               </li>
    #            </ul>
    #            <p>This is an example:
    #            app/EC2Co-EcsEl-1TKLTMITMM0EO/f37c06a68c1748aa/targetgroup/EC2Co-Defau-LDNM7Q3ZH1ZN/6d4ea56ca2d6a18d.</p>
    #            <p>To find the ARN for an Application Load Balancer, use the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
    #            the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    #
    #   @return [String]
    #
    PredefinedLoadMetricSpecification = ::Struct.new(
      :predefined_load_metric_type,
      :resource_label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a predefined metric that can be used for dynamic scaling as part of a target
    #          tracking scaling policy.</p>
    #
    # @!attribute predefined_scaling_metric_type
    #   <p>The metric type. The <code>ALBRequestCountPerTarget</code> metric type applies only to
    #            Auto Scaling groups, Spot Fleet requests, and ECS services.</p>
    #
    #   Enum, one of: ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn", "EC2SpotFleetRequestAverageNetworkOut"]
    #
    #   @return [String]
    #
    # @!attribute resource_label
    #   <p>Identifies the resource associated with the metric type. You can't specify a resource
    #            label unless the metric type is <code>ALBRequestCountPerTarget</code> and there is a target
    #            group for an Application Load Balancer attached to the Auto Scaling group, Spot Fleet request, or
    #            ECS service.</p>
    #            <p>You create the resource label by appending the final portion of the load balancer ARN
    #            and the final portion of the target group ARN into a single value, separated by a forward
    #            slash (/). The format is
    #            app/<load-balancer-name>/<load-balancer-id>/targetgroup/<target-group-name>/<target-group-id>,
    #            where:</p>
    #            <ul>
    #               <li>
    #                  <p>app/<load-balancer-name>/<load-balancer-id> is the final portion of
    #                  the load balancer ARN</p>
    #               </li>
    #               <li>
    #                  <p>targetgroup/<target-group-name>/<target-group-id> is the final portion
    #                  of the target group ARN.</p>
    #               </li>
    #            </ul>
    #            <p>This is an example:
    #            app/EC2Co-EcsEl-1TKLTMITMM0EO/f37c06a68c1748aa/targetgroup/EC2Co-Defau-LDNM7Q3ZH1ZN/6d4ea56ca2d6a18d.</p>
    #            <p>To find the ARN for an Application Load Balancer, use the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
    #            the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    #
    #   @return [String]
    #
    PredefinedScalingMetricSpecification = ::Struct.new(
      :predefined_scaling_metric_type,
      :resource_label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PredictiveScalingMaxCapacityBehavior
    #
    module PredictiveScalingMaxCapacityBehavior
      # No documentation available.
      #
      SetForecastCapacityToMaxCapacity = "SetForecastCapacityToMaxCapacity"

      # No documentation available.
      #
      SetMaxCapacityToForecastCapacity = "SetMaxCapacityToForecastCapacity"

      # No documentation available.
      #
      SetMaxCapacityAboveForecastCapacity = "SetMaxCapacityAboveForecastCapacity"
    end

    # Includes enum constants for PredictiveScalingMode
    #
    module PredictiveScalingMode
      # No documentation available.
      #
      ForecastAndScale = "ForecastAndScale"

      # No documentation available.
      #
      ForecastOnly = "ForecastOnly"
    end

    # Includes enum constants for ScalableDimension
    #
    module ScalableDimension
      # No documentation available.
      #
      AutoScalingGroupDesiredCapacity = "autoscaling:autoScalingGroup:DesiredCapacity"

      # No documentation available.
      #
      ECSServiceDesiredCount = "ecs:service:DesiredCount"

      # No documentation available.
      #
      EC2SpotFleetRequestTargetCapacity = "ec2:spot-fleet-request:TargetCapacity"

      # No documentation available.
      #
      RDSClusterReadReplicaCount = "rds:cluster:ReadReplicaCount"

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
    end

    # <p>Describes a scaling instruction for a scalable resource in a scaling plan. Each scaling
    #          instruction applies to one resource.</p>
    #          <p>AWS Auto Scaling creates target tracking scaling policies based on the scaling instructions.
    #          Target tracking scaling policies adjust the capacity of your scalable resource as required
    #          to maintain resource utilization at the target value that you specified. </p>
    #          <p>AWS Auto Scaling also configures predictive scaling for your Amazon EC2 Auto Scaling groups using a subset of
    #          parameters, including the load metric, the scaling metric, the target value for the scaling
    #          metric, the predictive scaling mode (forecast and scale or forecast only), and the desired
    #          behavior when the forecast capacity exceeds the maximum capacity of the resource. With
    #          predictive scaling, AWS Auto Scaling generates forecasts with traffic predictions for the two days
    #          ahead and schedules scaling actions that proactively add and remove resource capacity to
    #          match the forecast. </p>
    #          <important>
    #             <p>We recommend waiting a minimum of 24 hours after creating an Auto Scaling group to configure
    #             predictive scaling. At minimum, there must be 24 hours of historical data to generate a
    #             forecast. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/plans/userguide/gs-best-practices.html">Best Practices for
    #                AWS Auto Scaling</a> in the <i>AWS Auto Scaling User Guide</i>.</p>
    #          </important>
    #
    # @!attribute service_namespace
    #   <p>The namespace of the AWS service.</p>
    #
    #   Enum, one of: ["autoscaling", "ecs", "ec2", "rds", "dynamodb"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource. This string consists of the resource type and unique
    #            identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>Auto Scaling group - The resource type is <code>autoScalingGroup</code> and the unique identifier is the
    #                  name of the Auto Scaling group. Example: <code>autoScalingGroup/my-asg</code>.</p>
    #              </li>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name
    #                  and service name. Example: <code>service/default/sample-webapp</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Spot Fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID.
    #                  Example: <code>table/my-table</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID.
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #              </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute scalable_dimension
    #   <p>The scalable dimension associated with the resource.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>autoscaling:autoScalingGroup:DesiredCapacity</code> - The desired capacity of an Auto Scaling group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet request.</p>
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
    #            </ul>
    #
    #   Enum, one of: ["autoscaling:autoScalingGroup:DesiredCapacity", "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "rds:cluster:ReadReplicaCount", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits"]
    #
    #   @return [String]
    #
    # @!attribute min_capacity
    #   <p>The minimum capacity of the resource. </p>
    #
    #   @return [Integer]
    #
    # @!attribute max_capacity
    #   <p>The maximum capacity of the resource. The exception to this upper limit is if you
    #            specify a non-default setting for <b>PredictiveScalingMaxCapacityBehavior</b>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute target_tracking_configurations
    #   <p>The target tracking configurations (up to 10). Each of these structures must specify a
    #            unique scaling metric and a target value for the metric. </p>
    #
    #   @return [Array<TargetTrackingConfiguration>]
    #
    # @!attribute predefined_load_metric_specification
    #   <p>The predefined load metric to use for predictive scaling. This parameter or a <b>CustomizedLoadMetricSpecification</b> is required when configuring
    #            predictive scaling, and cannot be used otherwise. </p>
    #
    #   @return [PredefinedLoadMetricSpecification]
    #
    # @!attribute customized_load_metric_specification
    #   <p>The customized load metric to use for predictive scaling. This parameter or a <b>PredefinedLoadMetricSpecification</b> is required when configuring
    #            predictive scaling, and cannot be used otherwise. </p>
    #
    #   @return [CustomizedLoadMetricSpecification]
    #
    # @!attribute scheduled_action_buffer_time
    #   <p>The amount of time, in seconds, to buffer the run time of scheduled scaling actions when
    #            scaling out. For example, if the forecast says to add capacity at 10:00 AM, and the buffer
    #            time is 5 minutes, then the run time of the corresponding scheduled scaling action will be
    #            9:55 AM. The intention is to give resources time to be provisioned. For example, it can
    #            take a few minutes to launch an EC2 instance. The actual amount of time required depends on
    #            several factors, such as the size of the instance and whether there are startup scripts to
    #            complete. </p>
    #            <p>The value must be less than the forecast interval duration of 3600 seconds (60 minutes).
    #            The default is 300 seconds. </p>
    #            <p>Only valid when configuring predictive scaling. </p>
    #
    #   @return [Integer]
    #
    # @!attribute predictive_scaling_max_capacity_behavior
    #   <p>Defines the behavior that should be applied if the forecast capacity approaches or
    #            exceeds the maximum capacity specified for the resource. The default value is
    #               <code>SetForecastCapacityToMaxCapacity</code>.</p>
    #            <p>The following are possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SetForecastCapacityToMaxCapacity</code> - AWS Auto Scaling cannot scale resource
    #                  capacity higher than the maximum capacity. The maximum capacity is enforced as a hard
    #                  limit. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SetMaxCapacityToForecastCapacity</code> - AWS Auto Scaling may scale resource
    #                  capacity higher than the maximum capacity to equal but not exceed forecast
    #                  capacity.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SetMaxCapacityAboveForecastCapacity</code> - AWS Auto Scaling may scale resource
    #                  capacity higher than the maximum capacity by a specified buffer value. The intention
    #                  is to give the target tracking scaling policy extra capacity if unexpected traffic
    #                  occurs. </p>
    #               </li>
    #            </ul>
    #            <p>Only valid when configuring predictive scaling.</p>
    #
    #   Enum, one of: ["SetForecastCapacityToMaxCapacity", "SetMaxCapacityToForecastCapacity", "SetMaxCapacityAboveForecastCapacity"]
    #
    #   @return [String]
    #
    # @!attribute predictive_scaling_max_capacity_buffer
    #   <p>The size of the capacity buffer to use when the forecast capacity is close to or exceeds
    #            the maximum capacity. The value is specified as a percentage relative to the forecast
    #            capacity. For example, if the buffer is 10, this means a 10 percent buffer, such that if
    #            the forecast capacity is 50, and the maximum capacity is 40, then the effective maximum
    #            capacity is 55.</p>
    #            <p>Only valid when configuring predictive scaling. Required if the <b>PredictiveScalingMaxCapacityBehavior</b> is set to
    #               <code>SetMaxCapacityAboveForecastCapacity</code>, and cannot be used otherwise.</p>
    #            <p>The range is 1-100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute predictive_scaling_mode
    #   <p>The predictive scaling mode. The default value is <code>ForecastAndScale</code>.
    #            Otherwise, AWS Auto Scaling forecasts capacity but does not create any scheduled scaling actions
    #            based on the capacity forecast. </p>
    #
    #   Enum, one of: ["ForecastAndScale", "ForecastOnly"]
    #
    #   @return [String]
    #
    # @!attribute scaling_policy_update_behavior
    #   <p>Controls whether a resource's externally created scaling policies are kept or replaced. </p>
    #            <p>The default value is <code>KeepExternalPolicies</code>. If the parameter is set to
    #               <code>ReplaceExternalPolicies</code>, any scaling policies that are external to AWS Auto Scaling
    #            are deleted and new target tracking scaling policies created. </p>
    #            <p>Only valid when configuring dynamic scaling. </p>
    #            <p>Condition: The number of existing policies to be replaced must be less than or equal to
    #            50. If there are more than 50 policies to be replaced, AWS Auto Scaling keeps all existing policies
    #            and does not create new ones.</p>
    #
    #   Enum, one of: ["KeepExternalPolicies", "ReplaceExternalPolicies"]
    #
    #   @return [String]
    #
    # @!attribute disable_dynamic_scaling
    #   <p>Controls whether dynamic scaling by AWS Auto Scaling is disabled. When dynamic scaling is
    #            enabled, AWS Auto Scaling creates target tracking scaling policies based on the specified target
    #            tracking configurations. </p>
    #            <p>The default is enabled (<code>false</code>). </p>
    #
    #   @return [Boolean]
    #
    ScalingInstruction = ::Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :min_capacity,
      :max_capacity,
      :target_tracking_configurations,
      :predefined_load_metric_specification,
      :customized_load_metric_specification,
      :scheduled_action_buffer_time,
      :predictive_scaling_max_capacity_behavior,
      :predictive_scaling_max_capacity_buffer,
      :predictive_scaling_mode,
      :scaling_policy_update_behavior,
      :disable_dynamic_scaling,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScalingMetricType
    #
    module ScalingMetricType
      # No documentation available.
      #
      ASGAverageCPUUtilization = "ASGAverageCPUUtilization"

      # No documentation available.
      #
      ASGAverageNetworkIn = "ASGAverageNetworkIn"

      # No documentation available.
      #
      ASGAverageNetworkOut = "ASGAverageNetworkOut"

      # No documentation available.
      #
      DynamoDBReadCapacityUtilization = "DynamoDBReadCapacityUtilization"

      # No documentation available.
      #
      DynamoDBWriteCapacityUtilization = "DynamoDBWriteCapacityUtilization"

      # No documentation available.
      #
      ECSServiceAverageCPUUtilization = "ECSServiceAverageCPUUtilization"

      # No documentation available.
      #
      ECSServiceAverageMemoryUtilization = "ECSServiceAverageMemoryUtilization"

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
    end

    # <p>Represents a scaling plan.</p>
    #
    # @!attribute scaling_plan_name
    #   <p>The name of the scaling plan.</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_plan_version
    #   <p>The version number of the scaling plan.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_source
    #   <p>A CloudFormation stack or a set of tags. You can create one scaling plan per application
    #            source.</p>
    #
    #   @return [ApplicationSource]
    #
    # @!attribute scaling_instructions
    #   <p>The scaling instructions.</p>
    #
    #   @return [Array<ScalingInstruction>]
    #
    # @!attribute status_code
    #   <p>The status of the scaling plan.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Active</code> - The scaling plan is active.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ActiveWithProblems</code> - The scaling plan is active, but the scaling
    #                  configuration for one or more resources could not be applied.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreationInProgress</code> - The scaling plan is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreationFailed</code> - The scaling plan could not be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DeletionInProgress</code> - The scaling plan is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DeletionFailed</code> - The scaling plan could not be deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UpdateInProgress</code> - The scaling plan is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UpdateFailed</code> - The scaling plan could not be updated.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Active", "ActiveWithProblems", "CreationInProgress", "CreationFailed", "DeletionInProgress", "DeletionFailed", "UpdateInProgress", "UpdateFailed"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A simple message about the current status of the scaling plan.</p>
    #
    #   @return [String]
    #
    # @!attribute status_start_time
    #   <p>The Unix time stamp when the scaling plan entered the current status.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_time
    #   <p>The Unix time stamp when the scaling plan was created.</p>
    #
    #   @return [Time]
    #
    ScalingPlan = ::Struct.new(
      :scaling_plan_name,
      :scaling_plan_version,
      :application_source,
      :scaling_instructions,
      :status_code,
      :status_message,
      :status_start_time,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a scalable resource.</p>
    #
    # @!attribute scaling_plan_name
    #   <p>The name of the scaling plan.</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_plan_version
    #   <p>The version number of the scaling plan.</p>
    #
    #   @return [Integer]
    #
    # @!attribute service_namespace
    #   <p>The namespace of the AWS service.</p>
    #
    #   Enum, one of: ["autoscaling", "ecs", "ec2", "rds", "dynamodb"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource. This string consists of the resource type and unique
    #            identifier.</p>
    #            <ul>
    #               <li>
    #                  <p>Auto Scaling group - The resource type is <code>autoScalingGroup</code> and the unique identifier is the
    #                  name of the Auto Scaling group. Example: <code>autoScalingGroup/my-asg</code>.</p>
    #              </li>
    #               <li>
    #                  <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name
    #                  and service name. Example: <code>service/default/sample-webapp</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Spot Fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the
    #                  Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID.
    #                  Example: <code>table/my-table</code>.</p>
    #              </li>
    #               <li>
    #                  <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID.
    #                  Example: <code>table/my-table/index/my-table-index</code>.</p>
    #              </li>
    #               <li>
    #                  <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
    #                  Example: <code>cluster:my-db-cluster</code>.</p>
    #              </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute scalable_dimension
    #   <p>The scalable dimension for the resource.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>autoscaling:autoScalingGroup:DesiredCapacity</code> - The desired capacity of an Auto Scaling group.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
    #              </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet request.</p>
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
    #            </ul>
    #
    #   Enum, one of: ["autoscaling:autoScalingGroup:DesiredCapacity", "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "rds:cluster:ReadReplicaCount", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits"]
    #
    #   @return [String]
    #
    # @!attribute scaling_policies
    #   <p>The scaling policies.</p>
    #
    #   @return [Array<ScalingPolicy>]
    #
    # @!attribute scaling_status_code
    #   <p>The scaling status of the resource.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Active</code> - The scaling configuration is active.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Inactive</code> - The scaling configuration is not active because the
    #                  scaling plan is being created or the scaling configuration could not be applied.
    #                  Check the status message for more information.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PartiallyActive</code> - The scaling configuration is partially active
    #                  because the scaling plan is being created or deleted or the scaling configuration
    #                  could not be fully applied. Check the status message for more information.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Inactive", "PartiallyActive", "Active"]
    #
    #   @return [String]
    #
    # @!attribute scaling_status_message
    #   <p>A simple message about the current scaling status of the resource.</p>
    #
    #   @return [String]
    #
    ScalingPlanResource = ::Struct.new(
      :scaling_plan_name,
      :scaling_plan_version,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :scaling_policies,
      :scaling_status_code,
      :scaling_status_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScalingPlanStatusCode
    #
    module ScalingPlanStatusCode
      # No documentation available.
      #
      Active = "Active"

      # No documentation available.
      #
      ActiveWithProblems = "ActiveWithProblems"

      # No documentation available.
      #
      CreationInProgress = "CreationInProgress"

      # No documentation available.
      #
      CreationFailed = "CreationFailed"

      # No documentation available.
      #
      DeletionInProgress = "DeletionInProgress"

      # No documentation available.
      #
      DeletionFailed = "DeletionFailed"

      # No documentation available.
      #
      UpdateInProgress = "UpdateInProgress"

      # No documentation available.
      #
      UpdateFailed = "UpdateFailed"
    end

    # <p>Represents a scaling policy.</p>
    #
    # @!attribute policy_name
    #   <p>The name of the scaling policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_type
    #   <p>The type of scaling policy.</p>
    #
    #   Enum, one of: ["TargetTrackingScaling"]
    #
    #   @return [String]
    #
    # @!attribute target_tracking_configuration
    #   <p>The target tracking scaling policy. Includes support for predefined or customized
    #            metrics.</p>
    #
    #   @return [TargetTrackingConfiguration]
    #
    ScalingPolicy = ::Struct.new(
      :policy_name,
      :policy_type,
      :target_tracking_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScalingPolicyUpdateBehavior
    #
    module ScalingPolicyUpdateBehavior
      # No documentation available.
      #
      KeepExternalPolicies = "KeepExternalPolicies"

      # No documentation available.
      #
      ReplaceExternalPolicies = "ReplaceExternalPolicies"
    end

    # Includes enum constants for ScalingStatusCode
    #
    module ScalingStatusCode
      # No documentation available.
      #
      Inactive = "Inactive"

      # No documentation available.
      #
      PartiallyActive = "PartiallyActive"

      # No documentation available.
      #
      Active = "Active"
    end

    # Includes enum constants for ServiceNamespace
    #
    module ServiceNamespace
      # No documentation available.
      #
      AUTOSCALING = "autoscaling"

      # No documentation available.
      #
      ECS = "ecs"

      # No documentation available.
      #
      EC2 = "ec2"

      # No documentation available.
      #
      RDS = "rds"

      # No documentation available.
      #
      DYNAMODB = "dynamodb"
    end

    # <p>Represents a tag.</p>
    #
    # @!attribute key
    #   <p>The tag key.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The tag values (0 to 20).</p>
    #
    #   @return [Array<String>]
    #
    TagFilter = ::Struct.new(
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a target tracking configuration to use with AWS Auto Scaling. Used with <a>ScalingInstruction</a> and <a>ScalingPolicy</a>.</p>
    #
    # @!attribute predefined_scaling_metric_specification
    #   <p>A predefined metric. You can specify either a predefined metric or a customized
    #            metric.</p>
    #
    #   @return [PredefinedScalingMetricSpecification]
    #
    # @!attribute customized_scaling_metric_specification
    #   <p>A customized metric. You can specify either a predefined metric or a customized metric.
    #         </p>
    #
    #   @return [CustomizedScalingMetricSpecification]
    #
    # @!attribute target_value
    #   <p>The target value for the metric. Although this property accepts numbers of type Double,
    #            it won't accept values that are either too small or too large. Values must be in the range
    #            of -2^360 to 2^360.</p>
    #
    #   @return [Float]
    #
    # @!attribute disable_scale_in
    #   <p>Indicates whether scale in by the target tracking scaling policy is disabled. If the
    #            value is <code>true</code>, scale in is disabled and the target tracking scaling policy
    #            doesn't remove capacity from the scalable resource. Otherwise, scale in is enabled and the
    #            target tracking scaling policy can remove capacity from the scalable resource. </p>
    #            <p>The default value is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute scale_out_cooldown
    #   <p>The amount of time, in seconds, to wait for a previous scale-out activity to take
    #            effect. This property is not used if the scalable resource is an Auto Scaling
    #            group.</p>
    #            <p>With the <i>scale-out cooldown period</i>, the intention is to continuously
    #            (but not excessively) scale out. After Auto Scaling successfully scales out using a target
    #            tracking scaling policy, it starts to calculate the cooldown time. The scaling policy won't
    #            increase the desired capacity again unless either a larger scale out is triggered or the
    #            cooldown period ends.</p>
    #
    #   @return [Integer]
    #
    # @!attribute scale_in_cooldown
    #   <p>The amount of time, in seconds, after a scale-in activity completes before another
    #            scale-in activity can start. This property is not used if the scalable resource is an Auto Scaling
    #            group.</p>
    #            <p>With the <i>scale-in cooldown period</i>, the intention is to scale in
    #            conservatively to protect your application’s availability, so scale-in activities are blocked
    #            until the cooldown period has expired. However, if another alarm triggers a scale-out activity
    #            during the scale-in cooldown period, Auto Scaling scales out the target immediately. In this case,
    #            the scale-in cooldown period stops and doesn't complete.</p>
    #
    #   @return [Integer]
    #
    # @!attribute estimated_instance_warmup
    #   <p>The estimated time, in seconds, until a newly launched instance can contribute to the
    #            CloudWatch metrics. This value is used only if the resource is an Auto Scaling group.</p>
    #
    #   @return [Integer]
    #
    TargetTrackingConfiguration = ::Struct.new(
      :predefined_scaling_metric_specification,
      :customized_scaling_metric_specification,
      :target_value,
      :disable_scale_in,
      :scale_out_cooldown,
      :scale_in_cooldown,
      :estimated_instance_warmup,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scaling_plan_name
    #   <p>The name of the scaling plan.</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_plan_version
    #   <p>The version number of the scaling plan. The only valid value is <code>1</code>.
    #            Currently, you cannot have multiple scaling plan versions.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_source
    #   <p>A CloudFormation stack or set of tags.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ApplicationSource.html">ApplicationSource</a> in the <i>AWS Auto Scaling API Reference</i>.</p>
    #
    #   @return [ApplicationSource]
    #
    # @!attribute scaling_instructions
    #   <p>The scaling instructions.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html">ScalingInstruction</a> in the <i>AWS Auto Scaling API Reference</i>.</p>
    #
    #   @return [Array<ScalingInstruction>]
    #
    UpdateScalingPlanInput = ::Struct.new(
      :scaling_plan_name,
      :scaling_plan_version,
      :application_source,
      :scaling_instructions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateScalingPlanOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An exception was thrown for a validation issue. Review the parameters provided.</p>
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
