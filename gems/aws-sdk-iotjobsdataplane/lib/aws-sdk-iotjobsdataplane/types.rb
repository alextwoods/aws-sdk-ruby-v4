# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTJobsDataPlane
  module Types

    # <p>The certificate is invalid.</p>
    #
    # @!attribute message
    #   <p>Additional information about the exception.</p>
    #
    #   @return [String]
    #
    CertificateValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier assigned to this job when it was created.</p>
    #
    #   @return [String]
    #
    # @!attribute thing_name
    #   <p>The thing name associated with the device the job execution is running on.</p>
    #
    #   @return [String]
    #
    # @!attribute include_job_document
    #   <p>Optional. When set to true, the response contains the job document. The default is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute execution_number
    #   <p>Optional. A number that identifies a particular job execution on a particular device. If not specified,
    #            the latest job execution is returned.</p>
    #
    #   @return [Integer]
    #
    DescribeJobExecutionInput = ::Struct.new(
      :job_id,
      :thing_name,
      :include_job_document,
      :execution_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute execution
    #   <p>Contains data about a job execution.</p>
    #
    #   @return [JobExecution]
    #
    DescribeJobExecutionOutput = ::Struct.new(
      :execution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute thing_name
    #   <p>The name of the thing that is executing the job.</p>
    #
    #   @return [String]
    #
    GetPendingJobExecutionsInput = ::Struct.new(
      :thing_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute in_progress_jobs
    #   <p>A list of JobExecutionSummary objects with status IN_PROGRESS.</p>
    #
    #   @return [Array<JobExecutionSummary>]
    #
    # @!attribute queued_jobs
    #   <p>A list of JobExecutionSummary objects with status QUEUED.</p>
    #
    #   @return [Array<JobExecutionSummary>]
    #
    GetPendingJobExecutionsOutput = ::Struct.new(
      :in_progress_jobs,
      :queued_jobs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The contents of the request were invalid. For example, this code is returned when an UpdateJobExecution request contains invalid status details. The message contains details about the error.</p>
    #
    # @!attribute message
    #   <p>The message for the exception.</p>
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An update attempted to change the job execution to a state that is invalid because of the job execution's
    #          current state (for example, an attempt to change a request in state SUCCESS to state IN_PROGRESS). In this
    #          case, the body of the error message also contains the executionState field.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidStateTransitionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains data about a job execution.</p>
    #
    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #
    #   @return [String]
    #
    # @!attribute thing_name
    #   <p>The name of the thing that is executing the job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the job execution. Can be one of: "QUEUED", "IN_PROGRESS", "FAILED", "SUCCESS", "CANCELED",
    #            "REJECTED", or "REMOVED".</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"]
    #
    #   @return [String]
    #
    # @!attribute status_details
    #   <p>A collection of name/value pairs that describe the status of the job execution.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute queued_at
    #   <p>The time, in milliseconds since the epoch, when the job execution was enqueued.</p>
    #
    #   @return [Integer]
    #
    # @!attribute started_at
    #   <p>The time, in milliseconds since the epoch, when the job execution was started.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the job execution was last updated. </p>
    #
    #   @return [Integer]
    #
    # @!attribute approximate_seconds_before_timed_out
    #   <p>The estimated number of seconds that remain before the job execution status will be
    #              changed to <code>TIMED_OUT</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute version_number
    #   <p>The version of the job execution. Job execution versions are incremented each time they are updated by a
    #            device.</p>
    #
    #   @return [Integer]
    #
    # @!attribute execution_number
    #   <p>A number that identifies a particular job execution on a particular device. It can be used later in
    #            commands that return or update job execution information.</p>
    #
    #   @return [Integer]
    #
    # @!attribute job_document
    #   <p>The content of the job document.</p>
    #
    #   @return [String]
    #
    JobExecution = ::Struct.new(
      :job_id,
      :thing_name,
      :status,
      :status_details,
      :queued_at,
      :started_at,
      :last_updated_at,
      :approximate_seconds_before_timed_out,
      :version_number,
      :execution_number,
      :job_document,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.queued_at ||= 0
        self.last_updated_at ||= 0
        self.version_number ||= 0
      end

    end

    # <p>Contains data about the state of a job execution.</p>
    #
    # @!attribute status
    #   <p>The status of the job execution. Can be one of: "QUEUED", "IN_PROGRESS", "FAILED", "SUCCESS", "CANCELED",
    #            "REJECTED", or "REMOVED".</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"]
    #
    #   @return [String]
    #
    # @!attribute status_details
    #   <p>A collection of name/value pairs that describe the status of the job execution.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute version_number
    #   <p>The version of the job execution. Job execution versions are incremented each time they are updated by a
    #            device.</p>
    #
    #   @return [Integer]
    #
    JobExecutionState = ::Struct.new(
      :status,
      :status_details,
      :version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version_number ||= 0
      end

    end

    # Includes enum constants for JobExecutionStatus
    #
    module JobExecutionStatus
      # No documentation available.
      #
      QUEUED = "QUEUED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

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
      REJECTED = "REJECTED"

      # No documentation available.
      #
      REMOVED = "REMOVED"

      # No documentation available.
      #
      CANCELED = "CANCELED"
    end

    # <p>Contains a subset of information about a job execution.</p>
    #
    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #
    #   @return [String]
    #
    # @!attribute queued_at
    #   <p>The time, in milliseconds since the epoch, when the job execution was enqueued.</p>
    #
    #   @return [Integer]
    #
    # @!attribute started_at
    #   <p>The time, in milliseconds since the epoch, when the job execution started.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the job execution was last updated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute version_number
    #   <p>The version of the job execution. Job execution versions are incremented each time AWS IoT Jobs receives
    #            an update from a device.</p>
    #
    #   @return [Integer]
    #
    # @!attribute execution_number
    #   <p>A number that identifies a particular job execution on a particular device.</p>
    #
    #   @return [Integer]
    #
    JobExecutionSummary = ::Struct.new(
      :job_id,
      :queued_at,
      :started_at,
      :last_updated_at,
      :version_number,
      :execution_number,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.queued_at ||= 0
        self.last_updated_at ||= 0
        self.version_number ||= 0
      end

    end

    # <p>The specified resource does not exist.</p>
    #
    # @!attribute message
    #   <p>The message for the exception.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service is temporarily unavailable.</p>
    #
    # @!attribute message
    #   <p>The message for the exception.</p>
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute thing_name
    #   <p>The name of the thing associated with the device.</p>
    #
    #   @return [String]
    #
    # @!attribute status_details
    #   <p>A collection of name/value pairs that describe the status of the job execution. If not specified, the
    #            statusDetails are unchanged.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute step_timeout_in_minutes
    #   <p>Specifies the amount of time this device has to finish execution of this job. If the job
    #              execution status is not set to a terminal state before this timer expires, or before the
    #              timer is reset (by calling <code>UpdateJobExecution</code>, setting the status to
    #              <code>IN_PROGRESS</code> and specifying a new timeout value in field <code>stepTimeoutInMinutes</code>)
    #              the job execution status will be automatically set to <code>TIMED_OUT</code>.  Note that setting
    #              this timeout has no effect on that job execution timeout which may have been specified when
    #              the job was created (<code>CreateJob</code> using field <code>timeoutConfig</code>).</p>
    #
    #   @return [Integer]
    #
    StartNextPendingJobExecutionInput = ::Struct.new(
      :thing_name,
      :status_details,
      :step_timeout_in_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute execution
    #   <p>A JobExecution object.</p>
    #
    #   @return [JobExecution]
    #
    StartNextPendingJobExecutionOutput = ::Struct.new(
      :execution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The job is in a terminal state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TerminalStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The rate exceeds the limit.</p>
    #
    # @!attribute message
    #   <p>The message associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute payload
    #   <p>The payload associated with the exception.</p>
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :payload,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier assigned to this job when it was created.</p>
    #
    #   @return [String]
    #
    # @!attribute thing_name
    #   <p>The name of the thing associated with the device.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or REJECTED). This must be specified
    #            on every update.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"]
    #
    #   @return [String]
    #
    # @!attribute status_details
    #   <p> Optional. A collection of name/value pairs that describe the status of the job execution. If not
    #            specified, the statusDetails are unchanged.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute step_timeout_in_minutes
    #   <p>Specifies the amount of time this device has to finish execution of this job. If the job
    #              execution status is not set to a terminal state before this timer expires, or before the
    #              timer is reset (by again calling <code>UpdateJobExecution</code>, setting the status to
    #              <code>IN_PROGRESS</code> and specifying a new timeout value in this field) the job execution
    #              status will be automatically set to <code>TIMED_OUT</code>.  Note that setting or resetting
    #              this timeout has no effect on that job execution timeout which may have been specified when
    #              the job was created (<code>CreateJob</code> using field <code>timeoutConfig</code>).</p>
    #
    #   @return [Integer]
    #
    # @!attribute expected_version
    #   <p>Optional. The expected current version of the job execution. Each time you update the job execution, its
    #            version is incremented. If the version of the job execution stored in Jobs does not match, the update is
    #            rejected with a VersionMismatch error, and an ErrorResponse that contains the current job execution status data
    #            is returned. (This makes it unnecessary to perform a separate DescribeJobExecution request in order to obtain
    #            the job execution status data.)</p>
    #
    #   @return [Integer]
    #
    # @!attribute include_job_execution_state
    #   <p>Optional. When included and set to true, the response contains the JobExecutionState data. The default is
    #            false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_job_document
    #   <p>Optional. When set to true, the response contains the job document. The default is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute execution_number
    #   <p>Optional. A number that identifies a particular job execution on a particular device.</p>
    #
    #   @return [Integer]
    #
    UpdateJobExecutionInput = ::Struct.new(
      :job_id,
      :thing_name,
      :status,
      :status_details,
      :step_timeout_in_minutes,
      :expected_version,
      :include_job_execution_state,
      :include_job_document,
      :execution_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute execution_state
    #   <p>A JobExecutionState object.</p>
    #
    #   @return [JobExecutionState]
    #
    # @!attribute job_document
    #   <p>The contents of the Job Documents.</p>
    #
    #   @return [String]
    #
    UpdateJobExecutionOutput = ::Struct.new(
      :execution_state,
      :job_document,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
