# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatchLogs
  module Types

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) of the CMK to use when encrypting log data. This must be a symmetric CMK.
    #         For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html arn-syntax-kms">Amazon Resource Names - Key Management Service</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using Symmetric and Asymmetric Keys</a>.</p>
    #
    #   @return [String]
    #
    AssociateKmsKeyInput = ::Struct.new(
      :log_group_name,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateKmsKeyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the export task.</p>
    #
    #   @return [String]
    #
    CancelExportTaskInput = ::Struct.new(
      :task_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelExportTaskOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_name
    #   <p>The name of the export task.</p>
    #
    #   @return [String]
    #
    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute log_stream_name_prefix
    #   <p>Export only log streams that match the provided prefix. If you don't
    #         specify a value, no prefix filter is applied.</p>
    #
    #   @return [String]
    #
    # @!attribute from
    #   <p>The start time of the range for the request, expressed as the number of milliseconds
    #         after Jan 1, 1970 00:00:00 UTC. Events with a timestamp earlier than this time are not
    #         exported.</p>
    #
    #   @return [Integer]
    #
    # @!attribute to
    #   <p>The end time of the range for the request, expressed as the number of milliseconds
    #         after Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this time are not
    #         exported.</p>
    #
    #   @return [Integer]
    #
    # @!attribute destination
    #   <p>The name of S3 bucket for the exported log data. The bucket must be in the same Amazon Web Services region.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_prefix
    #   <p>The prefix used as the start of the key for every object exported. If you don't
    #         specify a value, the default is <code>exportedlogs</code>.</p>
    #
    #   @return [String]
    #
    CreateExportTaskInput = ::Struct.new(
      :task_name,
      :log_group_name,
      :log_stream_name_prefix,
      :from,
      :to,
      :destination,
      :destination_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the export task.</p>
    #
    #   @return [String]
    #
    CreateExportTaskOutput = ::Struct.new(
      :task_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) of the CMK to use when encrypting log data.
    #         For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html arn-syntax-kms">Amazon Resource Names - Key Management Service</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value pairs to use for the tags.</p>
    #            <p>CloudWatch Logs doesn’t support IAM policies that prevent users from assigning specified tags to
    #         log groups using the <code>aws:Resource/<i>key-name</i>
    #               </code> or <code>aws:TagKeys</code> condition keys.
    #         For more information about using tags to control access, see
    #         <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Controlling access to Amazon Web Services resources using tags</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateLogGroupInput = ::Struct.new(
      :log_group_name,
      :kms_key_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateLogGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute log_stream_name
    #   <p>The name of the log stream.</p>
    #
    #   @return [String]
    #
    CreateLogStreamInput = ::Struct.new(
      :log_group_name,
      :log_stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateLogStreamOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The event was already logged.</p>
    #
    # @!attribute expected_sequence_token
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DataAlreadyAcceptedException = ::Struct.new(
      :expected_sequence_token,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute destination_name
    #   <p>The name of the destination.</p>
    #
    #   @return [String]
    #
    DeleteDestinationInput = ::Struct.new(
      :destination_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    DeleteLogGroupInput = ::Struct.new(
      :log_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLogGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute log_stream_name
    #   <p>The name of the log stream.</p>
    #
    #   @return [String]
    #
    DeleteLogStreamInput = ::Struct.new(
      :log_group_name,
      :log_stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLogStreamOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_name
    #   <p>The name of the metric filter.</p>
    #
    #   @return [String]
    #
    DeleteMetricFilterInput = ::Struct.new(
      :log_group_name,
      :filter_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteMetricFilterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_definition_id
    #   <p>The ID of the query definition that you want to delete. You can use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html">DescribeQueryDefinitions</a> to retrieve the
    #         IDs of your saved query definitions.</p>
    #
    #   @return [String]
    #
    DeleteQueryDefinitionInput = ::Struct.new(
      :query_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute success
    #   <p>A value of TRUE indicates that the operation succeeded. FALSE indicates that the operation
    #         failed.</p>
    #
    #   @return [Boolean]
    #
    DeleteQueryDefinitionOutput = ::Struct.new(
      :success,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.success ||= false
      end
    end

    # @!attribute policy_name
    #   <p>The name of the policy to be revoked. This parameter is required.</p>
    #
    #   @return [String]
    #
    DeleteResourcePolicyInput = ::Struct.new(
      :policy_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResourcePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    DeleteRetentionPolicyInput = ::Struct.new(
      :log_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRetentionPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_name
    #   <p>The name of the subscription filter.</p>
    #
    #   @return [String]
    #
    DeleteSubscriptionFilterInput = ::Struct.new(
      :log_group_name,
      :filter_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSubscriptionFilterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute destination_name_prefix
    #   <p>The prefix to match. If you don't specify a value, no prefix filter is applied.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
    #
    #   @return [Integer]
    #
    DescribeDestinationsInput = ::Struct.new(
      :destination_name_prefix,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute destinations
    #   <p>The destinations.</p>
    #
    #   @return [Array<Destination>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. The token expires after 24 hours.</p>
    #
    #   @return [String]
    #
    DescribeDestinationsOutput = ::Struct.new(
      :destinations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the export task. Specifying a task ID filters the results to zero or one export tasks.</p>
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The status code of the export task. Specifying a status code filters the results to zero or more export tasks.</p>
    #
    #   Enum, one of: ["CANCELLED", "COMPLETED", "FAILED", "PENDING", "PENDING_CANCEL", "RUNNING"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
    #
    #   @return [Integer]
    #
    DescribeExportTasksInput = ::Struct.new(
      :task_id,
      :status_code,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_tasks
    #   <p>The export tasks.</p>
    #
    #   @return [Array<ExportTask>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. The token expires after 24 hours.</p>
    #
    #   @return [String]
    #
    DescribeExportTasksOutput = ::Struct.new(
      :export_tasks,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name_prefix
    #   <p>The prefix to match.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
    #
    #   @return [Integer]
    #
    DescribeLogGroupsInput = ::Struct.new(
      :log_group_name_prefix,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_groups
    #   <p>The log groups.</p>
    #            <p>If the <code>retentionInDays</code> value is not included for a log group, then that log group
    #       is set to have its events never expire.</p>
    #
    #   @return [Array<LogGroup>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. The token expires after 24 hours.</p>
    #
    #   @return [String]
    #
    DescribeLogGroupsOutput = ::Struct.new(
      :log_groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute log_stream_name_prefix
    #   <p>The prefix to match.</p>
    #            <p>If <code>orderBy</code> is <code>LastEventTime</code>, you cannot specify this
    #         parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute order_by
    #   <p>If the value is <code>LogStreamName</code>, the results are ordered by log stream name.
    #         If the value is <code>LastEventTime</code>, the results are ordered by the event time.
    #         The default value is <code>LogStreamName</code>.</p>
    #            <p>If you order the results by event time, you cannot specify the <code>logStreamNamePrefix</code> parameter.</p>
    #            <p>
    #               <code>lastEventTimestamp</code> represents the time of the most recent log event in the
    #         log stream in CloudWatch Logs. This number is expressed as the number of milliseconds after
    #         Jan 1, 1970 00:00:00 UTC. <code>lastEventTimestamp</code> updates on an eventual consistency
    #         basis. It typically updates in less than an hour from ingestion, but in rare situations might
    #         take longer.</p>
    #
    #   Enum, one of: ["LogStreamName", "LastEventTime"]
    #
    #   @return [String]
    #
    # @!attribute descending
    #   <p>If the value is true, results are returned in descending order.
    #         If the value is to false, results are returned in ascending order.
    #         The default value is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
    #
    #   @return [Integer]
    #
    DescribeLogStreamsInput = ::Struct.new(
      :log_group_name,
      :log_stream_name_prefix,
      :order_by,
      :descending,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_streams
    #   <p>The log streams.</p>
    #
    #   @return [Array<LogStream>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. The token expires after 24 hours.</p>
    #
    #   @return [String]
    #
    DescribeLogStreamsOutput = ::Struct.new(
      :log_streams,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_name_prefix
    #   <p>The prefix to match. CloudWatch Logs uses the value you set here
    #       only if you also include the <code>logGroupName</code> parameter in your request.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
    #
    #   @return [Integer]
    #
    # @!attribute metric_name
    #   <p>Filters results to include only those with the specified metric name. If you include this parameter in your request, you
    #       must also include the <code>metricNamespace</code> parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_namespace
    #   <p>Filters results to include only those in the specified namespace. If you include this parameter in your request, you
    #       must also include the <code>metricName</code> parameter.</p>
    #
    #   @return [String]
    #
    DescribeMetricFiltersInput = ::Struct.new(
      :log_group_name,
      :filter_name_prefix,
      :next_token,
      :limit,
      :metric_name,
      :metric_namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute metric_filters
    #   <p>The metric filters.</p>
    #
    #   @return [Array<MetricFilter>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. The token expires after 24 hours.</p>
    #
    #   @return [String]
    #
    DescribeMetricFiltersOutput = ::Struct.new(
      :metric_filters,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>Limits the returned queries to only those for the specified log group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Limits the returned queries to only those that have the specified status. Valid values are <code>Cancelled</code>,
    #         <code>Complete</code>, <code>Failed</code>, <code>Running</code>, and <code>Scheduled</code>.</p>
    #
    #   Enum, one of: ["Scheduled", "Running", "Complete", "Failed", "Cancelled", "Timeout", "Unknown"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Limits the number of returned queries to the specified number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. The token expires after 24 hours.</p>
    #
    #   @return [String]
    #
    DescribeQueriesInput = ::Struct.new(
      :log_group_name,
      :status,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute queries
    #   <p>The list of queries that match the request.</p>
    #
    #   @return [Array<QueryInfo>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. The token expires after 24 hours.</p>
    #
    #   @return [String]
    #
    DescribeQueriesOutput = ::Struct.new(
      :queries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_definition_name_prefix
    #   <p>Use this parameter to filter your results to only the query definitions that have names that start with the prefix you specify.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Limits the number of returned query definitions to the specified number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. The token expires after 24 hours.</p>
    #
    #   @return [String]
    #
    DescribeQueryDefinitionsInput = ::Struct.new(
      :query_definition_name_prefix,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_definitions
    #   <p>The list of query definitions that match your request.</p>
    #
    #   @return [Array<QueryDefinition>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. The token expires after 24 hours.</p>
    #
    #   @return [String]
    #
    DescribeQueryDefinitionsOutput = ::Struct.new(
      :query_definitions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of items to return. The token expires after 24 hours.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of resource policies to be displayed with one call of this API.</p>
    #
    #   @return [Integer]
    #
    DescribeResourcePoliciesInput = ::Struct.new(
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_policies
    #   <p>The resource policies that exist in this account.</p>
    #
    #   @return [Array<ResourcePolicy>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. The token expires after 24 hours.</p>
    #
    #   @return [String]
    #
    DescribeResourcePoliciesOutput = ::Struct.new(
      :resource_policies,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_name_prefix
    #   <p>The prefix to match. If you don't specify a value, no prefix filter is applied.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
    #
    #   @return [Integer]
    #
    DescribeSubscriptionFiltersInput = ::Struct.new(
      :log_group_name,
      :filter_name_prefix,
      :next_token,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_filters
    #   <p>The subscription filters.</p>
    #
    #   @return [Array<SubscriptionFilter>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. The token expires after 24 hours.</p>
    #
    #   @return [String]
    #
    DescribeSubscriptionFiltersOutput = ::Struct.new(
      :subscription_filters,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a cross-account destination that receives subscription log events.</p>
    #
    # @!attribute destination_name
    #   <p>The name of the destination.</p>
    #
    #   @return [String]
    #
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the physical target where the log events are
    #         delivered (for example, a Kinesis stream).</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>A role for impersonation, used when delivering log events to the target.</p>
    #
    #   @return [String]
    #
    # @!attribute access_policy
    #   <p>An IAM policy document that governs which Amazon Web Services accounts can create subscription filters
    #         against this destination.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of this destination.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The creation time of the destination, expressed as the number of milliseconds after Jan
    #         1, 1970 00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    Destination = ::Struct.new(
      :destination_name,
      :target_arn,
      :role_arn,
      :access_policy,
      :arn,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    DisassociateKmsKeyInput = ::Struct.new(
      :log_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateKmsKeyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Distribution
    #
    module Distribution
      # No documentation available.
      #
      Random = "Random"

      # No documentation available.
      #
      ByLogStream = "ByLogStream"
    end

    # <p>Represents an export task.</p>
    #
    # @!attribute task_id
    #   <p>The ID of the export task.</p>
    #
    #   @return [String]
    #
    # @!attribute task_name
    #   <p>The name of the export task.</p>
    #
    #   @return [String]
    #
    # @!attribute log_group_name
    #   <p>The name of the log group from which logs data was exported.</p>
    #
    #   @return [String]
    #
    # @!attribute from
    #   <p>The start time, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
    #         Events with a timestamp before this time are not exported.</p>
    #
    #   @return [Integer]
    #
    # @!attribute to
    #   <p>The end time, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
    #         Events with a timestamp later than this time are not exported.</p>
    #
    #   @return [Integer]
    #
    # @!attribute destination
    #   <p>The name of the S3 bucket to which the log data was exported.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_prefix
    #   <p>The prefix that was used as the start of Amazon S3 key for every object exported.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the export task.</p>
    #
    #   @return [ExportTaskStatus]
    #
    # @!attribute execution_info
    #   <p>Execution information about the export task.</p>
    #
    #   @return [ExportTaskExecutionInfo]
    #
    ExportTask = ::Struct.new(
      :task_id,
      :task_name,
      :log_group_name,
      :from,
      :to,
      :destination,
      :destination_prefix,
      :status,
      :execution_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the status of an export task.</p>
    #
    # @!attribute creation_time
    #   <p>The creation time of the export task, expressed as the number of milliseconds after Jan
    #         1, 1970 00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    # @!attribute completion_time
    #   <p>The completion time of the export task, expressed as the number of milliseconds after
    #         Jan 1, 1970 00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    ExportTaskExecutionInfo = ::Struct.new(
      :creation_time,
      :completion_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the status of an export task.</p>
    #
    # @!attribute code
    #   <p>The status code of the export task.</p>
    #
    #   Enum, one of: ["CANCELLED", "COMPLETED", "FAILED", "PENDING", "PENDING_CANCEL", "RUNNING"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The status message related to the status code.</p>
    #
    #   @return [String]
    #
    ExportTaskStatus = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExportTaskStatusCode
    #
    module ExportTaskStatusCode
      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      PENDING_CANCEL = "PENDING_CANCEL"

      # No documentation available.
      #
      RUNNING = "RUNNING"
    end

    # @!attribute log_group_name
    #   <p>The name of the log group to search.</p>
    #
    #   @return [String]
    #
    # @!attribute log_stream_names
    #   <p>Filters the results to only logs from the log streams in this list.</p>
    #            <p>If you specify a value for both <code>logStreamNamePrefix</code> and <code>logStreamNames</code>, the action
    #         returns an <code>InvalidParameterException</code> error.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute log_stream_name_prefix
    #   <p>Filters the results to include only events from log streams that have names starting with this prefix.</p>
    #            <p>If you specify a value for both <code>logStreamNamePrefix</code> and <code>logStreamNames</code>, but the value for
    #         <code>logStreamNamePrefix</code> does not match any log stream names specified in <code>logStreamNames</code>, the action
    #       returns an <code>InvalidParameterException</code> error.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The start of the time range, expressed as the number of milliseconds after Jan 1, 1970
    #         00:00:00 UTC. Events with a timestamp before this time are not returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_time
    #   <p>The end of the time range, expressed as the number of milliseconds after Jan 1, 1970
    #         00:00:00 UTC. Events with a timestamp later than this time are not returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filter_pattern
    #   <p>The filter pattern to use. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html">Filter and Pattern Syntax</a>.</p>
    #            <p>If not provided, all the events are matched.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of events to return. (You received this token from a previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of events to return. The default is 10,000 events.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interleaved
    #   <p>If the value is true, the operation makes a best effort to provide responses that
    #         contain events from multiple log streams within the log group, interleaved in a single
    #         response. If the value is false, all the matched log events in the first log stream are
    #         searched first, then those in the next log stream, and so on. The default is false.</p>
    #            <p>
    #               <b>Important:</b> Starting on June 17, 2019, this parameter
    #         is ignored and the value is assumed to be true. The response from this operation always
    #         interleaves events from multiple log streams within a log group.</p>
    #
    #   @deprecated
    #     Starting on June 17, 2019, this parameter will be ignored and the value will be assumed to be true. The response from this operation will always interleave events from multiple log streams within a log group.
    #
    #   @return [Boolean]
    #
    FilterLogEventsInput = ::Struct.new(
      :log_group_name,
      :log_stream_names,
      :log_stream_name_prefix,
      :start_time,
      :end_time,
      :filter_pattern,
      :next_token,
      :limit,
      :interleaved,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute events
    #   <p>The matched events.</p>
    #
    #   @return [Array<FilteredLogEvent>]
    #
    # @!attribute searched_log_streams
    #   <p>
    #               <b>IMPORTANT</b> Starting on May 15, 2020,
    #       this parameter will be deprecated. This parameter will be an empty list
    #       after the deprecation occurs.</p>
    #            <p>Indicates which log streams have been searched and whether each has been searched completely.</p>
    #
    #   @return [Array<SearchedLogStream>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. The token expires after 24 hours.</p>
    #
    #   @return [String]
    #
    FilterLogEventsOutput = ::Struct.new(
      :events,
      :searched_log_streams,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a matched event.</p>
    #
    # @!attribute log_stream_name
    #   <p>The name of the log stream to which this event belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   <p>The time the event occurred, expressed as the number of milliseconds after Jan 1, 1970
    #         00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message
    #   <p>The data contained in the log event.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_time
    #   <p>The time the event was ingested, expressed as the number of milliseconds after Jan 1,
    #         1970 00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    # @!attribute event_id
    #   <p>The ID of the event.</p>
    #
    #   @return [String]
    #
    FilteredLogEvent = ::Struct.new(
      :log_stream_name,
      :timestamp,
      :message,
      :ingestion_time,
      :event_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute log_stream_name
    #   <p>The name of the log stream.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The start of the time range, expressed as the number of milliseconds after Jan 1, 1970
    #         00:00:00 UTC. Events with a timestamp equal to this time or later than this time are included.
    #         Events with a timestamp earlier than this time are not included.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_time
    #   <p>The end of the time range, expressed as the number of milliseconds after Jan 1, 1970
    #         00:00:00 UTC. Events with a timestamp equal to or later than this time are not
    #         included.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of log events returned. If you don't specify a value, the maximum is
    #         as many log events as can fit in a response size of 1 MB, up to 10,000 log events.</p>
    #
    #   @return [Integer]
    #
    # @!attribute start_from_head
    #   <p>If the value is true, the earliest log events are returned first.
    #         If the value is false, the latest log events are returned first.
    #         The default value is false.</p>
    #            <p>If you are using a previous <code>nextForwardToken</code> value as the <code>nextToken</code> in this operation,
    #         you must specify <code>true</code> for <code>startFromHead</code>.</p>
    #
    #   @return [Boolean]
    #
    GetLogEventsInput = ::Struct.new(
      :log_group_name,
      :log_stream_name,
      :start_time,
      :end_time,
      :next_token,
      :limit,
      :start_from_head,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute events
    #   <p>The events.</p>
    #
    #   @return [Array<OutputLogEvent>]
    #
    # @!attribute next_forward_token
    #   <p>The token for the next set of items in the forward direction. The token expires after
    #         24 hours. If you have reached the end of the stream, it returns the same token you passed
    #         in.</p>
    #
    #   @return [String]
    #
    # @!attribute next_backward_token
    #   <p>The token for the next set of items in the backward direction. The token expires after
    #         24 hours. This token is never null. If you have reached the end of the stream, it returns the
    #         same token you passed in.</p>
    #
    #   @return [String]
    #
    GetLogEventsOutput = ::Struct.new(
      :events,
      :next_forward_token,
      :next_backward_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group to search.</p>
    #
    #   @return [String]
    #
    # @!attribute time
    #   <p>The time to set as the center of the query. If you specify <code>time</code>, the 15 minutes
    #          before this time are queries. If you omit <code>time</code> the 8
    #         minutes before and 8 minutes after this time are searched.</p>
    #            <p>The <code>time</code> value is specified as epoch time, the number of seconds since
    #         January 1, 1970, 00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    GetLogGroupFieldsInput = ::Struct.new(
      :log_group_name,
      :time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_fields
    #   <p>The array of fields found in the query. Each object in the array contains the name of the field, along with the
    #       percentage of time it appeared in the log events that were queried.</p>
    #
    #   @return [Array<LogGroupField>]
    #
    GetLogGroupFieldsOutput = ::Struct.new(
      :log_group_fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_record_pointer
    #   <p>The pointer corresponding to the log event record you want to retrieve. You get this from
    #         the response of a <code>GetQueryResults</code> operation. In that response, the value of the
    #           <code>@ptr</code> field for a log event is the value to use as <code>logRecordPointer</code>
    #         to retrieve that complete log event record.</p>
    #
    #   @return [String]
    #
    GetLogRecordInput = ::Struct.new(
      :log_record_pointer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_record
    #   <p>The requested log event, as a JSON string.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetLogRecordOutput = ::Struct.new(
      :log_record,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_id
    #   <p>The ID number of the query.</p>
    #
    #   @return [String]
    #
    GetQueryResultsInput = ::Struct.new(
      :query_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute results
    #   <p>The log events that matched the query criteria during the most recent time it ran.</p>
    #            <p>The <code>results</code> value is an array of arrays. Each log event is one object in the
    #         top-level array. Each of these log event objects is an array of
    #           <code>field</code>/<code>value</code> pairs.</p>
    #
    #   @return [Array<Array<ResultField>>]
    #
    # @!attribute statistics
    #   <p>Includes the number of log events scanned by the query, the number of log events that matched the
    #       query criteria, and the total number of bytes in the log events that were scanned. These values
    #       reflect the full raw results of the query.</p>
    #
    #   @return [QueryStatistics]
    #
    # @!attribute status
    #   <p>The status of the most recent running of the query. Possible values are <code>Cancelled</code>,
    #         <code>Complete</code>, <code>Failed</code>, <code>Running</code>, <code>Scheduled</code>,
    #         <code>Timeout</code>, and <code>Unknown</code>.</p>
    #            <p>Queries time out after 15 minutes of execution. To avoid having your queries time out,
    #         reduce the time range being searched or partition your query into a number of queries.</p>
    #
    #   Enum, one of: ["Scheduled", "Running", "Complete", "Failed", "Cancelled", "Timeout", "Unknown"]
    #
    #   @return [String]
    #
    GetQueryResultsOutput = ::Struct.new(
      :results,
      :statistics,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a log event, which is a record of activity that was recorded
    #       by the application or resource being monitored.</p>
    #
    # @!attribute timestamp
    #   <p>The time the event occurred, expressed as the number of milliseconds after Jan 1, 1970
    #         00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message
    #   <p>The raw event message.</p>
    #
    #   @return [String]
    #
    InputLogEvent = ::Struct.new(
      :timestamp,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation is not valid on the specified resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A parameter is specified incorrectly.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The sequence token is not valid. You can get the correct sequence token in
    #       the <code>expectedSequenceToken</code> field in the <code>InvalidSequenceTokenException</code>
    #     message. </p>
    #
    # @!attribute expected_sequence_token
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSequenceTokenException = ::Struct.new(
      :expected_sequence_token,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the maximum number of resources that can be created.</p>
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

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    ListTagsLogGroupInput = ::Struct.new(
      :log_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags for the log group.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsLogGroupOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a log group.</p>
    #
    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The creation time of the log group, expressed as the number of milliseconds after Jan
    #         1, 1970 00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    # @!attribute retention_in_days
    #   <p>The number of days to retain the log events in the specified log group.
    #         Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 2192, 2557, 2922, 3288, and 3653.</p>
    #            <p>To set a log group to never have log events expire, use
    #       <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeleteRetentionPolicy.html">DeleteRetentionPolicy</a>.
    #     </p>
    #
    #   @return [Integer]
    #
    # @!attribute metric_filter_count
    #   <p>The number of metric filters.</p>
    #
    #   @return [Integer]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute stored_bytes
    #   <p>The number of bytes stored.</p>
    #
    #   @return [Integer]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) of the CMK to use when encrypting log data.</p>
    #
    #   @return [String]
    #
    LogGroup = ::Struct.new(
      :log_group_name,
      :creation_time,
      :retention_in_days,
      :metric_filter_count,
      :arn,
      :stored_bytes,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The fields contained in log events found by a <code>GetLogGroupFields</code> operation,
    #       along with the percentage of queried log events in which each field appears.</p>
    #
    # @!attribute name
    #   <p>The name of a log field.</p>
    #
    #   @return [String]
    #
    # @!attribute percent
    #   <p>The percentage of log events queried that contained the field.</p>
    #
    #   @return [Integer]
    #
    LogGroupField = ::Struct.new(
      :name,
      :percent,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.percent ||= 0
      end
    end

    # <p>Represents a log stream, which is a sequence of log events from
    #       a single emitter of logs.</p>
    #
    # @!attribute log_stream_name
    #   <p>The name of the log stream.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The creation time of the stream, expressed as the number of milliseconds after Jan 1,
    #         1970 00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    # @!attribute first_event_timestamp
    #   <p>The time of the first event, expressed as the number of milliseconds after Jan 1, 1970
    #         00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_event_timestamp
    #   <p>The time of the most recent log event in the log stream in CloudWatch Logs. This number
    #         is expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. The
    #           <code>lastEventTime</code> value updates on an eventual consistency basis. It typically
    #         updates in less than an hour from ingestion, but in rare situations might take
    #         longer.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_ingestion_time
    #   <p>The ingestion time, expressed as the number of milliseconds after Jan 1, 1970 00:00:00
    #         UTC.</p>
    #
    #   @return [Integer]
    #
    # @!attribute upload_sequence_token
    #   <p>The sequence token.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the log stream.</p>
    #
    #   @return [String]
    #
    # @!attribute stored_bytes
    #   <p>The number of bytes stored.</p>
    #            <p>
    #               <b>Important:</b> On June 17, 2019, this parameter was
    #         deprecated for log streams, and is always reported as zero. This change applies only to log
    #         streams. The <code>storedBytes</code> parameter for log groups is not affected.</p>
    #
    #   @deprecated
    #     Starting on June 17, 2019, this parameter will be deprecated for log streams, and will be reported as zero. This change applies only to log streams. The storedBytes parameter for log groups is not affected.
    #
    #   @return [Integer]
    #
    LogStream = ::Struct.new(
      :log_stream_name,
      :creation_time,
      :first_event_timestamp,
      :last_event_timestamp,
      :last_ingestion_time,
      :upload_sequence_token,
      :arn,
      :stored_bytes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The query string is not valid. Details about this error are displayed in a
    #       <code>QueryCompileError</code> object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_QueryCompileError.html">QueryCompileError</a>.</p>
    #          <p>For more information about valid query syntax, see
    #       <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html">CloudWatch Logs Insights Query Syntax</a>.</p>
    #
    # @!attribute query_compile_error
    #   <p>Reserved.</p>
    #
    #   @return [QueryCompileError]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MalformedQueryException = ::Struct.new(
      :query_compile_error,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Metric filters express how CloudWatch Logs would extract metric observations
    #       from ingested log events and transform them into metric data in a CloudWatch metric.</p>
    #
    # @!attribute filter_name
    #   <p>The name of the metric filter.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_pattern
    #   <p>A symbolic description of how CloudWatch Logs should interpret the data in each log
    #         event. For example, a log event can contain timestamps, IP addresses, strings, and so on. You
    #         use the filter pattern to specify what to look for in the log event message.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_transformations
    #   <p>The metric transformations.</p>
    #
    #   @return [Array<MetricTransformation>]
    #
    # @!attribute creation_time
    #   <p>The creation time of the metric filter, expressed as the number of milliseconds after
    #         Jan 1, 1970 00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    MetricFilter = ::Struct.new(
      :filter_name,
      :filter_pattern,
      :metric_transformations,
      :creation_time,
      :log_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a matched event.</p>
    #
    # @!attribute event_number
    #   <p>The event number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute event_message
    #   <p>The raw event data.</p>
    #
    #   @return [String]
    #
    # @!attribute extracted_values
    #   <p>The values extracted from the event data by the filter.</p>
    #
    #   @return [Hash<String, String>]
    #
    MetricFilterMatchRecord = ::Struct.new(
      :event_number,
      :event_message,
      :extracted_values,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.event_number ||= 0
      end
    end

    # <p>Indicates how to transform ingested log events to metric data in a CloudWatch
    #       metric.</p>
    #
    # @!attribute metric_name
    #   <p>The name of the CloudWatch metric.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_namespace
    #   <p>A custom namespace to contain your metric in CloudWatch. Use namespaces to group together metrics
    #         that are similar. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html Namespace">Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_value
    #   <p>The value to publish to the CloudWatch metric when a filter pattern matches a log event.</p>
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>(Optional) The value to emit when a filter pattern does not match a log event.
    #         This value can be null.</p>
    #
    #   @return [Float]
    #
    # @!attribute dimensions
    #   <p>The fields to use as dimensions for the metric. One metric filter can include
    #       as many as three dimensions.</p>
    #            <important>
    #               <p>Metrics extracted from log events are charged as custom metrics.
    #         To prevent unexpected high charges, do not specify high-cardinality fields such as
    #         <code>IPAddress</code> or <code>requestID</code> as dimensions. Each different value
    #         found for
    #         a dimension is treated as a separate metric and accrues charges as a separate custom metric.
    #       </p>
    #               <p>To help prevent accidental high charges, Amazon disables a metric filter
    #           if it generates 1000 different name/value pairs for the dimensions that you
    #           have specified within a certain amount of time.</p>
    #               <p>You can also set up a billing alarm to alert you if your charges are higher than
    #           expected. For more information,
    #           see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html">
    #             Creating a Billing Alarm to Monitor Your Estimated Amazon Web Services Charges</a>.
    #          </p>
    #            </important>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute unit
    #   <p>The unit to assign to the metric. If you omit this, the unit is set as <code>None</code>.</p>
    #
    #   Enum, one of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #
    #   @return [String]
    #
    MetricTransformation = ::Struct.new(
      :metric_name,
      :metric_namespace,
      :metric_value,
      :default_value,
      :dimensions,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Multiple concurrent requests to update the same resource were in conflict.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OperationAbortedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OrderBy
    #
    module OrderBy
      # No documentation available.
      #
      LogStreamName = "LogStreamName"

      # No documentation available.
      #
      LastEventTime = "LastEventTime"
    end

    # <p>Represents a log event.</p>
    #
    # @!attribute timestamp
    #   <p>The time the event occurred, expressed as the number of milliseconds after Jan 1, 1970
    #         00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message
    #   <p>The data contained in the log event.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_time
    #   <p>The time the event was ingested, expressed as the number of milliseconds after Jan 1,
    #         1970 00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    OutputLogEvent = ::Struct.new(
      :timestamp,
      :message,
      :ingestion_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute destination_name
    #   <p>A name for the destination.</p>
    #
    #   @return [String]
    #
    # @!attribute target_arn
    #   <p>The ARN of an Amazon Kinesis stream to which to deliver matching log events.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of an IAM role that grants CloudWatch Logs permissions to call the Amazon
    #         Kinesis <code>PutRecord</code> operation on the destination stream.</p>
    #
    #   @return [String]
    #
    PutDestinationInput = ::Struct.new(
      :destination_name,
      :target_arn,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute destination
    #   <p>The destination.</p>
    #
    #   @return [Destination]
    #
    PutDestinationOutput = ::Struct.new(
      :destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute destination_name
    #   <p>A name for an existing destination.</p>
    #
    #   @return [String]
    #
    # @!attribute access_policy
    #   <p>An IAM policy document that authorizes cross-account users to deliver their log events
    #         to the associated destination. This can be up to 5120 bytes.</p>
    #
    #   @return [String]
    #
    # @!attribute force_update
    #   <p>Specify true if you are updating an existing destination policy to grant permission to
    #       an organization ID instead of granting permission to individual AWS accounts. Before
    #       you update a destination policy this way, you must first update the subscription
    #       filters in the accounts that send logs to this destination. If you do not, the subscription
    #       filters might stop working. By specifying <code>true</code>
    #         for <code>forceUpdate</code>, you are affirming that you have already updated the subscription
    #         filters.
    #       For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Cross-Account-Log_Subscription-Update.html">
    #         Updating an existing cross-account subscription</a>
    #            </p>
    #            <p>If you omit this parameter, the default of <code>false</code> is used.</p>
    #
    #   @return [Boolean]
    #
    PutDestinationPolicyInput = ::Struct.new(
      :destination_name,
      :access_policy,
      :force_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutDestinationPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute log_stream_name
    #   <p>The name of the log stream.</p>
    #
    #   @return [String]
    #
    # @!attribute log_events
    #   <p>The log events.</p>
    #
    #   @return [Array<InputLogEvent>]
    #
    # @!attribute sequence_token
    #   <p>The sequence token obtained from the response of the previous <code>PutLogEvents</code>
    #         call. An upload in a newly created log stream does not require a sequence token. You can also
    #         get the sequence token using <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeLogStreams.html">DescribeLogStreams</a>. If you call <code>PutLogEvents</code> twice within a narrow
    #         time period using the same value for <code>sequenceToken</code>, both calls might be
    #         successful or one might be rejected.</p>
    #
    #   @return [String]
    #
    PutLogEventsInput = ::Struct.new(
      :log_group_name,
      :log_stream_name,
      :log_events,
      :sequence_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_sequence_token
    #   <p>The next sequence token.</p>
    #
    #   @return [String]
    #
    # @!attribute rejected_log_events_info
    #   <p>The rejected events.</p>
    #
    #   @return [RejectedLogEventsInfo]
    #
    PutLogEventsOutput = ::Struct.new(
      :next_sequence_token,
      :rejected_log_events_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_name
    #   <p>A name for the metric filter.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_pattern
    #   <p>A filter pattern for extracting metric data out of ingested log events.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_transformations
    #   <p>A collection of information that defines how metric data gets emitted.</p>
    #
    #   @return [Array<MetricTransformation>]
    #
    PutMetricFilterInput = ::Struct.new(
      :log_group_name,
      :filter_name,
      :filter_pattern,
      :metric_transformations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutMetricFilterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A name for the query definition. If you are saving a lot of query definitions, we
    #         recommend that you name them so that you can easily find the ones you want by using the first
    #         part of the name as a filter in the <code>queryDefinitionNamePrefix</code> parameter of <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html">DescribeQueryDefinitions</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute query_definition_id
    #   <p>If you are updating a query definition, use this parameter to specify the ID of the query
    #         definition that you want to update. You can use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html">DescribeQueryDefinitions</a> to retrieve the IDs of your saved query
    #         definitions.</p>
    #            <p>If you are creating a query definition, do not specify this parameter. CloudWatch
    #         generates a unique ID for the new query definition and include it in the response to this
    #         operation.</p>
    #
    #   @return [String]
    #
    # @!attribute log_group_names
    #   <p>Use this parameter to include specific log groups as part of your query definition.</p>
    #            <p>If you are updating a query definition and you omit this parameter, then the updated
    #         definition will contain no log groups.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute query_string
    #   <p>The query string to use for this definition.
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html">CloudWatch Logs Insights Query Syntax</a>.</p>
    #
    #   @return [String]
    #
    PutQueryDefinitionInput = ::Struct.new(
      :name,
      :query_definition_id,
      :log_group_names,
      :query_string,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_definition_id
    #   <p>The ID of the query definition.</p>
    #
    #   @return [String]
    #
    PutQueryDefinitionOutput = ::Struct.new(
      :query_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_name
    #   <p>Name of the new policy. This parameter is required.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_document
    #   <p>Details of the new policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string.
    #       This parameter is required.</p>
    #            <p>The following example creates a resource policy enabling the Route 53 service to put
    #         DNS query logs in to the specified log group. Replace <code>"logArn"</code> with the ARN of
    #         your CloudWatch Logs resource, such as a log group or log stream.</p>
    #            <p>CloudWatch Logs also supports <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html condition-keys-sourcearn">aws:SourceArn</a>
    #         and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html condition-keys-sourceaccount">aws:SourceAccount</a>
    #   condition context keys.</p>
    #            <p>In the example resource policy, you would replace the value of <code>SourceArn</code> with the resource making the
    #         call from Route 53 to CloudWatch Logs and replace the value of <code>SourceAccount</code> with
    #         the Amazon Web Services account ID making that call.</p>
    #            <p></p>
    #            <p>
    #               <code>{
    #       "Version": "2012-10-17",
    #       "Statement": [
    #           {
    #              "Sid": "Route53LogsToCloudWatchLogs",
    #              "Effect": "Allow",
    #              "Principal": {
    #                  "Service": [
    #                      "route53.amazonaws.com"
    #                   ]
    #               },
    #              "Action": "logs:PutLogEvents",
    #              "Resource": "logArn",
    #              "Condition": {
    #                  "ArnLike": {
    #                      "aws:SourceArn": "myRoute53ResourceArn"
    #                   },
    #                  "StringEquals": {
    #                      "aws:SourceAccount": "myAwsAccountId"
    #                  }
    #               }
    #           }
    #         ]
    #   }</code>
    #
    #            </p>
    #
    #   @return [String]
    #
    PutResourcePolicyInput = ::Struct.new(
      :policy_name,
      :policy_document,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_policy
    #   <p>The new policy.</p>
    #
    #   @return [ResourcePolicy]
    #
    PutResourcePolicyOutput = ::Struct.new(
      :resource_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_in_days
    #   <p>The number of days to retain the log events in the specified log group.
    #         Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 2192, 2557, 2922, 3288, and 3653.</p>
    #            <p>To set a log group to never have log events expire, use
    #       <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeleteRetentionPolicy.html">DeleteRetentionPolicy</a>.
    #     </p>
    #
    #   @return [Integer]
    #
    PutRetentionPolicyInput = ::Struct.new(
      :log_group_name,
      :retention_in_days,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutRetentionPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_name
    #   <p>A name for the subscription filter. If you are updating an existing filter, you must
    #         specify the correct name in <code>filterName</code>. To find the name of the filter currently
    #         associated with a log group, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeSubscriptionFilters.html">DescribeSubscriptionFilters</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_pattern
    #   <p>A filter pattern for subscribing to a filtered stream of log events.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_arn
    #   <p>The ARN of the destination to deliver matching log events to. Currently, the supported
    #         destinations are:</p>
    #            <ul>
    #               <li>
    #                  <p>An Amazon Kinesis stream belonging to the same account as the subscription filter,
    #             for same-account delivery.</p>
    #               </li>
    #               <li>
    #                  <p>A logical destination (specified using an ARN) belonging to a different account,
    #             for cross-account delivery.</p>
    #                  <p>If you are setting up a cross-account subscription, the destination must have an
    #           IAM policy associated with it that allows the sender to send logs to the destination.
    #           For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html">PutDestinationPolicy</a>.</p>
    #               </li>
    #               <li>
    #                  <p>An Amazon Kinesis Firehose delivery stream belonging to the same account as the
    #             subscription filter, for same-account delivery.</p>
    #               </li>
    #               <li>
    #                  <p>A Lambda function belonging to the same account as the subscription filter,
    #             for same-account delivery.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of an IAM role that grants CloudWatch Logs permissions to deliver ingested log
    #         events to the destination stream. You don't need to provide the ARN when you are working with
    #         a logical destination for cross-account delivery.</p>
    #
    #   @return [String]
    #
    # @!attribute distribution
    #   <p>The method used to distribute log data to the destination. By default, log data is
    #         grouped by log stream, but the grouping can be set to random for a more even distribution.
    #         This property is only applicable when the destination is an Amazon Kinesis stream. </p>
    #
    #   Enum, one of: ["Random", "ByLogStream"]
    #
    #   @return [String]
    #
    PutSubscriptionFilterInput = ::Struct.new(
      :log_group_name,
      :filter_name,
      :filter_pattern,
      :destination_arn,
      :role_arn,
      :distribution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutSubscriptionFilterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Reserved.</p>
    #
    # @!attribute location
    #   <p>Reserved.</p>
    #
    #   @return [QueryCompileErrorLocation]
    #
    # @!attribute message
    #   <p>Reserved.</p>
    #
    #   @return [String]
    #
    QueryCompileError = ::Struct.new(
      :location,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Reserved.</p>
    #
    # @!attribute start_char_offset
    #   <p>Reserved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_char_offset
    #   <p>Reserved.</p>
    #
    #   @return [Integer]
    #
    QueryCompileErrorLocation = ::Struct.new(
      :start_char_offset,
      :end_char_offset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure contains details about a saved CloudWatch Logs Insights query definition.</p>
    #
    # @!attribute query_definition_id
    #   <p>The unique ID of the query definition.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the query definition.</p>
    #
    #   @return [String]
    #
    # @!attribute query_string
    #   <p>The query string to use for this definition.
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html">CloudWatch Logs Insights Query Syntax</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date that the query definition was most recently modified.</p>
    #
    #   @return [Integer]
    #
    # @!attribute log_group_names
    #   <p>If this query definition contains a list of log groups that it is limited to, that list appears here.</p>
    #
    #   @return [Array<String>]
    #
    QueryDefinition = ::Struct.new(
      :query_definition_id,
      :name,
      :query_string,
      :last_modified,
      :log_group_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about one CloudWatch Logs Insights query that matches the request in a <code>DescribeQueries</code> operation. </p>
    #
    # @!attribute query_id
    #   <p>The unique ID number of this query.</p>
    #
    #   @return [String]
    #
    # @!attribute query_string
    #   <p>The query string used in this query.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of this query. Possible values are <code>Cancelled</code>,
    #         <code>Complete</code>, <code>Failed</code>, <code>Running</code>, <code>Scheduled</code>, and <code>Unknown</code>.</p>
    #
    #   Enum, one of: ["Scheduled", "Running", "Complete", "Failed", "Cancelled", "Timeout", "Unknown"]
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The date and time that this query was created.</p>
    #
    #   @return [Integer]
    #
    # @!attribute log_group_name
    #   <p>The name of the log group scanned by this query.</p>
    #
    #   @return [String]
    #
    QueryInfo = ::Struct.new(
      :query_id,
      :query_string,
      :status,
      :create_time,
      :log_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the number of log events scanned by the query, the number of log events that matched the
    #       query criteria, and the total number of bytes in the log events that were scanned.</p>
    #
    # @!attribute records_matched
    #   <p>The number of log events that matched the query string.</p>
    #
    #   @return [Float]
    #
    # @!attribute records_scanned
    #   <p>The total number of log events scanned during the query.</p>
    #
    #   @return [Float]
    #
    # @!attribute bytes_scanned
    #   <p>The total number of bytes in the log events scanned during the query.</p>
    #
    #   @return [Float]
    #
    QueryStatistics = ::Struct.new(
      :records_matched,
      :records_scanned,
      :bytes_scanned,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.records_matched ||= 0
        self.records_scanned ||= 0
        self.bytes_scanned ||= 0
      end
    end

    # Includes enum constants for QueryStatus
    #
    module QueryStatus
      # No documentation available.
      #
      Scheduled = "Scheduled"

      # No documentation available.
      #
      Running = "Running"

      # No documentation available.
      #
      Complete = "Complete"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Cancelled = "Cancelled"

      # No documentation available.
      #
      Timeout = "Timeout"

      # No documentation available.
      #
      Unknown = "Unknown"
    end

    # <p>Represents the rejected events.</p>
    #
    # @!attribute too_new_log_event_start_index
    #   <p>The log events that are too new.</p>
    #
    #   @return [Integer]
    #
    # @!attribute too_old_log_event_end_index
    #   <p>The log events that are too old.</p>
    #
    #   @return [Integer]
    #
    # @!attribute expired_log_event_end_index
    #   <p>The expired log events.</p>
    #
    #   @return [Integer]
    #
    RejectedLogEventsInfo = ::Struct.new(
      :too_new_log_event_start_index,
      :too_old_log_event_end_index,
      :expired_log_event_end_index,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource does not exist.</p>
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

    # <p>A policy enabling one or more entities to put logs to a log group in this account.</p>
    #
    # @!attribute policy_name
    #   <p>The name of the resource policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_document
    #   <p>The details of the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>Timestamp showing when this policy was last updated, expressed as the number of
    #         milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    ResourcePolicy = ::Struct.new(
      :policy_name,
      :policy_document,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains one field from one log event returned by a CloudWatch Logs Insights query, along with the value of that field.</p>
    #          <p>For more information about the fields that are
    #       generated by CloudWatch logs, see
    #       <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData-discoverable-fields.html">Supported Logs and Discovered Fields</a>.</p>
    #
    # @!attribute field
    #   <p>The log event field.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of this field.</p>
    #
    #   @return [String]
    #
    ResultField = ::Struct.new(
      :field,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the search status of a log stream.</p>
    #
    # @!attribute log_stream_name
    #   <p>The name of the log stream.</p>
    #
    #   @return [String]
    #
    # @!attribute searched_completely
    #   <p>Indicates whether all the events in this log stream were searched.</p>
    #
    #   @return [Boolean]
    #
    SearchedLogStream = ::Struct.new(
      :log_stream_name,
      :searched_completely,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service cannot complete the request.</p>
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

    # Includes enum constants for StandardUnit
    #
    module StandardUnit
      # No documentation available.
      #
      Seconds = "Seconds"

      # No documentation available.
      #
      Microseconds = "Microseconds"

      # No documentation available.
      #
      Milliseconds = "Milliseconds"

      # No documentation available.
      #
      Bytes = "Bytes"

      # No documentation available.
      #
      Kilobytes = "Kilobytes"

      # No documentation available.
      #
      Megabytes = "Megabytes"

      # No documentation available.
      #
      Gigabytes = "Gigabytes"

      # No documentation available.
      #
      Terabytes = "Terabytes"

      # No documentation available.
      #
      Bits = "Bits"

      # No documentation available.
      #
      Kilobits = "Kilobits"

      # No documentation available.
      #
      Megabits = "Megabits"

      # No documentation available.
      #
      Gigabits = "Gigabits"

      # No documentation available.
      #
      Terabits = "Terabits"

      # No documentation available.
      #
      Percent = "Percent"

      # No documentation available.
      #
      Count = "Count"

      # No documentation available.
      #
      BytesSecond = "Bytes/Second"

      # No documentation available.
      #
      KilobytesSecond = "Kilobytes/Second"

      # No documentation available.
      #
      MegabytesSecond = "Megabytes/Second"

      # No documentation available.
      #
      GigabytesSecond = "Gigabytes/Second"

      # No documentation available.
      #
      TerabytesSecond = "Terabytes/Second"

      # No documentation available.
      #
      BitsSecond = "Bits/Second"

      # No documentation available.
      #
      KilobitsSecond = "Kilobits/Second"

      # No documentation available.
      #
      MegabitsSecond = "Megabits/Second"

      # No documentation available.
      #
      GigabitsSecond = "Gigabits/Second"

      # No documentation available.
      #
      TerabitsSecond = "Terabits/Second"

      # No documentation available.
      #
      CountSecond = "Count/Second"

      # No documentation available.
      #
      None = "None"
    end

    # @!attribute log_group_name
    #   <p>The log group on which to perform the query.</p>
    #            <p>A <code>StartQuery</code> operation must include a <code>logGroupNames</code> or a <code>logGroupName</code> parameter, but
    #         not both.</p>
    #
    #   @return [String]
    #
    # @!attribute log_group_names
    #   <p>The list of log groups to be queried. You can include up to 20 log groups.</p>
    #            <p>A <code>StartQuery</code> operation must include a <code>logGroupNames</code> or a <code>logGroupName</code> parameter, but
    #       not both.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute start_time
    #   <p>The beginning of the time range to query. The range is inclusive, so the specified
    #         start time is included in the query. Specified as epoch time, the
    #         number of seconds since January 1, 1970, 00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_time
    #   <p>The end of the time range to query. The range is inclusive, so the specified
    #         end time is included in the query. Specified as epoch
    #         time, the number of seconds since January 1, 1970, 00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    # @!attribute query_string
    #   <p>The query string to use.
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html">CloudWatch Logs Insights Query Syntax</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of log events to return in the query. If the query string uses the <code>fields</code> command,
    #       only the specified fields and their values are returned. The default is 1000.</p>
    #
    #   @return [Integer]
    #
    StartQueryInput = ::Struct.new(
      :log_group_name,
      :log_group_names,
      :start_time,
      :end_time,
      :query_string,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_id
    #   <p>The unique ID of the query. </p>
    #
    #   @return [String]
    #
    StartQueryOutput = ::Struct.new(
      :query_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_id
    #   <p>The ID number of the query to stop. To find this ID number, use
    #           <code>DescribeQueries</code>.</p>
    #
    #   @return [String]
    #
    StopQueryInput = ::Struct.new(
      :query_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute success
    #   <p>This is true if the query was stopped by the <code>StopQuery</code> operation.</p>
    #
    #   @return [Boolean]
    #
    StopQueryOutput = ::Struct.new(
      :success,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.success ||= false
      end
    end

    # <p>Represents a subscription filter.</p>
    #
    # @!attribute filter_name
    #   <p>The name of the subscription filter.</p>
    #
    #   @return [String]
    #
    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_pattern
    #   <p>A symbolic description of how CloudWatch Logs should interpret the data in each log
    #         event. For example, a log event can contain timestamps, IP addresses, strings, and so on. You
    #         use the filter pattern to specify what to look for in the log event message.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_arn
    #   <p>The Amazon Resource Name (ARN) of the destination.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute distribution
    #   <p>The method used to distribute log data to the destination, which can be either
    #         random or grouped by log stream.</p>
    #
    #   Enum, one of: ["Random", "ByLogStream"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The creation time of the subscription filter, expressed as the number of milliseconds
    #         after Jan 1, 1970 00:00:00 UTC.</p>
    #
    #   @return [Integer]
    #
    SubscriptionFilter = ::Struct.new(
      :filter_name,
      :log_group_name,
      :filter_pattern,
      :destination_arn,
      :role_arn,
      :distribution,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value pairs to use for the tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagLogGroupInput = ::Struct.new(
      :log_group_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagLogGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter_pattern
    #   <p>A symbolic description of how CloudWatch Logs should interpret the data in each log
    #         event. For example, a log event can contain timestamps, IP addresses, strings, and so on. You
    #         use the filter pattern to specify what to look for in the log event message.</p>
    #
    #   @return [String]
    #
    # @!attribute log_event_messages
    #   <p>The log event messages to test.</p>
    #
    #   @return [Array<String>]
    #
    TestMetricFilterInput = ::Struct.new(
      :filter_pattern,
      :log_event_messages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute matches
    #   <p>The matched events.</p>
    #
    #   @return [Array<MetricFilterMatchRecord>]
    #
    TestMetricFilterOutput = ::Struct.new(
      :matches,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The most likely cause is an invalid Amazon Web Services access key ID or secret key.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnrecognizedClientException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tag keys. The corresponding tags are removed from the log group.</p>
    #
    #   @return [Array<String>]
    #
    UntagLogGroupInput = ::Struct.new(
      :log_group_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagLogGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
