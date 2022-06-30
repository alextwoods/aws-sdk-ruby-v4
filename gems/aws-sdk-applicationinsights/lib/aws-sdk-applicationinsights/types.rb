# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApplicationInsights
  module Types

    # <p> User does not have permissions to perform this action. </p>
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

    # <p>Describes a standalone resource or similarly grouped resources that the application is
    #          made up of.</p>
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute component_remarks
    #   <p> If logging is supported for the resource type, indicates whether the component has
    #            configured logs to be monitored. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type. Supported resource types include EC2 instances, Auto Scaling group,
    #            Classic ELB, Application ELB, and SQS Queue.</p>
    #
    #   @return [String]
    #
    # @!attribute os_type
    #   <p> The operating system of the component. </p>
    #
    #   Enum, one of: ["WINDOWS", "LINUX"]
    #
    #   @return [String]
    #
    # @!attribute tier
    #   <p>The stack tier of the application component.</p>
    #
    #   Enum, one of: ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY"]
    #
    #   @return [String]
    #
    # @!attribute monitor
    #   <p>Indicates whether the application component is monitored. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute detected_workload
    #   <p> Workloads detected in the application component. </p>
    #
    #   @return [Hash<String, Hash<String, String>>]
    #
    ApplicationComponent = ::Struct.new(
      :component_name,
      :component_remarks,
      :resource_type,
      :os_type,
      :tier,
      :monitor,
      :detected_workload,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the status of the application.</p>
    #
    # @!attribute resource_group_name
    #   <p>The name of the resource group used for the application.</p>
    #
    #   @return [String]
    #
    # @!attribute life_cycle
    #   <p>The lifecycle of the application. </p>
    #
    #   @return [String]
    #
    # @!attribute ops_item_sns_topic_arn
    #   <p> The SNS topic provided to Application Insights that is associated to the created
    #            opsItems to receive SNS notifications for opsItem updates. </p>
    #
    #   @return [String]
    #
    # @!attribute ops_center_enabled
    #   <p> Indicates whether Application Insights will create opsItems for any problem detected by
    #            Application Insights for an application. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute cwe_monitor_enabled
    #   <p> Indicates whether Application Insights can listen to CloudWatch events for the
    #            application resources, such as <code>instance terminated</code>, <code>failed
    #               deployment</code>, and others. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute remarks
    #   <p>The issues on the user side that block Application Insights from successfully monitoring
    #            an application. Example remarks include:</p>
    #            <ul>
    #               <li>
    #                  <p>“Configuring application, detected 1 Errors, 3 Warnings”</p>
    #               </li>
    #               <li>
    #                  <p>“Configuring application, detected 1 Unconfigured Components”</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute auto_config_enabled
    #   <p> Indicates whether auto-configuration is turned on for this application. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute discovery_type
    #   <p>
    #            The method used by Application Insights to onboard your resources.
    #         </p>
    #
    #   Enum, one of: ["RESOURCE_GROUP_BASED", "ACCOUNT_BASED"]
    #
    #   @return [String]
    #
    ApplicationInfo = ::Struct.new(
      :resource_group_name,
      :life_cycle,
      :ops_item_sns_topic_arn,
      :ops_center_enabled,
      :cwe_monitor_enabled,
      :remarks,
      :auto_config_enabled,
      :discovery_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request is not understood by the server.</p>
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

    # Includes enum constants for CloudWatchEventSource
    #
    module CloudWatchEventSource
      # No documentation available.
      #
      EC2 = "EC2"

      # No documentation available.
      #
      CODE_DEPLOY = "CODE_DEPLOY"

      # No documentation available.
      #
      HEALTH = "HEALTH"

      # No documentation available.
      #
      RDS = "RDS"
    end

    # <p> The event information. </p>
    #
    # @!attribute monitored_resource_arn
    #   <p> The resource monitored by Application Insights. </p>
    #
    #   @return [String]
    #
    # @!attribute event_status
    #   <p> The status of the configuration update event. Possible values include INFO, WARN, and
    #            ERROR. </p>
    #
    #   Enum, one of: ["INFO", "WARN", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute event_resource_type
    #   <p> The resource type that Application Insights attempted to configure, for example,
    #            CLOUDWATCH_ALARM. </p>
    #
    #   Enum, one of: ["CLOUDWATCH_ALARM", "CLOUDWATCH_LOG", "CLOUDFORMATION", "SSM_ASSOCIATION"]
    #
    #   @return [String]
    #
    # @!attribute event_time
    #   <p> The timestamp of the event. </p>
    #
    #   @return [Time]
    #
    # @!attribute event_detail
    #   <p> The details of the event in plain text. </p>
    #
    #   @return [String]
    #
    # @!attribute event_resource_name
    #   <p> The name of the resource Application Insights attempted to configure. </p>
    #
    #   @return [String]
    #
    ConfigurationEvent = ::Struct.new(
      :monitored_resource_arn,
      :event_status,
      :event_resource_type,
      :event_time,
      :event_detail,
      :event_resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConfigurationEventResourceType
    #
    module ConfigurationEventResourceType
      # No documentation available.
      #
      CLOUDWATCH_ALARM = "CLOUDWATCH_ALARM"

      # No documentation available.
      #
      CLOUDWATCH_LOG = "CLOUDWATCH_LOG"

      # No documentation available.
      #
      CLOUDFORMATION = "CLOUDFORMATION"

      # No documentation available.
      #
      SSM_ASSOCIATION = "SSM_ASSOCIATION"
    end

    # Includes enum constants for ConfigurationEventStatus
    #
    module ConfigurationEventStatus
      # No documentation available.
      #
      INFO = "INFO"

      # No documentation available.
      #
      WARN = "WARN"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute ops_center_enabled
    #   <p> When set to <code>true</code>, creates opsItems for any problems detected on an
    #            application. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute cwe_monitor_enabled
    #   <p> Indicates whether Application Insights can listen to CloudWatch events for the
    #            application resources, such as <code>instance terminated</code>, <code>failed
    #               deployment</code>, and others. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute ops_item_sns_topic_arn
    #   <p> The SNS topic provided to Application Insights that is associated to the created
    #            opsItem. Allows you to receive notifications for updates to the opsItem. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>List of tags to add to the application. tag key (<code>Key</code>) and an associated tag
    #            value (<code>Value</code>). The maximum length of a tag key is 128 characters. The maximum
    #            length of a tag value is 256 characters.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute auto_config_enabled
    #   <p> Indicates whether Application Insights automatically configures unmonitored resources
    #            in the resource group. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_create
    #   <p> Configures all of the resources in the resource group by applying the recommended
    #            configurations. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute grouping_type
    #   <p>Application Insights can create applications based on a resource group or on an account.
    #         To create an account-based application using all of the resources in the account, set this parameter to <code>ACCOUNT_BASED</code>.
    #         </p>
    #
    #   Enum, one of: ["ACCOUNT_BASED"]
    #
    #   @return [String]
    #
    CreateApplicationInput = ::Struct.new(
      :resource_group_name,
      :ops_center_enabled,
      :cwe_monitor_enabled,
      :ops_item_sns_topic_arn,
      :tags,
      :auto_config_enabled,
      :auto_create,
      :grouping_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_info
    #   <p>Information about the application.</p>
    #
    #   @return [ApplicationInfo]
    #
    CreateApplicationOutput = ::Struct.new(
      :application_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_list
    #   <p>The list of resource ARNs that belong to the component.</p>
    #
    #   @return [Array<String>]
    #
    CreateComponentInput = ::Struct.new(
      :resource_group_name,
      :component_name,
      :resource_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateComponentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute pattern_set_name
    #   <p>The name of the log pattern set.</p>
    #
    #   @return [String]
    #
    # @!attribute pattern_name
    #   <p>The name of the log pattern.</p>
    #
    #   @return [String]
    #
    # @!attribute pattern
    #   <p>The log pattern. The pattern must be DFA compatible. Patterns that utilize forward
    #            lookahead or backreference constructions are not supported.</p>
    #
    #   @return [String]
    #
    # @!attribute rank
    #   <p>Rank of the log pattern. Must be a value between <code>1</code> and
    #               <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set
    #            your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will
    #            be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be
    #            last to get matched. When you configure custom log patterns from the console, a
    #               <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A
    #               <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a
    #               <code>High</code> severity pattern translates to a <code>250,000</code> rank. Rank
    #            values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for
    #            AWS-provided patterns. </p>
    #
    #   @return [Integer]
    #
    CreateLogPatternInput = ::Struct.new(
      :resource_group_name,
      :pattern_set_name,
      :pattern_name,
      :pattern,
      :rank,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.rank ||= 0
      end

    end

    # @!attribute log_pattern
    #   <p>The successfully created log pattern.</p>
    #
    #   @return [LogPattern]
    #
    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    CreateLogPatternOutput = ::Struct.new(
      :log_pattern,
      :resource_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    DeleteApplicationInput = ::Struct.new(
      :resource_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    DeleteComponentInput = ::Struct.new(
      :resource_group_name,
      :component_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteComponentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute pattern_set_name
    #   <p>The name of the log pattern set.</p>
    #
    #   @return [String]
    #
    # @!attribute pattern_name
    #   <p>The name of the log pattern.</p>
    #
    #   @return [String]
    #
    DeleteLogPatternInput = ::Struct.new(
      :resource_group_name,
      :pattern_set_name,
      :pattern_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLogPatternOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    DescribeApplicationInput = ::Struct.new(
      :resource_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_info
    #   <p>Information about the application.</p>
    #
    #   @return [ApplicationInfo]
    #
    DescribeApplicationOutput = ::Struct.new(
      :application_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    DescribeComponentConfigurationInput = ::Struct.new(
      :resource_group_name,
      :component_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute monitor
    #   <p>Indicates whether the application component is monitored.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tier
    #   <p>The tier of the application component. Supported tiers include
    #            <code>DOT_NET_CORE</code>, <code>DOT_NET_WORKER</code>, <code>DOT_NET_WEB</code>,
    #               <code>SQL_SERVER</code>, and <code>DEFAULT</code>
    #            </p>
    #
    #   Enum, one of: ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY"]
    #
    #   @return [String]
    #
    # @!attribute component_configuration
    #   <p>The configuration settings of the component. The value is the escaped JSON of the
    #            configuration.</p>
    #
    #   @return [String]
    #
    DescribeComponentConfigurationOutput = ::Struct.new(
      :monitor,
      :tier,
      :component_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute tier
    #   <p>The tier of the application component.</p>
    #
    #   Enum, one of: ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY"]
    #
    #   @return [String]
    #
    DescribeComponentConfigurationRecommendationInput = ::Struct.new(
      :resource_group_name,
      :component_name,
      :tier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute component_configuration
    #   <p>The recommended configuration settings of the component. The value is the escaped JSON
    #            of the configuration.</p>
    #
    #   @return [String]
    #
    DescribeComponentConfigurationRecommendationOutput = ::Struct.new(
      :component_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    DescribeComponentInput = ::Struct.new(
      :resource_group_name,
      :component_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_component
    #   <p>Describes a standalone resource or similarly grouped resources that the application is
    #            made up of.</p>
    #
    #   @return [ApplicationComponent]
    #
    # @!attribute resource_list
    #   <p>The list of resource ARNs that belong to the component.</p>
    #
    #   @return [Array<String>]
    #
    DescribeComponentOutput = ::Struct.new(
      :application_component,
      :resource_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute pattern_set_name
    #   <p>The name of the log pattern set.</p>
    #
    #   @return [String]
    #
    # @!attribute pattern_name
    #   <p>The name of the log pattern.</p>
    #
    #   @return [String]
    #
    DescribeLogPatternInput = ::Struct.new(
      :resource_group_name,
      :pattern_set_name,
      :pattern_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute log_pattern
    #   <p>The successfully created log pattern.</p>
    #
    #   @return [LogPattern]
    #
    DescribeLogPatternOutput = ::Struct.new(
      :resource_group_name,
      :log_pattern,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute observation_id
    #   <p>The ID of the observation.</p>
    #
    #   @return [String]
    #
    DescribeObservationInput = ::Struct.new(
      :observation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute observation
    #   <p>Information about the observation.</p>
    #
    #   @return [Observation]
    #
    DescribeObservationOutput = ::Struct.new(
      :observation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute problem_id
    #   <p>The ID of the problem.</p>
    #
    #   @return [String]
    #
    DescribeProblemInput = ::Struct.new(
      :problem_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute problem_id
    #   <p>The ID of the problem.</p>
    #
    #   @return [String]
    #
    DescribeProblemObservationsInput = ::Struct.new(
      :problem_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute related_observations
    #   <p>Observations related to the problem.</p>
    #
    #   @return [RelatedObservations]
    #
    DescribeProblemObservationsOutput = ::Struct.new(
      :related_observations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute problem
    #   <p>Information about the problem. </p>
    #
    #   @return [Problem]
    #
    DescribeProblemOutput = ::Struct.new(
      :problem,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DiscoveryType
    #
    module DiscoveryType
      # No documentation available.
      #
      RESOURCE_GROUP_BASED = "RESOURCE_GROUP_BASED"

      # No documentation available.
      #
      ACCOUNT_BASED = "ACCOUNT_BASED"
    end

    # Includes enum constants for FeedbackKey
    #
    module FeedbackKey
      # No documentation available.
      #
      INSIGHTS_FEEDBACK = "INSIGHTS_FEEDBACK"
    end

    # Includes enum constants for FeedbackValue
    #
    module FeedbackValue
      # No documentation available.
      #
      NOT_SPECIFIED = "NOT_SPECIFIED"

      # No documentation available.
      #
      USEFUL = "USEFUL"

      # No documentation available.
      #
      NOT_USEFUL = "NOT_USEFUL"
    end

    # Includes enum constants for GroupingType
    #
    module GroupingType
      # No documentation available.
      #
      ACCOUNT_BASED = "ACCOUNT_BASED"
    end

    # <p>The server encountered an internal error and is unable to complete the request.</p>
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

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #
    #   @return [String]
    #
    ListApplicationsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_info_list
    #   <p>The list of applications.</p>
    #
    #   @return [Array<ApplicationInfo>]
    #
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results. This value is <code>null</code>
    #            when there are no more results to return. </p>
    #
    #   @return [String]
    #
    ListApplicationsOutput = ::Struct.new(
      :application_info_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #
    #   @return [String]
    #
    ListComponentsInput = ::Struct.new(
      :resource_group_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_component_list
    #   <p>The list of application components.</p>
    #
    #   @return [Array<ApplicationComponent>]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #
    #   @return [String]
    #
    ListComponentsOutput = ::Struct.new(
      :application_component_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>Resource group to which the application belongs. </p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The start time of the event. </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end time of the event.</p>
    #
    #   @return [Time]
    #
    # @!attribute event_status
    #   <p>The status of the configuration update event. Possible values include INFO, WARN, and
    #            ERROR.</p>
    #
    #   Enum, one of: ["INFO", "WARN", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The maximum number of results returned by <code>ListConfigurationHistory</code> in
    #            paginated output. When this parameter is used, <code>ListConfigurationHistory</code>
    #            returns only <code>MaxResults</code> in a single page along with a <code>NextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListConfigurationHistory</code> request with the returned
    #               <code>NextToken</code> value. If this parameter is not used, then
    #               <code>ListConfigurationHistory</code> returns all results. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>NextToken</code> value returned from a previous paginated
    #               <code>ListConfigurationHistory</code> request where <code>MaxResults</code> was used and
    #            the results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>NextToken</code> value. This value is
    #               <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListConfigurationHistoryInput = ::Struct.new(
      :resource_group_name,
      :start_time,
      :end_time,
      :event_status,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_list
    #   <p> The list of configuration events and their corresponding details. </p>
    #
    #   @return [Array<ConfigurationEvent>]
    #
    # @!attribute next_token
    #   <p>The <code>NextToken</code> value to include in a future
    #               <code>ListConfigurationHistory</code> request. When the results of a
    #               <code>ListConfigurationHistory</code> request exceed <code>MaxResults</code>, this value
    #            can be used to retrieve the next page of results. This value is <code>null</code> when
    #            there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListConfigurationHistoryOutput = ::Struct.new(
      :event_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #
    #   @return [String]
    #
    ListLogPatternSetsInput = ::Struct.new(
      :resource_group_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute log_pattern_sets
    #   <p>The list of log pattern sets.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results. This value is <code>null</code>
    #            when there are no more results to return. </p>
    #
    #   @return [String]
    #
    ListLogPatternSetsOutput = ::Struct.new(
      :resource_group_name,
      :log_pattern_sets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute pattern_set_name
    #   <p>The name of the log pattern set.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #
    #   @return [String]
    #
    ListLogPatternsInput = ::Struct.new(
      :resource_group_name,
      :pattern_set_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute log_patterns
    #   <p>The list of log patterns.</p>
    #
    #   @return [Array<LogPattern>]
    #
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results. This value is <code>null</code>
    #            when there are no more results to return. </p>
    #
    #   @return [String]
    #
    ListLogPatternsOutput = ::Struct.new(
      :resource_group_name,
      :log_patterns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time when the problem was detected, in epoch seconds. If you don't specify a time
    #            frame for the request, problems within the past seven days are returned.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time when the problem ended, in epoch seconds. If not specified, problems within the
    #            past seven days are returned.</p>
    #
    #   @return [Time]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p> The name of the component. </p>
    #
    #   @return [String]
    #
    ListProblemsInput = ::Struct.new(
      :resource_group_name,
      :start_time,
      :end_time,
      :max_results,
      :next_token,
      :component_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute problem_list
    #   <p>The list of problems. </p>
    #
    #   @return [Array<Problem>]
    #
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results. This value is <code>null</code>
    #            when there are no more results to return. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_group_name
    #   <p> The name of the resource group. </p>
    #
    #   @return [String]
    #
    ListProblemsOutput = ::Struct.new(
      :problem_list,
      :next_token,
      :resource_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the application that you want to retrieve tag
    #            information for.</p>
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
    #   <p>An array that lists all the tags that are associated with the application. Each tag
    #            consists of a required tag key (<code>Key</code>) and an associated tag value
    #               (<code>Value</code>).</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LogFilter
    #
    module LogFilter
      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      WARN = "WARN"

      # No documentation available.
      #
      INFO = "INFO"
    end

    # <p>An object that defines the log patterns that belongs to a
    #          <code>LogPatternSet</code>.</p>
    #
    # @!attribute pattern_set_name
    #   <p>The name of the log pattern. A log pattern name can contain as many as 30 characters,
    #            and it cannot be empty. The characters can be Unicode letters, digits, or one of the
    #            following symbols: period, dash, underscore.</p>
    #
    #   @return [String]
    #
    # @!attribute pattern_name
    #   <p>The name of the log pattern. A log pattern name can contain as many as 50 characters,
    #            and it cannot be empty. The characters can be Unicode letters, digits, or one of the
    #            following symbols: period, dash, underscore.</p>
    #
    #   @return [String]
    #
    # @!attribute pattern
    #   <p>A regular expression that defines the log pattern. A log pattern can contain as many as
    #            50 characters, and it cannot be empty. The pattern must be DFA compatible. Patterns that
    #            utilize forward lookahead or backreference constructions are not supported.</p>
    #
    #   @return [String]
    #
    # @!attribute rank
    #   <p>Rank of the log pattern. Must be a value between <code>1</code> and
    #               <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set
    #            your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will
    #            be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be
    #            last to get matched. When you configure custom log patterns from the console, a
    #               <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A
    #               <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a
    #               <code>High</code> severity pattern translates to a <code>250,000</code> rank. Rank
    #            values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for
    #            AWS-provided patterns. </p>
    #
    #   @return [Integer]
    #
    LogPattern = ::Struct.new(
      :pattern_set_name,
      :pattern_name,
      :pattern,
      :rank,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.rank ||= 0
      end

    end

    # <p>Describes an anomaly or error with the application.</p>
    #
    # @!attribute id
    #   <p>The ID of the observation type.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time when the observation was first detected, in epoch seconds.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time when the observation ended, in epoch seconds.</p>
    #
    #   @return [Time]
    #
    # @!attribute source_type
    #   <p>The source type of the observation.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>The source resource ARN of the observation.</p>
    #
    #   @return [String]
    #
    # @!attribute log_group
    #   <p>The log group name.</p>
    #
    #   @return [String]
    #
    # @!attribute line_time
    #   <p>The timestamp in the CloudWatch Logs that specifies when the matched line
    #            occurred.</p>
    #
    #   @return [Time]
    #
    # @!attribute log_text
    #   <p>The log text of the observation.</p>
    #
    #   @return [String]
    #
    # @!attribute log_filter
    #   <p>The log filter of the observation.</p>
    #
    #   Enum, one of: ["ERROR", "WARN", "INFO"]
    #
    #   @return [String]
    #
    # @!attribute metric_namespace
    #   <p>The namespace of the observation metric.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_name
    #   <p>The name of the observation metric.</p>
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit of the source observation metric.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the source observation metric.</p>
    #
    #   @return [Float]
    #
    # @!attribute cloud_watch_event_id
    #   <p> The ID of the CloudWatch Event-based observation related to the detected problem.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_event_source
    #   <p> The source of the CloudWatch Event. </p>
    #
    #   Enum, one of: ["EC2", "CODE_DEPLOY", "HEALTH", "RDS"]
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_event_detail_type
    #   <p> The detail type of the CloudWatch Event-based observation, for example, <code>EC2
    #               Instance State-change Notification</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute health_event_arn
    #   <p> The Amazon Resource Name (ARN) of the AWS Health Event-based observation.</p>
    #
    #   @return [String]
    #
    # @!attribute health_service
    #   <p> The service to which the AWS Health Event belongs, such as EC2. </p>
    #
    #   @return [String]
    #
    # @!attribute health_event_type_code
    #   <p> The type of the AWS Health event, for example,
    #               <code>AWS_EC2_POWER_CONNECTIVITY_ISSUE</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute health_event_type_category
    #   <p> The category of the AWS Health event, such as <code>issue</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute health_event_description
    #   <p> The description of the AWS Health event provided by the service, such as Amazon EC2.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute code_deploy_deployment_id
    #   <p> The deployment ID of the CodeDeploy-based observation related to the detected problem.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute code_deploy_deployment_group
    #   <p> The deployment group to which the CodeDeploy deployment belongs. </p>
    #
    #   @return [String]
    #
    # @!attribute code_deploy_state
    #   <p> The status of the CodeDeploy deployment, for example <code>SUCCESS</code> or <code>
    #               FAILURE</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute code_deploy_application
    #   <p> The CodeDeploy application to which the deployment belongs. </p>
    #
    #   @return [String]
    #
    # @!attribute code_deploy_instance_group_id
    #   <p> The instance group to which the CodeDeploy instance belongs. </p>
    #
    #   @return [String]
    #
    # @!attribute ec2_state
    #   <p> The state of the instance, such as <code>STOPPING</code> or <code>TERMINATING</code>.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute rds_event_categories
    #   <p> The category of an RDS event. </p>
    #
    #   @return [String]
    #
    # @!attribute rds_event_message
    #   <p> The message of an RDS event. </p>
    #
    #   @return [String]
    #
    # @!attribute s3_event_name
    #   <p> The name of the S3 CloudWatch Event-based observation. </p>
    #
    #   @return [String]
    #
    # @!attribute states_execution_arn
    #   <p> The Amazon Resource Name (ARN) of the step function execution-based observation.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute states_arn
    #   <p> The Amazon Resource Name (ARN) of the step function-based observation. </p>
    #
    #   @return [String]
    #
    # @!attribute states_status
    #   <p> The status of the step function-related observation. </p>
    #
    #   @return [String]
    #
    # @!attribute states_input
    #   <p> The input to the step function-based observation. </p>
    #
    #   @return [String]
    #
    # @!attribute ebs_event
    #   <p> The type of EBS CloudWatch event, such as <code>createVolume</code>,
    #               <code>deleteVolume</code> or <code>attachVolume</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute ebs_result
    #   <p> The result of an EBS CloudWatch event, such as <code>failed</code> or
    #               <code>succeeded</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute ebs_cause
    #   <p> The cause of an EBS CloudWatch event. </p>
    #
    #   @return [String]
    #
    # @!attribute ebs_request_id
    #   <p> The request ID of an EBS CloudWatch event. </p>
    #
    #   @return [String]
    #
    # @!attribute x_ray_fault_percent
    #   <p> The X-Ray request fault percentage for this node. </p>
    #
    #   @return [Integer]
    #
    # @!attribute x_ray_throttle_percent
    #   <p> The X-Ray request throttle percentage for this node. </p>
    #
    #   @return [Integer]
    #
    # @!attribute x_ray_error_percent
    #   <p> The X-Ray request error percentage for this node. </p>
    #
    #   @return [Integer]
    #
    # @!attribute x_ray_request_count
    #   <p> The X-Ray request count for this node. </p>
    #
    #   @return [Integer]
    #
    # @!attribute x_ray_request_average_latency
    #   <p> The X-Ray node request average latency for this node. </p>
    #
    #   @return [Integer]
    #
    # @!attribute x_ray_node_name
    #   <p> The name of the X-Ray node. </p>
    #
    #   @return [String]
    #
    # @!attribute x_ray_node_type
    #   <p> The type of the X-Ray node. </p>
    #
    #   @return [String]
    #
    Observation = ::Struct.new(
      :id,
      :start_time,
      :end_time,
      :source_type,
      :source_arn,
      :log_group,
      :line_time,
      :log_text,
      :log_filter,
      :metric_namespace,
      :metric_name,
      :unit,
      :value,
      :cloud_watch_event_id,
      :cloud_watch_event_source,
      :cloud_watch_event_detail_type,
      :health_event_arn,
      :health_service,
      :health_event_type_code,
      :health_event_type_category,
      :health_event_description,
      :code_deploy_deployment_id,
      :code_deploy_deployment_group,
      :code_deploy_state,
      :code_deploy_application,
      :code_deploy_instance_group_id,
      :ec2_state,
      :rds_event_categories,
      :rds_event_message,
      :s3_event_name,
      :states_execution_arn,
      :states_arn,
      :states_status,
      :states_input,
      :ebs_event,
      :ebs_result,
      :ebs_cause,
      :ebs_request_id,
      :x_ray_fault_percent,
      :x_ray_throttle_percent,
      :x_ray_error_percent,
      :x_ray_request_count,
      :x_ray_request_average_latency,
      :x_ray_node_name,
      :x_ray_node_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OsType
    #
    module OsType
      # No documentation available.
      #
      WINDOWS = "WINDOWS"

      # No documentation available.
      #
      LINUX = "LINUX"
    end

    # <p>Describes a problem that is detected by correlating observations.</p>
    #
    # @!attribute id
    #   <p>The ID of the problem.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The name of the problem.</p>
    #
    #   @return [String]
    #
    # @!attribute insights
    #   <p>A detailed analysis of the problem using machine learning.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the problem.</p>
    #
    #   Enum, one of: ["IGNORE", "RESOLVED", "PENDING", "RECURRING"]
    #
    #   @return [String]
    #
    # @!attribute affected_resource
    #   <p>The resource affected by the problem.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time when the problem started, in epoch seconds.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time when the problem ended, in epoch seconds.</p>
    #
    #   @return [Time]
    #
    # @!attribute severity_level
    #   <p>A measure of the level of impact of the problem.</p>
    #
    #   Enum, one of: ["Informative", "Low", "Medium", "High"]
    #
    #   @return [String]
    #
    # @!attribute resource_group_name
    #   <p>The name of the resource group affected by the problem.</p>
    #
    #   @return [String]
    #
    # @!attribute feedback
    #   <p>Feedback provided by the user about the problem.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute recurring_count
    #   <p> The number of times that the same problem reoccurred after the first time it was
    #            resolved. </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_recurrence_time
    #   <p> The last time that the problem reoccurred after its last resolution. </p>
    #
    #   @return [Time]
    #
    Problem = ::Struct.new(
      :id,
      :title,
      :insights,
      :status,
      :affected_resource,
      :start_time,
      :end_time,
      :severity_level,
      :resource_group_name,
      :feedback,
      :recurring_count,
      :last_recurrence_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes observations related to the problem.</p>
    #
    # @!attribute observation_list
    #   <p>The list of observations related to the problem.</p>
    #
    #   @return [Array<Observation>]
    #
    RelatedObservations = ::Struct.new(
      :observation_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource is already created or in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource does not exist in the customer account.</p>
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

    # Includes enum constants for SeverityLevel
    #
    module SeverityLevel
      # No documentation available.
      #
      Informative = "Informative"

      # No documentation available.
      #
      Low = "Low"

      # No documentation available.
      #
      Medium = "Medium"

      # No documentation available.
      #
      High = "High"
    end

    # Includes enum constants for Status
    #
    module Status
      # No documentation available.
      #
      IGNORE = "IGNORE"

      # No documentation available.
      #
      RESOLVED = "RESOLVED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      RECURRING = "RECURRING"
    end

    # <p>An object that defines the tags associated with an application. A
    #             <i>tag</i> is a label that you optionally define and associate with an
    #          application. Tags can help you categorize and manage resources in different ways, such as
    #          by purpose, owner, environment, or other criteria.</p>
    #          <p>Each tag consists of a required <i>tag key</i> and an associated
    #             <i>tag value</i>, both of which you define. A tag key is a general label
    #          that acts as a category for a more specific tag value. A tag value acts as a descriptor
    #          within a tag key. A tag key can contain as many as 128 characters. A tag value can contain
    #          as many as 256 characters. The characters can be Unicode letters, digits, white space, or
    #          one of the following symbols: _ . : / = + -. The following additional restrictions apply to
    #          tags:</p>
    #          <ul>
    #             <li>
    #                <p>Tag keys and values are case sensitive.</p>
    #             </li>
    #             <li>
    #                <p>For each associated resource, each tag key must be unique and it can have only one
    #                value.</p>
    #             </li>
    #             <li>
    #                <p>The <code>aws:</code> prefix is reserved for use by AWS; you can’t use it in any
    #                tag keys or values that you define. In addition, you can't edit or remove tag keys or
    #                values that use this prefix. </p>
    #             </li>
    #          </ul>
    #
    # @!attribute key
    #   <p>One part of a key-value pair that defines a tag. The maximum length of a tag key is 128
    #            characters. The minimum length is 1 character.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The optional part of a key-value pair that defines a tag. The maximum length of a tag
    #            value is 256 characters. The minimum length is 0 characters. If you don't want an
    #            application to have a specific tag value, don't specify a value for this parameter.</p>
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the application that you want to add one or more tags
    #            to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags that to add to the application. A tag consists of a required tag key
    #               (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum length
    #            of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
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

    # <p>Tags are already registered for the specified application ARN.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TagsAlreadyExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Tier
    #
    module Tier
      # No documentation available.
      #
      CUSTOM = "CUSTOM"

      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      DOT_NET_CORE = "DOT_NET_CORE"

      # No documentation available.
      #
      DOT_NET_WORKER = "DOT_NET_WORKER"

      # No documentation available.
      #
      DOT_NET_WEB_TIER = "DOT_NET_WEB_TIER"

      # No documentation available.
      #
      DOT_NET_WEB = "DOT_NET_WEB"

      # No documentation available.
      #
      SQL_SERVER = "SQL_SERVER"

      # No documentation available.
      #
      SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP = "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP"

      # No documentation available.
      #
      MYSQL = "MYSQL"

      # No documentation available.
      #
      POSTGRESQL = "POSTGRESQL"

      # No documentation available.
      #
      JAVA_JMX = "JAVA_JMX"

      # No documentation available.
      #
      ORACLE = "ORACLE"

      # No documentation available.
      #
      SAP_HANA_MULTI_NODE = "SAP_HANA_MULTI_NODE"

      # No documentation available.
      #
      SAP_HANA_SINGLE_NODE = "SAP_HANA_SINGLE_NODE"

      # No documentation available.
      #
      SAP_HANA_HIGH_AVAILABILITY = "SAP_HANA_HIGH_AVAILABILITY"

      # No documentation available.
      #
      SQL_SERVER_FAILOVER_CLUSTER_INSTANCE = "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE"

      # No documentation available.
      #
      SHAREPOINT = "SHAREPOINT"

      # No documentation available.
      #
      ACTIVE_DIRECTORY = "ACTIVE_DIRECTORY"
    end

    # <p>The number of the provided tags is beyond the limit, or the number of total tags you are
    #          trying to attach to the specified resource exceeds the limit.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The name of the resource with too many tags.</p>
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the application that you want to remove one or more
    #            tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tags (tag keys) that you want to remove from the resource. When you specify a tag
    #            key, the action removes both that key and its associated tag value.</p>
    #            <p>To remove more than one tag from the application, append the <code>TagKeys</code>
    #            parameter and argument for each additional tag to remove, separated by an ampersand.
    #         </p>
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

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute ops_center_enabled
    #   <p> When set to <code>true</code>, creates opsItems for any problems detected on an
    #            application. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute cwe_monitor_enabled
    #   <p> Indicates whether Application Insights can listen to CloudWatch events for the
    #            application resources, such as <code>instance terminated</code>, <code>failed
    #               deployment</code>, and others. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute ops_item_sns_topic_arn
    #   <p> The SNS topic provided to Application Insights that is associated to the created
    #            opsItem. Allows you to receive notifications for updates to the opsItem.</p>
    #
    #   @return [String]
    #
    # @!attribute remove_sns_topic
    #   <p> Disassociates the SNS topic from the opsItem created for detected problems.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_config_enabled
    #   <p> Turns auto-configuration on or off. </p>
    #
    #   @return [Boolean]
    #
    UpdateApplicationInput = ::Struct.new(
      :resource_group_name,
      :ops_center_enabled,
      :cwe_monitor_enabled,
      :ops_item_sns_topic_arn,
      :remove_sns_topic,
      :auto_config_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_info
    #   <p>Information about the application. </p>
    #
    #   @return [ApplicationInfo]
    #
    UpdateApplicationOutput = ::Struct.new(
      :application_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute monitor
    #   <p>Indicates whether the application component is monitored.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tier
    #   <p>The tier of the application component.</p>
    #
    #   Enum, one of: ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY"]
    #
    #   @return [String]
    #
    # @!attribute component_configuration
    #   <p>The configuration settings of the component. The value is the escaped JSON of the
    #            configuration. For more information about the JSON format, see <a href="https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/working-with-json.html">Working with JSON</a>. You can send a request to
    #               <code>DescribeComponentConfigurationRecommendation</code> to see the recommended
    #            configuration for a component. For the complete format of the component configuration file,
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/component-config.html">Component Configuration</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_config_enabled
    #   <p> Automatically configures the component by applying the recommended configurations.
    #         </p>
    #
    #   @return [Boolean]
    #
    UpdateComponentConfigurationInput = ::Struct.new(
      :resource_group_name,
      :component_name,
      :monitor,
      :tier,
      :component_configuration,
      :auto_config_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateComponentConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute new_component_name
    #   <p>The new name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_list
    #   <p>The list of resource ARNs that belong to the component.</p>
    #
    #   @return [Array<String>]
    #
    UpdateComponentInput = ::Struct.new(
      :resource_group_name,
      :component_name,
      :new_component_name,
      :resource_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateComponentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute pattern_set_name
    #   <p>The name of the log pattern set.</p>
    #
    #   @return [String]
    #
    # @!attribute pattern_name
    #   <p>The name of the log pattern.</p>
    #
    #   @return [String]
    #
    # @!attribute pattern
    #   <p>The log pattern. The pattern must be DFA compatible. Patterns that utilize forward
    #            lookahead or backreference constructions are not supported.</p>
    #
    #   @return [String]
    #
    # @!attribute rank
    #   <p>Rank of the log pattern. Must be a value between <code>1</code> and
    #               <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set
    #            your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will
    #            be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be
    #            last to get matched. When you configure custom log patterns from the console, a
    #               <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A
    #               <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a
    #               <code>High</code> severity pattern translates to a <code>250,000</code> rank. Rank
    #            values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for
    #            AWS-provided patterns. </p>
    #
    #   @return [Integer]
    #
    UpdateLogPatternInput = ::Struct.new(
      :resource_group_name,
      :pattern_set_name,
      :pattern_name,
      :pattern,
      :rank,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.rank ||= 0
      end

    end

    # @!attribute resource_group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute log_pattern
    #   <p>The successfully created log pattern.</p>
    #
    #   @return [LogPattern]
    #
    UpdateLogPatternOutput = ::Struct.new(
      :resource_group_name,
      :log_pattern,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameter is not valid.</p>
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
