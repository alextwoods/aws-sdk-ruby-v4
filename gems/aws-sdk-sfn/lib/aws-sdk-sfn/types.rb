# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SFN
  module Types

    # <p>The specified activity does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ActivityDoesNotExist = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an activity that failed during an execution.</p>
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    #   @return [String]
    #
    ActivityFailedEventDetails = ::Struct.new(
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::ActivityFailedEventDetails "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    # <p>The maximum number of activities has been reached. Existing activities must be deleted
    #       before a new activity can be created.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ActivityLimitExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an activity.</p>
    #
    # @!attribute activity_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the activity.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the activity.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>"   % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date the activity is created.</p>
    #
    #   @return [Time]
    #
    ActivityListItem = ::Struct.new(
      :activity_arn,
      :name,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an activity schedule failure that occurred during an
    #       execution.</p>
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    #   @return [String]
    #
    ActivityScheduleFailedEventDetails = ::Struct.new(
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::ActivityScheduleFailedEventDetails "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    # <p>Contains details about an activity scheduled during an execution.</p>
    #
    # @!attribute resource
    #   <p>The Amazon Resource Name (ARN) of the scheduled activity.</p>
    #
    #   @return [String]
    #
    # @!attribute input
    #   <p>The JSON data input to the activity task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute input_details
    #   <p>Contains details about the input for an execution history event.</p>
    #
    #   @return [HistoryEventExecutionDataDetails]
    #
    # @!attribute timeout_in_seconds
    #   <p>The maximum allowed duration of the activity task.</p>
    #
    #   @return [Integer]
    #
    # @!attribute heartbeat_in_seconds
    #   <p>The maximum allowed duration between two heartbeats for the activity task.</p>
    #
    #   @return [Integer]
    #
    ActivityScheduledEventDetails = ::Struct.new(
      :resource,
      :input,
      :input_details,
      :timeout_in_seconds,
      :heartbeat_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::ActivityScheduledEventDetails "\
          "resource=#{resource || 'nil'}, "\
          "input=\"[SENSITIVE]\", "\
          "input_details=#{input_details || 'nil'}, "\
          "timeout_in_seconds=#{timeout_in_seconds || 'nil'}, "\
          "heartbeat_in_seconds=#{heartbeat_in_seconds || 'nil'}>"
      end
    end

    # <p>Contains details about the start of an activity during an execution.</p>
    #
    # @!attribute worker_name
    #   <p>The name of the worker that the task is assigned to. These names are provided by the
    #         workers when calling <a>GetActivityTask</a>.</p>
    #
    #   @return [String]
    #
    ActivityStartedEventDetails = ::Struct.new(
      :worker_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an activity that successfully terminated during an
    #       execution.</p>
    #
    # @!attribute output
    #   <p>The JSON data output by the activity task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute output_details
    #   <p>Contains details about the output of an execution history event.</p>
    #
    #   @return [HistoryEventExecutionDataDetails]
    #
    ActivitySucceededEventDetails = ::Struct.new(
      :output,
      :output_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::ActivitySucceededEventDetails "\
          "output=\"[SENSITIVE]\", "\
          "output_details=#{output_details || 'nil'}>"
      end
    end

    # <p>Contains details about an activity timeout that occurred during an execution.</p>
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the timeout.</p>
    #
    #   @return [String]
    #
    ActivityTimedOutEventDetails = ::Struct.new(
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::ActivityTimedOutEventDetails "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    # <p>The maximum number of workers concurrently polling for activity tasks has been
    #       reached.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ActivityWorkerLimitExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that describes workflow billing details.</p>
    #
    # @!attribute billed_memory_used_in_mb
    #   <p>Billed memory consumption of your workflow, in MB.</p>
    #
    #   @return [Integer]
    #
    # @!attribute billed_duration_in_milliseconds
    #   <p>Billed duration of your workflow, in milliseconds.</p>
    #
    #   @return [Integer]
    #
    BillingDetails = ::Struct.new(
      :billed_memory_used_in_mb,
      :billed_duration_in_milliseconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.billed_memory_used_in_mb ||= 0
        self.billed_duration_in_milliseconds ||= 0
      end
    end

    # <p>Provides details about execution input or output.</p>
    #
    # @!attribute included
    #   <p>Indicates whether input or output was included in the response. Always <code>true</code>
    #         for API calls. </p>
    #
    #   @return [Boolean]
    #
    CloudWatchEventsExecutionDataDetails = ::Struct.new(
      :included,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.included ||= false
      end
    end

    # <p></p>
    #
    # @!attribute log_group_arn
    #   <p>The ARN of the the CloudWatch log group to which you want your logs emitted to. The ARN
    #         must end with <code>:*</code>
    #            </p>
    #
    #   @return [String]
    #
    CloudWatchLogsLogGroup = ::Struct.new(
      :log_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the activity to create. This name must be unique for your AWS account and region for 90 days. For more information,
    #       see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/limits.html service-limits-state-machine-executions">
    #       Limits Related to State Machine Executions</a> in the <i>AWS Step Functions Developer Guide</i>.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>"   % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tags to add to a resource.</p>
    #            <p>An array of key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
    #         Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User
    #           Guide</i>, and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM
    #             Tags</a>.</p>
    #            <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateActivityInput = ::Struct.new(
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute activity_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the created activity.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date the activity is created.</p>
    #
    #   @return [Time]
    #
    CreateActivityOutput = ::Struct.new(
      :activity_arn,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the state machine. </p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>"   % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>The Amazon States Language definition of the state machine. See <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to use for this state machine.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Determines whether a Standard or Express state machine is created. The default is
    #           <code>STANDARD</code>. You cannot update the <code>type</code> of a state machine once it
    #         has been created.</p>
    #
    #   Enum, one of: ["STANDARD", "EXPRESS"]
    #
    #   @return [String]
    #
    # @!attribute logging_configuration
    #   <p>Defines what execution history events are logged and where they are logged.</p>
    #            <note>
    #               <p>By default, the <code>level</code> is set to <code>OFF</code>. For more information see
    #             <a href="https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html">Log
    #             Levels</a> in the AWS Step Functions User Guide.</p>
    #            </note>
    #
    #   @return [LoggingConfiguration]
    #
    # @!attribute tags
    #   <p>Tags to be added when creating a state machine.</p>
    #            <p>An array of key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
    #         Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User
    #           Guide</i>, and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM
    #             Tags</a>.</p>
    #            <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute tracing_configuration
    #   <p>Selects whether AWS X-Ray tracing is enabled.</p>
    #
    #   @return [TracingConfiguration]
    #
    CreateStateMachineInput = ::Struct.new(
      :name,
      :definition,
      :role_arn,
      :type,
      :logging_configuration,
      :tags,
      :tracing_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::CreateStateMachineInput "\
          "name=#{name || 'nil'}, "\
          "definition=\"[SENSITIVE]\", "\
          "role_arn=#{role_arn || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "logging_configuration=#{logging_configuration || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "tracing_configuration=#{tracing_configuration || 'nil'}>"
      end
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the created state machine.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date the state machine is created.</p>
    #
    #   @return [Time]
    #
    CreateStateMachineOutput = ::Struct.new(
      :state_machine_arn,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute activity_arn
    #   <p>The Amazon Resource Name (ARN) of the activity to delete.</p>
    #
    #   @return [String]
    #
    DeleteActivityInput = ::Struct.new(
      :activity_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteActivityOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine to delete.</p>
    #
    #   @return [String]
    #
    DeleteStateMachineInput = ::Struct.new(
      :state_machine_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteStateMachineOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute activity_arn
    #   <p>The Amazon Resource Name (ARN) of the activity to describe.</p>
    #
    #   @return [String]
    #
    DescribeActivityInput = ::Struct.new(
      :activity_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute activity_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the activity.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the activity.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>"   % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date the activity is created.</p>
    #
    #   @return [Time]
    #
    DescribeActivityOutput = ::Struct.new(
      :activity_arn,
      :name,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution to describe.</p>
    #
    #   @return [String]
    #
    DescribeExecutionInput = ::Struct.new(
      :execution_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the executed stated machine.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the execution.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>"   % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the execution.</p>
    #
    #   Enum, one of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "ABORTED"]
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The date the execution is started.</p>
    #
    #   @return [Time]
    #
    # @!attribute stop_date
    #   <p>If the execution has already ended, the date the execution stopped.</p>
    #
    #   @return [Time]
    #
    # @!attribute input
    #   <p>The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute input_details
    #   <p>Provides details about execution input or output.</p>
    #
    #   @return [CloudWatchEventsExecutionDataDetails]
    #
    # @!attribute output
    #   <p>The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #            <note>
    #               <p>This field is set only if the execution succeeds. If the execution fails, this field is
    #           null.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute output_details
    #   <p>Provides details about execution input or output.</p>
    #
    #   @return [CloudWatchEventsExecutionDataDetails]
    #
    # @!attribute trace_header
    #   <p>The AWS X-Ray trace header that was passed to the execution.</p>
    #
    #   @return [String]
    #
    DescribeExecutionOutput = ::Struct.new(
      :execution_arn,
      :state_machine_arn,
      :name,
      :status,
      :start_date,
      :stop_date,
      :input,
      :input_details,
      :output,
      :output_details,
      :trace_header,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::DescribeExecutionOutput "\
          "execution_arn=#{execution_arn || 'nil'}, "\
          "state_machine_arn=#{state_machine_arn || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "start_date=#{start_date || 'nil'}, "\
          "stop_date=#{stop_date || 'nil'}, "\
          "input=\"[SENSITIVE]\", "\
          "input_details=#{input_details || 'nil'}, "\
          "output=\"[SENSITIVE]\", "\
          "output_details=#{output_details || 'nil'}, "\
          "trace_header=#{trace_header || 'nil'}>"
      end
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution you want state machine information for.</p>
    #
    #   @return [String]
    #
    DescribeStateMachineForExecutionInput = ::Struct.new(
      :execution_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine associated with the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the state machine associated with the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>The Amazon States Language definition of the state machine. See <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role of the State Machine for the execution. </p>
    #
    #   @return [String]
    #
    # @!attribute update_date
    #   <p>The date and time the state machine associated with an execution was updated. For a newly
    #         created state machine, this is the creation date.</p>
    #
    #   @return [Time]
    #
    # @!attribute logging_configuration
    #   <p>The <code>LoggingConfiguration</code> data type is used to set CloudWatch Logs
    #         options.</p>
    #
    #   @return [LoggingConfiguration]
    #
    # @!attribute tracing_configuration
    #   <p>Selects whether AWS X-Ray tracing is enabled.</p>
    #
    #   @return [TracingConfiguration]
    #
    DescribeStateMachineForExecutionOutput = ::Struct.new(
      :state_machine_arn,
      :name,
      :definition,
      :role_arn,
      :update_date,
      :logging_configuration,
      :tracing_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::DescribeStateMachineForExecutionOutput "\
          "state_machine_arn=#{state_machine_arn || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "definition=\"[SENSITIVE]\", "\
          "role_arn=#{role_arn || 'nil'}, "\
          "update_date=#{update_date || 'nil'}, "\
          "logging_configuration=#{logging_configuration || 'nil'}, "\
          "tracing_configuration=#{tracing_configuration || 'nil'}>"
      end
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine to describe.</p>
    #
    #   @return [String]
    #
    DescribeStateMachineInput = ::Struct.new(
      :state_machine_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the state machine.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the state machine.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>"   % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the state machine.</p>
    #
    #   Enum, one of: ["ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>The Amazon States Language definition of the state machine. See <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used when creating this state machine. (The IAM role
    #         maintains security by granting Step Functions access to AWS resources.)</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The <code>type</code> of the state machine (<code>STANDARD</code> or
    #         <code>EXPRESS</code>).</p>
    #
    #   Enum, one of: ["STANDARD", "EXPRESS"]
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date the state machine is created.</p>
    #
    #   @return [Time]
    #
    # @!attribute logging_configuration
    #   <p>The <code>LoggingConfiguration</code> data type is used to set CloudWatch Logs
    #         options.</p>
    #
    #   @return [LoggingConfiguration]
    #
    # @!attribute tracing_configuration
    #   <p>Selects whether AWS X-Ray tracing is enabled.</p>
    #
    #   @return [TracingConfiguration]
    #
    DescribeStateMachineOutput = ::Struct.new(
      :state_machine_arn,
      :name,
      :status,
      :definition,
      :role_arn,
      :type,
      :creation_date,
      :logging_configuration,
      :tracing_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::DescribeStateMachineOutput "\
          "state_machine_arn=#{state_machine_arn || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "definition=\"[SENSITIVE]\", "\
          "role_arn=#{role_arn || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "creation_date=#{creation_date || 'nil'}, "\
          "logging_configuration=#{logging_configuration || 'nil'}, "\
          "tracing_configuration=#{tracing_configuration || 'nil'}>"
      end
    end

    # <p>Contains details about an abort of an execution.</p>
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    #   @return [String]
    #
    ExecutionAbortedEventDetails = ::Struct.new(
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::ExecutionAbortedEventDetails "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    # <p>The execution has the same <code>name</code> as another execution (but a different
    #         <code>input</code>).</p>
    #          <note>
    #             <p>Executions with the same <code>name</code> and <code>input</code> are considered
    #         idempotent.</p>
    #          </note>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ExecutionAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified execution does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ExecutionDoesNotExist = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an execution failure event.</p>
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    #   @return [String]
    #
    ExecutionFailedEventDetails = ::Struct.new(
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::ExecutionFailedEventDetails "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    # <p>The maximum number of running executions has been reached. Running executions must end or
    #       be stopped before a new execution can be started.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ExecutionLimitExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an execution.</p>
    #
    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the executed state machine.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the execution.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>"   % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the execution.</p>
    #
    #   Enum, one of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "ABORTED"]
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The date the execution started.</p>
    #
    #   @return [Time]
    #
    # @!attribute stop_date
    #   <p>If the execution already ended, the date the execution stopped.</p>
    #
    #   @return [Time]
    #
    ExecutionListItem = ::Struct.new(
      :execution_arn,
      :state_machine_arn,
      :name,
      :status,
      :start_date,
      :stop_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about the start of the execution.</p>
    #
    # @!attribute input
    #   <p>The JSON data input to the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute input_details
    #   <p>Contains details about the input for an execution history event.</p>
    #
    #   @return [HistoryEventExecutionDataDetails]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used for executing AWS Lambda tasks.</p>
    #
    #   @return [String]
    #
    ExecutionStartedEventDetails = ::Struct.new(
      :input,
      :input_details,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::ExecutionStartedEventDetails "\
          "input=\"[SENSITIVE]\", "\
          "input_details=#{input_details || 'nil'}, "\
          "role_arn=#{role_arn || 'nil'}>"
      end
    end

    # Includes enum constants for ExecutionStatus
    #
    module ExecutionStatus
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      TIMED_OUT = "TIMED_OUT"

      # No documentation available.
      #
      ABORTED = "ABORTED"
    end

    # <p>Contains details about the successful termination of the execution.</p>
    #
    # @!attribute output
    #   <p>The JSON data output by the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute output_details
    #   <p>Contains details about the output of an execution history event.</p>
    #
    #   @return [HistoryEventExecutionDataDetails]
    #
    ExecutionSucceededEventDetails = ::Struct.new(
      :output,
      :output_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::ExecutionSucceededEventDetails "\
          "output=\"[SENSITIVE]\", "\
          "output_details=#{output_details || 'nil'}>"
      end
    end

    # <p>Contains details about the execution timeout that occurred during the execution.</p>
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the timeout.</p>
    #
    #   @return [String]
    #
    ExecutionTimedOutEventDetails = ::Struct.new(
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::ExecutionTimedOutEventDetails "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    # @!attribute activity_arn
    #   <p>The Amazon Resource Name (ARN) of the activity to retrieve tasks from (assigned when you create the task
    #         using <a>CreateActivity</a>.)</p>
    #
    #   @return [String]
    #
    # @!attribute worker_name
    #   <p>You can provide an arbitrary name in order to identify the worker that the task is
    #         assigned to. This name is used when it is logged in the execution history.</p>
    #
    #   @return [String]
    #
    GetActivityTaskInput = ::Struct.new(
      :activity_arn,
      :worker_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_token
    #   <p>A token that identifies the scheduled task. This token must be copied and included in
    #         subsequent calls to <a>SendTaskHeartbeat</a>, <a>SendTaskSuccess</a> or
    #           <a>SendTaskFailure</a> in order to report the progress or completion of the
    #         task.</p>
    #
    #   @return [String]
    #
    # @!attribute input
    #   <p>The string that contains the JSON input data for the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    GetActivityTaskOutput = ::Struct.new(
      :task_token,
      :input,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::GetActivityTaskOutput "\
          "task_token=#{task_token || 'nil'}, "\
          "input=\"[SENSITIVE]\">"
      end
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #
    #   @return [Integer]
    #
    # @!attribute reverse_order
    #   <p>Lists events in descending order of their <code>timeStamp</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #
    #   @return [String]
    #
    # @!attribute include_execution_data
    #   <p>You can select whether execution data (input or output of a history event) is returned.
    #         The default is <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    GetExecutionHistoryInput = ::Struct.new(
      :execution_arn,
      :max_results,
      :reverse_order,
      :next_token,
      :include_execution_data,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
        self.reverse_order ||= false
      end
    end

    # @!attribute events
    #   <p>The list of events that occurred in the execution.</p>
    #
    #   @return [Array<HistoryEvent>]
    #
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #
    #   @return [String]
    #
    GetExecutionHistoryOutput = ::Struct.new(
      :events,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about the events of an execution.</p>
    #
    # @!attribute timestamp
    #   <p>The date and time the event occurred.</p>
    #
    #   @return [Time]
    #
    # @!attribute type
    #   <p>The type of the event.</p>
    #
    #   Enum, one of: ["ActivityFailed", "ActivityScheduled", "ActivityScheduleFailed", "ActivityStarted", "ActivitySucceeded", "ActivityTimedOut", "ChoiceStateEntered", "ChoiceStateExited", "ExecutionAborted", "ExecutionFailed", "ExecutionStarted", "ExecutionSucceeded", "ExecutionTimedOut", "FailStateEntered", "LambdaFunctionFailed", "LambdaFunctionScheduled", "LambdaFunctionScheduleFailed", "LambdaFunctionStarted", "LambdaFunctionStartFailed", "LambdaFunctionSucceeded", "LambdaFunctionTimedOut", "MapIterationAborted", "MapIterationFailed", "MapIterationStarted", "MapIterationSucceeded", "MapStateAborted", "MapStateEntered", "MapStateExited", "MapStateFailed", "MapStateStarted", "MapStateSucceeded", "ParallelStateAborted", "ParallelStateEntered", "ParallelStateExited", "ParallelStateFailed", "ParallelStateStarted", "ParallelStateSucceeded", "PassStateEntered", "PassStateExited", "SucceedStateEntered", "SucceedStateExited", "TaskFailed", "TaskScheduled", "TaskStarted", "TaskStartFailed", "TaskStateAborted", "TaskStateEntered", "TaskStateExited", "TaskSubmitFailed", "TaskSubmitted", "TaskSucceeded", "TaskTimedOut", "WaitStateAborted", "WaitStateEntered", "WaitStateExited"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The id of the event. Events are numbered sequentially, starting at one.</p>
    #
    #   @return [Integer]
    #
    # @!attribute previous_event_id
    #   <p>The id of the previous event.</p>
    #
    #   @return [Integer]
    #
    # @!attribute activity_failed_event_details
    #   <p>Contains details about an activity that failed during an execution.</p>
    #
    #   @return [ActivityFailedEventDetails]
    #
    # @!attribute activity_schedule_failed_event_details
    #   <p>Contains details about an activity schedule event that failed during an execution.</p>
    #
    #   @return [ActivityScheduleFailedEventDetails]
    #
    # @!attribute activity_scheduled_event_details
    #   <p>Contains details about an activity scheduled during an execution.</p>
    #
    #   @return [ActivityScheduledEventDetails]
    #
    # @!attribute activity_started_event_details
    #   <p>Contains details about the start of an activity during an execution.</p>
    #
    #   @return [ActivityStartedEventDetails]
    #
    # @!attribute activity_succeeded_event_details
    #   <p>Contains details about an activity that successfully terminated during an
    #         execution.</p>
    #
    #   @return [ActivitySucceededEventDetails]
    #
    # @!attribute activity_timed_out_event_details
    #   <p>Contains details about an activity timeout that occurred during an execution.</p>
    #
    #   @return [ActivityTimedOutEventDetails]
    #
    # @!attribute task_failed_event_details
    #   <p>Contains details about the failure of a task.</p>
    #
    #   @return [TaskFailedEventDetails]
    #
    # @!attribute task_scheduled_event_details
    #   <p>Contains details about a task that was scheduled.</p>
    #
    #   @return [TaskScheduledEventDetails]
    #
    # @!attribute task_start_failed_event_details
    #   <p>Contains details about a task that failed to start.</p>
    #
    #   @return [TaskStartFailedEventDetails]
    #
    # @!attribute task_started_event_details
    #   <p>Contains details about a task that was started.</p>
    #
    #   @return [TaskStartedEventDetails]
    #
    # @!attribute task_submit_failed_event_details
    #   <p>Contains details about a task that where the submit failed.</p>
    #
    #   @return [TaskSubmitFailedEventDetails]
    #
    # @!attribute task_submitted_event_details
    #   <p>Contains details about a submitted task.</p>
    #
    #   @return [TaskSubmittedEventDetails]
    #
    # @!attribute task_succeeded_event_details
    #   <p>Contains details about a task that succeeded.</p>
    #
    #   @return [TaskSucceededEventDetails]
    #
    # @!attribute task_timed_out_event_details
    #   <p>Contains details about a task that timed out.</p>
    #
    #   @return [TaskTimedOutEventDetails]
    #
    # @!attribute execution_failed_event_details
    #   <p>Contains details about an execution failure event.</p>
    #
    #   @return [ExecutionFailedEventDetails]
    #
    # @!attribute execution_started_event_details
    #   <p>Contains details about the start of the execution.</p>
    #
    #   @return [ExecutionStartedEventDetails]
    #
    # @!attribute execution_succeeded_event_details
    #   <p>Contains details about the successful termination of the execution.</p>
    #
    #   @return [ExecutionSucceededEventDetails]
    #
    # @!attribute execution_aborted_event_details
    #   <p>Contains details about an abort of an execution.</p>
    #
    #   @return [ExecutionAbortedEventDetails]
    #
    # @!attribute execution_timed_out_event_details
    #   <p>Contains details about the execution timeout that occurred during the execution.</p>
    #
    #   @return [ExecutionTimedOutEventDetails]
    #
    # @!attribute map_state_started_event_details
    #   <p>Contains details about Map state that was started.</p>
    #
    #   @return [MapStateStartedEventDetails]
    #
    # @!attribute map_iteration_started_event_details
    #   <p>Contains details about an iteration of a Map state that was started.</p>
    #
    #   @return [MapIterationEventDetails]
    #
    # @!attribute map_iteration_succeeded_event_details
    #   <p>Contains details about an iteration of a Map state that succeeded.</p>
    #
    #   @return [MapIterationEventDetails]
    #
    # @!attribute map_iteration_failed_event_details
    #   <p>Contains details about an iteration of a Map state that failed.</p>
    #
    #   @return [MapIterationEventDetails]
    #
    # @!attribute map_iteration_aborted_event_details
    #   <p>Contains details about an iteration of a Map state that was aborted.</p>
    #
    #   @return [MapIterationEventDetails]
    #
    # @!attribute lambda_function_failed_event_details
    #   <p>Contains details about a lambda function that failed during an execution.</p>
    #
    #   @return [LambdaFunctionFailedEventDetails]
    #
    # @!attribute lambda_function_schedule_failed_event_details
    #   <p>Contains details about a failed lambda function schedule event that occurred during an
    #         execution.</p>
    #
    #   @return [LambdaFunctionScheduleFailedEventDetails]
    #
    # @!attribute lambda_function_scheduled_event_details
    #   <p>Contains details about a lambda function scheduled during an execution.</p>
    #
    #   @return [LambdaFunctionScheduledEventDetails]
    #
    # @!attribute lambda_function_start_failed_event_details
    #   <p>Contains details about a lambda function that failed to start during an execution.</p>
    #
    #   @return [LambdaFunctionStartFailedEventDetails]
    #
    # @!attribute lambda_function_succeeded_event_details
    #   <p>Contains details about a lambda function that terminated successfully during an
    #         execution.</p>
    #
    #   @return [LambdaFunctionSucceededEventDetails]
    #
    # @!attribute lambda_function_timed_out_event_details
    #   <p>Contains details about a lambda function timeout that occurred during an execution.</p>
    #
    #   @return [LambdaFunctionTimedOutEventDetails]
    #
    # @!attribute state_entered_event_details
    #   <p>Contains details about a state entered during an execution.</p>
    #
    #   @return [StateEnteredEventDetails]
    #
    # @!attribute state_exited_event_details
    #   <p>Contains details about an exit from a state during an execution.</p>
    #
    #   @return [StateExitedEventDetails]
    #
    HistoryEvent = ::Struct.new(
      :timestamp,
      :type,
      :id,
      :previous_event_id,
      :activity_failed_event_details,
      :activity_schedule_failed_event_details,
      :activity_scheduled_event_details,
      :activity_started_event_details,
      :activity_succeeded_event_details,
      :activity_timed_out_event_details,
      :task_failed_event_details,
      :task_scheduled_event_details,
      :task_start_failed_event_details,
      :task_started_event_details,
      :task_submit_failed_event_details,
      :task_submitted_event_details,
      :task_succeeded_event_details,
      :task_timed_out_event_details,
      :execution_failed_event_details,
      :execution_started_event_details,
      :execution_succeeded_event_details,
      :execution_aborted_event_details,
      :execution_timed_out_event_details,
      :map_state_started_event_details,
      :map_iteration_started_event_details,
      :map_iteration_succeeded_event_details,
      :map_iteration_failed_event_details,
      :map_iteration_aborted_event_details,
      :lambda_function_failed_event_details,
      :lambda_function_schedule_failed_event_details,
      :lambda_function_scheduled_event_details,
      :lambda_function_start_failed_event_details,
      :lambda_function_succeeded_event_details,
      :lambda_function_timed_out_event_details,
      :state_entered_event_details,
      :state_exited_event_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.id ||= 0
        self.previous_event_id ||= 0
      end
    end

    # <p>Provides details about input or output in an execution history event.</p>
    #
    # @!attribute truncated
    #   <p>Indicates whether input or output was truncated in the response. Always
    #         <code>false</code> for API calls.</p>
    #
    #   @return [Boolean]
    #
    HistoryEventExecutionDataDetails = ::Struct.new(
      :truncated,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.truncated ||= false
      end
    end

    # Includes enum constants for HistoryEventType
    #
    module HistoryEventType
      # No documentation available.
      #
      ActivityFailed = "ActivityFailed"

      # No documentation available.
      #
      ActivityScheduled = "ActivityScheduled"

      # No documentation available.
      #
      ActivityScheduleFailed = "ActivityScheduleFailed"

      # No documentation available.
      #
      ActivityStarted = "ActivityStarted"

      # No documentation available.
      #
      ActivitySucceeded = "ActivitySucceeded"

      # No documentation available.
      #
      ActivityTimedOut = "ActivityTimedOut"

      # No documentation available.
      #
      ChoiceStateEntered = "ChoiceStateEntered"

      # No documentation available.
      #
      ChoiceStateExited = "ChoiceStateExited"

      # No documentation available.
      #
      ExecutionAborted = "ExecutionAborted"

      # No documentation available.
      #
      ExecutionFailed = "ExecutionFailed"

      # No documentation available.
      #
      ExecutionStarted = "ExecutionStarted"

      # No documentation available.
      #
      ExecutionSucceeded = "ExecutionSucceeded"

      # No documentation available.
      #
      ExecutionTimedOut = "ExecutionTimedOut"

      # No documentation available.
      #
      FailStateEntered = "FailStateEntered"

      # No documentation available.
      #
      LambdaFunctionFailed = "LambdaFunctionFailed"

      # No documentation available.
      #
      LambdaFunctionScheduled = "LambdaFunctionScheduled"

      # No documentation available.
      #
      LambdaFunctionScheduleFailed = "LambdaFunctionScheduleFailed"

      # No documentation available.
      #
      LambdaFunctionStarted = "LambdaFunctionStarted"

      # No documentation available.
      #
      LambdaFunctionStartFailed = "LambdaFunctionStartFailed"

      # No documentation available.
      #
      LambdaFunctionSucceeded = "LambdaFunctionSucceeded"

      # No documentation available.
      #
      LambdaFunctionTimedOut = "LambdaFunctionTimedOut"

      # No documentation available.
      #
      MapIterationAborted = "MapIterationAborted"

      # No documentation available.
      #
      MapIterationFailed = "MapIterationFailed"

      # No documentation available.
      #
      MapIterationStarted = "MapIterationStarted"

      # No documentation available.
      #
      MapIterationSucceeded = "MapIterationSucceeded"

      # No documentation available.
      #
      MapStateAborted = "MapStateAborted"

      # No documentation available.
      #
      MapStateEntered = "MapStateEntered"

      # No documentation available.
      #
      MapStateExited = "MapStateExited"

      # No documentation available.
      #
      MapStateFailed = "MapStateFailed"

      # No documentation available.
      #
      MapStateStarted = "MapStateStarted"

      # No documentation available.
      #
      MapStateSucceeded = "MapStateSucceeded"

      # No documentation available.
      #
      ParallelStateAborted = "ParallelStateAborted"

      # No documentation available.
      #
      ParallelStateEntered = "ParallelStateEntered"

      # No documentation available.
      #
      ParallelStateExited = "ParallelStateExited"

      # No documentation available.
      #
      ParallelStateFailed = "ParallelStateFailed"

      # No documentation available.
      #
      ParallelStateStarted = "ParallelStateStarted"

      # No documentation available.
      #
      ParallelStateSucceeded = "ParallelStateSucceeded"

      # No documentation available.
      #
      PassStateEntered = "PassStateEntered"

      # No documentation available.
      #
      PassStateExited = "PassStateExited"

      # No documentation available.
      #
      SucceedStateEntered = "SucceedStateEntered"

      # No documentation available.
      #
      SucceedStateExited = "SucceedStateExited"

      # No documentation available.
      #
      TaskFailed = "TaskFailed"

      # No documentation available.
      #
      TaskScheduled = "TaskScheduled"

      # No documentation available.
      #
      TaskStarted = "TaskStarted"

      # No documentation available.
      #
      TaskStartFailed = "TaskStartFailed"

      # No documentation available.
      #
      TaskStateAborted = "TaskStateAborted"

      # No documentation available.
      #
      TaskStateEntered = "TaskStateEntered"

      # No documentation available.
      #
      TaskStateExited = "TaskStateExited"

      # No documentation available.
      #
      TaskSubmitFailed = "TaskSubmitFailed"

      # No documentation available.
      #
      TaskSubmitted = "TaskSubmitted"

      # No documentation available.
      #
      TaskSucceeded = "TaskSucceeded"

      # No documentation available.
      #
      TaskTimedOut = "TaskTimedOut"

      # No documentation available.
      #
      WaitStateAborted = "WaitStateAborted"

      # No documentation available.
      #
      WaitStateEntered = "WaitStateEntered"

      # No documentation available.
      #
      WaitStateExited = "WaitStateExited"
    end

    # <p>The provided Amazon Resource Name (ARN) is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidArn = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The provided Amazon States Language definition is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDefinition = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The provided JSON input data is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidExecutionInput = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidLoggingConfiguration = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The provided name is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidName = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The provided JSON output data is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidOutput = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The provided token is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidToken = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your <code>tracingConfiguration</code> key does not match, or <code>enabled</code> has not been set to <code>true</code> or <code>false</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTracingConfiguration = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about a lambda function that failed during an execution.</p>
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    #   @return [String]
    #
    LambdaFunctionFailedEventDetails = ::Struct.new(
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::LambdaFunctionFailedEventDetails "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    # <p>Contains details about a failed lambda function schedule event that occurred during an
    #       execution.</p>
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    #   @return [String]
    #
    LambdaFunctionScheduleFailedEventDetails = ::Struct.new(
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::LambdaFunctionScheduleFailedEventDetails "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    # <p>Contains details about a lambda function scheduled during an execution.</p>
    #
    # @!attribute resource
    #   <p>The Amazon Resource Name (ARN) of the scheduled lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute input
    #   <p>The JSON data input to the lambda function. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute input_details
    #   <p>Contains details about input for an execution history event.</p>
    #
    #   @return [HistoryEventExecutionDataDetails]
    #
    # @!attribute timeout_in_seconds
    #   <p>The maximum allowed duration of the lambda function.</p>
    #
    #   @return [Integer]
    #
    LambdaFunctionScheduledEventDetails = ::Struct.new(
      :resource,
      :input,
      :input_details,
      :timeout_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::LambdaFunctionScheduledEventDetails "\
          "resource=#{resource || 'nil'}, "\
          "input=\"[SENSITIVE]\", "\
          "input_details=#{input_details || 'nil'}, "\
          "timeout_in_seconds=#{timeout_in_seconds || 'nil'}>"
      end
    end

    # <p>Contains details about a lambda function that failed to start during an execution.</p>
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    #   @return [String]
    #
    LambdaFunctionStartFailedEventDetails = ::Struct.new(
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::LambdaFunctionStartFailedEventDetails "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    # <p>Contains details about a lambda function that successfully terminated during an
    #       execution.</p>
    #
    # @!attribute output
    #   <p>The JSON data output by the lambda function. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute output_details
    #   <p>Contains details about the output of an execution history event.</p>
    #
    #   @return [HistoryEventExecutionDataDetails]
    #
    LambdaFunctionSucceededEventDetails = ::Struct.new(
      :output,
      :output_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::LambdaFunctionSucceededEventDetails "\
          "output=\"[SENSITIVE]\", "\
          "output_details=#{output_details || 'nil'}>"
      end
    end

    # <p>Contains details about a lambda function timeout that occurred during an execution.</p>
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the timeout.</p>
    #
    #   @return [String]
    #
    LambdaFunctionTimedOutEventDetails = ::Struct.new(
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::LambdaFunctionTimedOutEventDetails "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #
    #   @return [String]
    #
    ListActivitiesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute activities
    #   <p>The list of activities.</p>
    #
    #   @return [Array<ActivityListItem>]
    #
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #
    #   @return [String]
    #
    ListActivitiesOutput = ::Struct.new(
      :activities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine whose executions is listed.</p>
    #
    #   @return [String]
    #
    # @!attribute status_filter
    #   <p>If specified, only list the executions whose current execution status matches the given
    #         filter.</p>
    #
    #   Enum, one of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "ABORTED"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #
    #   @return [String]
    #
    ListExecutionsInput = ::Struct.new(
      :state_machine_arn,
      :status_filter,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute executions
    #   <p>The list of matching executions.</p>
    #
    #   @return [Array<ExecutionListItem>]
    #
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #
    #   @return [String]
    #
    ListExecutionsOutput = ::Struct.new(
      :executions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #
    #   @return [String]
    #
    ListStateMachinesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute state_machines
    #
    #   @return [Array<StateMachineListItem>]
    #
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #
    #   @return [String]
    #
    ListStateMachinesOutput = ::Struct.new(
      :state_machines,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>
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
    #   <p>An array of tags associated with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cloud_watch_logs_log_group
    #   <p>An object describing a CloudWatch log group. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html">AWS::Logs::LogGroup</a> in the AWS CloudFormation User Guide.</p>
    #
    #   @return [CloudWatchLogsLogGroup]
    #
    LogDestination = ::Struct.new(
      :cloud_watch_logs_log_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LogLevel
    #
    module LogLevel
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      FATAL = "FATAL"

      # No documentation available.
      #
      OFF = "OFF"
    end

    # <p>The <code>LoggingConfiguration</code> data type is used to set CloudWatch Logs
    #       options.</p>
    #
    # @!attribute level
    #   <p>Defines which category of execution history events are logged.</p>
    #
    #   Enum, one of: ["ALL", "ERROR", "FATAL", "OFF"]
    #
    #   @return [String]
    #
    # @!attribute include_execution_data
    #   <p>Determines whether execution data is included in your log. When set to <code>false</code>,
    #         data is excluded.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute destinations
    #   <p>An array of objects that describes where your execution history events will be logged.
    #         Limited to size 1. Required, if your log level is not set to <code>OFF</code>.</p>
    #
    #   @return [Array<LogDestination>]
    #
    LoggingConfiguration = ::Struct.new(
      :level,
      :include_execution_data,
      :destinations,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.include_execution_data ||= false
      end
    end

    # <p>Contains details about an iteration of a Map state.</p>
    #
    # @!attribute name
    #   <p>The name of the iteration’s parent Map state.</p>
    #
    #   @return [String]
    #
    # @!attribute index
    #   <p>The index of the array belonging to the Map state iteration.</p>
    #
    #   @return [Integer]
    #
    MapIterationEventDetails = ::Struct.new(
      :name,
      :index,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.index ||= 0
      end
    end

    # <p>Details about a Map state that was started.</p>
    #
    # @!attribute length
    #   <p>The size of the array for Map state iterations.</p>
    #
    #   @return [Integer]
    #
    MapStateStartedEventDetails = ::Struct.new(
      :length,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.length ||= 0
      end
    end

    # <p>Request is missing a required parameter. This error occurs if both <code>definition</code>
    #       and <code>roleArn</code> are not specified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MissingRequiredParameter = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Could not find the referenced resource. Only state machine and activity ARNs are
    #       supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #
    #   @return [String]
    #
    ResourceNotFound = ::Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_token
    #   <p>The token that represents this task. Task tokens are generated by Step Functions when
    #         tasks are assigned to a worker, or in the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html">context object</a> when a
    #         workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    #   @return [String]
    #
    SendTaskFailureInput = ::Struct.new(
      :task_token,
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::SendTaskFailureInput "\
          "task_token=#{task_token || 'nil'}, "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    SendTaskFailureOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_token
    #   <p>The token that represents this task. Task tokens are generated by Step Functions when
    #         tasks are assigned to a worker, or in the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html">context object</a> when a
    #         workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>
    #
    #   @return [String]
    #
    SendTaskHeartbeatInput = ::Struct.new(
      :task_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SendTaskHeartbeatOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_token
    #   <p>The token that represents this task. Task tokens are generated by Step Functions when
    #         tasks are assigned to a worker, or in the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html">context object</a> when a
    #         workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute output
    #   <p>The JSON output of the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    SendTaskSuccessInput = ::Struct.new(
      :task_token,
      :output,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::SendTaskSuccessInput "\
          "task_token=#{task_token || 'nil'}, "\
          "output=\"[SENSITIVE]\">"
      end
    end

    SendTaskSuccessOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine to execute.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the execution. This name must be unique for your AWS account, region, and state machine for 90 days. For more information,
    #       see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/limits.html service-limits-state-machine-executions">
    #       Limits Related to State Machine Executions</a> in the <i>AWS Step Functions Developer Guide</i>.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>"   % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #
    #   @return [String]
    #
    # @!attribute input
    #   <p>The string that contains the JSON input data for the execution, for example:</p>
    #            <p>
    #               <code>"input": "{\"first_name\" : \"test\"}"</code>
    #            </p>
    #            <note>
    #               <p>If you don't include any JSON input data, you still must include the two braces, for
    #           example: <code>"input": "{}"</code>
    #               </p>
    #            </note>
    #            <p>Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute trace_header
    #   <p>Passes the AWS X-Ray trace header. The trace header can also be passed in the request payload.</p>
    #
    #   @return [String]
    #
    StartExecutionInput = ::Struct.new(
      :state_machine_arn,
      :name,
      :input,
      :trace_header,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::StartExecutionInput "\
          "state_machine_arn=#{state_machine_arn || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "input=\"[SENSITIVE]\", "\
          "trace_header=#{trace_header || 'nil'}>"
      end
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The date the execution is started.</p>
    #
    #   @return [Time]
    #
    StartExecutionOutput = ::Struct.new(
      :execution_arn,
      :start_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine to execute.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute input
    #   <p>The string that contains the JSON input data for the execution, for example:</p>
    #            <p>
    #               <code>"input": "{\"first_name\" : \"test\"}"</code>
    #            </p>
    #            <note>
    #               <p>If you don't include any JSON input data, you still must include the two braces, for
    #            example: <code>"input": "{}"</code>
    #               </p>
    #            </note>
    #            <p>Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute trace_header
    #   <p>Passes the AWS X-Ray trace header. The trace header can also be passed in the request payload.</p>
    #
    #   @return [String]
    #
    StartSyncExecutionInput = ::Struct.new(
      :state_machine_arn,
      :name,
      :input,
      :trace_header,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::StartSyncExecutionInput "\
          "state_machine_arn=#{state_machine_arn || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "input=\"[SENSITIVE]\", "\
          "trace_header=#{trace_header || 'nil'}>"
      end
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the state machine.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The date the execution is started.</p>
    #
    #   @return [Time]
    #
    # @!attribute stop_date
    #   <p>If the execution has already ended, the date the execution stopped.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The current status of the execution.</p>
    #
    #   Enum, one of: ["SUCCEEDED", "FAILED", "TIMED_OUT"]
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute input
    #   <p>The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute input_details
    #   <p>Provides details about execution input or output.</p>
    #
    #   @return [CloudWatchEventsExecutionDataDetails]
    #
    # @!attribute output
    #   <p>The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #            <note>
    #               <p>This field is set only if the execution succeeds. If the execution fails, this field is
    #            null.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute output_details
    #   <p>Provides details about execution input or output.</p>
    #
    #   @return [CloudWatchEventsExecutionDataDetails]
    #
    # @!attribute trace_header
    #   <p>The AWS X-Ray trace header that was passed to the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute billing_details
    #   <p>An object that describes workflow billing details, including billed duration
    #         and memory use.</p>
    #
    #   @return [BillingDetails]
    #
    StartSyncExecutionOutput = ::Struct.new(
      :execution_arn,
      :state_machine_arn,
      :name,
      :start_date,
      :stop_date,
      :status,
      :error,
      :cause,
      :input,
      :input_details,
      :output,
      :output_details,
      :trace_header,
      :billing_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::StartSyncExecutionOutput "\
          "execution_arn=#{execution_arn || 'nil'}, "\
          "state_machine_arn=#{state_machine_arn || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "start_date=#{start_date || 'nil'}, "\
          "stop_date=#{stop_date || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\", "\
          "input=\"[SENSITIVE]\", "\
          "input_details=#{input_details || 'nil'}, "\
          "output=\"[SENSITIVE]\", "\
          "output_details=#{output_details || 'nil'}, "\
          "trace_header=#{trace_header || 'nil'}, "\
          "billing_details=#{billing_details || 'nil'}>"
      end
    end

    # <p>Contains details about a state entered during an execution.</p>
    #
    # @!attribute name
    #   <p>The name of the state.</p>
    #
    #   @return [String]
    #
    # @!attribute input
    #   <p>The string that contains the JSON input data for the state. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute input_details
    #   <p>Contains details about the input for an execution history event.</p>
    #
    #   @return [HistoryEventExecutionDataDetails]
    #
    StateEnteredEventDetails = ::Struct.new(
      :name,
      :input,
      :input_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::StateEnteredEventDetails "\
          "name=#{name || 'nil'}, "\
          "input=\"[SENSITIVE]\", "\
          "input_details=#{input_details || 'nil'}>"
      end
    end

    # <p>Contains details about an exit from a state during an execution.</p>
    #
    # @!attribute name
    #   <p>The name of the state.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>"   % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #
    #   @return [String]
    #
    # @!attribute output
    #   <p>The JSON output data of the state. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute output_details
    #   <p>Contains details about the output of an execution history event.</p>
    #
    #   @return [HistoryEventExecutionDataDetails]
    #
    StateExitedEventDetails = ::Struct.new(
      :name,
      :output,
      :output_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::StateExitedEventDetails "\
          "name=#{name || 'nil'}, "\
          "output=\"[SENSITIVE]\", "\
          "output_details=#{output_details || 'nil'}>"
      end
    end

    # <p>A state machine with the same name but a different definition or role ARN already
    #       exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StateMachineAlreadyExists = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified state machine is being deleted.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StateMachineDeleting = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified state machine does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StateMachineDoesNotExist = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of state machines has been reached. Existing state machines must be
    #       deleted before a new state machine can be created.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StateMachineLimitExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about the state machine.</p>
    #
    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the state machine.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the state machine.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>"   % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p></p>
    #
    #   Enum, one of: ["STANDARD", "EXPRESS"]
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date the state machine is created.</p>
    #
    #   @return [Time]
    #
    StateMachineListItem = ::Struct.new(
      :state_machine_arn,
      :name,
      :type,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StateMachineStatus
    #
    module StateMachineStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # Includes enum constants for StateMachineType
    #
    module StateMachineType
      # No documentation available.
      #
      STANDARD = "STANDARD"

      # No documentation available.
      #
      EXPRESS = "EXPRESS"
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StateMachineTypeNotSupported = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    #   @return [String]
    #
    StopExecutionInput = ::Struct.new(
      :execution_arn,
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::StopExecutionInput "\
          "execution_arn=#{execution_arn || 'nil'}, "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    # @!attribute stop_date
    #   <p>The date the execution is stopped.</p>
    #
    #   @return [Time]
    #
    StopExecutionOutput = ::Struct.new(
      :stop_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SyncExecutionStatus
    #
    module SyncExecutionStatus
      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      TIMED_OUT = "TIMED_OUT"
    end

    # <p>Tags are key-value pairs that can be associated with Step Functions state machines and
    #       activities.</p>
    #          <p>An array of key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
    #       Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User
    #         Guide</i>, and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM
    #           Tags</a>.</p>
    #          <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    #
    # @!attribute key
    #   <p>The key of a tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of a tag.</p>
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
    #   <p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tags to add to a resource.</p>
    #            <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
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

    # @!attribute message
    #
    #   @return [String]
    #
    TaskDoesNotExist = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about a task failure event.</p>
    #
    # @!attribute resource_type
    #   <p>The action of the resource called by a task state.</p>
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The service name of the resource in a task state.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    #   @return [String]
    #
    TaskFailedEventDetails = ::Struct.new(
      :resource_type,
      :resource,
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::TaskFailedEventDetails "\
          "resource_type=#{resource_type || 'nil'}, "\
          "resource=#{resource || 'nil'}, "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    # <p>Contains details about a task scheduled during an execution.</p>
    #
    # @!attribute resource_type
    #   <p>The action of the resource called by a task state.</p>
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The service name of the resource in a task state.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The region of the scheduled task</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The JSON data passed to the resource referenced in a task state.
    #         Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout_in_seconds
    #   <p>The maximum allowed duration of the task.</p>
    #
    #   @return [Integer]
    #
    # @!attribute heartbeat_in_seconds
    #   <p>The maximum allowed duration between two heartbeats for the task.</p>
    #
    #   @return [Integer]
    #
    TaskScheduledEventDetails = ::Struct.new(
      :resource_type,
      :resource,
      :region,
      :parameters,
      :timeout_in_seconds,
      :heartbeat_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::TaskScheduledEventDetails "\
          "resource_type=#{resource_type || 'nil'}, "\
          "resource=#{resource || 'nil'}, "\
          "region=#{region || 'nil'}, "\
          "parameters=\"[SENSITIVE]\", "\
          "timeout_in_seconds=#{timeout_in_seconds || 'nil'}, "\
          "heartbeat_in_seconds=#{heartbeat_in_seconds || 'nil'}>"
      end
    end

    # <p>Contains details about a task that failed to start during an execution.</p>
    #
    # @!attribute resource_type
    #   <p>The action of the resource called by a task state.</p>
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The service name of the resource in a task state.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    #   @return [String]
    #
    TaskStartFailedEventDetails = ::Struct.new(
      :resource_type,
      :resource,
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::TaskStartFailedEventDetails "\
          "resource_type=#{resource_type || 'nil'}, "\
          "resource=#{resource || 'nil'}, "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    # <p>Contains details about the start of a task during an execution.</p>
    #
    # @!attribute resource_type
    #   <p>The action of the resource called by a task state.</p>
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The service name of the resource in a task state.</p>
    #
    #   @return [String]
    #
    TaskStartedEventDetails = ::Struct.new(
      :resource_type,
      :resource,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about a task that failed to submit during an execution.</p>
    #
    # @!attribute resource_type
    #   <p>The action of the resource called by a task state.</p>
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The service name of the resource in a task state.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    #   @return [String]
    #
    TaskSubmitFailedEventDetails = ::Struct.new(
      :resource_type,
      :resource,
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::TaskSubmitFailedEventDetails "\
          "resource_type=#{resource_type || 'nil'}, "\
          "resource=#{resource || 'nil'}, "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    # <p>Contains details about a task submitted to a resource .</p>
    #
    # @!attribute resource_type
    #   <p>The action of the resource called by a task state.</p>
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The service name of the resource in a task state.</p>
    #
    #   @return [String]
    #
    # @!attribute output
    #   <p>The response from a resource when a task has started. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute output_details
    #   <p>Contains details about the output of an execution history event.</p>
    #
    #   @return [HistoryEventExecutionDataDetails]
    #
    TaskSubmittedEventDetails = ::Struct.new(
      :resource_type,
      :resource,
      :output,
      :output_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::TaskSubmittedEventDetails "\
          "resource_type=#{resource_type || 'nil'}, "\
          "resource=#{resource || 'nil'}, "\
          "output=\"[SENSITIVE]\", "\
          "output_details=#{output_details || 'nil'}>"
      end
    end

    # <p>Contains details about the successful completion of a task state.</p>
    #
    # @!attribute resource_type
    #   <p>The action of the resource called by a task state.</p>
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The service name of the resource in a task state.</p>
    #
    #   @return [String]
    #
    # @!attribute output
    #   <p>The full JSON response from a resource when a task has succeeded. This response becomes
    #         the output of the related task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute output_details
    #   <p>Contains details about the output of an execution history event.</p>
    #
    #   @return [HistoryEventExecutionDataDetails]
    #
    TaskSucceededEventDetails = ::Struct.new(
      :resource_type,
      :resource,
      :output,
      :output_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::TaskSucceededEventDetails "\
          "resource_type=#{resource_type || 'nil'}, "\
          "resource=#{resource || 'nil'}, "\
          "output=\"[SENSITIVE]\", "\
          "output_details=#{output_details || 'nil'}>"
      end
    end

    # @!attribute message
    #
    #   @return [String]
    #
    TaskTimedOut = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about a resource timeout that occurred during an execution.</p>
    #
    # @!attribute resource_type
    #   <p>The action of the resource called by a task state.</p>
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The service name of the resource in a task state.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>The error code of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    #   @return [String]
    #
    TaskTimedOutEventDetails = ::Struct.new(
      :resource_type,
      :resource,
      :error,
      :cause,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::TaskTimedOutEventDetails "\
          "resource_type=#{resource_type || 'nil'}, "\
          "resource=#{resource || 'nil'}, "\
          "error=\"[SENSITIVE]\", "\
          "cause=\"[SENSITIVE]\">"
      end
    end

    # <p>You've exceeded the number of tags allowed for a resource. See the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/limits.html"> Limits Topic</a> in the
    #       AWS Step Functions Developer Guide.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #
    #   @return [String]
    #
    TooManyTags = ::Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Selects whether or not the state machine's AWS X-Ray tracing is enabled. Default is <code>false</code>
    #          </p>
    #
    # @!attribute enabled
    #   <p>When set to <code>true</code>, AWS X-Ray tracing is enabled.</p>
    #
    #   @return [Boolean]
    #
    TracingConfiguration = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The list of tags to remove from the resource.</p>
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

    # @!attribute state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine.</p>
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>The Amazon States Language definition of the state machine. See <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role of the state machine.</p>
    #
    #   @return [String]
    #
    # @!attribute logging_configuration
    #   <p>The <code>LoggingConfiguration</code> data type is used to set CloudWatch Logs
    #         options.</p>
    #
    #   @return [LoggingConfiguration]
    #
    # @!attribute tracing_configuration
    #   <p>Selects whether AWS X-Ray tracing is enabled.</p>
    #
    #   @return [TracingConfiguration]
    #
    UpdateStateMachineInput = ::Struct.new(
      :state_machine_arn,
      :definition,
      :role_arn,
      :logging_configuration,
      :tracing_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SFN::Types::UpdateStateMachineInput "\
          "state_machine_arn=#{state_machine_arn || 'nil'}, "\
          "definition=\"[SENSITIVE]\", "\
          "role_arn=#{role_arn || 'nil'}, "\
          "logging_configuration=#{logging_configuration || 'nil'}, "\
          "tracing_configuration=#{tracing_configuration || 'nil'}>"
      end
    end

    # @!attribute update_date
    #   <p>The date and time the state machine was updated.</p>
    #
    #   @return [Time]
    #
    UpdateStateMachineOutput = ::Struct.new(
      :update_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
