# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Synthetics
  module Types

    # <p>A structure that contains the configuration for canary artifacts, including the
    #          encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>
    #
    # @!attribute s3_encryption
    #   <p>A structure that contains the configuration of the encryption-at-rest settings for artifacts that the canary uploads
    #            to Amazon S3.
    #            Artifact encryption functionality is available only for canaries that use Synthetics runtime version
    #            syn-nodejs-puppeteer-3.3 or later. For more information, see
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_artifact_encryption.html">Encrypting canary artifacts</a>
    #            </p>
    #
    #   @return [S3EncryptionConfig]
    #
    ArtifactConfigInput = ::Struct.new(
      :s3_encryption,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains the configuration for canary artifacts, including
    #          the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>
    #
    # @!attribute s3_encryption
    #   <p>A structure that contains the configuration of encryption settings for canary artifacts that are stored in Amazon S3. </p>
    #
    #   @return [S3EncryptionConfig]
    #
    ArtifactConfigOutput = ::Struct.new(
      :s3_encryption,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure representing a screenshot that is used as a baseline during visual monitoring comparisons made by the canary.</p>
    #
    # @!attribute screenshot_name
    #   <p>The name of the screenshot. This is generated the first time the canary is run after the <code>UpdateCanary</code> operation that
    #         specified for this canary to perform visual monitoring.</p>
    #
    #   @return [String]
    #
    # @!attribute ignore_coordinates
    #   <p>Coordinates that define the part of a screen to ignore during screenshot comparisons. To obtain the coordinates to use here, use the
    #            CloudWatch Logs console to draw the boundaries on the screen. For more information, see {LINK}</p>
    #
    #   @return [Array<String>]
    #
    BaseScreenshot = ::Struct.new(
      :screenshot_name,
      :ignore_coordinates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure contains all information about one canary in your account.</p>
    #
    # @!attribute id
    #   <p>The unique ID of this canary.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the canary.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>This structure contains information about the canary's Lambda handler and
    #         where its code is stored by CloudWatch Synthetics.</p>
    #
    #   @return [CanaryCodeOutput]
    #
    # @!attribute execution_role_arn
    #   <p>The ARN of the IAM role used to run the canary. This role must include <code>lambda.amazonaws.com</code> as a principal in the trust
    #            policy.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>A structure that contains information about how often the canary is to run, and when
    #            these runs are to stop.</p>
    #
    #   @return [CanaryScheduleOutput]
    #
    # @!attribute run_config
    #   <p>A structure that contains information about a canary run.</p>
    #
    #   @return [CanaryRunConfigOutput]
    #
    # @!attribute success_retention_period_in_days
    #   <p>The number of days to retain data about successful runs of this canary.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failure_retention_period_in_days
    #   <p>The number of days to retain data about failed runs of this canary.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>A structure that contains information about the canary's status.</p>
    #
    #   @return [CanaryStatus]
    #
    # @!attribute timeline
    #   <p>A structure that contains information about when the canary was created, modified, and
    #            most recently run.</p>
    #
    #   @return [CanaryTimeline]
    #
    # @!attribute artifact_s3_location
    #   <p>The location in Amazon S3 where Synthetics stores artifacts from the runs of this
    #            canary. Artifacts include the log file, screenshots, and HAR files.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_arn
    #   <p>The ARN of the Lambda function that is used as your canary's engine. For more information
    #            about Lambda ARN format, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-api-permissions-ref.html">Resources and Conditions for Lambda Actions</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute runtime_version
    #   <p>Specifies the runtime version to use for the canary. For more information about
    #            runtime versions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #               Canary Runtime Versions</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>If this canary is to test an endpoint in a VPC, this structure contains
    #            information about the subnets and security groups of the VPC endpoint.
    #            For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #               Running a Canary in a VPC</a>.</p>
    #
    #   @return [VpcConfigOutput]
    #
    # @!attribute visual_reference
    #   <p>If this canary performs visual monitoring by comparing screenshots, this structure contains the ID of the canary run to use as the baseline for screenshots, and the coordinates
    #         of any parts of the screen to ignore during the visual monitoring comparison.</p>
    #
    #   @return [VisualReferenceOutput]
    #
    # @!attribute tags
    #   <p>The list of key-value pairs that are associated with the canary.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute artifact_config
    #   <p>A structure that contains the configuration for canary artifacts, including
    #            the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>
    #
    #   @return [ArtifactConfigOutput]
    #
    Canary = ::Struct.new(
      :id,
      :name,
      :code,
      :execution_role_arn,
      :schedule,
      :run_config,
      :success_retention_period_in_days,
      :failure_retention_period_in_days,
      :status,
      :timeline,
      :artifact_s3_location,
      :engine_arn,
      :runtime_version,
      :vpc_config,
      :visual_reference,
      :tags,
      :artifact_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Use this structure to input your script code for the canary. This structure contains the
    #          Lambda handler with the location where the canary should start running the script. If the
    #          script is stored in an S3 bucket, the bucket name, key, and version are also included. If
    #          the script was passed into the canary directly, the script code is contained in the value
    #          of <code>Zipfile</code>. </p>
    #
    # @!attribute s3_bucket
    #   <p>If your canary script is located in S3, specify the bucket name here. Do not include <code>s3://</code> as the
    #            start of the bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key
    #   <p>The S3 key of your script. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingObjects.html">Working with Amazon S3 Objects</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_version
    #   <p>The S3 version ID of your script.</p>
    #
    #   @return [String]
    #
    # @!attribute zip_file
    #   <p>If you input your canary script directly into the canary instead of referring to an S3
    #            location, the value of this parameter is the base64-encoded contents of the .zip file that
    #            contains the script. It must be smaller than 225 Kb.</p>
    #            <p>For large canary scripts, we recommend that you use an S3 location instead of inputting it
    #         directly with this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute handler
    #   <p>The entry point to use for the source code when running the canary. For canaries that use the
    #            <code>syn-python-selenium-1.0</code> runtime
    #            or a <code>syn-nodejs.puppeteer</code> runtime earlier than <code>syn-nodejs.puppeteer-3.4</code>,
    #            the handler must be specified as <code>
    #                  <i>fileName</i>.handler</code>. For
    #            <code>syn-python-selenium-1.1</code>, <code>syn-nodejs.puppeteer-3.4</code>, and later runtimes, the handler can be specified as
    #               <code>
    #                  <i>fileName</i>.<i>functionName</i>
    #               </code>, or
    #               you can specify a folder where canary scripts reside as
    #   <code>
    #                  <i>folder</i>/<i>fileName</i>.<i>functionName</i>
    #               </code>.</p>
    #
    #   @return [String]
    #
    CanaryCodeInput = ::Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_version,
      :zip_file,
      :handler,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure contains information about the canary's Lambda handler and
    #       where its code is stored by CloudWatch Synthetics.</p>
    #
    # @!attribute source_location_arn
    #   <p>The ARN of the Lambda layer where Synthetics stores the canary script code.</p>
    #
    #   @return [String]
    #
    # @!attribute handler
    #   <p>The entry point to use for the source code when running the canary.</p>
    #
    #   @return [String]
    #
    CanaryCodeOutput = ::Struct.new(
      :source_location_arn,
      :handler,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure contains information about the most recent run of a single canary.</p>
    #
    # @!attribute canary_name
    #   <p>The name of the canary.</p>
    #
    #   @return [String]
    #
    # @!attribute last_run
    #   <p>The results from this canary's most recent run.</p>
    #
    #   @return [CanaryRun]
    #
    CanaryLastRun = ::Struct.new(
      :canary_name,
      :last_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure contains the details about one run of one canary.</p>
    #
    # @!attribute id
    #   <p>A unique ID that identifies this canary run.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the canary.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of this run.</p>
    #
    #   @return [CanaryRunStatus]
    #
    # @!attribute timeline
    #   <p>A structure that contains the start and end times of this run.</p>
    #
    #   @return [CanaryRunTimeline]
    #
    # @!attribute artifact_s3_location
    #   <p>The location where the canary stored artifacts from the run. Artifacts include
    #            the log file, screenshots, and HAR files.</p>
    #
    #   @return [String]
    #
    CanaryRun = ::Struct.new(
      :id,
      :name,
      :status,
      :timeline,
      :artifact_s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains input information for a canary run.</p>
    #
    # @!attribute timeout_in_seconds
    #   <p>How long the canary is allowed to run before it must stop. You can't set this time to be longer
    #            than the frequency of the runs of this canary.</p>
    #            <p>If you omit this field, the
    #            frequency of the canary is used as this value, up to a maximum of 14 minutes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory_in_mb
    #   <p>The maximum amount of memory available to the canary while it is running, in MB. This value must be a multiple of 64.</p>
    #
    #   @return [Integer]
    #
    # @!attribute active_tracing
    #   <p>Specifies whether this canary is to use active X-Ray tracing when it runs. Active tracing
    #            enables
    #            this canary run to be displayed in the ServiceLens and X-Ray service maps even if the canary does
    #            not hit an endpoint that has X-Ray tracing enabled. Using X-Ray tracing incurs charges.
    #         For more information, see  <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_tracing.html">
    #            Canaries and X-Ray tracing</a>.</p>
    #            <p>You can enable active tracing only for canaries that use version <code>syn-nodejs-2.0</code>
    #         or later for their canary runtime.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute environment_variables
    #   <p>Specifies the keys and values to use for any environment variables
    #         used in the canary script. Use the following format:</p>
    #            <p>{ "key1" : "value1", "key2" : "value2", ...}</p>
    #            <p>Keys must start with a letter and be at least two characters. The total size
    #            of your environment variables cannot exceed 4 KB. You can't specify any Lambda
    #            reserved environment variables as the keys for your environment variables. For
    #            more information about reserved keys, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html configuration-envvars-runtime">
    #               Runtime environment variables</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CanaryRunConfigInput = ::Struct.new(
      :timeout_in_seconds,
      :memory_in_mb,
      :active_tracing,
      :environment_variables,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains information about a canary run.</p>
    #
    # @!attribute timeout_in_seconds
    #   <p>How long the canary is allowed to run before it must stop.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory_in_mb
    #   <p>The maximum amount of memory available to the canary while it is running, in MB. This value
    #            must be a multiple of 64.</p>
    #
    #   @return [Integer]
    #
    # @!attribute active_tracing
    #   <p>Displays whether this canary run used active X-Ray tracing. </p>
    #
    #   @return [Boolean]
    #
    CanaryRunConfigOutput = ::Struct.new(
      :timeout_in_seconds,
      :memory_in_mb,
      :active_tracing,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CanaryRunState
    #
    module CanaryRunState
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      PASSED = "PASSED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for CanaryRunStateReasonCode
    #
    module CanaryRunStateReasonCode
      # No documentation available.
      #
      CANARY_FAILURE = "CANARY_FAILURE"

      # No documentation available.
      #
      EXECUTION_FAILURE = "EXECUTION_FAILURE"
    end

    # <p>This structure contains the status information about a canary run.</p>
    #
    # @!attribute state
    #   <p>The current state of the run.</p>
    #
    #   Enum, one of: ["RUNNING", "PASSED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>If run of the canary failed, this field contains the reason for the error.</p>
    #
    #   @return [String]
    #
    # @!attribute state_reason_code
    #   <p>If this value is <code>CANARY_FAILURE</code>, an exception occurred in the
    #            canary code. If this value is <code>EXECUTION_FAILURE</code>, an exception occurred in
    #            CloudWatch Synthetics.</p>
    #
    #   Enum, one of: ["CANARY_FAILURE", "EXECUTION_FAILURE"]
    #
    #   @return [String]
    #
    CanaryRunStatus = ::Struct.new(
      :state,
      :state_reason,
      :state_reason_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure contains the start and end times of a single canary run.</p>
    #
    # @!attribute started
    #   <p>The start time of the run.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed
    #   <p>The end time of the run.</p>
    #
    #   @return [Time]
    #
    CanaryRunTimeline = ::Struct.new(
      :started,
      :completed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure specifies how often a canary is to make runs and the date and time
    #          when it should stop making runs.</p>
    #
    # @!attribute expression
    #   <p>A <code>rate</code> expression or a <code>cron</code> expression that defines how often the canary is to run.</p>
    #            <p>For a rate expression, The syntax is
    #                  <code>rate(<i>number unit</i>)</code>. <i>unit</i>
    #            can be <code>minute</code>, <code>minutes</code>, or <code>hour</code>. </p>
    #            <p>For example, <code>rate(1 minute)</code> runs the canary once a minute, <code>rate(10 minutes)</code> runs it once every
    #         10 minutes, and <code>rate(1 hour)</code> runs it once every hour. You can
    #            specify a frequency between <code>rate(1 minute)</code> and <code>rate(1 hour)</code>.</p>
    #            <p>Specifying <code>rate(0 minute)</code> or <code>rate(0 hour)</code> is a special value
    #            that causes the
    #            canary to run only once when it is started.</p>
    #            <p>Use <code>cron(<i>expression</i>)</code> to specify a cron
    #            expression. You can't schedule a canary to wait for more than a year before running. For information about the syntax for cron expressions, see
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html">
    #               Scheduling canary runs using cron</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute duration_in_seconds
    #   <p>How long, in seconds, for the canary to continue making regular runs according to
    #            the schedule in the <code>Expression</code> value. If you specify 0, the canary continues
    #            making runs until you stop it. If you omit this field, the default of 0 is used.</p>
    #
    #   @return [Integer]
    #
    CanaryScheduleInput = ::Struct.new(
      :expression,
      :duration_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>How long, in seconds, for the canary to continue making regular runs according to the schedule in the
    #          <code>Expression</code> value.</p>
    #
    # @!attribute expression
    #   <p>A <code>rate</code> expression or a <code>cron</code> expression that defines how often the canary is to run.</p>
    #            <p>For a rate expression, The syntax is
    #            <code>rate(<i>number unit</i>)</code>. <i>unit</i>
    #            can be <code>minute</code>, <code>minutes</code>, or <code>hour</code>. </p>
    #            <p>For example, <code>rate(1 minute)</code> runs the canary once a minute, <code>rate(10 minutes)</code> runs it once every
    #            10 minutes, and <code>rate(1 hour)</code> runs it once every hour. You can
    #            specify a frequency between <code>rate(1 minute)</code> and <code>rate(1 hour)</code>.</p>
    #            <p>Specifying <code>rate(0 minute)</code> or <code>rate(0 hour)</code> is a special value
    #            that causes the
    #            canary to run only once when it is started.</p>
    #            <p>Use <code>cron(<i>expression</i>)</code> to specify a cron
    #            expression. For information about the syntax for cron expressions, see
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html">
    #               Scheduling canary runs using cron</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute duration_in_seconds
    #   <p>How long, in seconds, for the canary to continue making regular runs after it
    #            was created. The runs are performed according to the schedule in the
    #            <code>Expression</code> value.</p>
    #
    #   @return [Integer]
    #
    CanaryScheduleOutput = ::Struct.new(
      :expression,
      :duration_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CanaryState
    #
    module CanaryState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # Includes enum constants for CanaryStateReasonCode
    #
    module CanaryStateReasonCode
      # No documentation available.
      #
      INVALID_PERMISSIONS = "INVALID_PERMISSIONS"

      # No documentation available.
      #
      CREATE_PENDING = "CREATE_PENDING"

      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      UPDATE_PENDING = "UPDATE_PENDING"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_COMPLETE = "UPDATE_COMPLETE"

      # No documentation available.
      #
      ROLLBACK_COMPLETE = "ROLLBACK_COMPLETE"

      # No documentation available.
      #
      ROLLBACK_FAILED = "ROLLBACK_FAILED"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      SYNC_DELETE_IN_PROGRESS = "SYNC_DELETE_IN_PROGRESS"
    end

    # <p>A structure that contains the current state of the canary.</p>
    #
    # @!attribute state
    #   <p>The current state of the canary.</p>
    #
    #   Enum, one of: ["CREATING", "READY", "STARTING", "RUNNING", "UPDATING", "STOPPING", "STOPPED", "ERROR", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute state_reason
    #   <p>If the canary has insufficient permissions to run, this field provides more details.</p>
    #
    #   @return [String]
    #
    # @!attribute state_reason_code
    #   <p>If the canary cannot run or has failed, this field displays the reason.</p>
    #
    #   Enum, one of: ["INVALID_PERMISSIONS", "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_PENDING", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "SYNC_DELETE_IN_PROGRESS"]
    #
    #   @return [String]
    #
    CanaryStatus = ::Struct.new(
      :state,
      :state_reason,
      :state_reason_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure contains information about when the canary was created and modified.</p>
    #
    # @!attribute created
    #   <p>The date and time the canary was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified
    #   <p>The date and time the canary was most recently modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_started
    #   <p>The date and time that the canary's most recent run started.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_stopped
    #   <p>The date and time that the canary's most recent run ended.</p>
    #
    #   @return [Time]
    #
    CanaryTimeline = ::Struct.new(
      :created,
      :last_modified,
      :last_started,
      :last_stopped,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A conflicting operation is already in progress.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name for this canary. Be sure to give it a descriptive name
    #            that distinguishes it from other canaries in your account.</p>
    #            <p>Do not include secrets or proprietary information in your canary names. The canary name
    #            makes up part of the canary ARN, and the ARN is included in outbound calls over the
    #            internet. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html">Security
    #               Considerations for Synthetics Canaries</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>A structure that includes the entry point from which the canary should start
    #            running your script. If the script is stored in
    #            an S3 bucket, the bucket name, key, and version are also included.
    #         </p>
    #
    #   @return [CanaryCodeInput]
    #
    # @!attribute artifact_s3_location
    #   <p>The location in Amazon S3 where Synthetics stores artifacts from the test runs of this
    #            canary. Artifacts include the log file, screenshots, and HAR files.  The name of the
    #            S3 bucket can't include a period (.).</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The ARN of the IAM role to be used to run the canary. This role must already exist,
    #            and must include <code>lambda.amazonaws.com</code> as a principal in the trust
    #            policy. The role must also have the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>s3:PutObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetBucketLocation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:ListAllMyBuckets</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cloudwatch:PutMetricData</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogGroup</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogStream</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:PutLogEvents</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>A structure that contains information about how often the canary is to run and when
    #            these test runs are to stop.</p>
    #
    #   @return [CanaryScheduleInput]
    #
    # @!attribute run_config
    #   <p>A structure that contains the configuration for individual canary runs,
    #            such as timeout value.</p>
    #
    #   @return [CanaryRunConfigInput]
    #
    # @!attribute success_retention_period_in_days
    #   <p>The number of days to retain data about successful runs of this canary. If you omit
    #            this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failure_retention_period_in_days
    #   <p>The number of days to retain data about failed runs of this canary. If you omit
    #            this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute runtime_version
    #   <p>Specifies the runtime version to use for the canary. For a list of valid
    #            runtime versions and more information about
    #            runtime versions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #               Canary Runtime Versions</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>If this canary is to test an endpoint in a VPC, this structure contains
    #         information about the subnet and security groups of the VPC endpoint.
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #            Running a Canary in a VPC</a>.</p>
    #
    #   @return [VpcConfigInput]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs to associate with the canary.
    #            You can associate as many as 50 tags with a canary.</p>
    #            <p>Tags can help you organize and categorize your
    #            resources. You can also use them to scope user permissions, by
    #            granting a user permission to access or change only the resources that have
    #            certain tag values.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute artifact_config
    #   <p>A structure that contains the configuration for canary artifacts, including
    #            the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>
    #
    #   @return [ArtifactConfigInput]
    #
    CreateCanaryInput = ::Struct.new(
      :name,
      :code,
      :artifact_s3_location,
      :execution_role_arn,
      :schedule,
      :run_config,
      :success_retention_period_in_days,
      :failure_retention_period_in_days,
      :runtime_version,
      :vpc_config,
      :tags,
      :artifact_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute canary
    #   <p>The full details about the canary you have created.</p>
    #
    #   @return [Canary]
    #
    CreateCanaryOutput = ::Struct.new(
      :canary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the canary that you want to delete. To find the names of your canaries, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute delete_lambda
    #   <p>Specifies whether to also delete the Lambda functions and layers used by this canary. The default
    #         is false.</p>
    #            <p>Type: Boolean</p>
    #
    #   @return [Boolean]
    #
    DeleteCanaryInput = ::Struct.new(
      :name,
      :delete_lambda,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_lambda ||= false
      end
    end

    DeleteCanaryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent operation to retrieve the next
    #            set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specify this parameter to limit how many canaries are returned each time you use
    #         the <code>DescribeCanaries</code> operation. If you omit this parameter, the default of 100 is used.</p>
    #
    #   @return [Integer]
    #
    # @!attribute names
    #   <p>Use this parameter to return only canaries that match the names that you specify here. You can
    #            specify as many as five canary names.</p>
    #            <p>If you specify this parameter, the operation is successful only if you have authorization to view
    #            all the canaries that you specify in your request. If you do not have permission to view any of
    #            the canaries, the request fails with a 403 response.</p>
    #            <p>You are required to use this parameter if you are logged on to a user or role that has an
    #            IAM policy that restricts which canaries that you are allowed to view. For more information,
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html">
    #               Limiting a user to viewing specific canaries</a>.</p>
    #
    #   @return [Array<String>]
    #
    DescribeCanariesInput = ::Struct.new(
      :next_token,
      :max_results,
      :names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>DescribeCanaries</code> operation to retrieve the next
    #            set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specify this parameter to limit how many runs are returned each time you use
    #            the <code>DescribeLastRun</code> operation. If you omit this parameter, the default of 100 is used.</p>
    #
    #   @return [Integer]
    #
    # @!attribute names
    #   <p>Use this parameter to return only canaries that match the names that you specify here. You can
    #            specify as many as five canary names.</p>
    #            <p>If you specify this parameter, the operation is successful only if you have authorization to view
    #            all the canaries that you specify in your request. If you do not have permission to view any of
    #            the canaries, the request fails with a 403 response.</p>
    #            <p>You are required to use the <code>Names</code> parameter if you are logged on to a user or role that has an
    #            IAM policy that restricts which canaries that you are allowed to view. For more information,
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html">
    #               Limiting a user to viewing specific canaries</a>.</p>
    #
    #   @return [Array<String>]
    #
    DescribeCanariesLastRunInput = ::Struct.new(
      :next_token,
      :max_results,
      :names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute canaries_last_run
    #   <p>An array that contains the information from the most recent run of each
    #            canary.</p>
    #
    #   @return [Array<CanaryLastRun>]
    #
    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>DescribeCanariesLastRun</code> operation to retrieve the next
    #            set of results.</p>
    #
    #   @return [String]
    #
    DescribeCanariesLastRunOutput = ::Struct.new(
      :canaries_last_run,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute canaries
    #   <p>Returns an array. Each item in the array contains the full information about
    #            one canary.</p>
    #
    #   @return [Array<Canary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>DescribeCanaries</code> operation to retrieve the next
    #            set of results.</p>
    #
    #   @return [String]
    #
    DescribeCanariesOutput = ::Struct.new(
      :canaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>DescribeRuntimeVersions</code> operation to retrieve the next
    #            set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specify this parameter to limit how many runs are returned each time you use
    #            the <code>DescribeRuntimeVersions</code> operation. If you omit this parameter, the default of 100 is used.</p>
    #
    #   @return [Integer]
    #
    DescribeRuntimeVersionsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute runtime_versions
    #   <p>An array of objects that display the details about each Synthetics canary runtime
    #            version.</p>
    #
    #   @return [Array<RuntimeVersion>]
    #
    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>DescribeRuntimeVersions</code> operation to retrieve the next
    #            set of results.</p>
    #
    #   @return [String]
    #
    DescribeRuntimeVersionsOutput = ::Struct.new(
      :runtime_versions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncryptionMode
    #
    module EncryptionMode
      # No documentation available.
      #
      SSE_S3 = "SSE_S3"

      # No documentation available.
      #
      SSE_KMS = "SSE_KMS"
    end

    # @!attribute name
    #   <p>The name of the canary that you want details for.</p>
    #
    #   @return [String]
    #
    GetCanaryInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute canary
    #   <p>A strucure that contains the full information about the canary.</p>
    #
    #   @return [Canary]
    #
    GetCanaryOutput = ::Struct.new(
      :canary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the canary that you want to see runs for.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>GetCanaryRuns</code> operation to retrieve the next
    #            set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specify this parameter to limit how many runs are returned each time you use
    #            the <code>GetCanaryRuns</code> operation. If you omit this parameter, the default of 100 is used.</p>
    #
    #   @return [Integer]
    #
    GetCanaryRunsInput = ::Struct.new(
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute canary_runs
    #   <p>An array of structures. Each structure contains the details of one of the
    #            retrieved canary runs.</p>
    #
    #   @return [Array<CanaryRun>]
    #
    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>GetCanaryRuns</code>
    #            operation to retrieve the next
    #            set of results.</p>
    #
    #   @return [String]
    #
    GetCanaryRunsOutput = ::Struct.new(
      :canary_runs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An unknown internal error occurred.</p>
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

    # @!attribute resource_arn
    #   <p>The ARN of the canary that you want to view tags for.</p>
    #            <p>The ARN format of a canary is
    #                  <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>
    #               </code>.</p>
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
    #   <p>The list of tag keys and values associated with the canary that you specified.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One of the input resources is larger than is allowed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RequestEntityTooLargeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One of the specified resources was not found.</p>
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

    # <p>This structure contains information about one canary runtime version. For more information about
    #          runtime versions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #             Canary Runtime Versions</a>.</p>
    #
    # @!attribute version_name
    #   <p>The name of the runtime version. For a list of valid runtime versions,
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #               Canary Runtime Versions</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the runtime version, created by Amazon.</p>
    #
    #   @return [String]
    #
    # @!attribute release_date
    #   <p>The date that the runtime version was released.</p>
    #
    #   @return [Time]
    #
    # @!attribute deprecation_date
    #   <p>If this runtime version is deprecated, this value is the date of deprecation.</p>
    #
    #   @return [Time]
    #
    RuntimeVersion = ::Struct.new(
      :version_name,
      :description,
      :release_date,
      :deprecation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains the configuration of encryption-at-rest settings for canary artifacts that the canary
    #          uploads to Amazon S3. </p>
    #          <p>For more information, see
    #          <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_artifact_encryption.html">Encrypting canary artifacts</a>
    #             </p>
    #
    # @!attribute encryption_mode
    #   <p> The encryption method to use for artifacts created by this canary. Specify <code>SSE_S3</code> to use
    #            server-side encryption (SSE) with an Amazon S3-managed
    #            key. Specify <code>SSE-KMS</code> to use server-side encryption with a customer-managed KMS key.</p>
    #            <p>If you omit this parameter, an
    #               Amazon Web Services-managed KMS key is used.
    #           </p>
    #
    #   Enum, one of: ["SSE_S3", "SSE_KMS"]
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The ARN of the customer-managed KMS key to use, if you specify <code>SSE-KMS</code>
    #            for <code>EncryptionMode</code>
    #            </p>
    #
    #   @return [String]
    #
    S3EncryptionConfig = ::Struct.new(
      :encryption_mode,
      :kms_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the canary that you want to run. To find
    #            canary names, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    #
    #   @return [String]
    #
    StartCanaryInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartCanaryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the canary that you want to stop. To find the names of your
    #            canaries, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    #
    #   @return [String]
    #
    StopCanaryInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopCanaryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the canary that you're adding tags to.</p>
    #            <p>The ARN format of a canary is
    #                  <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>
    #               </code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the canary.</p>
    #
    #   @return [Hash<String, String>]
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

    # @!attribute resource_arn
    #   <p>The ARN of the canary that you're removing tags from.</p>
    #            <p>The ARN format of a canary is
    #                  <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>
    #               </code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
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

    # @!attribute name
    #   <p>The name of the canary that you want to update. To find the names of your
    #            canaries, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    #            <p>You cannot change the name of a canary that has already been created.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>A structure that includes the entry point from which the canary should start
    #            running your script. If the script is stored in
    #            an S3 bucket, the bucket name, key, and version are also included.
    #         </p>
    #
    #   @return [CanaryCodeInput]
    #
    # @!attribute execution_role_arn
    #   <p>The ARN of the IAM role to be used to run the canary. This role must already exist,
    #            and must include <code>lambda.amazonaws.com</code> as a principal in the trust
    #            policy. The role must also have the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>s3:PutObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetBucketLocation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:ListAllMyBuckets</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cloudwatch:PutMetricData</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogGroup</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogStream</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogStream</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute runtime_version
    #   <p>Specifies the runtime version to use for the canary.
    #            For a list of valid runtime versions and for more information about
    #            runtime versions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #               Canary Runtime Versions</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>A structure that contains information about how often the canary is to run, and when
    #            these runs are to stop.</p>
    #
    #   @return [CanaryScheduleInput]
    #
    # @!attribute run_config
    #   <p>A structure that contains the timeout value that is used for each individual run of the
    #            canary.</p>
    #
    #   @return [CanaryRunConfigInput]
    #
    # @!attribute success_retention_period_in_days
    #   <p>The number of days to retain data about successful runs of this canary.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failure_retention_period_in_days
    #   <p>The number of days to retain data about failed runs of this canary.</p>
    #
    #   @return [Integer]
    #
    # @!attribute vpc_config
    #   <p>If this canary is to test an endpoint in a VPC, this structure contains
    #            information about the subnet and security groups of the VPC endpoint.
    #            For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #               Running a Canary in a VPC</a>.</p>
    #
    #   @return [VpcConfigInput]
    #
    # @!attribute visual_reference
    #   <p>Defines the screenshots to use as the baseline for comparisons during visual monitoring comparisons during future runs of this canary. If you omit this
    #         parameter, no changes are made to any baseline screenshots that the canary might be using already.</p>
    #            <p>Visual monitoring is supported only on canaries running the <b>syn-puppeteer-node-3.2</b>
    #            runtime or later. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_SyntheticsLogger_VisualTesting.html">
    #               Visual monitoring</a> and <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Blueprints_VisualTesting.html">
    #                  Visual monitoring blueprint</a>
    #            </p>
    #
    #   @return [VisualReferenceInput]
    #
    # @!attribute artifact_s3_location
    #   <p>The location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary.
    #            Artifacts include the log file, screenshots, and HAR files. The name of the
    #            S3 bucket can't include a period (.).</p>
    #
    #   @return [String]
    #
    # @!attribute artifact_config
    #   <p>A structure that contains the configuration for canary artifacts,
    #            including the encryption-at-rest settings for artifacts that
    #            the canary uploads to Amazon S3.</p>
    #
    #   @return [ArtifactConfigInput]
    #
    UpdateCanaryInput = ::Struct.new(
      :name,
      :code,
      :execution_role_arn,
      :runtime_version,
      :schedule,
      :run_config,
      :success_retention_period_in_days,
      :failure_retention_period_in_days,
      :vpc_config,
      :visual_reference,
      :artifact_s3_location,
      :artifact_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateCanaryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A parameter could not be validated.</p>
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

    # <p>An object that specifies what screenshots to use as a baseline for visual monitoring by this canary, and optionally the parts of the screenshots to ignore during the visual monitoring comparison.</p>
    #
    #          <p>Visual monitoring is supported only on canaries running the <b>syn-puppeteer-node-3.2</b>
    #          runtime or later. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_SyntheticsLogger_VisualTesting.html">
    #             Visual monitoring</a> and <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Blueprints_VisualTesting.html">
    #                Visual monitoring blueprint</a>
    #          </p>
    #
    # @!attribute base_screenshots
    #   <p>An array of screenshots that will be used as the baseline for visual monitoring in future runs of this canary. If there is a screenshot that you don't want to be used for
    #         visual monitoring, remove it from this array.</p>
    #
    #   @return [Array<BaseScreenshot>]
    #
    # @!attribute base_canary_run_id
    #   <p>Specifies which canary run to use the screenshots from as the baseline for future visual monitoring with this canary. Valid values are
    #            <code>nextrun</code> to use the screenshots from the next run after this update is made, <code>lastrun</code> to use the screenshots from the most recent run
    #            before this update was made, or the value of <code>Id</code> in the <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_CanaryRun.html">
    #               CanaryRun</a> from any past run of this canary.</p>
    #
    #   @return [String]
    #
    VisualReferenceInput = ::Struct.new(
      :base_screenshots,
      :base_canary_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If this canary performs visual monitoring by comparing screenshots, this structure contains the ID of the canary run that is used as the baseline for screenshots, and the coordinates
    #          of any parts of those screenshots that are ignored during visual monitoring comparison.</p>
    #          <p>Visual monitoring is supported only on canaries running the <b>syn-puppeteer-node-3.2</b> runtime or later.</p>
    #
    # @!attribute base_screenshots
    #   <p>An array of screenshots that are used as the baseline for comparisons during visual monitoring.</p>
    #
    #   @return [Array<BaseScreenshot>]
    #
    # @!attribute base_canary_run_id
    #   <p>The ID of the canary run that produced the screenshots that are used as the baseline for visual monitoring comparisons during future runs of this canary.</p>
    #
    #   @return [String]
    #
    VisualReferenceOutput = ::Struct.new(
      :base_screenshots,
      :base_canary_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If this canary is to test an endpoint in a VPC, this structure contains
    #          information about the subnets and security groups of the VPC endpoint.
    #          For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #             Running a Canary in a VPC</a>.</p>
    #
    # @!attribute subnet_ids
    #   <p>The IDs of the subnets where this canary is to run.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups for this canary.</p>
    #
    #   @return [Array<String>]
    #
    VpcConfigInput = ::Struct.new(
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If this canary is to test an endpoint in a VPC, this structure contains
    #          information about the subnets and security groups of the VPC endpoint.
    #          For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #             Running a Canary in a VPC</a>.</p>
    #
    # @!attribute vpc_id
    #   <p>The IDs of the VPC where this canary is to run.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The IDs of the subnets where this canary is to run.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups for this canary.</p>
    #
    #   @return [Array<String>]
    #
    VpcConfigOutput = ::Struct.new(
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
