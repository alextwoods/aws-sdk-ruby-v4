# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Braket
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

    # <p>Defines the Amazon Braket job to be created. Specifies the container image the job uses
    #          and the paths to the Python scripts used for entry and training.</p>
    #
    # @!attribute script_mode_config
    #   <p>Configures the paths to the Python scripts used for entry and training.</p>
    #
    #   @return [ScriptModeConfig]
    #
    # @!attribute container_image
    #   <p>The container image used to create an Amazon Braket job.</p>
    #
    #   @return [ContainerImage]
    #
    AlgorithmSpecification = ::Struct.new(
      :script_mode_config,
      :container_image,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_arn
    #   <p>The ARN of the Amazon Braket job to cancel.</p>
    #
    #   @return [String]
    #
    CancelJobInput = ::Struct.new(
      :job_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_arn
    #   <p>The ARN of the Amazon Braket job.</p>
    #
    #   @return [String]
    #
    # @!attribute cancellation_status
    #   <p>The status of the job cancellation request.</p>
    #
    #   Enum, one of: ["CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    CancelJobOutput = ::Struct.new(
      :job_arn,
      :cancellation_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute quantum_task_arn
    #   <p>The ARN of the task to cancel.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The client token associated with the request.</p>
    #
    #   @return [String]
    #
    CancelQuantumTaskInput = ::Struct.new(
      :quantum_task_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute quantum_task_arn
    #   <p>The ARN of the task.</p>
    #
    #   @return [String]
    #
    # @!attribute cancellation_status
    #   <p>The status of the cancellation request.</p>
    #
    #   Enum, one of: ["CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    CancelQuantumTaskOutput = ::Struct.new(
      :quantum_task_arn,
      :cancellation_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CancellationStatus
    #
    module CancellationStatus
      # No documentation available.
      #
      CANCELLING = "CANCELLING"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"
    end

    # Includes enum constants for CompressionType
    #
    module CompressionType
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      GZIP = "GZIP"
    end

    # <p>An error occurred due to a conflict.</p>
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

    # <p>The container image used to create an Amazon Braket job.</p>
    #
    # @!attribute uri
    #   <p>The URI locating the container image.</p>
    #
    #   @return [String]
    #
    ContainerImage = ::Struct.new(
      :uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>A unique token that guarantees that the call to this API is idempotent.</p>
    #
    #   @return [String]
    #
    # @!attribute algorithm_specification
    #   <p>Definition of the Amazon Braket job to be created. Specifies the container image the job
    #            uses and information about the Python scripts used for entry and training.</p>
    #
    #   @return [AlgorithmSpecification]
    #
    # @!attribute input_data_config
    #   <p>A list of parameters that specify the name and type of input data and where it is
    #            located.</p>
    #
    #   @return [Array<InputFileConfig>]
    #
    # @!attribute output_data_config
    #   <p>The path to the S3 location where you want to store job artifacts and the encryption key
    #            used to store them.</p>
    #
    #   @return [JobOutputDataConfig]
    #
    # @!attribute checkpoint_config
    #   <p>Information about the output locations for job checkpoint data.</p>
    #
    #   @return [JobCheckpointConfig]
    #
    # @!attribute job_name
    #   <p>The name of the Amazon Braket job.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can assume to perform
    #            tasks on behalf of a user. It can access user resources, run an Amazon Braket job container
    #            on behalf of user, and output resources to the users' s3 buckets.</p>
    #
    #   @return [String]
    #
    # @!attribute stopping_condition
    #   <p> The user-defined criteria that specifies when a job stops running.</p>
    #
    #   @return [JobStoppingCondition]
    #
    # @!attribute instance_config
    #   <p>Configuration of the resource instances to use while running the hybrid job on Amazon
    #            Braket.</p>
    #
    #   @return [InstanceConfig]
    #
    # @!attribute hyper_parameters
    #   <p>Algorithm-specific parameters used by an Amazon Braket job that influence the quality of
    #            the training job. The values are set with a string of JSON key:value pairs, where the key
    #            is the name of the hyperparameter and the value is the value of th hyperparameter.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute device_config
    #   <p>The quantum processing unit (QPU) or simulator used to create an Amazon Braket
    #            job.</p>
    #
    #   @return [DeviceConfig]
    #
    # @!attribute tags
    #   <p>A tag object that consists of a key and an optional value, used to manage metadata for
    #            Amazon Braket resources.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateJobInput = ::Struct.new(
      :client_token,
      :algorithm_specification,
      :input_data_config,
      :output_data_config,
      :checkpoint_config,
      :job_name,
      :role_arn,
      :stopping_condition,
      :instance_config,
      :hyper_parameters,
      :device_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_arn
    #   <p>The ARN of the Amazon Braket job created.</p>
    #
    #   @return [String]
    #
    CreateJobOutput = ::Struct.new(
      :job_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>The client token associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute device_arn
    #   <p>The ARN of the device to run the task on.</p>
    #
    #   @return [String]
    #
    # @!attribute device_parameters
    #   <p>The parameters for the device to run the task on.</p>
    #
    #   @return [String]
    #
    # @!attribute shots
    #   <p>The number of shots to use for the task.</p>
    #
    #   @return [Integer]
    #
    # @!attribute output_s3_bucket
    #   <p>The S3 bucket to store task result files in.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_key_prefix
    #   <p>The key prefix for the location in the S3 bucket to store task results in.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The action associated with the task.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags to be added to the quantum task you're creating.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute job_token
    #   <p>The token for an Amazon Braket job that associates it with the quantum task.</p>
    #
    #   @return [String]
    #
    CreateQuantumTaskInput = ::Struct.new(
      :client_token,
      :device_arn,
      :device_parameters,
      :shots,
      :output_s3_bucket,
      :output_s3_key_prefix,
      :action,
      :tags,
      :job_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute quantum_task_arn
    #   <p>The ARN of the task created by the request.</p>
    #
    #   @return [String]
    #
    CreateQuantumTaskOutput = ::Struct.new(
      :quantum_task_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the source of the data used by the Amazon Braket job.</p>
    #
    # @!attribute s3_data_source
    #   <p>Information about the data stored in Amazon S3 used by the Amazon Braket job.</p>
    #
    #   @return [S3DataSource]
    #
    DataSource = ::Struct.new(
      :s3_data_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configures the quantum processing units (QPUs) or simulator used to create and run an
    #          Amazon Braket job.</p>
    #
    # @!attribute device
    #   <p>The primary quantum processing unit (QPU) or simulator used to create and run an Amazon
    #            Braket job.</p>
    #
    #   @return [String]
    #
    DeviceConfig = ::Struct.new(
      :device,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified device is currently offline.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DeviceOfflineException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified device has been retired.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DeviceRetiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeviceStatus
    #
    module DeviceStatus
      # No documentation available.
      #
      ONLINE = "ONLINE"

      # No documentation available.
      #
      OFFLINE = "OFFLINE"

      # No documentation available.
      #
      RETIRED = "RETIRED"
    end

    # <p>Includes information about the device.</p>
    #
    # @!attribute device_arn
    #   <p>The ARN of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_name
    #   <p>The name of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_name
    #   <p>The provider of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_type
    #   <p>The type of the device.</p>
    #
    #   Enum, one of: ["QPU", "SIMULATOR"]
    #
    #   @return [String]
    #
    # @!attribute device_status
    #   <p>The status of the device.</p>
    #
    #   Enum, one of: ["ONLINE", "OFFLINE", "RETIRED"]
    #
    #   @return [String]
    #
    DeviceSummary = ::Struct.new(
      :device_arn,
      :device_name,
      :provider_name,
      :device_type,
      :device_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeviceType
    #
    module DeviceType
      # No documentation available.
      #
      QPU = "QPU"

      # No documentation available.
      #
      SIMULATOR = "SIMULATOR"
    end

    # @!attribute device_arn
    #   <p>The ARN of the device to retrieve.</p>
    #
    #   @return [String]
    #
    GetDeviceInput = ::Struct.new(
      :device_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_arn
    #   <p>The ARN of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_name
    #   <p>The name of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_name
    #   <p>The name of the partner company for the device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_type
    #   <p>The type of the device.</p>
    #
    #   Enum, one of: ["QPU", "SIMULATOR"]
    #
    #   @return [String]
    #
    # @!attribute device_status
    #   <p>The status of the device.</p>
    #
    #   Enum, one of: ["ONLINE", "OFFLINE", "RETIRED"]
    #
    #   @return [String]
    #
    # @!attribute device_capabilities
    #   <p>Details about the capabilities of the device.</p>
    #
    #   @return [String]
    #
    GetDeviceOutput = ::Struct.new(
      :device_arn,
      :device_name,
      :provider_name,
      :device_type,
      :device_status,
      :device_capabilities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_arn
    #   <p>The ARN of the job to retrieve.</p>
    #
    #   @return [String]
    #
    GetJobInput = ::Struct.new(
      :job_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The status of the Amazon Braket job.</p>
    #
    #   Enum, one of: ["QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The ARN of the Amazon Braket job.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can assume to perform
    #            tasks on behalf of a user. It can access user resources, run an Amazon Braket job container
    #            on behalf of user, and output resources to the s3 buckets of a user.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>A description of the reason why an Amazon Braket job failed, if it failed.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name of the Amazon Braket job.</p>
    #
    #   @return [String]
    #
    # @!attribute hyper_parameters
    #   <p>Algorithm-specific parameters used by an Amazon Braket job that influence the quality of
    #            the traiing job. The values are set with a string of JSON key:value pairs, where the key is
    #            the name of the hyperparameter and the value is the value of th hyperparameter.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute input_data_config
    #   <p>A list of parameters that specify the name and type of input data and where it is
    #            located.</p>
    #
    #   @return [Array<InputFileConfig>]
    #
    # @!attribute output_data_config
    #   <p>The path to the S3 location where job artifacts are stored and the encryption key used
    #            to store them there.</p>
    #
    #   @return [JobOutputDataConfig]
    #
    # @!attribute stopping_condition
    #   <p>The user-defined criteria that specifies when to stop a job running.</p>
    #
    #   @return [JobStoppingCondition]
    #
    # @!attribute checkpoint_config
    #   <p>Information about the output locations for job checkpoint data.</p>
    #
    #   @return [JobCheckpointConfig]
    #
    # @!attribute algorithm_specification
    #   <p>Definition of the Amazon Braket job created. Specifies the container image the job uses,
    #            information about the Python scripts used for entry and training, and the user-defined
    #            metrics used to evaluation the job.</p>
    #
    #   @return [AlgorithmSpecification]
    #
    # @!attribute instance_config
    #   <p>The resource instances to use while running the hybrid job on Amazon Braket.</p>
    #
    #   @return [InstanceConfig]
    #
    # @!attribute created_at
    #   <p>The date and time that the Amazon Braket job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute started_at
    #   <p>The date and time that the Amazon Braket job was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute ended_at
    #   <p>The date and time that the Amazon Braket job ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute billable_duration
    #   <p>The billable time the Amazon Braket job used to complete.</p>
    #
    #   @return [Integer]
    #
    # @!attribute device_config
    #   <p>The quantum processing unit (QPU) or simulator used to run the Amazon Braket job.</p>
    #
    #   @return [DeviceConfig]
    #
    # @!attribute events
    #   <p>Details about the type and time events occurred related to the Amazon Braket job.</p>
    #
    #   @return [Array<JobEventDetails>]
    #
    # @!attribute tags
    #   <p>A tag object that consists of a key and an optional value, used to manage metadata for
    #            Amazon Braket resources.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetJobOutput = ::Struct.new(
      :status,
      :job_arn,
      :role_arn,
      :failure_reason,
      :job_name,
      :hyper_parameters,
      :input_data_config,
      :output_data_config,
      :stopping_condition,
      :checkpoint_config,
      :algorithm_specification,
      :instance_config,
      :created_at,
      :started_at,
      :ended_at,
      :billable_duration,
      :device_config,
      :events,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute quantum_task_arn
    #   <p>the ARN of the task to retrieve.</p>
    #
    #   @return [String]
    #
    GetQuantumTaskInput = ::Struct.new(
      :quantum_task_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute quantum_task_arn
    #   <p>The ARN of the task.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the task.</p>
    #
    #   Enum, one of: ["CREATED", "QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reason that a task failed.</p>
    #
    #   @return [String]
    #
    # @!attribute device_arn
    #   <p>The ARN of the device the task was run on.</p>
    #
    #   @return [String]
    #
    # @!attribute device_parameters
    #   <p>The parameters for the device on which the task ran.</p>
    #
    #   @return [String]
    #
    # @!attribute shots
    #   <p>The number of shots used in the task.</p>
    #
    #   @return [Integer]
    #
    # @!attribute output_s3_bucket
    #   <p>The S3 bucket where task results are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_directory
    #   <p>The folder in the S3 bucket where task results are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time at which the task was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute ended_at
    #   <p>The time at which the task ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags that belong to this task.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute job_arn
    #   <p>The ARN of the Amazon Braket job associated with the quantum task.</p>
    #
    #   @return [String]
    #
    GetQuantumTaskOutput = ::Struct.new(
      :quantum_task_arn,
      :status,
      :failure_reason,
      :device_arn,
      :device_parameters,
      :shots,
      :output_s3_bucket,
      :output_s3_directory,
      :created_at,
      :ended_at,
      :tags,
      :job_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of parameters that specify the input channels, type of input data, and where it
    #          is located.</p>
    #
    # @!attribute channel_name
    #   <p>A named input source that an Amazon Braket job can consume.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The MIME type of the data.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source
    #   <p>The location of the channel data.</p>
    #
    #   @return [DataSource]
    #
    InputFileConfig = ::Struct.new(
      :channel_name,
      :content_type,
      :data_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configures the resource instances to use while running the Amazon Braket hybrid job on
    #          Amazon Braket.</p>
    #
    # @!attribute instance_type
    #   <p>Configures the type resource instances to use while running an Amazon Braket hybrid
    #            job.</p>
    #
    #   Enum, one of: ["ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.g4dn.xlarge", "ml.g4dn.2xlarge", "ml.g4dn.4xlarge", "ml.g4dn.8xlarge", "ml.g4dn.12xlarge", "ml.g4dn.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.p3dn.24xlarge", "ml.p4d.24xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.c5n.xlarge", "ml.c5n.2xlarge", "ml.c5n.4xlarge", "ml.c5n.9xlarge", "ml.c5n.18xlarge"]
    #
    #   @return [String]
    #
    # @!attribute volume_size_in_gb
    #   <p>The size of the storage volume, in GB, that user wants to provision.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_count
    #   <p>Configures the number of resource instances to use while running an Amazon Braket job on
    #            Amazon Braket. The default value is 1.</p>
    #
    #   @return [Integer]
    #
    InstanceConfig = ::Struct.new(
      :instance_type,
      :volume_size_in_gb,
      :instance_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceType
    #
    module InstanceType
      # No documentation available.
      #
      ML_M4_XLARGE = "ml.m4.xlarge"

      # No documentation available.
      #
      ML_M4_2XLARGE = "ml.m4.2xlarge"

      # No documentation available.
      #
      ML_M4_4XLARGE = "ml.m4.4xlarge"

      # No documentation available.
      #
      ML_M4_10XLARGE = "ml.m4.10xlarge"

      # No documentation available.
      #
      ML_M4_16XLARGE = "ml.m4.16xlarge"

      # No documentation available.
      #
      ML_G4DN_XLARGE = "ml.g4dn.xlarge"

      # No documentation available.
      #
      ML_G4DN_2XLARGE = "ml.g4dn.2xlarge"

      # No documentation available.
      #
      ML_G4DN_4XLARGE = "ml.g4dn.4xlarge"

      # No documentation available.
      #
      ML_G4DN_8XLARGE = "ml.g4dn.8xlarge"

      # No documentation available.
      #
      ML_G4DN_12XLARGE = "ml.g4dn.12xlarge"

      # No documentation available.
      #
      ML_G4DN_16XLARGE = "ml.g4dn.16xlarge"

      # No documentation available.
      #
      ML_M5_LARGE = "ml.m5.large"

      # No documentation available.
      #
      ML_M5_XLARGE = "ml.m5.xlarge"

      # No documentation available.
      #
      ML_M5_2XLARGE = "ml.m5.2xlarge"

      # No documentation available.
      #
      ML_M5_4XLARGE = "ml.m5.4xlarge"

      # No documentation available.
      #
      ML_M5_12XLARGE = "ml.m5.12xlarge"

      # No documentation available.
      #
      ML_M5_24XLARGE = "ml.m5.24xlarge"

      # No documentation available.
      #
      ML_C4_XLARGE = "ml.c4.xlarge"

      # No documentation available.
      #
      ML_C4_2XLARGE = "ml.c4.2xlarge"

      # No documentation available.
      #
      ML_C4_4XLARGE = "ml.c4.4xlarge"

      # No documentation available.
      #
      ML_C4_8XLARGE = "ml.c4.8xlarge"

      # No documentation available.
      #
      ML_P2_XLARGE = "ml.p2.xlarge"

      # No documentation available.
      #
      ML_P2_8XLARGE = "ml.p2.8xlarge"

      # No documentation available.
      #
      ML_P2_16XLARGE = "ml.p2.16xlarge"

      # No documentation available.
      #
      ML_P3_2XLARGE = "ml.p3.2xlarge"

      # No documentation available.
      #
      ML_P3_8XLARGE = "ml.p3.8xlarge"

      # No documentation available.
      #
      ML_P3_16XLARGE = "ml.p3.16xlarge"

      # No documentation available.
      #
      ML_P3DN_24XLARGE = "ml.p3dn.24xlarge"

      # No documentation available.
      #
      ML_P4D_24XLARGE = "ml.p4d.24xlarge"

      # No documentation available.
      #
      ML_C5_XLARGE = "ml.c5.xlarge"

      # No documentation available.
      #
      ML_C5_2XLARGE = "ml.c5.2xlarge"

      # No documentation available.
      #
      ML_C5_4XLARGE = "ml.c5.4xlarge"

      # No documentation available.
      #
      ML_C5_9XLARGE = "ml.c5.9xlarge"

      # No documentation available.
      #
      ML_C5_18XLARGE = "ml.c5.18xlarge"

      # No documentation available.
      #
      ML_C5N_XLARGE = "ml.c5n.xlarge"

      # No documentation available.
      #
      ML_C5N_2XLARGE = "ml.c5n.2xlarge"

      # No documentation available.
      #
      ML_C5N_4XLARGE = "ml.c5n.4xlarge"

      # No documentation available.
      #
      ML_C5N_9XLARGE = "ml.c5n.9xlarge"

      # No documentation available.
      #
      ML_C5N_18XLARGE = "ml.c5n.18xlarge"
    end

    # <p>The request processing has failed because of an unknown error, exception, or
    #          failure.</p>
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

    # <p>Contains information about the output locations for job checkpoint data.</p>
    #
    # @!attribute local_path
    #   <p>(Optional) The local directory where checkpoints are written. The default directory is
    #               <code>/opt/braket/checkpoints/</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_uri
    #   <p>Identifies the S3 path where you want Amazon Braket to store checkpoints. For example,
    #               <code>s3://bucket-name/key-name-prefix</code>.</p>
    #
    #   @return [String]
    #
    JobCheckpointConfig = ::Struct.new(
      :local_path,
      :s3_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the type and time events occurred related to the Amazon Braket job.</p>
    #
    # @!attribute event_type
    #   <p>The type of event that occurred related to the Amazon Braket job.</p>
    #
    #   Enum, one of: ["WAITING_FOR_PRIORITY", "QUEUED_FOR_EXECUTION", "STARTING_INSTANCE", "DOWNLOADING_DATA", "RUNNING", "DEPRIORITIZED_DUE_TO_INACTIVITY", "UPLOADING_RESULTS", "COMPLETED", "FAILED", "MAX_RUNTIME_EXCEEDED", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute time_of_event
    #   <p>TThe type of event that occurred related to the Amazon Braket job.</p>
    #
    #   @return [Time]
    #
    # @!attribute message
    #   <p>A message describing the event that occurred related to the Amazon Braket job.</p>
    #
    #   @return [String]
    #
    JobEventDetails = ::Struct.new(
      :event_type,
      :time_of_event,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobEventType
    #
    module JobEventType
      # No documentation available.
      #
      WAITING_FOR_PRIORITY = "WAITING_FOR_PRIORITY"

      # No documentation available.
      #
      QUEUED_FOR_EXECUTION = "QUEUED_FOR_EXECUTION"

      # No documentation available.
      #
      STARTING_INSTANCE = "STARTING_INSTANCE"

      # No documentation available.
      #
      DOWNLOADING_DATA = "DOWNLOADING_DATA"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      DEPRIORITIZED_DUE_TO_INACTIVITY = "DEPRIORITIZED_DUE_TO_INACTIVITY"

      # No documentation available.
      #
      UPLOADING_RESULTS = "UPLOADING_RESULTS"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      MAX_RUNTIME_EXCEEDED = "MAX_RUNTIME_EXCEEDED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"
    end

    # <p>Specifies the path to the S3 location where you want to store job artifacts and the
    #          encryption key used to store them.</p>
    #
    # @!attribute kms_key_id
    #   <p>The AWS Key Management Service (AWS KMS) key that Amazon Braket uses to encrypt the job
    #            training artifacts at rest using Amazon S3 server-side encryption.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_path
    #   <p>Identifies the S3 path where you want Amazon Braket to store the job training artifacts.
    #            For example, <code>s3://bucket-name/key-name-prefix</code>.</p>
    #
    #   @return [String]
    #
    JobOutputDataConfig = ::Struct.new(
      :kms_key_id,
      :s3_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobPrimaryStatus
    #
    module JobPrimaryStatus
      # No documentation available.
      #
      QUEUED = "QUEUED"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      CANCELLING = "CANCELLING"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"
    end

    # <p>Specifies limits for how long an Amazon Braket job can run. </p>
    #
    # @!attribute max_runtime_in_seconds
    #   <p>The maximum length of time, in seconds, that an Amazon Braket job can run.</p>
    #
    #   @return [Integer]
    #
    JobStoppingCondition = ::Struct.new(
      :max_runtime_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides summary information about an Amazon Braket job.</p>
    #
    # @!attribute status
    #   <p>The status of the Amazon Braket job.</p>
    #
    #   Enum, one of: ["QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The ARN of the Amazon Braket job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name of the Amazon Braket job.</p>
    #
    #   @return [String]
    #
    # @!attribute device
    #   <p>Provides summary information about the primary device used by an Amazon Braket
    #            job.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the Amazon Braket job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute started_at
    #   <p>The date and time that the Amazon Braket job was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute ended_at
    #   <p>The date and time that the Amazon Braket job ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>A tag object that consists of a key and an optional value, used to manage metadata for
    #            Amazon Braket resources.</p>
    #
    #   @return [Hash<String, String>]
    #
    JobSummary = ::Struct.new(
      :status,
      :job_arn,
      :job_name,
      :device,
      :created_at,
      :started_at,
      :ended_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>Specify the <code>resourceArn</code> for the resource whose tags to display.</p>
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
    #   <p>Displays the key, value pairs of tags associated with this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for QuantumTaskStatus
    #
    module QuantumTaskStatus
      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      QUEUED = "QUEUED"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      CANCELLING = "CANCELLING"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"
    end

    # <p>Includes information about a quantum task.</p>
    #
    # @!attribute quantum_task_arn
    #   <p>The ARN of the task.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the task.</p>
    #
    #   Enum, one of: ["CREATED", "QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute device_arn
    #   <p>The ARN of the device the task ran on.</p>
    #
    #   @return [String]
    #
    # @!attribute shots
    #   <p>The shots used for the task.</p>
    #
    #   @return [Integer]
    #
    # @!attribute output_s3_bucket
    #   <p>The S3 bucket where the task result file is stored..</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_directory
    #   <p>The folder in the S3 bucket where the task result file is stored.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time at which the task was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute ended_at
    #   <p>The time at which the task finished.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>Displays the key, value pairs of tags associated with this quantum task.</p>
    #
    #   @return [Hash<String, String>]
    #
    QuantumTaskSummary = ::Struct.new(
      :quantum_task_arn,
      :status,
      :device_arn,
      :shots,
      :output_s3_bucket,
      :output_s3_directory,
      :created_at,
      :ended_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource was not found.</p>
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

    # <p>Information about the data stored in Amazon S3 used by the Amazon Braket job.</p>
    #
    # @!attribute s3_uri
    #   <p>Depending on the value specified for the <code>S3DataType</code>, identifies either a
    #            key name prefix or a manifest that locates the S3 data source.</p>
    #
    #   @return [String]
    #
    S3DataSource = ::Struct.new(
      :s3_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the Python scripts used for entry and by an Amazon Braket
    #          job.</p>
    #
    # @!attribute entry_point
    #   <p>The path to the Python script that serves as the entry point for an Amazon Braket
    #            job.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_uri
    #   <p>The URI that specifies the S3 path to the Python script module that contains the
    #            training script used by an Amazon Braket job.</p>
    #
    #   @return [String]
    #
    # @!attribute compression_type
    #   <p>The type of compression used by the Python scripts for an Amazon Braket job.</p>
    #
    #   Enum, one of: ["NONE", "GZIP"]
    #
    #   @return [String]
    #
    ScriptModeConfig = ::Struct.new(
      :entry_point,
      :s3_uri,
      :compression_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The filter to use for searching devices.</p>
    #
    # @!attribute name
    #   <p>The name to use to filter results.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values to use to filter results.</p>
    #
    #   @return [Array<String>]
    #
    SearchDevicesFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token used for pagination of results returned in the response. Use the token returned
    #            from the previous request continue results where the previous request ended.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>The filter values to use to search for a device.</p>
    #
    #   @return [Array<SearchDevicesFilter>]
    #
    SearchDevicesInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute devices
    #   <p>An array of <code>DeviceSummary</code> objects for devices that match the specified
    #            filter values.</p>
    #
    #   @return [Array<DeviceSummary>]
    #
    # @!attribute next_token
    #   <p>A token used for pagination of results, or null if there are no additional results. Use
    #            the token value in a subsequent request to continue results where the previous request
    #            ended.</p>
    #
    #   @return [String]
    #
    SearchDevicesOutput = ::Struct.new(
      :devices,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filter used to search for Amazon Braket jobs.</p>
    #
    # @!attribute name
    #   <p>The name to use for the jobs filter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values to use for the jobs filter.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>An operator to use for the jobs filter.</p>
    #
    #   Enum, one of: ["LT", "LTE", "EQUAL", "GT", "GTE", "BETWEEN", "CONTAINS"]
    #
    #   @return [String]
    #
    SearchJobsFilter = ::Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SearchJobsFilterOperator
    #
    module SearchJobsFilterOperator
      # No documentation available.
      #
      LT = "LT"

      # No documentation available.
      #
      LTE = "LTE"

      # No documentation available.
      #
      EQUAL = "EQUAL"

      # No documentation available.
      #
      GT = "GT"

      # No documentation available.
      #
      GTE = "GTE"

      # No documentation available.
      #
      BETWEEN = "BETWEEN"

      # No documentation available.
      #
      CONTAINS = "CONTAINS"
    end

    # @!attribute next_token
    #   <p>A token used for pagination of results returned in the response. Use the token returned
    #            from the previous request to continue results where the previous request ended.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>The filter values to use when searching for a job.</p>
    #
    #   @return [Array<SearchJobsFilter>]
    #
    SearchJobsInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute jobs
    #   <p>An array of <code>JobSummary</code> objects for devices that match the specified filter
    #            values.</p>
    #
    #   @return [Array<JobSummary>]
    #
    # @!attribute next_token
    #   <p>A token used for pagination of results, or <code>null</code> if there are no additional
    #            results. Use the token value in a subsequent request to continue results where the previous
    #            request ended.</p>
    #
    #   @return [String]
    #
    SearchJobsOutput = ::Struct.new(
      :jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filter to use to search for tasks.</p>
    #
    # @!attribute name
    #   <p>The name of the device used for the task.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values to use for the filter.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>An operator to use in the filter.</p>
    #
    #   Enum, one of: ["LT", "LTE", "EQUAL", "GT", "GTE", "BETWEEN"]
    #
    #   @return [String]
    #
    SearchQuantumTasksFilter = ::Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SearchQuantumTasksFilterOperator
    #
    module SearchQuantumTasksFilterOperator
      # No documentation available.
      #
      LT = "LT"

      # No documentation available.
      #
      LTE = "LTE"

      # No documentation available.
      #
      EQUAL = "EQUAL"

      # No documentation available.
      #
      GT = "GT"

      # No documentation available.
      #
      GTE = "GTE"

      # No documentation available.
      #
      BETWEEN = "BETWEEN"
    end

    # @!attribute next_token
    #   <p>A token used for pagination of results returned in the response. Use the token returned
    #            from the previous request continue results where the previous request ended.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>Array of <code>SearchQuantumTasksFilter</code> objects.</p>
    #
    #   @return [Array<SearchQuantumTasksFilter>]
    #
    SearchQuantumTasksInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute quantum_tasks
    #   <p>An array of <code>QuantumTaskSummary</code> objects for tasks that match the specified
    #            filters.</p>
    #
    #   @return [Array<QuantumTaskSummary>]
    #
    # @!attribute next_token
    #   <p>A token used for pagination of results, or null if there are no additional results. Use
    #            the token value in a subsequent request to continue results where the previous request
    #            ended.</p>
    #
    #   @return [String]
    #
    SearchQuantumTasksOutput = ::Struct.new(
      :quantum_tasks,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request failed because a service quota is exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>Specify the <code>resourceArn</code> of the resource to which a tag will be
    #            added.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Specify the tags to add to the resource.</p>
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

    # <p>The throttling rate limit is met.</p>
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

    # @!attribute resource_arn
    #   <p>Specify the <code>resourceArn</code> for the resource from which to remove the
    #            tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Specify the keys for the tags to remove from the resource.</p>
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

    # <p>The input fails to satisfy the constraints specified by an AWS service.</p>
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
