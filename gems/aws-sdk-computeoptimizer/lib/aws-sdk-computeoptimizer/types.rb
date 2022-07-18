# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ComputeOptimizer
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
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

    # <p>Describes the enrollment status of an organization's member accounts in Compute Optimizer.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The account enrollment status.</p>
    #
    #   Enum, one of: ["Active", "Inactive", "Pending", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>The reason for the account enrollment status.</p>
    #           <p>For example, an account might show a status of <code>Pending</code> because member
    #               accounts of an organization require more time to be enrolled in the service.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   <p>The Unix epoch timestamp, in seconds, of when the account enrollment status was last
    #               updated.</p>
    #
    #   @return [Time]
    #
    AccountEnrollmentStatus = ::Struct.new(
      :account_id,
      :status,
      :status_reason,
      :last_updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration of an Auto Scaling group.</p>
    #
    # @!attribute desired_capacity
    #   <p>The desired capacity, or number of instances, for the Auto Scaling group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute min_size
    #   <p>The minimum size, or minimum number of instances, for the Auto Scaling
    #               group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_size
    #   <p>The maximum size, or maximum number of instances, for the Auto Scaling
    #               group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_type
    #   <p>The instance type for the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    AutoScalingGroupConfiguration = ::Struct.new(
      :desired_capacity,
      :min_size,
      :max_size,
      :instance_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.desired_capacity ||= 0
        self.min_size ||= 0
        self.max_size ||= 0
      end
    end

    # <p>Describes an Auto Scaling group recommendation.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute finding
    #   <p>The finding classification of the Auto Scaling group.</p>
    #           <p>Findings for Auto Scaling groups include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>NotOptimized</code>
    #                     </b>—An Auto Scaling group is considered not optimized when Compute Optimizer identifies a
    #                       recommendation that can provide better performance for your workload.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>Optimized</code>
    #                     </b>—An Auto Scaling
    #                       group is considered optimized when Compute Optimizer determines that the group
    #                       is correctly provisioned to run your workload based on the chosen instance type.
    #                       For optimized resources, Compute Optimizer might recommend a new generation
    #                       instance type.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Underprovisioned", "Overprovisioned", "Optimized", "NotOptimized"]
    #
    #   @return [String]
    #
    # @!attribute utilization_metrics
    #   <p>An array of objects that describe the utilization metrics of the Auto Scaling
    #               group.</p>
    #
    #   @return [Array<UtilizationMetric>]
    #
    # @!attribute look_back_period_in_days
    #   <p>The number of days for which utilization metrics were analyzed for the Auto Scaling group.</p>
    #
    #   @return [Float]
    #
    # @!attribute current_configuration
    #   <p>An array of objects that describe the current configuration of the Auto Scaling
    #               group.</p>
    #
    #   @return [AutoScalingGroupConfiguration]
    #
    # @!attribute recommendation_options
    #   <p>An array of objects that describe the recommendation options for the Auto Scaling
    #               group.</p>
    #
    #   @return [Array<AutoScalingGroupRecommendationOption>]
    #
    # @!attribute last_refresh_timestamp
    #   <p>The timestamp of when the Auto Scaling group recommendation was last
    #               generated.</p>
    #
    #   @return [Time]
    #
    # @!attribute current_performance_risk
    #   <p>The risk of the current Auto Scaling group not meeting the performance needs of
    #               its workloads. The higher the risk, the more likely the current Auto Scaling group
    #               configuration has insufficient capacity and cannot meet workload requirements.</p>
    #
    #   Enum, one of: ["VeryLow", "Low", "Medium", "High"]
    #
    #   @return [String]
    #
    # @!attribute effective_recommendation_preferences
    #   <p>An object that describes the effective recommendation preferences for the Auto Scaling group.</p>
    #
    #   @return [EffectiveRecommendationPreferences]
    #
    # @!attribute inferred_workload_types
    #   <p>The applications that might be running on the instances in the Auto Scaling group
    #               as inferred by Compute Optimizer.</p>
    #
    #           <p>Compute Optimizer can infer if one of the following applications might be running on
    #               the instances:</p>
    #
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>AmazonEmr</code> - Infers that Amazon EMR might be running on
    #                       the instances.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ApacheCassandra</code> - Infers that Apache Cassandra might be running
    #                       on the instances.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ApacheHadoop</code> - Infers that Apache Hadoop might be running on the
    #                       instances.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Memcached</code> - Infers that Memcached might be running on the
    #                       instances.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NGINX</code> - Infers that NGINX might be running on the
    #                       instances.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PostgreSql</code> - Infers that PostgreSQL might be running on the
    #                       instances.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Redis</code> - Infers that Redis might be running on the
    #                       instances.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    AutoScalingGroupRecommendation = ::Struct.new(
      :account_id,
      :auto_scaling_group_arn,
      :auto_scaling_group_name,
      :finding,
      :utilization_metrics,
      :look_back_period_in_days,
      :current_configuration,
      :recommendation_options,
      :last_refresh_timestamp,
      :current_performance_risk,
      :effective_recommendation_preferences,
      :inferred_workload_types,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.look_back_period_in_days ||= 0
      end
    end

    # <p>Describes a recommendation option for an Auto Scaling group.</p>
    #
    # @!attribute configuration
    #   <p>An array of objects that describe an Auto Scaling group configuration.</p>
    #
    #   @return [AutoScalingGroupConfiguration]
    #
    # @!attribute projected_utilization_metrics
    #   <p>An array of objects that describe the projected utilization metrics of the Auto Scaling group recommendation option.</p>
    #           <note>
    #               <p>The <code>Cpu</code> and <code>Memory</code> metrics are the only projected
    #                   utilization metrics returned. Additionally, the <code>Memory</code> metric is
    #                   returned only for resources that have the unified CloudWatch agent installed
    #                   on them. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html cw-agent">Enabling Memory
    #                       Utilization with the CloudWatch Agent</a>.</p>
    #           </note>
    #
    #   @return [Array<UtilizationMetric>]
    #
    # @!attribute performance_risk
    #   <p>The performance risk of the Auto Scaling group configuration
    #               recommendation.</p>
    #           <p>Performance risk indicates the likelihood of the recommended instance type not meeting
    #               the resource needs of your workload. Compute Optimizer calculates an individual
    #               performance risk score for each specification of the recommended instance, including
    #               CPU, memory, EBS throughput, EBS IOPS, disk throughput, disk IOPS, network throughput,
    #               and network PPS.
    #               The performance
    #               risk of the recommended instance is calculated as the maximum performance risk score
    #               across the analyzed resource specifications.</p>
    #           <p>The value ranges from <code>0</code> - <code>4</code>, with <code>0</code> meaning
    #               that the recommended resource is predicted to always provide enough hardware capability.
    #               The higher the performance risk is, the more likely you should validate whether the
    #               recommendation will meet the performance requirements of your workload before migrating
    #               your resource.</p>
    #
    #   @return [Float]
    #
    # @!attribute rank
    #   <p>The rank of the Auto Scaling group recommendation option.</p>
    #           <p>The top recommendation option is ranked as <code>1</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute savings_opportunity
    #   <p>An object that describes the savings opportunity for the Auto Scaling group
    #               recommendation option. Savings opportunity includes the estimated monthly savings amount
    #               and percentage.</p>
    #
    #   @return [SavingsOpportunity]
    #
    # @!attribute migration_effort
    #   <p>The level of effort required to migrate from the current instance type to the
    #               recommended instance type.</p>
    #
    #           <p>For example, the migration effort is <code>Low</code> if Amazon EMR is the
    #               inferred workload type and an Amazon Web Services Graviton instance type is recommended.
    #               The migration effort is <code>Medium</code> if a workload type couldn't be inferred but
    #               an Amazon Web Services Graviton instance type is recommended. The migration effort is
    #                   <code>VeryLow</code> if both the current and recommended instance types are of the
    #               same CPU architecture.</p>
    #
    #   Enum, one of: ["VeryLow", "Low", "Medium", "High"]
    #
    #   @return [String]
    #
    AutoScalingGroupRecommendationOption = ::Struct.new(
      :configuration,
      :projected_utilization_metrics,
      :performance_risk,
      :rank,
      :savings_opportunity,
      :migration_effort,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.performance_risk ||= 0
        self.rank ||= 0
      end
    end

    # Includes enum constants for CpuVendorArchitecture
    #
    module CpuVendorArchitecture
      # No documentation available.
      #
      AWS_ARM64 = "AWS_ARM64"

      # No documentation available.
      #
      CURRENT = "CURRENT"
    end

    # Includes enum constants for Currency
    #
    module Currency
      # No documentation available.
      #
      USD = "USD"

      # No documentation available.
      #
      CNY = "CNY"
    end

    # Includes enum constants for CurrentPerformanceRisk
    #
    module CurrentPerformanceRisk
      # No documentation available.
      #
      VERY_LOW = "VeryLow"

      # No documentation available.
      #
      LOW = "Low"

      # No documentation available.
      #
      MEDIUM = "Medium"

      # No documentation available.
      #
      HIGH = "High"
    end

    # <p>Describes the performance risk ratings for a given resource type.</p>
    #         <p>Resources with a <code>high</code> or <code>medium</code> rating are at risk of not
    #             meeting the performance needs of their workloads, while resources with a
    #                 <code>low</code> rating are performing well in their workloads.</p>
    #
    # @!attribute high
    #   <p>A count of the applicable resource types with a high performance risk rating.</p>
    #
    #   @return [Integer]
    #
    # @!attribute medium
    #   <p>A count of the applicable resource types with a medium performance risk rating.</p>
    #
    #   @return [Integer]
    #
    # @!attribute low
    #   <p>A count of the applicable resource types with a low performance risk rating.</p>
    #
    #   @return [Integer]
    #
    # @!attribute very_low
    #   <p>A count of the applicable resource types with a very low performance risk
    #               rating.</p>
    #
    #   @return [Integer]
    #
    CurrentPerformanceRiskRatings = ::Struct.new(
      :high,
      :medium,
      :low,
      :very_low,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.high ||= 0
        self.medium ||= 0
        self.low ||= 0
        self.very_low ||= 0
      end
    end

    # @!attribute resource_type
    #   <p>The target resource type of the recommendation preference to delete.</p>
    #           <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
    #               that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
    #               encompasses only instances that are part of an Auto Scaling group.</p>
    #           <note>
    #               <p>The valid values for this parameter are <code>Ec2Instance</code> and
    #                       <code>AutoScalingGroup</code>.</p>
    #           </note>
    #
    #   Enum, one of: ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable"]
    #
    #   @return [String]
    #
    # @!attribute scope
    #   <p>An object that describes the scope of the recommendation preference to delete.</p>
    #           <p>You can delete recommendation preferences that are created at the organization level
    #               (for management accounts of an organization only), account level, and resource level.
    #               For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                   enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #
    #   @return [Scope]
    #
    # @!attribute recommendation_preference_names
    #   <p>The name of the recommendation preference to delete.</p>
    #           <p>Enhanced infrastructure metrics (<code>EnhancedInfrastructureMetrics</code>) is the
    #               only feature that can be activated through preferences. Therefore, it is also the only
    #               recommendation preference that can be deleted.</p>
    #
    #   @return [Array<String>]
    #
    DeleteRecommendationPreferencesInput = ::Struct.new(
      :resource_type,
      :scope,
      :recommendation_preference_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRecommendationPreferencesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_ids
    #   <p>The identification numbers of the export jobs to return.</p>
    #           <p>An export job ID is returned when you create an export using the <a>ExportAutoScalingGroupRecommendations</a> or <a>ExportEC2InstanceRecommendations</a> actions.</p>
    #           <p>All export jobs created in the last seven days are returned if this parameter is
    #               omitted.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>An array of objects to specify a filter that returns a more specific list of export
    #               jobs.</p>
    #
    #   @return [Array<JobFilter>]
    #
    # @!attribute next_token
    #   <p>The token to advance to the next page of export jobs.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of export jobs to return with a single request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    DescribeRecommendationExportJobsInput = ::Struct.new(
      :job_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recommendation_export_jobs
    #   <p>An array of objects that describe recommendation export jobs.</p>
    #
    #   @return [Array<RecommendationExportJob>]
    #
    # @!attribute next_token
    #   <p>The token to use to advance to the next page of export jobs.</p>
    #           <p>This value is null when there are no more pages of export jobs to return.</p>
    #
    #   @return [String]
    #
    DescribeRecommendationExportJobsOutput = ::Struct.new(
      :recommendation_export_jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a filter that returns a more specific list of Amazon Elastic Block Store
    #                 (Amazon EBS) volume recommendations. Use this filter with the <a>GetEBSVolumeRecommendations</a> action.</p>
    #         <p>You can use <code>LambdaFunctionRecommendationFilter</code> with the <a>GetLambdaFunctionRecommendations</a> action, <code>JobFilter</code> with the
    #                 <a>DescribeRecommendationExportJobs</a> action, and <code>Filter</code>
    #             with the <a>GetAutoScalingGroupRecommendations</a> and <a>GetEC2InstanceRecommendations</a> actions.</p>
    #
    # @!attribute name
    #   <p>The name of the filter.</p>
    #           <p>Specify <code>Finding</code> to return recommendations with a specific finding
    #               classification (for example, <code>NotOptimized</code>).</p>
    #
    #   Enum, one of: ["Finding"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value of the filter.</p>
    #           <p>The valid values are <code>Optimized</code>, or <code>NotOptimized</code>.</p>
    #
    #   @return [Array<String>]
    #
    EBSFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EBSFilterName
    #
    module EBSFilterName
      # No documentation available.
      #
      FINDING = "Finding"
    end

    # Includes enum constants for EBSFinding
    #
    module EBSFinding
      # No documentation available.
      #
      OPTIMIZED = "Optimized"

      # No documentation available.
      #
      NOT_OPTIMIZED = "NotOptimized"
    end

    # Includes enum constants for EBSMetricName
    #
    module EBSMetricName
      # No documentation available.
      #
      VOLUME_READ_OPS_PER_SECOND = "VolumeReadOpsPerSecond"

      # No documentation available.
      #
      VOLUME_WRITE_OPS_PER_SECOND = "VolumeWriteOpsPerSecond"

      # No documentation available.
      #
      VOLUME_READ_BYTES_PER_SECOND = "VolumeReadBytesPerSecond"

      # No documentation available.
      #
      VOLUME_WRITE_BYTES_PER_SECOND = "VolumeWriteBytesPerSecond"
    end

    # <p>Describes a utilization metric of an Amazon Elastic Block Store (Amazon EBS)
    #             volume.</p>
    #         <p>Compare the utilization metric data of your resource against its projected utilization
    #             metric data to determine the performance difference between your current resource and
    #             the recommended option.</p>
    #
    # @!attribute name
    #   <p>The name of the utilization metric.</p>
    #           <p>The following utilization metrics are available:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>VolumeReadOpsPerSecond</code> - The completed read operations per second
    #                       from the volume in a specified period of time.</p>
    #                   <p>Unit: Count</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>VolumeWriteOpsPerSecond</code> - The completed write operations per
    #                       second to the volume in a specified period of time.</p>
    #                   <p>Unit: Count</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>VolumeReadBytesPerSecond</code> - The bytes read per second from the
    #                       volume in a specified period of time.</p>
    #                   <p>Unit: Bytes</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>VolumeWriteBytesPerSecond</code> - The bytes written to the volume in a
    #                       specified period of time.</p>
    #                   <p>Unit: Bytes</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["VolumeReadOpsPerSecond", "VolumeWriteOpsPerSecond", "VolumeReadBytesPerSecond", "VolumeWriteBytesPerSecond"]
    #
    #   @return [String]
    #
    # @!attribute statistic
    #   <p>The statistic of the utilization metric.</p>
    #           <p>The Compute Optimizer API, Command Line Interface (CLI), and SDKs
    #               return utilization metrics using only the <code>Maximum</code> statistic, which is the
    #               highest value observed during the specified period.</p>
    #           <p>The Compute Optimizer console displays graphs for some utilization metrics using the
    #                   <code>Average</code> statistic, which is the value of <code>Sum</code> /
    #                   <code>SampleCount</code> during the specified period. For more information, see
    #                   <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html">Viewing resource
    #                   recommendations</a> in the <i>Compute Optimizer User
    #               Guide</i>. You can also get averaged utilization metric data for your resources
    #               using Amazon CloudWatch. For more information, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html">Amazon CloudWatch
    #                   User Guide</a>.</p>
    #
    #   Enum, one of: ["Maximum", "Average"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the utilization metric.</p>
    #
    #   @return [Float]
    #
    EBSUtilizationMetric = ::Struct.new(
      :name,
      :statistic,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= 0
      end
    end

    # <p>Describes the effective recommendation preferences for a resource.</p>
    #
    # @!attribute cpu_vendor_architectures
    #   <p>Describes the CPU vendor and architecture for an instance or Auto Scaling group
    #               recommendations.</p>
    #           <p>For example, when you specify <code>AWS_ARM64</code> with:</p>
    #           <ul>
    #               <li>
    #                   <p>A <a>GetEC2InstanceRecommendations</a> or <a>GetAutoScalingGroupRecommendations</a> request, Compute Optimizer
    #                       returns recommendations that consist of Graviton2 instance types only.</p>
    #               </li>
    #               <li>
    #                   <p>A <a>GetEC2RecommendationProjectedMetrics</a> request, Compute Optimizer returns projected utilization metrics for Graviton2 instance type
    #                       recommendations only.</p>
    #               </li>
    #               <li>
    #                   <p>A <a>ExportEC2InstanceRecommendations</a> or <a>ExportAutoScalingGroupRecommendations</a> request, Compute Optimizer
    #                       exports recommendations that consist of Graviton2 instance types only.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute enhanced_infrastructure_metrics
    #   <p>Describes the activation status of the enhanced infrastructure metrics
    #               preference.</p>
    #           <p>A status of <code>Active</code> confirms that the preference is applied in the latest
    #               recommendation refresh, and a status of <code>Inactive</code> confirms that it's not yet
    #               applied to recommendations.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Enhanced
    #                   infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #
    #   Enum, one of: ["Active", "Inactive"]
    #
    #   @return [String]
    #
    # @!attribute inferred_workload_types
    #   <p>Describes the activation status of the inferred workload types preference.</p>
    #
    #           <p>A status of <code>Active</code> confirms that the preference is applied in the latest
    #               recommendation refresh. A status of <code>Inactive</code> confirms that it's not yet
    #               applied to recommendations.</p>
    #
    #   Enum, one of: ["Active", "Inactive"]
    #
    #   @return [String]
    #
    EffectiveRecommendationPreferences = ::Struct.new(
      :cpu_vendor_architectures,
      :enhanced_infrastructure_metrics,
      :inferred_workload_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EnhancedInfrastructureMetrics
    #
    module EnhancedInfrastructureMetrics
      # No documentation available.
      #
      ACTIVE = "Active"

      # No documentation available.
      #
      INACTIVE = "Inactive"
    end

    # <p>Describes a filter that returns a more specific list of account enrollment statuses.
    #             Use this filter with the <a>GetEnrollmentStatusesForOrganization</a>
    #             action.</p>
    #
    # @!attribute name
    #   <p>The name of the filter.</p>
    #           <p>Specify <code>Status</code> to return accounts with a specific enrollment status (for
    #               example, <code>Active</code>).</p>
    #
    #   Enum, one of: ["Status"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value of the filter.</p>
    #           <p>The valid values are <code>Active</code>, <code>Inactive</code>, <code>Pending</code>,
    #               and <code>Failed</code>.</p>
    #
    #   @return [Array<String>]
    #
    EnrollmentFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EnrollmentFilterName
    #
    module EnrollmentFilterName
      # No documentation available.
      #
      STATUS = "Status"
    end

    # <p>Describes the estimated monthly savings amount possible, based on On-Demand instance
    #             pricing, by adopting Compute Optimizer recommendations for a given resource.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/view-ec2-recommendations.html#ec2-savings-calculation">Estimated monthly savings and savings opportunities</a> in the
    #                     <i>Compute Optimizer User Guide</i>.</p>
    #
    # @!attribute currency
    #   <p>The currency of the estimated monthly
    #               savings.</p>
    #
    #   Enum, one of: ["USD", "CNY"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the estimated monthly savings.</p>
    #
    #   @return [Float]
    #
    EstimatedMonthlySavings = ::Struct.new(
      :currency,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= 0
      end
    end

    # @!attribute account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export Auto Scaling group
    #               recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #           <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #           <p>You can specify multiple account IDs per request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>An array of objects to specify a filter that exports a more specific set of Auto Scaling group recommendations.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute s3_destination_config
    #   <p>An object to specify the destination Amazon Simple Storage Service (Amazon S3) bucket
    #               name and key prefix for the export job.</p>
    #           <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permissions
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #
    #   @return [S3DestinationConfig]
    #
    # @!attribute file_format
    #   <p>The format of the export file.</p>
    #           <p>The only export file format currently supported is <code>Csv</code>.</p>
    #
    #   Enum, one of: ["Csv"]
    #
    #   @return [String]
    #
    # @!attribute include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #           <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #           <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #           <p>This parameter cannot be specified together with the account IDs parameter. The
    #               parameters are mutually exclusive.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute recommendation_preferences
    #   <p>An object to specify the preferences for the Auto Scaling group recommendations
    #               to export.</p>
    #
    #   @return [RecommendationPreferences]
    #
    ExportAutoScalingGroupRecommendationsInput = ::Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts,
      :recommendation_preferences,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.include_member_accounts ||= false
      end
    end

    # @!attribute job_id
    #   <p>The identification number of the export job.</p>
    #           <p>Use the <a>DescribeRecommendationExportJobs</a> action, and specify the job
    #               ID to view the status of an export job.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_destination
    #   <p>An object that describes the destination Amazon S3 bucket of a recommendations
    #               export file.</p>
    #
    #   @return [S3Destination]
    #
    ExportAutoScalingGroupRecommendationsOutput = ::Struct.new(
      :job_id,
      :s3_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the destination of the recommendations export and metadata files.</p>
    #
    # @!attribute s3
    #   <p>An object that describes the destination Amazon Simple Storage Service (Amazon S3)
    #               bucket name and object keys of a recommendations export file, and its associated
    #               metadata file.</p>
    #
    #   @return [S3Destination]
    #
    ExportDestination = ::Struct.new(
      :s3,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export Amazon EBS
    #               volume recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #           <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #           <p>You can specify multiple account IDs per request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>An array of objects to specify a filter that exports a more specific set of Amazon EBS volume recommendations.</p>
    #
    #   @return [Array<EBSFilter>]
    #
    # @!attribute fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #           <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #
    #   @return [S3DestinationConfig]
    #
    # @!attribute file_format
    #   <p>The format of the export file.</p>
    #           <p>The only export file format currently supported is <code>Csv</code>.</p>
    #
    #   Enum, one of: ["Csv"]
    #
    #   @return [String]
    #
    # @!attribute include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #           <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #           <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #           <p>This parameter cannot be specified together with the account IDs parameter. The
    #               parameters are mutually exclusive.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    #
    #   @return [Boolean]
    #
    ExportEBSVolumeRecommendationsInput = ::Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.include_member_accounts ||= false
      end
    end

    # @!attribute job_id
    #   <p>The identification number of the export job.</p>
    #           <p>Use the <a>DescribeRecommendationExportJobs</a> action, and specify the job
    #               ID to view the status of an export job.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_destination
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               object keys of a recommendations export file, and its associated metadata file.</p>
    #
    #   @return [S3Destination]
    #
    ExportEBSVolumeRecommendationsOutput = ::Struct.new(
      :job_id,
      :s3_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export instance
    #               recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #           <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #           <p>You can specify multiple account IDs per request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>An array of objects to specify a filter that exports a more specific set of instance
    #               recommendations.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute s3_destination_config
    #   <p>An object to specify the destination Amazon Simple Storage Service (Amazon S3) bucket
    #               name and key prefix for the export job.</p>
    #           <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permissions
    #               policy to allow Compute Optimizer to write the export file to it.
    #               If you plan to
    #               specify an object prefix when you create the export job, you must include the object
    #               prefix in the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #
    #   @return [S3DestinationConfig]
    #
    # @!attribute file_format
    #   <p>The format of the export file.</p>
    #           <p>The only export file format currently supported is <code>Csv</code>.</p>
    #
    #   Enum, one of: ["Csv"]
    #
    #   @return [String]
    #
    # @!attribute include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #           <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #           <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute recommendation_preferences
    #   <p>An object to specify the preferences for the Amazon EC2 instance
    #               recommendations to export.</p>
    #
    #   @return [RecommendationPreferences]
    #
    ExportEC2InstanceRecommendationsInput = ::Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts,
      :recommendation_preferences,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.include_member_accounts ||= false
      end
    end

    # @!attribute job_id
    #   <p>The identification number of the export job.</p>
    #           <p>Use the <a>DescribeRecommendationExportJobs</a> action, and specify the job
    #               ID to view the status of an export job.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_destination
    #   <p>An object that describes the destination Amazon S3 bucket of a recommendations
    #               export file.</p>
    #
    #   @return [S3Destination]
    #
    ExportEC2InstanceRecommendationsOutput = ::Struct.new(
      :job_id,
      :s3_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export Lambda
    #               function recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #           <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #           <p>You can specify multiple account IDs per request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>An array of objects to specify a filter that exports a more specific set of Lambda function recommendations.</p>
    #
    #   @return [Array<LambdaFunctionRecommendationFilter>]
    #
    # @!attribute fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #           <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #
    #   @return [S3DestinationConfig]
    #
    # @!attribute file_format
    #   <p>The format of the export file.</p>
    #           <p>The only export file format currently supported is <code>Csv</code>.</p>
    #
    #   Enum, one of: ["Csv"]
    #
    #   @return [String]
    #
    # @!attribute include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #           <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #           <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #           <p>This parameter cannot be specified together with the account IDs parameter. The
    #               parameters are mutually exclusive.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    #
    #   @return [Boolean]
    #
    ExportLambdaFunctionRecommendationsInput = ::Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.include_member_accounts ||= false
      end
    end

    # @!attribute job_id
    #   <p>The identification number of the export job.</p>
    #           <p>Use the <a>DescribeRecommendationExportJobs</a> action, and specify the job
    #               ID to view the status of an export job.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_destination
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               object keys of a recommendations export file, and its associated metadata file.</p>
    #
    #   @return [S3Destination]
    #
    ExportLambdaFunctionRecommendationsOutput = ::Struct.new(
      :job_id,
      :s3_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExportableAutoScalingGroupField
    #
    module ExportableAutoScalingGroupField
      # No documentation available.
      #
      ACCOUNT_ID = "AccountId"

      # No documentation available.
      #
      AUTO_SCALING_GROUP_ARN = "AutoScalingGroupArn"

      # No documentation available.
      #
      AUTO_SCALING_GROUP_NAME = "AutoScalingGroupName"

      # No documentation available.
      #
      FINDING = "Finding"

      # No documentation available.
      #
      UTILIZATION_METRICS_CPU_MAXIMUM = "UtilizationMetricsCpuMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_MEMORY_MAXIMUM = "UtilizationMetricsMemoryMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_EBS_READ_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsReadOpsPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_EBS_WRITE_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsWriteOpsPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_EBS_READ_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsReadBytesPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_EBS_WRITE_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsWriteBytesPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_DISK_READ_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskReadOpsPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_DISK_WRITE_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskWriteOpsPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_DISK_READ_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskReadBytesPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_DISK_WRITE_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskWriteBytesPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_NETWORK_IN_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkInBytesPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_NETWORK_OUT_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkOutBytesPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_NETWORK_PACKETS_IN_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkPacketsInPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_NETWORK_PACKETS_OUT_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkPacketsOutPerSecondMaximum"

      # No documentation available.
      #
      LOOKBACK_PERIOD_IN_DAYS = "LookbackPeriodInDays"

      # No documentation available.
      #
      CURRENT_CONFIGURATION_INSTANCE_TYPE = "CurrentConfigurationInstanceType"

      # No documentation available.
      #
      CURRENT_CONFIGURATION_DESIRED_CAPACITY = "CurrentConfigurationDesiredCapacity"

      # No documentation available.
      #
      CURRENT_CONFIGURATION_MIN_SIZE = "CurrentConfigurationMinSize"

      # No documentation available.
      #
      CURRENT_CONFIGURATION_MAX_SIZE = "CurrentConfigurationMaxSize"

      # No documentation available.
      #
      CURRENT_ON_DEMAND_PRICE = "CurrentOnDemandPrice"

      # No documentation available.
      #
      CURRENT_STANDARD_ONE_YEAR_NO_UPFRONT_RESERVED_PRICE = "CurrentStandardOneYearNoUpfrontReservedPrice"

      # No documentation available.
      #
      CURRENT_STANDARD_THREE_YEAR_NO_UPFRONT_RESERVED_PRICE = "CurrentStandardThreeYearNoUpfrontReservedPrice"

      # No documentation available.
      #
      CURRENT_VCPUS = "CurrentVCpus"

      # No documentation available.
      #
      CURRENT_MEMORY = "CurrentMemory"

      # No documentation available.
      #
      CURRENT_STORAGE = "CurrentStorage"

      # No documentation available.
      #
      CURRENT_NETWORK = "CurrentNetwork"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_CONFIGURATION_INSTANCE_TYPE = "RecommendationOptionsConfigurationInstanceType"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_CONFIGURATION_DESIRED_CAPACITY = "RecommendationOptionsConfigurationDesiredCapacity"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_CONFIGURATION_MIN_SIZE = "RecommendationOptionsConfigurationMinSize"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_CONFIGURATION_MAX_SIZE = "RecommendationOptionsConfigurationMaxSize"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_CPU_MAXIMUM = "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_MEMORY_MAXIMUM = "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_PERFORMANCE_RISK = "RecommendationOptionsPerformanceRisk"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_ON_DEMAND_PRICE = "RecommendationOptionsOnDemandPrice"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_STANDARD_ONE_YEAR_NO_UPFRONT_RESERVED_PRICE = "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_STANDARD_THREE_YEAR_NO_UPFRONT_RESERVED_PRICE = "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_VCPUS = "RecommendationOptionsVcpus"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_MEMORY = "RecommendationOptionsMemory"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_STORAGE = "RecommendationOptionsStorage"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_NETWORK = "RecommendationOptionsNetwork"

      # No documentation available.
      #
      LAST_REFRESH_TIMESTAMP = "LastRefreshTimestamp"

      # No documentation available.
      #
      CURRENT_PERFORMANCE_RISK = "CurrentPerformanceRisk"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE = "RecommendationOptionsSavingsOpportunityPercentage"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY = "RecommendationOptionsEstimatedMonthlySavingsCurrency"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE = "RecommendationOptionsEstimatedMonthlySavingsValue"

      # No documentation available.
      #
      EFFECTIVE_RECOMMENDATION_PREFERENCES_CPU_VENDOR_ARCHITECTURES = "EffectiveRecommendationPreferencesCpuVendorArchitectures"

      # No documentation available.
      #
      EFFECTIVE_RECOMMENDATION_PREFERENCES_ENHANCED_INFRASTRUCTURE_METRICS = "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics"

      # No documentation available.
      #
      EFFECTIVE_RECOMMENDATION_PREFERENCES_INFERRED_WORKLOAD_TYPES = "EffectiveRecommendationPreferencesInferredWorkloadTypes"

      # No documentation available.
      #
      INFERRED_WORKLOAD_TYPES = "InferredWorkloadTypes"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_MIGRATION_EFFORT = "RecommendationOptionsMigrationEffort"
    end

    # Includes enum constants for ExportableInstanceField
    #
    module ExportableInstanceField
      # No documentation available.
      #
      ACCOUNT_ID = "AccountId"

      # No documentation available.
      #
      INSTANCE_ARN = "InstanceArn"

      # No documentation available.
      #
      INSTANCE_NAME = "InstanceName"

      # No documentation available.
      #
      FINDING = "Finding"

      # No documentation available.
      #
      Finding_Reason_Codes = "FindingReasonCodes"

      # No documentation available.
      #
      LOOKBACK_PERIOD_IN_DAYS = "LookbackPeriodInDays"

      # No documentation available.
      #
      CURRENT_INSTANCE_TYPE = "CurrentInstanceType"

      # No documentation available.
      #
      UTILIZATION_METRICS_CPU_MAXIMUM = "UtilizationMetricsCpuMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_MEMORY_MAXIMUM = "UtilizationMetricsMemoryMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_EBS_READ_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsReadOpsPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_EBS_WRITE_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsWriteOpsPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_EBS_READ_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsReadBytesPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_EBS_WRITE_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsWriteBytesPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_DISK_READ_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskReadOpsPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_DISK_WRITE_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskWriteOpsPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_DISK_READ_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskReadBytesPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_DISK_WRITE_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskWriteBytesPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_NETWORK_IN_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkInBytesPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_NETWORK_OUT_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkOutBytesPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_NETWORK_PACKETS_IN_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkPacketsInPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_NETWORK_PACKETS_OUT_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkPacketsOutPerSecondMaximum"

      # No documentation available.
      #
      CURRENT_ON_DEMAND_PRICE = "CurrentOnDemandPrice"

      # No documentation available.
      #
      CURRENT_STANDARD_ONE_YEAR_NO_UPFRONT_RESERVED_PRICE = "CurrentStandardOneYearNoUpfrontReservedPrice"

      # No documentation available.
      #
      CURRENT_STANDARD_THREE_YEAR_NO_UPFRONT_RESERVED_PRICE = "CurrentStandardThreeYearNoUpfrontReservedPrice"

      # No documentation available.
      #
      CURRENT_VCPUS = "CurrentVCpus"

      # No documentation available.
      #
      CURRENT_MEMORY = "CurrentMemory"

      # No documentation available.
      #
      CURRENT_STORAGE = "CurrentStorage"

      # No documentation available.
      #
      CURRENT_NETWORK = "CurrentNetwork"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_INSTANCE_TYPE = "RecommendationOptionsInstanceType"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_CPU_MAXIMUM = "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_MEMORY_MAXIMUM = "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_PLATFORM_DIFFERENCES = "RecommendationOptionsPlatformDifferences"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_PERFORMANCE_RISK = "RecommendationOptionsPerformanceRisk"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_VCPUS = "RecommendationOptionsVcpus"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_MEMORY = "RecommendationOptionsMemory"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_STORAGE = "RecommendationOptionsStorage"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_NETWORK = "RecommendationOptionsNetwork"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_ON_DEMAND_PRICE = "RecommendationOptionsOnDemandPrice"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_STANDARD_ONE_YEAR_NO_UPFRONT_RESERVED_PRICE = "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_STANDARD_THREE_YEAR_NO_UPFRONT_RESERVED_PRICE = "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice"

      # No documentation available.
      #
      RECOMMENDATIONS_SOURCES_RECOMMENDATION_SOURCE_ARN = "RecommendationsSourcesRecommendationSourceArn"

      # No documentation available.
      #
      RECOMMENDATIONS_SOURCES_RECOMMENDATION_SOURCE_TYPE = "RecommendationsSourcesRecommendationSourceType"

      # No documentation available.
      #
      LAST_REFRESH_TIMESTAMP = "LastRefreshTimestamp"

      # No documentation available.
      #
      CURRENT_PERFORMANCE_RISK = "CurrentPerformanceRisk"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE = "RecommendationOptionsSavingsOpportunityPercentage"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY = "RecommendationOptionsEstimatedMonthlySavingsCurrency"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE = "RecommendationOptionsEstimatedMonthlySavingsValue"

      # No documentation available.
      #
      EFFECTIVE_RECOMMENDATION_PREFERENCES_CPU_VENDOR_ARCHITECTURES = "EffectiveRecommendationPreferencesCpuVendorArchitectures"

      # No documentation available.
      #
      EFFECTIVE_RECOMMENDATION_PREFERENCES_ENHANCED_INFRASTRUCTURE_METRICS = "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics"

      # No documentation available.
      #
      EFFECTIVE_RECOMMENDATION_PREFERENCES_INFERRED_WORKLOAD_TYPES = "EffectiveRecommendationPreferencesInferredWorkloadTypes"

      # No documentation available.
      #
      INFERRED_WORKLOAD_TYPES = "InferredWorkloadTypes"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_MIGRATION_EFFORT = "RecommendationOptionsMigrationEffort"
    end

    # Includes enum constants for ExportableLambdaFunctionField
    #
    module ExportableLambdaFunctionField
      # No documentation available.
      #
      ACCOUNT_ID = "AccountId"

      # No documentation available.
      #
      FUNCTION_ARN = "FunctionArn"

      # No documentation available.
      #
      FUNCTION_VERSION = "FunctionVersion"

      # No documentation available.
      #
      FINDING = "Finding"

      # No documentation available.
      #
      FINDING_REASON_CODES = "FindingReasonCodes"

      # No documentation available.
      #
      NUMBER_OF_INVOCATIONS = "NumberOfInvocations"

      # No documentation available.
      #
      UTILIZATION_METRICS_DURATION_MAXIMUM = "UtilizationMetricsDurationMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_DURATION_AVERAGE = "UtilizationMetricsDurationAverage"

      # No documentation available.
      #
      UTILIZATION_METRICS_MEMORY_MAXIMUM = "UtilizationMetricsMemoryMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_MEMORY_AVERAGE = "UtilizationMetricsMemoryAverage"

      # No documentation available.
      #
      LOOKBACK_PERIOD_IN_DAYS = "LookbackPeriodInDays"

      # No documentation available.
      #
      CURRENT_CONFIGURATION_MEMORY_SIZE = "CurrentConfigurationMemorySize"

      # No documentation available.
      #
      CURRENT_CONFIGURATION_TIMEOUT = "CurrentConfigurationTimeout"

      # No documentation available.
      #
      CURRENT_COST_TOTAL = "CurrentCostTotal"

      # No documentation available.
      #
      CURRENT_COST_AVERAGE = "CurrentCostAverage"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_CONFIGURATION_MEMORY_SIZE = "RecommendationOptionsConfigurationMemorySize"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_COST_LOW = "RecommendationOptionsCostLow"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_COST_HIGH = "RecommendationOptionsCostHigh"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_DURATION_LOWER_BOUND = "RecommendationOptionsProjectedUtilizationMetricsDurationLowerBound"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_DURATION_UPPER_BOUND = "RecommendationOptionsProjectedUtilizationMetricsDurationUpperBound"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_DURATION_EXPECTED = "RecommendationOptionsProjectedUtilizationMetricsDurationExpected"

      # No documentation available.
      #
      LAST_REFRESH_TIMESTAMP = "LastRefreshTimestamp"

      # No documentation available.
      #
      CURRENT_PERFORMANCE_RISK = "CurrentPerformanceRisk"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE = "RecommendationOptionsSavingsOpportunityPercentage"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY = "RecommendationOptionsEstimatedMonthlySavingsCurrency"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE = "RecommendationOptionsEstimatedMonthlySavingsValue"
    end

    # Includes enum constants for ExportableVolumeField
    #
    module ExportableVolumeField
      # No documentation available.
      #
      ACCOUNT_ID = "AccountId"

      # No documentation available.
      #
      VOLUME_ARN = "VolumeArn"

      # No documentation available.
      #
      FINDING = "Finding"

      # No documentation available.
      #
      UTILIZATION_METRICS_VOLUME_READ_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsVolumeReadOpsPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_VOLUME_WRITE_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsVolumeWriteOpsPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_VOLUME_READ_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsVolumeReadBytesPerSecondMaximum"

      # No documentation available.
      #
      UTILIZATION_METRICS_VOLUME_WRITE_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsVolumeWriteBytesPerSecondMaximum"

      # No documentation available.
      #
      LOOKBACK_PERIOD_IN_DAYS = "LookbackPeriodInDays"

      # No documentation available.
      #
      CURRENT_CONFIGURATION_VOLUME_TYPE = "CurrentConfigurationVolumeType"

      # No documentation available.
      #
      CURRENT_CONFIGURATION_VOLUME_BASELINE_IOPS = "CurrentConfigurationVolumeBaselineIOPS"

      # No documentation available.
      #
      CURRENT_CONFIGURATION_VOLUME_BASELINE_THROUGHPUT = "CurrentConfigurationVolumeBaselineThroughput"

      # No documentation available.
      #
      CURRENT_CONFIGURATION_VOLUME_BURST_IOPS = "CurrentConfigurationVolumeBurstIOPS"

      # No documentation available.
      #
      CURRENT_CONFIGURATION_VOLUME_BURST_THROUGHPUT = "CurrentConfigurationVolumeBurstThroughput"

      # No documentation available.
      #
      CURRENT_CONFIGURATION_VOLUME_SIZE = "CurrentConfigurationVolumeSize"

      # No documentation available.
      #
      CURRENT_MONTHLY_PRICE = "CurrentMonthlyPrice"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_TYPE = "RecommendationOptionsConfigurationVolumeType"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_BASELINE_IOPS = "RecommendationOptionsConfigurationVolumeBaselineIOPS"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_BASELINE_THROUGHPUT = "RecommendationOptionsConfigurationVolumeBaselineThroughput"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_BURST_IOPS = "RecommendationOptionsConfigurationVolumeBurstIOPS"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_BURST_THROUGHPUT = "RecommendationOptionsConfigurationVolumeBurstThroughput"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_SIZE = "RecommendationOptionsConfigurationVolumeSize"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_MONTHLY_PRICE = "RecommendationOptionsMonthlyPrice"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_PERFORMANCE_RISK = "RecommendationOptionsPerformanceRisk"

      # No documentation available.
      #
      LAST_REFRESH_TIMESTAMP = "LastRefreshTimestamp"

      # No documentation available.
      #
      CURRENT_PERFORMANCE_RISK = "CurrentPerformanceRisk"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE = "RecommendationOptionsSavingsOpportunityPercentage"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY = "RecommendationOptionsEstimatedMonthlySavingsCurrency"

      # No documentation available.
      #
      RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE = "RecommendationOptionsEstimatedMonthlySavingsValue"
    end

    # Includes enum constants for FileFormat
    #
    module FileFormat
      # No documentation available.
      #
      CSV = "Csv"
    end

    # <p>Describes a filter that returns a more specific list of recommendations. Use this
    #             filter with the <a>GetAutoScalingGroupRecommendations</a> and <a>GetEC2InstanceRecommendations</a> actions.</p>
    #         <p>You can use <code>EBSFilter</code> with the <a>GetEBSVolumeRecommendations</a> action,
    #                 <code>LambdaFunctionRecommendationFilter</code> with the <a>GetLambdaFunctionRecommendations</a> action, and <code>JobFilter</code> with
    #             the <a>DescribeRecommendationExportJobs</a> action.</p>
    #
    # @!attribute name
    #   <p>The name of the filter.</p>
    #           <p>Specify <code>Finding</code> to return recommendations with a specific finding
    #               classification (for example, <code>Underprovisioned</code>).</p>
    #           <p>Specify <code>RecommendationSourceType</code> to return recommendations of a specific
    #               resource type (for example, <code>Ec2Instance</code>).</p>
    #           <p>Specify <code>FindingReasonCodes</code> to return recommendations with a specific
    #               finding reason code (for example, <code>CPUUnderprovisioned</code>).</p>
    #
    #   Enum, one of: ["Finding", "FindingReasonCodes", "RecommendationSourceType"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value of the filter.</p>
    #           <p>The valid values for this parameter are as follows, depending on what you specify for
    #               the <code>name</code> parameter and the resource type that you wish to filter results
    #               for:</p>
    #           <ul>
    #               <li>
    #                   <p>Specify <code>Optimized</code> or <code>NotOptimized</code> if you specify the
    #                           <code>name</code> parameter as <code>Finding</code> and you want to filter
    #                       results for Auto Scaling groups.</p>
    #               </li>
    #               <li>
    #                   <p>Specify <code>Underprovisioned</code>, <code>Overprovisioned</code>, or
    #                           <code>Optimized</code> if you specify the <code>name</code> parameter as
    #                           <code>Finding</code> and you want to filter results for EC2
    #                       instances.</p>
    #               </li>
    #               <li>
    #                   <p>Specify <code>Ec2Instance</code> or <code>AutoScalingGroup</code> if you
    #                       specify the <code>name</code> parameter as
    #                       <code>RecommendationSourceType</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Specify one of the following options if you specify the <code>name</code>
    #                       parameter as <code>FindingReasonCodes</code>:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>CPUOverprovisioned</code>
    #                           </b> — The
    #                               instance’s CPU configuration can be sized down while still meeting the
    #                               performance requirements of your workload.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>CPUUnderprovisioned</code>
    #                           </b> —
    #                               The instance’s CPU configuration doesn't meet the performance
    #                               requirements of your workload and there is an alternative instance type
    #                               that provides better CPU performance.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>MemoryOverprovisioned</code>
    #                           </b> —
    #                               The instance’s memory configuration can be sized down while still
    #                               meeting the performance requirements of your workload.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>MemoryUnderprovisioned</code>
    #                           </b> —
    #                               The instance’s memory configuration doesn't meet the performance
    #                               requirements of your workload and there is an alternative instance type
    #                               that provides better memory performance.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>EBSThroughputOverprovisioned</code>
    #                           </b> — The
    #                               instance’s EBS throughput configuration can be sized down while still
    #                               meeting the performance requirements of your workload.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>EBSThroughputUnderprovisioned</code>
    #                           </b> — The
    #                               instance’s EBS throughput configuration doesn't meet the performance
    #                               requirements of your workload and there is an alternative instance type
    #                               that provides better EBS throughput performance.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>EBSIOPSOverprovisioned</code>
    #                           </b> —
    #                               The instance’s EBS IOPS configuration can be sized down while still
    #                               meeting the performance requirements of your workload.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>EBSIOPSUnderprovisioned</code>
    #                           </b>
    #                               — The instance’s EBS IOPS configuration doesn't meet the performance
    #                               requirements of your workload and there is an alternative instance type
    #                               that provides better EBS IOPS performance.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>NetworkBandwidthOverprovisioned</code>
    #                           </b> — The
    #                               instance’s network bandwidth configuration can be sized down while still
    #                               meeting the performance requirements of your workload.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>NetworkBandwidthUnderprovisioned</code>
    #                           </b> — The
    #                               instance’s network bandwidth configuration doesn't meet the performance
    #                               requirements of your workload and there is an alternative instance type
    #                               that provides better network bandwidth performance. This finding reason
    #                               happens when the <code>NetworkIn</code> or <code>NetworkOut</code>
    #                               performance of an instance is impacted.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>NetworkPPSOverprovisioned</code>
    #                           </b> — The instance’s
    #                               network PPS (packets per second) configuration can be sized down while
    #                               still meeting the performance requirements of your workload.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>NetworkPPSUnderprovisioned</code>
    #                           </b> — The instance’s
    #                               network PPS (packets per second) configuration doesn't meet the
    #                               performance requirements of your workload and there is an alternative
    #                               instance type that provides better network PPS performance.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>DiskIOPSOverprovisioned</code>
    #                           </b>
    #                               — The instance’s disk IOPS configuration can be sized down while still
    #                               meeting the performance requirements of your workload.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>DiskIOPSUnderprovisioned</code>
    #                           </b>
    #                               — The instance’s disk IOPS configuration doesn't meet the performance
    #                               requirements of your workload and there is an alternative instance type
    #                               that provides better disk IOPS performance.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>DiskThroughputOverprovisioned</code>
    #                           </b> — The
    #                               instance’s disk throughput configuration can be sized down while still
    #                               meeting the performance requirements of your workload.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <b>
    #                              <code>DiskThroughputUnderprovisioned</code>
    #                           </b> — The
    #                               instance’s disk throughput configuration doesn't meet the performance
    #                               requirements of your workload and there is an alternative instance type
    #                               that provides better disk throughput performance.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    Filter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FilterName
    #
    module FilterName
      # No documentation available.
      #
      FINDING = "Finding"

      # No documentation available.
      #
      FINDING_REASON_CODES = "FindingReasonCodes"

      # No documentation available.
      #
      RECOMMENDATION_SOURCE_TYPE = "RecommendationSourceType"
    end

    # Includes enum constants for Finding
    #
    module Finding
      # No documentation available.
      #
      UNDER_PROVISIONED = "Underprovisioned"

      # No documentation available.
      #
      OVER_PROVISIONED = "Overprovisioned"

      # No documentation available.
      #
      OPTIMIZED = "Optimized"

      # No documentation available.
      #
      NOT_OPTIMIZED = "NotOptimized"
    end

    # Includes enum constants for FindingReasonCode
    #
    module FindingReasonCode
      # No documentation available.
      #
      MEMORY_OVER_PROVISIONED = "MemoryOverprovisioned"

      # No documentation available.
      #
      MEMORY_UNDER_PROVISIONED = "MemoryUnderprovisioned"
    end

    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account for which to return Auto Scaling group
    #               recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return Auto Scaling group
    #               recommendations.</p>
    #           <p>Only one account ID can be specified per request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute auto_scaling_group_arns
    #   <p>The Amazon Resource Name (ARN) of the Auto Scaling groups for which to return
    #               recommendations.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token to advance to the next page of Auto Scaling group
    #               recommendations.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of Auto Scaling group recommendations to return with a single
    #               request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>An array of objects to specify a filter that returns a more specific list of Auto Scaling group recommendations.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute recommendation_preferences
    #   <p>An object to specify the preferences for the Auto Scaling group recommendations
    #               to return in the response.</p>
    #
    #   @return [RecommendationPreferences]
    #
    GetAutoScalingGroupRecommendationsInput = ::Struct.new(
      :account_ids,
      :auto_scaling_group_arns,
      :next_token,
      :max_results,
      :filters,
      :recommendation_preferences,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to advance to the next page of Auto Scaling group
    #               recommendations.</p>
    #           <p>This value is null when there are no more pages of Auto Scaling group
    #               recommendations to return.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_recommendations
    #   <p>An array of objects that describe Auto Scaling group recommendations.</p>
    #
    #   @return [Array<AutoScalingGroupRecommendation>]
    #
    # @!attribute errors
    #   <p>An array of objects that describe errors of the request.</p>
    #           <p>For example, an error is returned if you request recommendations for an unsupported
    #                   Auto Scaling group.</p>
    #
    #   @return [Array<GetRecommendationError>]
    #
    GetAutoScalingGroupRecommendationsOutput = ::Struct.new(
      :next_token,
      :auto_scaling_group_recommendations,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute volume_arns
    #   <p>The Amazon Resource Name (ARN) of the volumes for which to return
    #               recommendations.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token to advance to the next page of volume recommendations.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of volume recommendations to return with a single request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>An array of objects to specify a filter that returns a more specific list of volume
    #               recommendations.</p>
    #
    #   @return [Array<EBSFilter>]
    #
    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account for which to return volume
    #               recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return volume recommendations.</p>
    #           <p>Only one account ID can be specified per request.</p>
    #
    #   @return [Array<String>]
    #
    GetEBSVolumeRecommendationsInput = ::Struct.new(
      :volume_arns,
      :next_token,
      :max_results,
      :filters,
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to advance to the next page of volume recommendations.</p>
    #           <p>This value is null when there are no more pages of volume recommendations to
    #               return.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_recommendations
    #   <p>An array of objects that describe volume recommendations.</p>
    #
    #   @return [Array<VolumeRecommendation>]
    #
    # @!attribute errors
    #   <p>An array of objects that describe errors of the request.</p>
    #           <p>For example, an error is returned if you request recommendations for an unsupported
    #               volume.</p>
    #
    #   @return [Array<GetRecommendationError>]
    #
    GetEBSVolumeRecommendationsOutput = ::Struct.new(
      :next_token,
      :volume_recommendations,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_arns
    #   <p>The Amazon Resource Name (ARN) of the instances for which to return
    #               recommendations.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token to advance to the next page of instance recommendations.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of instance recommendations to return with a single request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>An array of objects to specify a filter that returns a more specific list of instance
    #               recommendations.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account for which to return instance
    #               recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return instance recommendations.</p>
    #           <p>Only one account ID can be specified per request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute recommendation_preferences
    #   <p>An object to specify the preferences for the Amazon EC2 instance
    #               recommendations to return in the response.</p>
    #
    #   @return [RecommendationPreferences]
    #
    GetEC2InstanceRecommendationsInput = ::Struct.new(
      :instance_arns,
      :next_token,
      :max_results,
      :filters,
      :account_ids,
      :recommendation_preferences,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to advance to the next page of instance recommendations.</p>
    #           <p>This value is null when there are no more pages of instance recommendations to
    #               return.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_recommendations
    #   <p>An array of objects that describe instance recommendations.</p>
    #
    #   @return [Array<InstanceRecommendation>]
    #
    # @!attribute errors
    #   <p>An array of objects that describe errors of the request.</p>
    #           <p>For example, an error is returned if you request recommendations for an instance of an
    #               unsupported instance family.</p>
    #
    #   @return [Array<GetRecommendationError>]
    #
    GetEC2InstanceRecommendationsOutput = ::Struct.new(
      :next_token,
      :instance_recommendations,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_arn
    #   <p>The Amazon Resource Name (ARN) of the instances for which to return recommendation
    #               projected metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute stat
    #   <p>The statistic of the projected metrics.</p>
    #
    #   Enum, one of: ["Maximum", "Average"]
    #
    #   @return [String]
    #
    # @!attribute period
    #   <p>The granularity, in seconds, of the projected metrics data points.</p>
    #
    #   @return [Integer]
    #
    # @!attribute start_time
    #   <p>The timestamp of the first projected metrics data point to return.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The timestamp of the last projected metrics data point to return.</p>
    #
    #   @return [Time]
    #
    # @!attribute recommendation_preferences
    #   <p>An object to specify the preferences for the Amazon EC2 recommendation
    #               projected metrics to return in the response.</p>
    #
    #   @return [RecommendationPreferences]
    #
    GetEC2RecommendationProjectedMetricsInput = ::Struct.new(
      :instance_arn,
      :stat,
      :period,
      :start_time,
      :end_time,
      :recommendation_preferences,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.period ||= 0
      end
    end

    # @!attribute recommended_option_projected_metrics
    #   <p>An array of objects that describes projected metrics.</p>
    #
    #   @return [Array<RecommendedOptionProjectedMetric>]
    #
    GetEC2RecommendationProjectedMetricsOutput = ::Struct.new(
      :recommended_option_projected_metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to confirm effective
    #               recommendation preferences. Only EC2 instance and Auto Scaling group ARNs are
    #               currently supported.</p>
    #
    #   @return [String]
    #
    GetEffectiveRecommendationPreferencesInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute enhanced_infrastructure_metrics
    #   <p>The status of the enhanced infrastructure metrics recommendation preference. Considers
    #               all applicable preferences that you might have set at the resource, account, and
    #               organization level.</p>
    #           <p>A status of <code>Active</code> confirms that the preference is applied in the latest
    #               recommendation refresh, and a status of <code>Inactive</code> confirms that it's not yet
    #               applied to recommendations.</p>
    #           <p>To validate whether the preference is applied to your last generated set of
    #               recommendations, review the <code>effectiveRecommendationPreferences</code> value in the
    #               response of the <a>GetAutoScalingGroupRecommendations</a> and <a>GetEC2InstanceRecommendations</a> actions.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Enhanced
    #                   infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #
    #   Enum, one of: ["Active", "Inactive"]
    #
    #   @return [String]
    #
    GetEffectiveRecommendationPreferencesOutput = ::Struct.new(
      :enhanced_infrastructure_metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetEnrollmentStatusInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The enrollment status of the account.</p>
    #
    #   Enum, one of: ["Active", "Inactive", "Pending", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>The reason for the enrollment status of the account.</p>
    #           <p>For example, an account might show a status of <code>Pending</code> because member
    #               accounts of an organization require more time to be enrolled in the service.</p>
    #
    #   @return [String]
    #
    # @!attribute member_accounts_enrolled
    #   <p>Confirms the enrollment status of member accounts of the organization, if the account
    #               is a management account of an organization.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_updated_timestamp
    #   <p>The Unix epoch timestamp, in seconds, of when the account enrollment status was last
    #               updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute number_of_member_accounts_opted_in
    #   <p>The count of organization member accounts that are opted in to the service, if your
    #               account is an organization management account.</p>
    #
    #   @return [Integer]
    #
    GetEnrollmentStatusOutput = ::Struct.new(
      :status,
      :status_reason,
      :member_accounts_enrolled,
      :last_updated_timestamp,
      :number_of_member_accounts_opted_in,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.member_accounts_enrolled ||= false
      end
    end

    # @!attribute filters
    #   <p>An array of objects to specify a filter that returns a more specific list of account
    #               enrollment statuses.</p>
    #
    #   @return [Array<EnrollmentFilter>]
    #
    # @!attribute next_token
    #   <p>The token to advance to the next page of account enrollment statuses.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of account enrollment statuses to return with a single request. You
    #               can specify up to 100 statuses to return with each request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    GetEnrollmentStatusesForOrganizationInput = ::Struct.new(
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_enrollment_statuses
    #   <p>An array of objects that describe the enrollment statuses of organization member
    #               accounts.</p>
    #
    #   @return [Array<AccountEnrollmentStatus>]
    #
    # @!attribute next_token
    #   <p>The token to use to advance to the next page of account enrollment statuses.</p>
    #           <p>This value is null when there are no more pages of account enrollment statuses to
    #               return.</p>
    #
    #   @return [String]
    #
    GetEnrollmentStatusesForOrganizationOutput = ::Struct.new(
      :account_enrollment_statuses,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute function_arns
    #   <p>The Amazon Resource Name (ARN) of the functions for which to return
    #               recommendations.</p>
    #           <p>You can specify a qualified or unqualified ARN. If you specify an unqualified ARN
    #               without a function version suffix, Compute Optimizer will return recommendations for the
    #               latest (<code>$LATEST</code>) version of the function. If you specify a qualified ARN
    #               with a version suffix, Compute Optimizer will return recommendations for the specified
    #               function version. For more information about using function versions, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html versioning-versions-using">Using
    #                   versions</a> in the <i>Lambda Developer
    #               Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account for which to return function
    #               recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return function recommendations.</p>
    #           <p>Only one account ID can be specified per request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>An array of objects to specify a filter that returns a more specific list of function
    #               recommendations.</p>
    #
    #   @return [Array<LambdaFunctionRecommendationFilter>]
    #
    # @!attribute next_token
    #   <p>The token to advance to the next page of function recommendations.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of function recommendations to return with a single request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    GetLambdaFunctionRecommendationsInput = ::Struct.new(
      :function_arns,
      :account_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to advance to the next page of function recommendations.</p>
    #           <p>This value is null when there are no more pages of function recommendations to
    #               return.</p>
    #
    #   @return [String]
    #
    # @!attribute lambda_function_recommendations
    #   <p>An array of objects that describe function recommendations.</p>
    #
    #   @return [Array<LambdaFunctionRecommendation>]
    #
    GetLambdaFunctionRecommendationsOutput = ::Struct.new(
      :next_token,
      :lambda_function_recommendations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an error experienced when getting recommendations.</p>
    #         <p>For example, an error is returned if you request recommendations for an unsupported
    #                 Auto Scaling group, or if you request recommendations for an instance of an
    #             unsupported instance family.</p>
    #
    # @!attribute identifier
    #   <p>The ID of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message, or reason, for the error.</p>
    #
    #   @return [String]
    #
    GetRecommendationError = ::Struct.new(
      :identifier,
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_type
    #   <p>The target resource type of the recommendation preference for which to return
    #               preferences.</p>
    #           <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
    #               that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
    #               encompasses only instances that are part of an Auto Scaling group.</p>
    #           <note>
    #               <p>The valid values for this parameter are <code>Ec2Instance</code> and
    #                       <code>AutoScalingGroup</code>.</p>
    #           </note>
    #
    #   Enum, one of: ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable"]
    #
    #   @return [String]
    #
    # @!attribute scope
    #   <p>An object that describes the scope of the recommendation preference to return.</p>
    #           <p>You can return recommendation preferences that are created at the organization level
    #               (for management accounts of an organization only), account level, and resource level.
    #               For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                   enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #
    #   @return [Scope]
    #
    # @!attribute next_token
    #   <p>The token to advance to the next page of recommendation preferences.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of recommendation preferences to return with a single
    #               request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    GetRecommendationPreferencesInput = ::Struct.new(
      :resource_type,
      :scope,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to advance to the next page of recommendation preferences.</p>
    #           <p>This value is null when there are no more pages of recommendation preferences to
    #               return.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_preferences_details
    #   <p>An array of objects that describe recommendation preferences.</p>
    #
    #   @return [Array<RecommendationPreferencesDetail>]
    #
    GetRecommendationPreferencesOutput = ::Struct.new(
      :next_token,
      :recommendation_preferences_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account for which to return recommendation
    #               summaries.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return recommendation summaries.</p>
    #           <p>Only one account ID can be specified per request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token to advance to the next page of recommendation summaries.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of recommendation summaries to return with a single request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    GetRecommendationSummariesInput = ::Struct.new(
      :account_ids,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to advance to the next page of recommendation summaries.</p>
    #           <p>This value is null when there are no more pages of recommendation summaries to
    #               return.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_summaries
    #   <p>An array of objects that summarize a recommendation.</p>
    #
    #   @return [Array<RecommendationSummary>]
    #
    GetRecommendationSummariesOutput = ::Struct.new(
      :next_token,
      :recommendation_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InferredWorkloadType
    #
    module InferredWorkloadType
      # No documentation available.
      #
      AMAZON_EMR = "AmazonEmr"

      # No documentation available.
      #
      APACHE_CASSANDRA = "ApacheCassandra"

      # No documentation available.
      #
      APACHE_HADOOP = "ApacheHadoop"

      # No documentation available.
      #
      MEMCACHED = "Memcached"

      # No documentation available.
      #
      NGINX = "Nginx"

      # No documentation available.
      #
      POSTGRE_SQL = "PostgreSql"

      # No documentation available.
      #
      REDIS = "Redis"
    end

    # Includes enum constants for InferredWorkloadTypesPreference
    #
    module InferredWorkloadTypesPreference
      # No documentation available.
      #
      ACTIVE = "Active"

      # No documentation available.
      #
      INACTIVE = "Inactive"
    end

    # <p>Describes an Amazon EC2 instance recommendation.</p>
    #
    # @!attribute instance_arn
    #   <p>The Amazon Resource Name (ARN) of the current instance.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_name
    #   <p>The name of the current instance.</p>
    #
    #   @return [String]
    #
    # @!attribute current_instance_type
    #   <p>The instance type of the current instance.</p>
    #
    #   @return [String]
    #
    # @!attribute finding
    #   <p>The finding classification of the instance.</p>
    #           <p>Findings for instances include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>Underprovisioned</code>
    #                     </b>—An instance is
    #                       considered under-provisioned when at least one specification of your instance,
    #                       such as CPU, memory, or network, does not meet the performance requirements of
    #                       your workload. Under-provisioned instances may lead to poor application
    #                       performance.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>Overprovisioned</code>
    #                     </b>—An instance is
    #                       considered over-provisioned when at least one specification of your instance,
    #                       such as CPU, memory, or network, can be sized down while still meeting the
    #                       performance requirements of your workload, and no specification is
    #                       under-provisioned. Over-provisioned instances may lead to unnecessary
    #                       infrastructure cost.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>Optimized</code>
    #                     </b>—An instance is
    #                       considered optimized when all specifications of your instance, such as CPU,
    #                       memory, and network, meet the performance requirements of your workload and is
    #                       not over provisioned. For optimized resources, Compute Optimizer might
    #                       recommend a new generation instance type.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Underprovisioned", "Overprovisioned", "Optimized", "NotOptimized"]
    #
    #   @return [String]
    #
    # @!attribute finding_reason_codes
    #   <p>The reason for the finding classification of the instance.</p>
    #           <p>Finding reason codes for instances include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>CPUOverprovisioned</code>
    #                     </b> — The
    #                       instance’s CPU configuration can be sized down while still meeting the
    #                       performance requirements of your workload. This is identified by analyzing the
    #                           <code>CPUUtilization</code> metric of the current instance during the
    #                       look-back period.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>CPUUnderprovisioned</code>
    #                     </b> — The
    #                       instance’s CPU configuration doesn't meet the performance requirements of your
    #                       workload and there is an alternative instance type that provides better CPU
    #                       performance. This is identified by analyzing the <code>CPUUtilization</code>
    #                       metric of the current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>MemoryOverprovisioned</code>
    #                     </b> — The
    #                       instance’s memory configuration can be sized down while still meeting the
    #                       performance requirements of your workload. This is identified by analyzing the
    #                       memory utilization metric of the current instance during the look-back
    #                       period.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>MemoryUnderprovisioned</code>
    #                     </b> — The
    #                       instance’s memory configuration doesn't meet the performance requirements of
    #                       your workload and there is an alternative instance type that provides better
    #                       memory performance. This is identified by analyzing the memory utilization
    #                       metric of the current instance during the look-back period.</p>
    #                   <note>
    #                       <p>Memory utilization is analyzed only for resources that have the unified
    #                               CloudWatch agent installed on them. For more information, see
    #                               <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html cw-agent">Enabling memory
    #                               utilization with the Amazon CloudWatch Agent</a> in the
    #                                   <i>Compute Optimizer User Guide</i>. On Linux
    #                           instances, Compute Optimizer analyses the <code>mem_used_percent</code>
    #                           metric in the <code>CWAgent</code> namespace, or the legacy
    #                               <code>MemoryUtilization</code> metric in the <code>System/Linux</code>
    #                           namespace. On Windows instances, Compute Optimizer analyses the <code>Memory
    #                               % Committed Bytes In Use</code> metric in the <code>CWAgent</code>
    #                           namespace.</p>
    #                   </note>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>EBSThroughputOverprovisioned</code>
    #                     </b> —
    #                       The instance’s EBS throughput configuration can be sized down while still
    #                       meeting the performance requirements of your workload. This is identified by
    #                       analyzing the <code>VolumeReadOps</code> and <code>VolumeWriteOps</code> metrics
    #                       of EBS volumes attached to the current instance during the look-back
    #                       period.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>EBSThroughputUnderprovisioned</code>
    #                     </b> —
    #                       The instance’s EBS throughput configuration doesn't meet the performance
    #                       requirements of your workload and there is an alternative instance type that
    #                       provides better EBS throughput performance. This is identified by analyzing the
    #                           <code>VolumeReadOps</code> and <code>VolumeWriteOps</code> metrics of EBS
    #                       volumes attached to the current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>EBSIOPSOverprovisioned</code>
    #                     </b> — The
    #                       instance’s EBS IOPS configuration can be sized down while still meeting the
    #                       performance requirements of your workload. This is identified by analyzing the
    #                           <code>VolumeReadBytes</code> and <code>VolumeWriteBytes</code> metric of EBS
    #                       volumes attached to the current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>EBSIOPSUnderprovisioned</code>
    #                     </b> — The
    #                       instance’s EBS IOPS configuration doesn't meet the performance requirements of
    #                       your workload and there is an alternative instance type that provides better EBS
    #                       IOPS performance. This is identified by analyzing the
    #                           <code>VolumeReadBytes</code> and <code>VolumeWriteBytes</code> metric of EBS
    #                       volumes attached to the current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>NetworkBandwidthOverprovisioned</code>
    #                     </b>
    #                       — The instance’s network bandwidth configuration can be sized down while still
    #                       meeting the performance requirements of your workload. This is identified by
    #                       analyzing the <code>NetworkIn</code> and <code>NetworkOut</code> metrics of the
    #                       current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>NetworkBandwidthUnderprovisioned</code>
    #                     </b>
    #                       — The instance’s network bandwidth configuration doesn't meet the performance
    #                       requirements of your workload and there is an alternative instance type that
    #                       provides better network bandwidth performance. This is identified by analyzing
    #                       the <code>NetworkIn</code> and <code>NetworkOut</code> metrics of the current
    #                       instance during the look-back period. This finding reason happens when the
    #                           <code>NetworkIn</code> or <code>NetworkOut</code> performance of an instance
    #                       is impacted.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>NetworkPPSOverprovisioned</code>
    #                     </b> — The
    #                       instance’s network PPS (packets per second) configuration can be sized down
    #                       while still meeting the performance requirements of your workload. This is
    #                       identified by analyzing the <code>NetworkPacketsIn</code> and
    #                           <code>NetworkPacketsIn</code> metrics of the current instance during the
    #                       look-back period.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>NetworkPPSUnderprovisioned</code>
    #                     </b> — The
    #                       instance’s network PPS (packets per second) configuration doesn't meet the
    #                       performance requirements of your workload and there is an alternative instance
    #                       type that provides better network PPS performance. This is identified by
    #                       analyzing the <code>NetworkPacketsIn</code> and <code>NetworkPacketsIn</code>
    #                       metrics of the current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>DiskIOPSOverprovisioned</code>
    #                     </b> — The
    #                       instance’s disk IOPS configuration can be sized down while still meeting the
    #                       performance requirements of your workload. This is identified by analyzing the
    #                           <code>DiskReadOps</code> and <code>DiskWriteOps</code> metrics of the
    #                       current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>DiskIOPSUnderprovisioned</code>
    #                     </b> — The
    #                       instance’s disk IOPS configuration doesn't meet the performance requirements of
    #                       your workload and there is an alternative instance type that provides better
    #                       disk IOPS performance. This is identified by analyzing the
    #                           <code>DiskReadOps</code> and <code>DiskWriteOps</code> metrics of the
    #                       current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>DiskThroughputOverprovisioned</code>
    #                     </b> —
    #                       The instance’s disk throughput configuration can be sized down while still
    #                       meeting the performance requirements of your workload. This is identified by
    #                       analyzing the <code>DiskReadBytes</code> and <code>DiskWriteBytes</code> metrics
    #                       of the current instance during the look-back period.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>DiskThroughputUnderprovisioned</code>
    #                     </b> —
    #                       The instance’s disk throughput configuration doesn't meet the performance
    #                       requirements of your workload and there is an alternative instance type that
    #                       provides better disk throughput performance. This is identified by analyzing the
    #                           <code>DiskReadBytes</code> and <code>DiskWriteBytes</code> metrics of the
    #                       current instance during the look-back period.</p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>For more information about instance metrics, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/viewing_metrics_with_cloudwatch.html">List the
    #                       available CloudWatch metrics for your instances</a> in the
    #                           <i>Amazon Elastic Compute Cloud User Guide</i>. For more information
    #                   about EBS volume metrics, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cloudwatch_ebs.html">Amazon CloudWatch
    #                       metrics for Amazon EBS</a> in the <i>Amazon Elastic Compute Cloud
    #                       User Guide</i>.</p>
    #           </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute utilization_metrics
    #   <p>An array of objects that describe the utilization metrics of the instance.</p>
    #
    #   @return [Array<UtilizationMetric>]
    #
    # @!attribute look_back_period_in_days
    #   <p>The number of days for which utilization metrics were analyzed for the
    #               instance.</p>
    #
    #   @return [Float]
    #
    # @!attribute recommendation_options
    #   <p>An array of objects that describe the recommendation options for the instance.</p>
    #
    #   @return [Array<InstanceRecommendationOption>]
    #
    # @!attribute recommendation_sources
    #   <p>An array of objects that describe the source resource of the recommendation.</p>
    #
    #   @return [Array<RecommendationSource>]
    #
    # @!attribute last_refresh_timestamp
    #   <p>The timestamp of when the instance recommendation was last generated.</p>
    #
    #   @return [Time]
    #
    # @!attribute current_performance_risk
    #   <p>The risk of the current instance not meeting the performance needs of its workloads.
    #               The higher the risk, the more likely the current instance cannot meet the performance
    #               requirements of its workload.</p>
    #
    #   Enum, one of: ["VeryLow", "Low", "Medium", "High"]
    #
    #   @return [String]
    #
    # @!attribute effective_recommendation_preferences
    #   <p>An object that describes the effective recommendation preferences for the
    #               instance.</p>
    #
    #   @return [EffectiveRecommendationPreferences]
    #
    # @!attribute inferred_workload_types
    #   <p>The applications that might be running on the instance as inferred by Compute Optimizer.</p>
    #
    #           <p>Compute Optimizer can infer if one of the following applications might be running on
    #               the instance:</p>
    #
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>AmazonEmr</code> - Infers that Amazon EMR might be running on
    #                       the instance.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ApacheCassandra</code> - Infers that Apache Cassandra might be running
    #                       on the instance.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ApacheHadoop</code> - Infers that Apache Hadoop might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Memcached</code> - Infers that Memcached might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NGINX</code> - Infers that NGINX might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PostgreSql</code> - Infers that PostgreSQL might be running on the
    #                       instance.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Redis</code> - Infers that Redis might be running on the
    #                       instance.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    InstanceRecommendation = ::Struct.new(
      :instance_arn,
      :account_id,
      :instance_name,
      :current_instance_type,
      :finding,
      :finding_reason_codes,
      :utilization_metrics,
      :look_back_period_in_days,
      :recommendation_options,
      :recommendation_sources,
      :last_refresh_timestamp,
      :current_performance_risk,
      :effective_recommendation_preferences,
      :inferred_workload_types,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.look_back_period_in_days ||= 0
      end
    end

    # Includes enum constants for InstanceRecommendationFindingReasonCode
    #
    module InstanceRecommendationFindingReasonCode
      # No documentation available.
      #
      CPU_OVER_PROVISIONED = "CPUOverprovisioned"

      # No documentation available.
      #
      CPU_UNDER_PROVISIONED = "CPUUnderprovisioned"

      # No documentation available.
      #
      MEMORY_OVER_PROVISIONED = "MemoryOverprovisioned"

      # No documentation available.
      #
      MEMORY_UNDER_PROVISIONED = "MemoryUnderprovisioned"

      # No documentation available.
      #
      EBS_THROUGHPUT_OVER_PROVISIONED = "EBSThroughputOverprovisioned"

      # No documentation available.
      #
      EBS_THROUGHPUT_UNDER_PROVISIONED = "EBSThroughputUnderprovisioned"

      # No documentation available.
      #
      EBS_IOPS_OVER_PROVISIONED = "EBSIOPSOverprovisioned"

      # No documentation available.
      #
      EBS_IOPS_UNDER_PROVISIONED = "EBSIOPSUnderprovisioned"

      # No documentation available.
      #
      NETWORK_BANDWIDTH_OVER_PROVISIONED = "NetworkBandwidthOverprovisioned"

      # No documentation available.
      #
      NETWORK_BANDWIDTH_UNDER_PROVISIONED = "NetworkBandwidthUnderprovisioned"

      # No documentation available.
      #
      NETWORK_PPS_OVER_PROVISIONED = "NetworkPPSOverprovisioned"

      # No documentation available.
      #
      NETWORK_PPS_UNDER_PROVISIONED = "NetworkPPSUnderprovisioned"

      # No documentation available.
      #
      DISK_IOPS_OVER_PROVISIONED = "DiskIOPSOverprovisioned"

      # No documentation available.
      #
      DISK_IOPS_UNDER_PROVISIONED = "DiskIOPSUnderprovisioned"

      # No documentation available.
      #
      DISK_THROUGHPUT_OVER_PROVISIONED = "DiskThroughputOverprovisioned"

      # No documentation available.
      #
      DISK_THROUGHPUT_UNDER_PROVISIONED = "DiskThroughputUnderprovisioned"
    end

    # <p>Describes a recommendation option for an Amazon EC2 instance.</p>
    #
    # @!attribute instance_type
    #   <p>The instance type of the instance recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute projected_utilization_metrics
    #   <p>An array of objects that describe the projected utilization metrics of the instance
    #               recommendation option.</p>
    #           <note>
    #               <p>The <code>Cpu</code> and <code>Memory</code> metrics are the only projected
    #                   utilization metrics returned. Additionally, the <code>Memory</code> metric is
    #                   returned only for resources that have the unified CloudWatch agent installed
    #                   on them. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html cw-agent">Enabling Memory
    #                       Utilization with the CloudWatch Agent</a>.</p>
    #           </note>
    #
    #   @return [Array<UtilizationMetric>]
    #
    # @!attribute platform_differences
    #   <p>Describes the configuration differences between the current instance and the
    #               recommended instance type. You should consider the configuration differences before
    #               migrating your workloads from the current instance to the recommended instance type. The
    #                   <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-resize.html">Change the instance type guide for Linux</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-resize.html">Change the instance type
    #                   guide for Windows</a> provide general guidance for getting started with an
    #               instance migration.</p>
    #           <p>Platform differences include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>Hypervisor</code>
    #                     </b> — The hypervisor of
    #                       the recommended instance type is different than that of the current instance.
    #                       For example, the recommended instance type uses a Nitro hypervisor and the
    #                       current instance uses a Xen hypervisor. The differences that you should consider
    #                       between these hypervisors are covered in the <a href="http://aws.amazon.com/ec2/faqs/ Nitro_Hypervisor">Nitro Hypervisor</a> section of the
    #                           Amazon EC2 frequently asked questions. For more information, see
    #                           <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html ec2-nitro-instances">Instances built on the Nitro System</a> in the <i>Amazon EC2
    #                           User Guide for Linux</i>, or <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html ec2-nitro-instances">Instances built on the Nitro System</a> in the <i>Amazon EC2
    #                           User Guide for Windows</i>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>NetworkInterface</code>
    #                     </b> — The network
    #                       interface of the recommended instance type is different than that of the current
    #                       instance. For example, the recommended instance type supports enhanced
    #                       networking and the current instance might not. To enable enhanced networking for
    #                       the recommended instance type, you must install the Elastic Network Adapter
    #                       (ENA) driver or the Intel 82599 Virtual Function driver. For more information,
    #                       see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html instance-networking-storage">Networking and storage features</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking.html">Enhanced networking
    #                           on Linux</a> in the <i>Amazon EC2 User Guide for
    #                       Linux</i>, or <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html instance-networking-storage">Networking and storage features</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/enhanced-networking.html">Enhanced
    #                           networking on Windows</a> in the <i>Amazon EC2 User Guide for
    #                           Windows</i>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>StorageInterface</code>
    #                     </b> — The storage
    #                       interface of the recommended instance type is different than that of the current
    #                       instance. For example, the recommended instance type uses an NVMe storage
    #                       interface and the current instance does not. To access NVMe volumes for the
    #                       recommended instance type, you will need to install or upgrade the NVMe driver.
    #                       For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html instance-networking-storage">Networking and storage features</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nvme-ebs-volumes.html">Amazon EBS and NVMe on
    #                           Linux instances</a> in the <i>Amazon EC2 User Guide for
    #                           Linux</i>, or <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html instance-networking-storage">Networking and storage features</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/nvme-ebs-volumes.html">Amazon EBS and NVMe
    #                           on Windows instances</a> in the <i>Amazon EC2 User Guide for
    #                           Windows</i>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>InstanceStoreAvailability</code>
    #                     </b> — The
    #                       recommended instance type does not support instance store volumes and the
    #                       current instance does. Before migrating, you might need to back up the data on
    #                       your instance store volumes if you want to preserve them. For more information,
    #                       see <a href="https://aws.amazon.com/premiumsupport/knowledge-center/back-up-instance-store-ebs/">How do I back up an instance store volume on my Amazon EC2 instance
    #                           to Amazon EBS?</a> in the <i>Amazon Web Services Premium
    #                           Support Knowledge Base</i>. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html instance-networking-storage">Networking and storage features</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html">Amazon EC2
    #                           instance store</a> in the <i>Amazon EC2 User Guide for
    #                           Linux</i>, or see <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html instance-networking-storage">Networking and storage features</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/InstanceStorage.html">Amazon EC2
    #                           instance store</a> in the <i>Amazon EC2 User Guide for
    #                           Windows</i>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>VirtualizationType</code>
    #                     </b> — The
    #                       recommended instance type uses the hardware virtual machine (HVM) virtualization
    #                       type and the current instance uses the paravirtual (PV) virtualization type. For
    #                       more information about the differences between these virtualization types, see
    #                           <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/virtualization_types.html">Linux AMI
    #                           virtualization types</a> in the <i>Amazon EC2 User Guide for
    #                           Linux</i>, or <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/windows-ami-version-history.html virtualization-types">Windows AMI virtualization types</a> in the <i>Amazon EC2 User
    #                           Guide for Windows</i>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>Architecture</code>
    #                     </b> — The CPU
    #                       architecture between the recommended instance type and the current instance is
    #                       different. For example, the recommended instance type might use an Arm CPU
    #                       architecture and the current instance type might use a different one, such as
    #                       x86. Before migrating, you should consider recompiling the software on your
    #                       instance for the new architecture. Alternatively, you might switch to an Amazon
    #                       Machine Image (AMI) that supports the new architecture. For more information
    #                       about the CPU architecture for each instance type, see <a href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instance Types</a>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute performance_risk
    #   <p>The performance risk of the instance recommendation option.</p>
    #           <p>Performance risk indicates the likelihood of the recommended instance type not meeting
    #               the resource needs of your workload. Compute Optimizer calculates an individual
    #               performance risk score for each specification of the recommended instance, including
    #               CPU, memory, EBS throughput, EBS IOPS, disk throughput, disk IOPS, network throughput,
    #               and network PPS.
    #               The performance
    #               risk of the recommended instance is calculated as the maximum performance risk score
    #               across the analyzed resource specifications.</p>
    #           <p>The value ranges from <code>0</code> - <code>4</code>, with <code>0</code> meaning
    #               that the recommended resource is predicted to always provide enough hardware capability.
    #               The higher the performance risk is, the more likely you should validate whether the
    #               recommendation will meet the performance requirements of your workload before migrating
    #               your resource.</p>
    #
    #   @return [Float]
    #
    # @!attribute rank
    #   <p>The rank of the instance recommendation option.</p>
    #           <p>The top recommendation option is ranked as <code>1</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute savings_opportunity
    #   <p>An object that describes the savings opportunity for the instance recommendation
    #               option. Savings opportunity includes the estimated monthly savings amount and
    #               percentage.</p>
    #
    #   @return [SavingsOpportunity]
    #
    # @!attribute migration_effort
    #   <p>The level of effort required to migrate from the current instance type to the
    #               recommended instance type.</p>
    #
    #           <p>For example, the migration effort is <code>Low</code> if Amazon EMR is the
    #               inferred workload type and an Amazon Web Services Graviton instance type is recommended.
    #               The migration effort is <code>Medium</code> if a workload type couldn't be inferred but
    #               an Amazon Web Services Graviton instance type is recommended. The migration effort is
    #                   <code>VeryLow</code> if both the current and recommended instance types are of the
    #               same CPU architecture.</p>
    #
    #   Enum, one of: ["VeryLow", "Low", "Medium", "High"]
    #
    #   @return [String]
    #
    InstanceRecommendationOption = ::Struct.new(
      :instance_type,
      :projected_utilization_metrics,
      :platform_differences,
      :performance_risk,
      :rank,
      :savings_opportunity,
      :migration_effort,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.performance_risk ||= 0
        self.rank ||= 0
      end
    end

    # <p>An internal error has occurred. Try your call again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value supplied for the input parameter is out of range or not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterValueException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a filter that returns a more specific list of recommendation export jobs.
    #             Use this filter with the <a>DescribeRecommendationExportJobs</a>
    #             action.</p>
    #         <p>You can use <code>EBSFilter</code> with the <a>GetEBSVolumeRecommendations</a> action,
    #                 <code>LambdaFunctionRecommendationFilter</code> with the <a>GetLambdaFunctionRecommendations</a> action, and <code>Filter</code> with
    #             the <a>GetAutoScalingGroupRecommendations</a> and <a>GetEC2InstanceRecommendations</a> actions.</p>
    #
    # @!attribute name
    #   <p>The name of the filter.</p>
    #           <p>Specify <code>ResourceType</code> to return export jobs of a specific resource type
    #               (for example, <code>Ec2Instance</code>).</p>
    #           <p>Specify <code>JobStatus</code> to return export jobs with a specific status (e.g,
    #                   <code>Complete</code>).</p>
    #
    #   Enum, one of: ["ResourceType", "JobStatus"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value of the filter.</p>
    #           <p>The valid values for this parameter are as follows, depending on what you specify for
    #               the <code>name</code> parameter:</p>
    #           <ul>
    #               <li>
    #                   <p>Specify <code>Ec2Instance</code> or <code>AutoScalingGroup</code> if you
    #                       specify the <code>name</code> parameter as <code>ResourceType</code>. There is
    #                       no filter for EBS volumes because volume recommendations cannot be exported at
    #                       this time.</p>
    #               </li>
    #               <li>
    #                   <p>Specify <code>Queued</code>, <code>InProgress</code>, <code>Complete</code>,
    #                       or <code>Failed</code> if you specify the <code>name</code> parameter as
    #                           <code>JobStatus</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    JobFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobFilterName
    #
    module JobFilterName
      # No documentation available.
      #
      RESOURCE_TYPE = "ResourceType"

      # No documentation available.
      #
      JOB_STATUS = "JobStatus"
    end

    # Includes enum constants for JobStatus
    #
    module JobStatus
      # No documentation available.
      #
      QUEUED = "Queued"

      # No documentation available.
      #
      IN_PROGRESS = "InProgress"

      # No documentation available.
      #
      COMPLETE = "Complete"

      # No documentation available.
      #
      FAILED = "Failed"
    end

    # Includes enum constants for LambdaFunctionMemoryMetricName
    #
    module LambdaFunctionMemoryMetricName
      # No documentation available.
      #
      DURATION = "Duration"
    end

    # Includes enum constants for LambdaFunctionMemoryMetricStatistic
    #
    module LambdaFunctionMemoryMetricStatistic
      # No documentation available.
      #
      LOWER_BOUND = "LowerBound"

      # No documentation available.
      #
      UPPER_BOUND = "UpperBound"

      # No documentation available.
      #
      EXPECTED = "Expected"
    end

    # <p>Describes a projected utilization metric of an Lambda function
    #             recommendation option.</p>
    #
    # @!attribute name
    #   <p>The name of the projected utilization metric.</p>
    #
    #   Enum, one of: ["Duration"]
    #
    #   @return [String]
    #
    # @!attribute statistic
    #   <p>The statistic of the projected utilization metric.</p>
    #
    #   Enum, one of: ["LowerBound", "UpperBound", "Expected"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The values of the projected utilization metrics.</p>
    #
    #   @return [Float]
    #
    LambdaFunctionMemoryProjectedMetric = ::Struct.new(
      :name,
      :statistic,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= 0
      end
    end

    # <p>Describes a recommendation option for an Lambda function.</p>
    #
    # @!attribute rank
    #   <p>The rank of the function recommendation option.</p>
    #           <p>The top recommendation option is ranked as <code>1</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory_size
    #   <p>The memory size, in MB, of the function recommendation option.</p>
    #
    #   @return [Integer]
    #
    # @!attribute projected_utilization_metrics
    #   <p>An array of objects that describe the projected utilization metrics of the function
    #               recommendation option.</p>
    #
    #   @return [Array<LambdaFunctionMemoryProjectedMetric>]
    #
    # @!attribute savings_opportunity
    #   <p>An object that describes the savings opportunity for the Lambda function
    #               recommendation option. Savings opportunity includes the estimated monthly savings amount
    #               and percentage.</p>
    #
    #   @return [SavingsOpportunity]
    #
    LambdaFunctionMemoryRecommendationOption = ::Struct.new(
      :rank,
      :memory_size,
      :projected_utilization_metrics,
      :savings_opportunity,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.rank ||= 0
        self.memory_size ||= 0
      end
    end

    # Includes enum constants for LambdaFunctionMetricName
    #
    module LambdaFunctionMetricName
      # No documentation available.
      #
      DURATION = "Duration"

      # No documentation available.
      #
      MEMORY = "Memory"
    end

    # Includes enum constants for LambdaFunctionMetricStatistic
    #
    module LambdaFunctionMetricStatistic
      # No documentation available.
      #
      MAXIMUM = "Maximum"

      # No documentation available.
      #
      AVERAGE = "Average"
    end

    # <p>Describes an Lambda function recommendation.</p>
    #
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the current function.</p>
    #
    #   @return [String]
    #
    # @!attribute function_version
    #   <p>The version number of the current function.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute current_memory_size
    #   <p>The amount of memory, in MB, that's allocated to the current function.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_invocations
    #   <p>The number of times your function code was applied during the look-back period.</p>
    #
    #   @return [Integer]
    #
    # @!attribute utilization_metrics
    #   <p>An array of objects that describe the utilization metrics of the function.</p>
    #
    #   @return [Array<LambdaFunctionUtilizationMetric>]
    #
    # @!attribute lookback_period_in_days
    #   <p>The number of days for which utilization metrics were analyzed for the
    #               function.</p>
    #
    #   @return [Float]
    #
    # @!attribute last_refresh_timestamp
    #   <p>The timestamp of when the function recommendation was last generated.</p>
    #
    #   @return [Time]
    #
    # @!attribute finding
    #   <p>The finding classification of the function.</p>
    #           <p>Findings for functions include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>Optimized</code>
    #                     </b> — The function is
    #                       correctly provisioned to run your workload based on its current configuration
    #                       and its utilization history. This finding classification does not include
    #                       finding reason codes.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>NotOptimized</code>
    #                     </b> — The function is
    #                       performing at a higher level (over-provisioned) or at a lower level
    #                       (under-provisioned) than required for your workload because its current
    #                       configuration is not optimal. Over-provisioned resources might lead to
    #                       unnecessary infrastructure cost, and under-provisioned resources might lead to
    #                       poor application performance. This finding classification can include the
    #                           <code>MemoryUnderprovisioned</code> and <code>MemoryUnderprovisioned</code>
    #                       finding reason codes.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>Unavailable</code>
    #                     </b> — Compute Optimizer
    #                       was unable to generate a recommendation for the function. This could be because
    #                       the function has not accumulated sufficient metric data, or the function does
    #                       not qualify for a recommendation. This finding classification can include the
    #                           <code>InsufficientData</code> and <code>Inconclusive</code> finding reason
    #                       codes.</p>
    #                   <note>
    #                       <p>Functions with a finding of unavailable are not returned unless you
    #                           specify the <code>filter</code> parameter with a value of
    #                               <code>Unavailable</code> in your
    #                               <code>GetLambdaFunctionRecommendations</code> request.</p>
    #                   </note>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Optimized", "NotOptimized", "Unavailable"]
    #
    #   @return [String]
    #
    # @!attribute finding_reason_codes
    #   <p>The reason for the finding classification of the function.</p>
    #           <note>
    #               <p>Functions that have a finding classification of <code>Optimized</code> don't have
    #                   a finding reason code.</p>
    #           </note>
    #           <p>Finding reason codes for functions include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>MemoryOverprovisioned</code>
    #                     </b> — The
    #                       function is over-provisioned when its memory configuration can be sized down
    #                       while still meeting the performance requirements of your workload. An
    #                       over-provisioned function might lead to unnecessary infrastructure cost. This
    #                       finding reason code is part of the <code>NotOptimized</code> finding
    #                       classification.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>MemoryUnderprovisioned</code>
    #                     </b> — The
    #                       function is under-provisioned when its memory configuration doesn't meet the
    #                       performance requirements of the workload. An under-provisioned function might
    #                       lead to poor application performance. This finding reason code is part of the
    #                           <code>NotOptimized</code> finding classification.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>InsufficientData</code>
    #                     </b> — The function
    #                       does not have sufficient metric data for Compute Optimizer to generate a
    #                       recommendation. For more information, see the <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html">Supported resources and
    #                           requirements</a> in the <i>Compute Optimizer User
    #                           Guide</i>. This finding reason code is part of the
    #                           <code>Unavailable</code> finding classification.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>Inconclusive</code>
    #                     </b> — The function does
    #                       not qualify for a recommendation because Compute Optimizer cannot generate a
    #                       recommendation with a high degree of confidence. This finding reason code is
    #                       part of the <code>Unavailable</code> finding classification.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute memory_size_recommendation_options
    #   <p>An array of objects that describe the memory configuration recommendation options for
    #               the function.</p>
    #
    #   @return [Array<LambdaFunctionMemoryRecommendationOption>]
    #
    # @!attribute current_performance_risk
    #   <p>The risk of the current Lambda function not meeting the performance needs
    #               of its workloads. The higher the risk, the more likely the current Lambda
    #               function requires more memory.</p>
    #
    #   Enum, one of: ["VeryLow", "Low", "Medium", "High"]
    #
    #   @return [String]
    #
    LambdaFunctionRecommendation = ::Struct.new(
      :function_arn,
      :function_version,
      :account_id,
      :current_memory_size,
      :number_of_invocations,
      :utilization_metrics,
      :lookback_period_in_days,
      :last_refresh_timestamp,
      :finding,
      :finding_reason_codes,
      :memory_size_recommendation_options,
      :current_performance_risk,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.current_memory_size ||= 0
        self.number_of_invocations ||= 0
        self.lookback_period_in_days ||= 0
      end
    end

    # <p>Describes a filter that returns a more specific list of Lambda
    #             function recommendations. Use this filter with the <a>GetLambdaFunctionRecommendations</a> action.</p>
    #         <p>You can use <code>EBSFilter</code> with the <a>GetEBSVolumeRecommendations</a> action, <code>JobFilter</code> with the
    #                 <a>DescribeRecommendationExportJobs</a> action, and <code>Filter</code>
    #             with the <a>GetAutoScalingGroupRecommendations</a> and <a>GetEC2InstanceRecommendations</a> actions.</p>
    #
    # @!attribute name
    #   <p>The name of the filter.</p>
    #           <p>Specify <code>Finding</code> to return recommendations with a specific finding
    #               classification (for example, <code>NotOptimized</code>).</p>
    #           <p>Specify <code>FindingReasonCode</code> to return recommendations with a specific
    #               finding reason code (for example, <code>MemoryUnderprovisioned</code>).</p>
    #
    #   Enum, one of: ["Finding", "FindingReasonCode"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value of the filter.</p>
    #           <p>The valid values for this parameter are as follows, depending on what you specify for
    #               the <code>name</code> parameter:</p>
    #           <ul>
    #               <li>
    #                   <p>Specify <code>Optimized</code>, <code>NotOptimized</code>, or
    #                           <code>Unavailable</code> if you specify the <code>name</code> parameter as
    #                           <code>Finding</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Specify <code>MemoryOverprovisioned</code>,
    #                           <code>MemoryUnderprovisioned</code>, <code>InsufficientData</code>, or
    #                           <code>Inconclusive</code> if you specify the <code>name</code> parameter as
    #                           <code>FindingReasonCode</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    LambdaFunctionRecommendationFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LambdaFunctionRecommendationFilterName
    #
    module LambdaFunctionRecommendationFilterName
      # No documentation available.
      #
      FINDING = "Finding"

      # No documentation available.
      #
      FINDING_REASON_CODE = "FindingReasonCode"
    end

    # Includes enum constants for LambdaFunctionRecommendationFinding
    #
    module LambdaFunctionRecommendationFinding
      # No documentation available.
      #
      OPTIMIZED = "Optimized"

      # No documentation available.
      #
      NOT_OPTIMIZED = "NotOptimized"

      # No documentation available.
      #
      UNAVAILABLE = "Unavailable"
    end

    # Includes enum constants for LambdaFunctionRecommendationFindingReasonCode
    #
    module LambdaFunctionRecommendationFindingReasonCode
      # No documentation available.
      #
      MEMORY_OVER_PROVISIONED = "MemoryOverprovisioned"

      # No documentation available.
      #
      MEMORY_UNDER_PROVISIONED = "MemoryUnderprovisioned"

      # No documentation available.
      #
      INSUFFICIENT_DATA = "InsufficientData"

      # No documentation available.
      #
      INCONCLUSIVE = "Inconclusive"
    end

    # <p>Describes a utilization metric of an Lambda function.</p>
    #
    # @!attribute name
    #   <p>The name of the utilization metric.</p>
    #           <p>The following utilization metrics are available:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Duration</code> - The amount of time that your function code spends
    #                       processing an event.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Memory</code> - The amount of memory used per invocation.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Duration", "Memory"]
    #
    #   @return [String]
    #
    # @!attribute statistic
    #   <p>The statistic of the utilization metric.</p>
    #           <p>The Compute Optimizer API, Command Line Interface (CLI), and SDKs
    #               return utilization metrics using only the <code>Maximum</code> statistic, which is the
    #               highest value observed during the specified period.</p>
    #           <p>The Compute Optimizer console displays graphs for some utilization metrics using the
    #                   <code>Average</code> statistic, which is the value of <code>Sum</code> /
    #                   <code>SampleCount</code> during the specified period. For more information, see
    #                   <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html">Viewing resource
    #                   recommendations</a> in the <i>Compute Optimizer User
    #               Guide</i>. You can also get averaged utilization metric data for your resources
    #               using Amazon CloudWatch. For more information, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html">Amazon CloudWatch
    #                   User Guide</a>.</p>
    #
    #   Enum, one of: ["Maximum", "Average"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the utilization metric.</p>
    #
    #   @return [Float]
    #
    LambdaFunctionUtilizationMetric = ::Struct.new(
      :name,
      :statistic,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= 0
      end
    end

    # <p>The request exceeds a limit of the service.</p>
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

    # Includes enum constants for MetricName
    #
    module MetricName
      # No documentation available.
      #
      CPU = "Cpu"

      # No documentation available.
      #
      MEMORY = "Memory"

      # No documentation available.
      #
      EBS_READ_OPS_PER_SECOND = "EBS_READ_OPS_PER_SECOND"

      # No documentation available.
      #
      EBS_WRITE_OPS_PER_SECOND = "EBS_WRITE_OPS_PER_SECOND"

      # No documentation available.
      #
      EBS_READ_BYTES_PER_SECOND = "EBS_READ_BYTES_PER_SECOND"

      # No documentation available.
      #
      EBS_WRITE_BYTES_PER_SECOND = "EBS_WRITE_BYTES_PER_SECOND"

      # No documentation available.
      #
      DISK_READ_OPS_PER_SECOND = "DISK_READ_OPS_PER_SECOND"

      # No documentation available.
      #
      DISK_WRITE_OPS_PER_SECOND = "DISK_WRITE_OPS_PER_SECOND"

      # No documentation available.
      #
      DISK_READ_BYTES_PER_SECOND = "DISK_READ_BYTES_PER_SECOND"

      # No documentation available.
      #
      DISK_WRITE_BYTES_PER_SECOND = "DISK_WRITE_BYTES_PER_SECOND"

      # No documentation available.
      #
      NETWORK_IN_BYTES_PER_SECOND = "NETWORK_IN_BYTES_PER_SECOND"

      # No documentation available.
      #
      NETWORK_OUT_BYTES_PER_SECOND = "NETWORK_OUT_BYTES_PER_SECOND"

      # No documentation available.
      #
      NETWORK_PACKETS_IN_PER_SECOND = "NETWORK_PACKETS_IN_PER_SECOND"

      # No documentation available.
      #
      NETWORK_PACKETS_OUT_PER_SECOND = "NETWORK_PACKETS_OUT_PER_SECOND"
    end

    # Includes enum constants for MetricStatistic
    #
    module MetricStatistic
      # No documentation available.
      #
      MAXIMUM = "Maximum"

      # No documentation available.
      #
      AVERAGE = "Average"
    end

    # Includes enum constants for MigrationEffort
    #
    module MigrationEffort
      # No documentation available.
      #
      VERY_LOW = "VeryLow"

      # No documentation available.
      #
      LOW = "Low"

      # No documentation available.
      #
      MEDIUM = "Medium"

      # No documentation available.
      #
      HIGH = "High"
    end

    # <p>The request must contain either a valid (registered) Amazon Web Services access key ID
    #             or X.509 certificate.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MissingAuthenticationToken = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The account is not opted in to Compute Optimizer.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OptInRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PlatformDifference
    #
    module PlatformDifference
      # No documentation available.
      #
      HYPERVISOR = "Hypervisor"

      # No documentation available.
      #
      NETWORK_INTERFACE = "NetworkInterface"

      # No documentation available.
      #
      STORAGE_INTERFACE = "StorageInterface"

      # No documentation available.
      #
      INSTANCE_STORE_AVAILABILITY = "InstanceStoreAvailability"

      # No documentation available.
      #
      VIRTUALIZATION_TYPE = "VirtualizationType"

      # No documentation available.
      #
      ARCHITECTURE = "Architecture"
    end

    # <p>Describes a projected utilization metric of a recommendation option, such as an
    #                 Amazon EC2 instance. This represents the projected utilization of a
    #             recommendation option had you used that resource during the analyzed period.</p>
    #         <p>Compare the utilization metric data of your resource against its projected utilization
    #             metric data to determine the performance difference between your current resource and
    #             the recommended option.</p>
    #         <note>
    #             <p>The <code>Cpu</code> and <code>Memory</code> metrics are the only projected
    #                 utilization metrics returned when you run the <a>GetEC2RecommendationProjectedMetrics</a> action. Additionally, the
    #                     <code>Memory</code> metric is returned only for resources that have the unified
    #                     CloudWatch agent installed on them. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent">Enabling Memory Utilization with the CloudWatch Agent</a>.</p>
    #         </note>
    #
    # @!attribute name
    #   <p>The name of the projected utilization metric.</p>
    #           <p>The following projected utilization metrics are returned:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Cpu</code> - The projected percentage of allocated EC2 compute units
    #                       that would be in use on the recommendation option had you used that resource
    #                       during the analyzed period. This metric identifies the processing power required
    #                       to run an application on the recommendation option.</p>
    #                   <p>Depending on the instance type, tools in your operating system can show a
    #                       lower percentage than CloudWatch when the instance is not allocated a full
    #                       processor core.</p>
    #                   <p>Units: Percent</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Memory</code> - The percentage of memory that would be in use on the
    #                       recommendation option had you used that resource during the analyzed period.
    #                       This metric identifies the amount of memory required to run an application on
    #                       the recommendation option.</p>
    #                   <p>Units: Percent</p>
    #                   <note>
    #                       <p>The <code>Memory</code> metric is returned only for resources that have
    #                           the unified CloudWatch agent installed on them. For more information,
    #                           see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html cw-agent">Enabling Memory
    #                               Utilization with the CloudWatch Agent</a>.</p>
    #                   </note>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Cpu", "Memory", "EBS_READ_OPS_PER_SECOND", "EBS_WRITE_OPS_PER_SECOND", "EBS_READ_BYTES_PER_SECOND", "EBS_WRITE_BYTES_PER_SECOND", "DISK_READ_OPS_PER_SECOND", "DISK_WRITE_OPS_PER_SECOND", "DISK_READ_BYTES_PER_SECOND", "DISK_WRITE_BYTES_PER_SECOND", "NETWORK_IN_BYTES_PER_SECOND", "NETWORK_OUT_BYTES_PER_SECOND", "NETWORK_PACKETS_IN_PER_SECOND", "NETWORK_PACKETS_OUT_PER_SECOND"]
    #
    #   @return [String]
    #
    # @!attribute timestamps
    #   <p>The timestamps of the projected utilization metric.</p>
    #
    #   @return [Array<Time>]
    #
    # @!attribute values
    #   <p>The values of the projected utilization metrics.</p>
    #
    #   @return [Array<Float>]
    #
    ProjectedMetric = ::Struct.new(
      :name,
      :timestamps,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_type
    #   <p>The target resource type of the recommendation preference to create.</p>
    #           <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
    #               that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
    #               encompasses only instances that are part of an Auto Scaling group.</p>
    #           <note>
    #               <p>The valid values for this parameter are <code>Ec2Instance</code> and
    #                       <code>AutoScalingGroup</code>.</p>
    #           </note>
    #
    #   Enum, one of: ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable"]
    #
    #   @return [String]
    #
    # @!attribute scope
    #   <p>An object that describes the scope of the recommendation preference to create.</p>
    #           <p>You can create recommendation preferences at the organization level (for management
    #               accounts of an organization only), account level, and resource level. For more
    #               information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                   enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #           <note>
    #               <p>You cannot create recommendation preferences for Auto Scaling groups at the
    #                   organization and account levels. You can create recommendation preferences for
    #                       Auto Scaling groups only at the resource level by specifying a scope name
    #                   of <code>ResourceArn</code> and a scope value of the Auto Scaling group Amazon
    #                   Resource Name (ARN). This will configure the preference for all instances that are
    #                   part of the specified Auto Scaling group. You also cannot create recommendation
    #                   preferences at the resource level for instances that are part of an Auto Scaling group. You can create recommendation preferences at the resource level only for
    #                   standalone instances.</p>
    #           </note>
    #
    #   @return [Scope]
    #
    # @!attribute enhanced_infrastructure_metrics
    #   <p>The status of the enhanced infrastructure metrics recommendation preference to create
    #               or update.</p>
    #           <p>Specify the <code>Active</code> status to activate the preference, or specify
    #                   <code>Inactive</code> to deactivate the preference.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Enhanced
    #                   infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #
    #   Enum, one of: ["Active", "Inactive"]
    #
    #   @return [String]
    #
    # @!attribute inferred_workload_types
    #   <p>The status of the inferred workload types recommendation preference to create or
    #               update.</p>
    #
    #           <note>
    #               <p>The inferred workload type feature is active by default. To deactivate it, create
    #                   a recommendation preference.</p>
    #           </note>
    #
    #           <p>Specify the <code>Inactive</code> status to deactivate the feature, or specify
    #                   <code>Active</code> to activate it.</p>
    #
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/inferred-workload-types.html">Inferred workload
    #                   types</a> in the <i>Compute Optimizer User Guide</i>.</p>
    #
    #   Enum, one of: ["Active", "Inactive"]
    #
    #   @return [String]
    #
    PutRecommendationPreferencesInput = ::Struct.new(
      :resource_type,
      :scope,
      :enhanced_infrastructure_metrics,
      :inferred_workload_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutRecommendationPreferencesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of a finding reason code.</p>
    #
    # @!attribute name
    #   <p>The name of the finding reason code.</p>
    #
    #   Enum, one of: ["MemoryOverprovisioned", "MemoryUnderprovisioned"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the finding reason code summary.</p>
    #
    #   @return [Float]
    #
    ReasonCodeSummary = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= 0
      end
    end

    # <p>Describes a recommendation export job.</p>
    #         <p>Use the <a>DescribeRecommendationExportJobs</a> action to view your
    #             recommendation export jobs.</p>
    #         <p>Use the <a>ExportAutoScalingGroupRecommendations</a> or <a>ExportEC2InstanceRecommendations</a> actions to request an export of your
    #             recommendations.</p>
    #
    # @!attribute job_id
    #   <p>The identification number of the export job.</p>
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>An object that describes the destination of the export file.</p>
    #
    #   @return [ExportDestination]
    #
    # @!attribute resource_type
    #   <p>The resource type of the exported recommendations.</p>
    #
    #   Enum, one of: ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the export job.</p>
    #
    #   Enum, one of: ["Queued", "InProgress", "Complete", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The timestamp of when the export job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>The timestamp of when the export job was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_reason
    #   <p>The reason for an export job failure.</p>
    #
    #   @return [String]
    #
    RecommendationExportJob = ::Struct.new(
      :job_id,
      :destination,
      :resource_type,
      :status,
      :creation_timestamp,
      :last_updated_timestamp,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecommendationPreferenceName
    #
    module RecommendationPreferenceName
      # No documentation available.
      #
      ENHANCED_INFRASTRUCTURE_METRICS = "EnhancedInfrastructureMetrics"

      # No documentation available.
      #
      INFERRED_WORKLOAD_TYPES = "InferredWorkloadTypes"
    end

    # <p>Describes the recommendation preferences to return in the response of a <a>GetAutoScalingGroupRecommendations</a>, <a>GetEC2InstanceRecommendations</a>, and <a>GetEC2RecommendationProjectedMetrics</a> request.</p>
    #
    # @!attribute cpu_vendor_architectures
    #   <p>Specifies the CPU vendor and architecture for Amazon EC2 instance and Auto Scaling group recommendations.</p>
    #           <p>For example, when you specify <code>AWS_ARM64</code> with:</p>
    #           <ul>
    #               <li>
    #                   <p>A <a>GetEC2InstanceRecommendations</a> or <a>GetAutoScalingGroupRecommendations</a> request, Compute Optimizer
    #                       returns recommendations that consist of Graviton2 instance types only.</p>
    #               </li>
    #               <li>
    #                   <p>A <a>GetEC2RecommendationProjectedMetrics</a> request, Compute Optimizer returns projected utilization metrics for Graviton2 instance type
    #                       recommendations only.</p>
    #               </li>
    #               <li>
    #                   <p>A <a>ExportEC2InstanceRecommendations</a> or <a>ExportAutoScalingGroupRecommendations</a> request, Compute Optimizer
    #                       exports recommendations that consist of Graviton2 instance types only.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    RecommendationPreferences = ::Struct.new(
      :cpu_vendor_architectures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a recommendation preference.</p>
    #
    # @!attribute scope
    #   <p>An object that describes the scope of the recommendation preference.</p>
    #           <p>Recommendation preferences can be created at the organization level (for management
    #               accounts of an organization only), account level, and resource level. For more
    #               information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                   enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #
    #   @return [Scope]
    #
    # @!attribute resource_type
    #   <p>The target resource type of the recommendation preference to create.</p>
    #           <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
    #               that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
    #               encompasses only instances that are part of an Auto Scaling group.</p>
    #
    #   Enum, one of: ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable"]
    #
    #   @return [String]
    #
    # @!attribute enhanced_infrastructure_metrics
    #   <p>The status of the enhanced infrastructure metrics recommendation preference.</p>
    #           <p>A status of <code>Active</code> confirms that the preference is applied in the latest
    #               recommendation refresh, and a status of <code>Inactive</code> confirms that it's not yet
    #               applied to recommendations.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Enhanced
    #                   infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #
    #   Enum, one of: ["Active", "Inactive"]
    #
    #   @return [String]
    #
    # @!attribute inferred_workload_types
    #   <p>The status of the inferred workload types recommendation preference.</p>
    #
    #           <p>A status of <code>Active</code> confirms that the preference is applied in the latest
    #               recommendation refresh. A status of <code>Inactive</code> confirms that it's not yet
    #               applied to recommendations.</p>
    #
    #   Enum, one of: ["Active", "Inactive"]
    #
    #   @return [String]
    #
    RecommendationPreferencesDetail = ::Struct.new(
      :scope,
      :resource_type,
      :enhanced_infrastructure_metrics,
      :inferred_workload_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the source of a recommendation, such as an Amazon EC2 instance or
    #                 Auto Scaling group.</p>
    #
    # @!attribute recommendation_source_arn
    #   <p>The Amazon Resource Name (ARN) of the recommendation source.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_source_type
    #   <p>The resource type of the recommendation source.</p>
    #
    #   Enum, one of: ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction"]
    #
    #   @return [String]
    #
    RecommendationSource = ::Struct.new(
      :recommendation_source_arn,
      :recommendation_source_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecommendationSourceType
    #
    module RecommendationSourceType
      # No documentation available.
      #
      EC2_INSTANCE = "Ec2Instance"

      # No documentation available.
      #
      AUTO_SCALING_GROUP = "AutoScalingGroup"

      # No documentation available.
      #
      EBS_VOLUME = "EbsVolume"

      # No documentation available.
      #
      LAMBDA_FUNCTION = "LambdaFunction"
    end

    # <p>A summary of a recommendation.</p>
    #
    # @!attribute summaries
    #   <p>An array of objects that describe a recommendation summary.</p>
    #
    #   @return [Array<Summary>]
    #
    # @!attribute recommendation_resource_type
    #   <p>The resource type that the recommendation summary applies to.</p>
    #
    #   Enum, one of: ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction"]
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the recommendation summary.</p>
    #
    #   @return [String]
    #
    # @!attribute savings_opportunity
    #   <p>An object that describes the savings opportunity for a given resource type. Savings
    #               opportunity includes the estimated monthly savings amount and percentage.</p>
    #
    #   @return [SavingsOpportunity]
    #
    # @!attribute current_performance_risk_ratings
    #   <p>An object that describes the performance risk ratings for a given resource
    #               type.</p>
    #
    #   @return [CurrentPerformanceRiskRatings]
    #
    RecommendationSummary = ::Struct.new(
      :summaries,
      :recommendation_resource_type,
      :account_id,
      :savings_opportunity,
      :current_performance_risk_ratings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a projected utilization metric of a recommendation option.</p>
    #         <note>
    #             <p>The <code>Cpu</code> and <code>Memory</code> metrics are the only projected
    #                 utilization metrics returned when you run the <a>GetEC2RecommendationProjectedMetrics</a> action. Additionally, the
    #                     <code>Memory</code> metric is returned only for resources that have the unified
    #                     CloudWatch agent installed on them. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent">Enabling Memory Utilization with the CloudWatch Agent</a>.</p>
    #         </note>
    #
    # @!attribute recommended_instance_type
    #   <p>The recommended instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute rank
    #   <p>The rank of the recommendation option projected metric.</p>
    #           <p>The top recommendation option is ranked as <code>1</code>.</p>
    #           <p>The projected metric rank correlates to the recommendation option rank. For example,
    #               the projected metric ranked as <code>1</code> is related to the recommendation option
    #               that is also ranked as <code>1</code> in the same response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute projected_metrics
    #   <p>An array of objects that describe a projected utilization metric.</p>
    #
    #   @return [Array<ProjectedMetric>]
    #
    RecommendedOptionProjectedMetric = ::Struct.new(
      :recommended_instance_type,
      :rank,
      :projected_metrics,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.rank ||= 0
      end
    end

    # <p>A resource that is required for the action doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      EC2_INSTANCE = "Ec2Instance"

      # No documentation available.
      #
      AUTO_SCALING_GROUP = "AutoScalingGroup"

      # No documentation available.
      #
      EBS_VOLUME = "EbsVolume"

      # No documentation available.
      #
      LAMBDA_FUNCTION = "LambdaFunction"

      # No documentation available.
      #
      NOT_APPLICABLE = "NotApplicable"
    end

    # <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #             object keys of a recommendations export file, and its associated metadata file.</p>
    #
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket used as the destination of an export
    #               file.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The Amazon S3 bucket key of an export file.</p>
    #           <p>The key uniquely identifies the object, or export file, in the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata_key
    #   <p>The Amazon S3 bucket key of a metadata file.</p>
    #           <p>The key uniquely identifies the object, or metadata file, in the S3 bucket.</p>
    #
    #   @return [String]
    #
    S3Destination = ::Struct.new(
      :bucket,
      :key,
      :metadata_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #             key prefix for a recommendations export job.</p>
    #         <p>You must create the destination Amazon S3 bucket for your recommendations
    #             export before you create the export job. Compute Optimizer does not create the S3 bucket
    #             for you. After you create the S3 bucket, ensure that it has the required permission
    #             policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #             an object prefix when you create the export job, you must include the object prefix in
    #             the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                     <i>Compute Optimizer User Guide</i>.</p>
    #
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket to use as the destination for an export
    #               job.</p>
    #
    #   @return [String]
    #
    # @!attribute key_prefix
    #   <p>The Amazon S3 bucket prefix for an export job.</p>
    #
    #   @return [String]
    #
    S3DestinationConfig = ::Struct.new(
      :bucket,
      :key_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the savings opportunity for recommendations of a given resource type or for
    #             the recommendation option of an individual resource.</p>
    #         <p>Savings opportunity represents the estimated monthly savings you can achieve by
    #             implementing a given Compute Optimizer recommendation.</p>
    #         <important>
    #             <p>Savings opportunity data requires that you opt in to Cost Explorer, as well as
    #                 activate <b>Receive Amazon EC2 resource
    #                     recommendations</b> in the Cost Explorer preferences page. That
    #                 creates a connection between Cost Explorer and Compute Optimizer. With this
    #                 connection, Cost Explorer generates savings estimates considering the price of
    #                 existing resources, the price of recommended resources, and historical usage data.
    #                 Estimated monthly savings reflects the projected dollar savings associated with each
    #                 of the recommendations generated. For more information, see <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-enable.html">Enabling Cost Explorer</a> and <a href="https://docs.aws.amazon.com/cost-management/latest/userguide/ce-rightsizing.html">Optimizing your cost
    #                     with Rightsizing Recommendations</a> in the <i>Cost Management User
    #                     Guide</i>.</p>
    #         </important>
    #
    # @!attribute savings_opportunity_percentage
    #   <p>The estimated monthly savings possible as a percentage of monthly cost by adopting
    #                   Compute Optimizer recommendations for a given resource.</p>
    #
    #   @return [Float]
    #
    # @!attribute estimated_monthly_savings
    #   <p>An object that describes the estimated monthly savings amount possible, based on
    #               On-Demand instance pricing, by adopting Compute Optimizer recommendations for a given
    #               resource.</p>
    #
    #   @return [EstimatedMonthlySavings]
    #
    SavingsOpportunity = ::Struct.new(
      :savings_opportunity_percentage,
      :estimated_monthly_savings,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.savings_opportunity_percentage ||= 0
      end
    end

    # <p>Describes the scope of a recommendation preference.</p>
    #         <p>Recommendation preferences can be created at the organization level (for management
    #             accounts of an organization only), account level, and resource level. For more
    #             information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                 enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                 Guide</i>.</p>
    #         <note>
    #             <p>You cannot create recommendation preferences for Auto Scaling groups at the
    #                 organization and account levels. You can create recommendation preferences for
    #                     Auto Scaling groups only at the resource level by specifying a scope name
    #                 of <code>ResourceArn</code> and a scope value of the Auto Scaling group Amazon
    #                 Resource Name (ARN). This will configure the preference for all instances that are
    #                 part of the specified Auto Scaling group. You also cannot create recommendation
    #                 preferences at the resource level for instances that are part of an Auto Scaling group. You can create recommendation preferences at the resource level only for
    #                 standalone instances.</p>
    #         </note>
    #
    # @!attribute name
    #   <p>The name of the scope.</p>
    #           <p>The following scopes are possible:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Organization</code> - Specifies that the recommendation preference
    #                       applies at the organization level, for all member accounts of an
    #                       organization.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>AccountId</code> - Specifies that the recommendation preference applies
    #                       at the account level, for all resources of a given resource type in an
    #                       account.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ResourceArn</code> - Specifies that the recommendation preference
    #                       applies at the individual resource level.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Organization", "AccountId", "ResourceArn"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the scope.</p>
    #           <p>If you specified the <code>name</code> of the scope as:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Organization</code> - The <code>value</code> must be
    #                           <code>ALL_ACCOUNTS</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>AccountId</code> - The <code>value</code> must be a 12-digit Amazon Web Services account ID.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ResourceArn</code> - The <code>value</code> must be the Amazon Resource
    #                       Name (ARN) of an EC2 instance or an Auto Scaling group.</p>
    #               </li>
    #            </ul>
    #           <p>Only EC2 instance and Auto Scaling group ARNs are currently supported.</p>
    #
    #   @return [String]
    #
    Scope = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScopeName
    #
    module ScopeName
      # No documentation available.
      #
      ORGANIZATION = "Organization"

      # No documentation available.
      #
      ACCOUNT_ID = "AccountId"

      # No documentation available.
      #
      RESOURCE_ARN = "ResourceArn"
    end

    # <p>The request has failed due to a temporary failure of the server.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Status
    #
    module Status
      # No documentation available.
      #
      ACTIVE = "Active"

      # No documentation available.
      #
      INACTIVE = "Inactive"

      # No documentation available.
      #
      PENDING = "Pending"

      # No documentation available.
      #
      FAILED = "Failed"
    end

    # <p>The summary of a recommendation.</p>
    #
    # @!attribute name
    #   <p>The finding classification of the recommendation.</p>
    #
    #   Enum, one of: ["Underprovisioned", "Overprovisioned", "Optimized", "NotOptimized"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the recommendation summary.</p>
    #
    #   @return [Float]
    #
    # @!attribute reason_code_summaries
    #   <p>An array of objects that summarize a finding reason code.</p>
    #
    #   @return [Array<ReasonCodeSummary>]
    #
    Summary = ::Struct.new(
      :name,
      :value,
      :reason_code_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= 0
      end
    end

    # <p>The request was denied due to request throttling.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The new enrollment status of the account.</p>
    #           <p>The following status options are available:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Active</code> - Opts in your account to the Compute Optimizer service.
    #                           Compute Optimizer begins analyzing the configuration and utilization metrics
    #                       of your Amazon Web Services resources after you opt in. For more information, see
    #                           <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html">Metrics analyzed by Compute Optimizer</a> in the <i>Compute Optimizer User Guide</i>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Inactive</code> - Opts out your account from the Compute Optimizer
    #                       service. Your account's recommendations and related metrics data will be deleted
    #                       from Compute Optimizer after you opt out.</p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>The <code>Pending</code> and <code>Failed</code> options cannot be used to update
    #                   the enrollment status of an account. They are returned in the response of a request
    #                   to update the enrollment status of an account.</p>
    #           </note>
    #
    #   Enum, one of: ["Active", "Inactive", "Pending", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute include_member_accounts
    #   <p>Indicates whether to enroll member accounts of the organization if the account is the
    #               management account of an organization.</p>
    #
    #   @return [Boolean]
    #
    UpdateEnrollmentStatusInput = ::Struct.new(
      :status,
      :include_member_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.include_member_accounts ||= false
      end
    end

    # @!attribute status
    #   <p>The enrollment status of the account.</p>
    #
    #   Enum, one of: ["Active", "Inactive", "Pending", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>The reason for the enrollment status of the account. For example, an account might
    #               show a status of <code>Pending</code> because member accounts of an organization require
    #               more time to be enrolled in the service.</p>
    #
    #   @return [String]
    #
    UpdateEnrollmentStatusOutput = ::Struct.new(
      :status,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a utilization metric of a resource, such as an Amazon EC2
    #             instance.</p>
    #         <p>Compare the utilization metric data of your resource against its projected utilization
    #             metric data to determine the performance difference between your current resource and
    #             the recommended option.</p>
    #
    # @!attribute name
    #   <p>The name of the utilization metric.</p>
    #           <p>The following utilization metrics are available:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Cpu</code> - The percentage of allocated EC2 compute units that are
    #                       currently in use on the instance. This metric identifies the processing power
    #                       required to run an application on the instance.</p>
    #                   <p>Depending on the instance type, tools in your operating system can show a
    #                       lower percentage than CloudWatch when the instance is not allocated a full
    #                       processor core.</p>
    #                   <p>Units: Percent</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Memory</code> - The percentage of memory that is currently in use on the
    #                       instance. This metric identifies the amount of memory required to run an
    #                       application on the instance.</p>
    #                   <p>Units: Percent</p>
    #                   <note>
    #                       <p>The <code>Memory</code> metric is returned only for resources that have
    #                           the unified CloudWatch agent installed on them. For more information,
    #                           see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html cw-agent">Enabling Memory
    #                               Utilization with the CloudWatch Agent</a>.</p>
    #                   </note>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>EBS_READ_OPS_PER_SECOND</code> - The completed read operations from all
    #                       EBS volumes attached to the instance in a specified period of time.</p>
    #                   <p>Unit: Count</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>EBS_WRITE_OPS_PER_SECOND</code> - The completed write operations to all
    #                       EBS volumes attached to the instance in a specified period of time.</p>
    #                   <p>Unit: Count</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>EBS_READ_BYTES_PER_SECOND</code> - The bytes read from all EBS volumes
    #                       attached to the instance in a specified period of time.</p>
    #                   <p>Unit: Bytes</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>EBS_WRITE_BYTES_PER_SECOND</code> - The bytes written to all EBS volumes
    #                       attached to the instance in a specified period of time.</p>
    #                   <p>Unit: Bytes</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DISK_READ_OPS_PER_SECOND</code> - The completed read operations from all
    #                       instance store volumes available to the instance in a specified period of
    #                       time.</p>
    #                   <p>If there are no instance store volumes, either the value is <code>0</code> or
    #                       the metric is not reported.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DISK_WRITE_OPS_PER_SECOND</code> - The completed write operations from
    #                       all instance store volumes available to the instance in a specified period of
    #                       time.</p>
    #                   <p>If there are no instance store volumes, either the value is <code>0</code> or
    #                       the metric is not reported.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DISK_READ_BYTES_PER_SECOND</code> - The bytes read from all instance
    #                       store volumes available to the instance. This metric is used to determine the
    #                       volume of the data the application reads from the disk of the instance. This can
    #                       be used to determine the speed of the application.</p>
    #                   <p>If there are no instance store volumes, either the value is <code>0</code> or
    #                       the metric is not reported.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DISK_WRITE_BYTES_PER_SECOND</code> - The bytes written to all instance
    #                       store volumes available to the instance. This metric is used to determine the
    #                       volume of the data the application writes onto the disk of the instance. This
    #                       can be used to determine the speed of the application.</p>
    #                   <p>If there are no instance store volumes, either the value is <code>0</code> or
    #                       the metric is not reported.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NETWORK_IN_BYTES_PER_SECOND</code> - The number of bytes received by the
    #                       instance on all network interfaces. This metric identifies the volume of
    #                       incoming network traffic to a single instance.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NETWORK_OUT_BYTES_PER_SECOND</code> - The number of bytes sent out by
    #                       the instance on all network interfaces. This metric identifies the volume of
    #                       outgoing network traffic from a single instance.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NETWORK_PACKETS_IN_PER_SECOND</code> - The number of packets received by
    #                       the instance on all network interfaces. This metric identifies the volume of
    #                       incoming traffic in terms of the number of packets on a single instance.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NETWORK_PACKETS_OUT_PER_SECOND</code> - The number of packets sent out
    #                       by the instance on all network interfaces. This metric identifies the volume of
    #                       outgoing traffic in terms of the number of packets on a single instance.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Cpu", "Memory", "EBS_READ_OPS_PER_SECOND", "EBS_WRITE_OPS_PER_SECOND", "EBS_READ_BYTES_PER_SECOND", "EBS_WRITE_BYTES_PER_SECOND", "DISK_READ_OPS_PER_SECOND", "DISK_WRITE_OPS_PER_SECOND", "DISK_READ_BYTES_PER_SECOND", "DISK_WRITE_BYTES_PER_SECOND", "NETWORK_IN_BYTES_PER_SECOND", "NETWORK_OUT_BYTES_PER_SECOND", "NETWORK_PACKETS_IN_PER_SECOND", "NETWORK_PACKETS_OUT_PER_SECOND"]
    #
    #   @return [String]
    #
    # @!attribute statistic
    #   <p>The statistic of the utilization metric.</p>
    #           <p>The Compute Optimizer API, Command Line Interface (CLI), and SDKs
    #               return utilization metrics using only the <code>Maximum</code> statistic, which is the
    #               highest value observed during the specified period.</p>
    #           <p>The Compute Optimizer console displays graphs for some utilization metrics using the
    #                   <code>Average</code> statistic, which is the value of <code>Sum</code> /
    #                   <code>SampleCount</code> during the specified period. For more information, see
    #                   <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html">Viewing resource
    #                   recommendations</a> in the <i>Compute Optimizer User
    #               Guide</i>. You can also get averaged utilization metric data for your resources
    #               using Amazon CloudWatch. For more information, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html">Amazon CloudWatch
    #                   User Guide</a>.</p>
    #
    #   Enum, one of: ["Maximum", "Average"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the utilization metric.</p>
    #
    #   @return [Float]
    #
    UtilizationMetric = ::Struct.new(
      :name,
      :statistic,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= 0
      end
    end

    # <p>Describes the configuration of an Amazon Elastic Block Store (Amazon EBS)
    #             volume.</p>
    #
    # @!attribute volume_type
    #   <p>The volume type.</p>
    #           <p>This can be <code>gp2</code> for General Purpose SSD, <code>io1</code> or
    #                   <code>io2</code> for Provisioned IOPS SSD, <code>st1</code> for Throughput Optimized
    #               HDD, <code>sc1</code> for Cold HDD, or <code>standard</code> for Magnetic
    #               volumes.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_size
    #   <p>The size of the volume, in GiB.</p>
    #
    #   @return [Integer]
    #
    # @!attribute volume_baseline_iops
    #   <p>The baseline IOPS of the volume.</p>
    #
    #   @return [Integer]
    #
    # @!attribute volume_burst_iops
    #   <p>The burst IOPS of the volume.</p>
    #
    #   @return [Integer]
    #
    # @!attribute volume_baseline_throughput
    #   <p>The baseline throughput of the volume.</p>
    #
    #   @return [Integer]
    #
    # @!attribute volume_burst_throughput
    #   <p>The burst throughput of the volume.</p>
    #
    #   @return [Integer]
    #
    VolumeConfiguration = ::Struct.new(
      :volume_type,
      :volume_size,
      :volume_baseline_iops,
      :volume_burst_iops,
      :volume_baseline_throughput,
      :volume_burst_throughput,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.volume_size ||= 0
        self.volume_baseline_iops ||= 0
        self.volume_burst_iops ||= 0
        self.volume_baseline_throughput ||= 0
        self.volume_burst_throughput ||= 0
      end
    end

    # <p>Describes an Amazon Elastic Block Store (Amazon EBS) volume recommendation.</p>
    #
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the current volume.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the volume.</p>
    #
    #   @return [String]
    #
    # @!attribute current_configuration
    #   <p>An array of objects that describe the current configuration of the volume.</p>
    #
    #   @return [VolumeConfiguration]
    #
    # @!attribute finding
    #   <p>The finding classification of the volume.</p>
    #           <p>Findings for volumes include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>NotOptimized</code>
    #                     </b>—A volume is
    #                       considered not optimized when Compute Optimizer identifies a recommendation
    #                       that can provide better performance for your workload.</p>
    #
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>Optimized</code>
    #                     </b>—An volume is
    #                       considered optimized when Compute Optimizer determines that the volume is
    #                       correctly provisioned to run your workload based on the chosen volume type. For
    #                       optimized resources, Compute Optimizer might recommend a new generation volume
    #                       type.</p>
    #
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Optimized", "NotOptimized"]
    #
    #   @return [String]
    #
    # @!attribute utilization_metrics
    #   <p>An array of objects that describe the utilization metrics of the volume.</p>
    #
    #   @return [Array<EBSUtilizationMetric>]
    #
    # @!attribute look_back_period_in_days
    #   <p>The number of days for which utilization metrics were analyzed for the volume.</p>
    #
    #   @return [Float]
    #
    # @!attribute volume_recommendation_options
    #   <p>An array of objects that describe the recommendation options for the volume.</p>
    #
    #   @return [Array<VolumeRecommendationOption>]
    #
    # @!attribute last_refresh_timestamp
    #   <p>The timestamp of when the volume recommendation was last generated.</p>
    #
    #   @return [Time]
    #
    # @!attribute current_performance_risk
    #   <p>The risk of the current EBS volume not meeting the performance needs of its workloads.
    #               The higher the risk, the more likely the current EBS volume doesn't have sufficient
    #               capacity.</p>
    #
    #   Enum, one of: ["VeryLow", "Low", "Medium", "High"]
    #
    #   @return [String]
    #
    VolumeRecommendation = ::Struct.new(
      :volume_arn,
      :account_id,
      :current_configuration,
      :finding,
      :utilization_metrics,
      :look_back_period_in_days,
      :volume_recommendation_options,
      :last_refresh_timestamp,
      :current_performance_risk,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.look_back_period_in_days ||= 0
      end
    end

    # <p>Describes a recommendation option for an Amazon Elastic Block Store (Amazon EBS)
    #             instance.</p>
    #
    # @!attribute configuration
    #   <p>An array of objects that describe a volume configuration.</p>
    #
    #   @return [VolumeConfiguration]
    #
    # @!attribute performance_risk
    #   <p>The performance risk of the volume recommendation option.</p>
    #           <p>Performance risk is the likelihood of the recommended volume type meeting the
    #               performance requirement of your workload.</p>
    #           <p>The value ranges from <code>0</code> - <code>4</code>, with <code>0</code> meaning
    #               that the recommended resource is predicted to always provide enough hardware capability.
    #               The higher the performance risk is, the more likely you should validate whether the
    #               recommendation will meet the performance requirements of your workload before migrating
    #               your resource.</p>
    #
    #   @return [Float]
    #
    # @!attribute rank
    #   <p>The rank of the volume recommendation option.</p>
    #           <p>The top recommendation option is ranked as <code>1</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute savings_opportunity
    #   <p>An object that describes the savings opportunity for the EBS volume recommendation
    #               option. Savings opportunity includes the estimated monthly savings amount and
    #               percentage.</p>
    #
    #   @return [SavingsOpportunity]
    #
    VolumeRecommendationOption = ::Struct.new(
      :configuration,
      :performance_risk,
      :rank,
      :savings_opportunity,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.performance_risk ||= 0
        self.rank ||= 0
      end
    end

  end
end
