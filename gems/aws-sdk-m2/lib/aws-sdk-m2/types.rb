# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::M2
  module Types

    # <p>The account or role doesn't have the right permissions to make the request.</p>
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

    # <p>Defines an alternate key. This value is optional. A legacy data set might not have any
    #          alternate key defined but if those alternate keys definitions exist, provide them, as some
    #          applications will make use of them.</p>
    #
    # @!attribute name
    #   <p>The name of the alternate key.</p>
    #
    #   @return [String]
    #
    # @!attribute offset
    #   <p>A positive integer value representing the offset to mark the start of the alternate key
    #            part in the record byte array.</p>
    #
    #   @return [Integer]
    #
    # @!attribute length
    #   <p>A strictly positive integer value representing the length of the alternate key.</p>
    #
    #   @return [Integer]
    #
    # @!attribute allow_duplicates
    #   <p>Indicates whether the alternate key values are supposed to be unique for the given data
    #            set.</p>
    #
    #   @return [Boolean]
    #
    AlternateKey = ::Struct.new(
      :name,
      :offset,
      :length,
      :allow_duplicates,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.offset ||= 0
        self.length ||= 0
        self.allow_duplicates ||= false
      end

    end

    # Includes enum constants for ApplicationDeploymentLifecycle
    #
    module ApplicationDeploymentLifecycle
      # No documentation available.
      #
      DEPLOYING = "Deploying"

      # No documentation available.
      #
      DEPLOYED = "Deployed"
    end

    # Includes enum constants for ApplicationLifecycle
    #
    module ApplicationLifecycle
      # No documentation available.
      #
      CREATING = "Creating"

      # No documentation available.
      #
      CREATED = "Created"

      # No documentation available.
      #
      AVAILABLE = "Available"

      # No documentation available.
      #
      READY = "Ready"

      # No documentation available.
      #
      STARTING = "Starting"

      # No documentation available.
      #
      RUNNING = "Running"

      # No documentation available.
      #
      STOPPING = "Stopping"

      # No documentation available.
      #
      STOPPED = "Stopped"

      # No documentation available.
      #
      FAILED = "Failed"

      # No documentation available.
      #
      DELETING = "Deleting"
    end

    # <p>A subset of the possible application attributes. Used in the application list.</p>
    #
    # @!attribute name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version
    #   <p>The version of the application.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the application.</p>
    #
    #   Enum, one of: ["Creating", "Created", "Available", "Ready", "Starting", "Running", "Stopping", "Stopped", "Failed", "Deleting"]
    #
    #   @return [String]
    #
    # @!attribute engine_type
    #   <p>The type of the target platform for this application.</p>
    #
    #   Enum, one of: ["microfocus", "bluage"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp when the application was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment that hosts this application.</p>
    #
    #   @return [String]
    #
    # @!attribute last_start_time
    #   <p>The timestamp when the application was last started. Null until the application has
    #            started running for the first time.</p>
    #
    #   @return [Time]
    #
    # @!attribute version_status
    #   <p>Indicates the status of the latest version of the application.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute deployment_status
    #   <p>Indicates whether there is an ongoing deployment or if the application has ever deployed
    #            successfully.</p>
    #
    #   Enum, one of: ["Deploying", "Deployed"]
    #
    #   @return [String]
    #
    ApplicationSummary = ::Struct.new(
      :name,
      :description,
      :application_id,
      :application_arn,
      :application_version,
      :status,
      :engine_type,
      :creation_time,
      :environment_id,
      :last_start_time,
      :version_status,
      :deployment_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ApplicationVersionLifecycle
    #
    module ApplicationVersionLifecycle
      # No documentation available.
      #
      CREATING = "Creating"

      # No documentation available.
      #
      AVAILABLE = "Available"

      # No documentation available.
      #
      FAILED = "Failed"
    end

    # <p>Defines an application version summary.</p>
    #
    # @!attribute application_version
    #   <p>The application version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the application.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp when the application version was created.</p>
    #
    #   @return [Time]
    #
    ApplicationVersionSummary = ::Struct.new(
      :application_version,
      :status,
      :status_reason,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the details of a batch job.</p>
    #
    class BatchJobDefinition < Hearth::Union
      # <p>Specifies a file containing a batch job definition.</p>
      #
      class FileBatchJobDefinition < BatchJobDefinition
        def to_h
          { file_batch_job_definition: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::FileBatchJobDefinition #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A script containing a batch job definition.</p>
      #
      class ScriptBatchJobDefinition < BatchJobDefinition
        def to_h
          { script_batch_job_definition: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::ScriptBatchJobDefinition #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < BatchJobDefinition
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Includes enum constants for BatchJobExecutionStatus
    #
    module BatchJobExecutionStatus
      # No documentation available.
      #
      SUBMITTING = "Submitting"

      # No documentation available.
      #
      HOLDING = "Holding"

      # No documentation available.
      #
      DISPATCH = "Dispatching"

      # No documentation available.
      #
      RUNNING = "Running"

      # No documentation available.
      #
      CANCELLING = "Cancelling"

      # No documentation available.
      #
      CANCELLED = "Cancelled"

      # No documentation available.
      #
      SUCCEEDED = "Succeeded"

      # No documentation available.
      #
      FAILED = "Failed"

      # No documentation available.
      #
      SUCCEEDED_WITH_WARNING = "Succeeded With Warning"
    end

    # <p>A subset of the possible batch job attributes. Used in the batch job list.</p>
    #
    # @!attribute execution_id
    #   <p>The unique identifier of this execution of the batch job.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The unique identifier of the application that hosts this batch job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The unique identifier of a particular batch job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name of a particular batch job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_type
    #   <p>The type of a particular batch job execution.</p>
    #
    #   Enum, one of: ["VSE", "JES2", "JES3"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of a particular batch job execution.</p>
    #
    #   Enum, one of: ["Submitting", "Holding", "Dispatching", "Running", "Cancelling", "Cancelled", "Succeeded", "Failed", "Succeeded With Warning"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The timestamp when a particular batch job execution started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The timestamp when this batch job execution ended.</p>
    #
    #   @return [Time]
    #
    BatchJobExecutionSummary = ::Struct.new(
      :execution_id,
      :application_id,
      :job_id,
      :job_name,
      :job_type,
      :status,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies a specific batch job.</p>
    #
    class BatchJobIdentifier < Hearth::Union
      # <p>Specifies a file associated with a specific batch job.</p>
      #
      class FileBatchJobIdentifier < BatchJobIdentifier
        def to_h
          { file_batch_job_identifier: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::FileBatchJobIdentifier #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A batch job identifier in which the batch job to run is identified by the script name.</p>
      #
      class ScriptBatchJobIdentifier < BatchJobIdentifier
        def to_h
          { script_batch_job_identifier: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::ScriptBatchJobIdentifier #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < BatchJobIdentifier
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Includes enum constants for BatchJobType
    #
    module BatchJobType
      # No documentation available.
      #
      VSE = "VSE"

      # No documentation available.
      #
      JES2 = "JES2"

      # No documentation available.
      #
      JES3 = "JES3"
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_id
    #   <p>The unique identifier of the batch job execution.</p>
    #
    #   @return [String]
    #
    CancelBatchJobExecutionInput = ::Struct.new(
      :application_id,
      :execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelBatchJobExecutionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters provided in the request conflict with existing resources.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the conflicting resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the conflicting resource.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The unique identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_type
    #   <p>The type of the target platform for this application.</p>
    #
    #   Enum, one of: ["microfocus", "bluage"]
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>The application definition for this application. You can specify either inline JSON or
    #            an S3 bucket location.</p>
    #
    #   @return [Definition]
    #
    # @!attribute tags
    #   <p>A list of tags to apply to the application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier the service generates to ensure the idempotency of the
    #            request to create an application. The service generates the clientToken when the API call
    #            is triggered. The token expires after one hour, so if you retry the API within this
    #            timeframe with the same clientToken, you will get the same response. The service also
    #            handles deleting the clientToken after it expires. </p>
    #
    #   @return [String]
    #
    CreateApplicationInput = ::Struct.new(
      :name,
      :description,
      :engine_type,
      :definition,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The unique application identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version
    #   <p>The version number of the application.</p>
    #
    #   @return [Integer]
    #
    CreateApplicationOutput = ::Struct.new(
      :application_arn,
      :application_id,
      :application_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application for which you want to import data sets.</p>
    #
    #   @return [String]
    #
    # @!attribute import_config
    #   <p>The data set import task configuration.</p>
    #
    #   @return [DataSetImportConfig]
    #
    # @!attribute client_token
    #   <p> Unique, case-sensitive identifier you provide to ensure the idempotency of the request
    #            to create a data set import. The service generates the clientToken when the API call is
    #            triggered. The token expires after one hour, so if you retry the API within this timeframe
    #            with the same clientToken, you will get the same response. The service also handles
    #            deleting the clientToken after it expires. </p>
    #
    #   @return [String]
    #
    CreateDataSetImportTaskInput = ::Struct.new(
      :application_id,
      :import_config,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_id
    #   <p>The task identifier. This operation is asynchronous. Use this identifier with the <a>GetDataSetImportTask</a> operation to obtain the status of this task.</p>
    #
    #   @return [String]
    #
    CreateDataSetImportTaskOutput = ::Struct.new(
      :task_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_id
    #   <p>The identifier of the environment where this application will be deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The application identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version
    #   <p>The version of the application to deploy.</p>
    #
    #   @return [Integer]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request
    #            to create a deployment. The service generates the clientToken when the API call is
    #            triggered. The token expires after one hour, so if you retry the API within this timeframe
    #            with the same clientToken, you will get the same response. The service also handles
    #            deleting the clientToken after it expires. </p>
    #
    #   @return [String]
    #
    CreateDeploymentInput = ::Struct.new(
      :environment_id,
      :application_id,
      :application_version,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployment_id
    #   <p>The unique identifier of the deployment.</p>
    #
    #   @return [String]
    #
    CreateDeploymentOutput = ::Struct.new(
      :deployment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The unique identifier of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The type of instance for the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_type
    #   <p>The engine type for the environment.</p>
    #
    #   Enum, one of: ["microfocus", "bluage"]
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version of the engine type for the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The list of subnets associated with the VPC for this environment.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The list of security groups for the VPC associated with this environment.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute storage_configurations
    #   <p>Optional. The storage configurations for this environment.</p>
    #
    #   @return [Array<StorageConfiguration>]
    #
    # @!attribute publicly_accessible
    #   <p>Specifies whether the environment is publicly accessible.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute high_availability_config
    #   <p>The details of a high availability configuration for this runtime environment.</p>
    #
    #   @return [HighAvailabilityConfig]
    #
    # @!attribute tags
    #   <p>The tags for the environment.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute preferred_maintenance_window
    #   <p>Configures a desired maintenance window for the environment. If you do not provide a
    #            value, a random system-generated value will be assigned.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request
    #            to create an environment. The service generates the clientToken when the API call is
    #            triggered. The token expires after one hour, so if you retry the API within this timeframe
    #            with the same clientToken, you will get the same response. The service also handles
    #            deleting the clientToken after it expires. </p>
    #
    #   @return [String]
    #
    CreateEnvironmentInput = ::Struct.new(
      :name,
      :instance_type,
      :description,
      :engine_type,
      :engine_version,
      :subnet_ids,
      :security_group_ids,
      :storage_configurations,
      :publicly_accessible,
      :high_availability_config,
      :tags,
      :preferred_maintenance_window,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.publicly_accessible ||= false
      end

    end

    # @!attribute environment_id
    #   <p>The identifier of this environment.</p>
    #
    #   @return [String]
    #
    CreateEnvironmentOutput = ::Struct.new(
      :environment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a data set.</p>
    #
    # @!attribute storage_type
    #   <p>The storage type of the data set: database or file system. For Micro Focus, database
    #            corresponds to datastore and file system corresponds to EFS/FSX. For Blu Age, there is no
    #            support of file system and database corresponds to Blusam. </p>
    #
    #   @return [String]
    #
    # @!attribute dataset_name
    #   <p>The logical identifier for a specific data set (in mainframe format).</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_org
    #   <p>The type of dataset. Possible values include VSAM, IS, PS, GDG, PO, PS, UNKNOWN
    #            etc.</p>
    #
    #   @return [DatasetOrgAttributes]
    #
    # @!attribute relative_path
    #   <p>The relative location of the data set in the database or file system. </p>
    #
    #   @return [String]
    #
    # @!attribute record_length
    #   <p>The length of a record.</p>
    #
    #   @return [RecordLength]
    #
    DataSet = ::Struct.new(
      :storage_type,
      :dataset_name,
      :dataset_org,
      :relative_path,
      :record_length,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies one or more data sets you want to import with the <a>CreateDataSetImportTask</a> operation.</p>
    #
    class DataSetImportConfig < Hearth::Union
      # <p>The Amazon S3 location of the data sets.</p>
      #
      class S3Location < DataSetImportConfig
        def to_h
          { s3_location: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::S3Location #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The data sets.</p>
      #
      class DataSets < DataSetImportConfig
        def to_h
          { data_sets: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::DataSets #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < DataSetImportConfig
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Identifies a specific data set to import from an external location.</p>
    #
    # @!attribute data_set
    #   <p>The data set.</p>
    #
    #   @return [DataSet]
    #
    # @!attribute external_location
    #   <p>The location of the data set.</p>
    #
    #   @return [ExternalLocation]
    #
    DataSetImportItem = ::Struct.new(
      :data_set,
      :external_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a summary of data set imports.</p>
    #
    # @!attribute total
    #   <p>The total number of data set imports.</p>
    #
    #   @return [Integer]
    #
    # @!attribute succeeded
    #   <p>The number of data set imports that have succeeded.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed
    #   <p>The number of data set imports that have failed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pending
    #   <p>The number of data set imports that are pending.</p>
    #
    #   @return [Integer]
    #
    # @!attribute in_progress
    #   <p>The number of data set imports that are in progress.</p>
    #
    #   @return [Integer]
    #
    DataSetImportSummary = ::Struct.new(
      :total,
      :succeeded,
      :failed,
      :pending,
      :in_progress,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.total ||= 0
        self.succeeded ||= 0
        self.failed ||= 0
        self.pending ||= 0
        self.in_progress ||= 0
      end

    end

    # <p>Contains information about a data set import task.</p>
    #
    # @!attribute task_id
    #   <p>The identifier of the data set import task.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the data set import task.</p>
    #
    #   Enum, one of: ["Creating", "Running", "Completed"]
    #
    #   @return [String]
    #
    # @!attribute summary
    #   <p>A summary of the data set import task.</p>
    #
    #   @return [DataSetImportSummary]
    #
    DataSetImportTask = ::Struct.new(
      :task_id,
      :status,
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A subset of the possible data set attributes.</p>
    #
    # @!attribute data_set_name
    #   <p>The name of the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_org
    #   <p>The type of data set. Possible values include VSAM, IS, PS, GDG, PO, PS, or
    #            unknown.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the data set. </p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp when the data set was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The last time the data set was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_referenced_time
    #   <p>The last time the data set was referenced.</p>
    #
    #   @return [Time]
    #
    DataSetSummary = ::Struct.new(
      :data_set_name,
      :data_set_org,
      :format,
      :creation_time,
      :last_updated_time,
      :last_referenced_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataSetTaskLifecycle
    #
    module DataSetTaskLifecycle
      # No documentation available.
      #
      CREATING = "Creating"

      # No documentation available.
      #
      RUNNING = "Running"

      # No documentation available.
      #
      COMPLETED = "Completed"
    end

    # <p>Additional details about the data set. Different attributes correspond to different data
    #          set organizations. The values are populated based on datasetOrg, storageType and backend
    #          (Blu Age or Micro Focus).</p>
    #
    class DatasetDetailOrgAttributes < Hearth::Union
      # <p>The details of a VSAM data set.</p>
      #
      class Vsam < DatasetDetailOrgAttributes
        def to_h
          { vsam: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::Vsam #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The generation data group of the data set.</p>
      #
      class Gdg < DatasetDetailOrgAttributes
        def to_h
          { gdg: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::Gdg #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < DatasetDetailOrgAttributes
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Additional details about the data set. Different attributes correspond to different data
    #          set organizations. The values are populated based on datasetOrg, storageType and backend
    #          (Blu Age or Micro Focus).</p>
    #
    class DatasetOrgAttributes < Hearth::Union
      # <p>The details of a VSAM data set.</p>
      #
      class Vsam < DatasetOrgAttributes
        def to_h
          { vsam: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::Vsam #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The generation data group of the data set.</p>
      #
      class Gdg < DatasetOrgAttributes
        def to_h
          { gdg: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::Gdg #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < DatasetOrgAttributes
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>The application definition for a particular application. </p>
    #
    class Definition < Hearth::Union
      # <p>The S3 bucket that contains the application definition.</p>
      #
      class S3Location < Definition
        def to_h
          { s3_location: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::S3Location #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The content of the application definition. This is a JSON object that contains the
      #          resource configuration/definitions that identify an application.</p>
      #
      class Content < Definition
        def to_h
          { content: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::Content #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < Definition
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment where the application was previously
    #            deployed.</p>
    #
    #   @return [String]
    #
    DeleteApplicationFromEnvironmentInput = ::Struct.new(
      :application_id,
      :environment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteApplicationFromEnvironmentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteApplicationInput = ::Struct.new(
      :application_id,
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

    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteEnvironmentInput = ::Struct.new(
      :environment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEnvironmentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a summary of a deployed application.</p>
    #
    # @!attribute application_version
    #   <p>The version of the deployed application.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the deployment.</p>
    #
    #   Enum, one of: ["Deploying", "Succeeded", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #
    #   @return [String]
    #
    DeployedVersionSummary = ::Struct.new(
      :application_version,
      :status,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeploymentLifecycle
    #
    module DeploymentLifecycle
      # No documentation available.
      #
      DEPLOYING = "Deploying"

      # No documentation available.
      #
      SUCCEEDED = "Succeeded"

      # No documentation available.
      #
      FAILED = "Failed"
    end

    # <p>A subset of information about a specific deployment.</p>
    #
    # @!attribute deployment_id
    #   <p>The unique identifier of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version
    #   <p>The version of the application.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The current status of the deployment.</p>
    #
    #   Enum, one of: ["Deploying", "Succeeded", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp when the deployment was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #
    #   @return [String]
    #
    DeploymentSummary = ::Struct.new(
      :deployment_id,
      :application_id,
      :environment_id,
      :application_version,
      :status,
      :creation_time,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the storage configuration for an Amazon EFS file system.</p>
    #
    # @!attribute file_system_id
    #   <p>The file system identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute mount_point
    #   <p>The mount point for the file system.</p>
    #
    #   @return [String]
    #
    EfsStorageConfiguration = ::Struct.new(
      :file_system_id,
      :mount_point,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EngineType
    #
    module EngineType
      # No documentation available.
      #
      MICROFOCUS = "microfocus"

      # No documentation available.
      #
      BLUAGE = "bluage"
    end

    # <p>A subset of information about the engine version for a specific application.</p>
    #
    # @!attribute engine_type
    #   <p>The type of target platform for the application.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version of the engine type used by the application.</p>
    #
    #   @return [String]
    #
    EngineVersionsSummary = ::Struct.new(
      :engine_type,
      :engine_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EnvironmentLifecycle
    #
    module EnvironmentLifecycle
      # No documentation available.
      #
      CREATING = "Creating"

      # No documentation available.
      #
      AVAILABLE = "Available"

      # No documentation available.
      #
      DELETING = "Deleting"

      # No documentation available.
      #
      FAILED = "Failed"
    end

    # <p>Contains a subset of the possible environment attributes. Used in the environment
    #          list.</p>
    #
    # @!attribute name
    #   <p>The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_arn
    #   <p>The Amazon Resource Name (ARN) of a particular runtime environment.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of a particular runtime environment.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The instance type of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the environment</p>
    #
    #   Enum, one of: ["Creating", "Available", "Deleting", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute engine_type
    #   <p>The target platform for the environment.</p>
    #
    #   Enum, one of: ["microfocus", "bluage"]
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version of the runtime engine.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp when the environment was created.</p>
    #
    #   @return [Time]
    #
    EnvironmentSummary = ::Struct.new(
      :name,
      :environment_arn,
      :environment_id,
      :instance_type,
      :status,
      :engine_type,
      :engine_version,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines an external storage location.</p>
    #
    class ExternalLocation < Hearth::Union
      # <p>The URI of the Amazon S3 bucket.</p>
      #
      class S3Location < ExternalLocation
        def to_h
          { s3_location: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::S3Location #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ExternalLocation
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>A file containing a batch job definition.</p>
    #
    # @!attribute file_name
    #   <p>The name of the file containing the batch job definition.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_path
    #   <p>The path to the file containing the batch job definition.</p>
    #
    #   @return [String]
    #
    FileBatchJobDefinition = ::Struct.new(
      :file_name,
      :folder_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A batch job identifier in which the batch job to run is identified by the file name and
    #          the relative path to the file name.</p>
    #
    # @!attribute file_name
    #   <p>The file name for the batch job identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_path
    #   <p>The relative path to the file name for the batch job identifier.</p>
    #
    #   @return [String]
    #
    FileBatchJobIdentifier = ::Struct.new(
      :file_name,
      :folder_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the storage configuration for an Amazon FSx file system.</p>
    #
    # @!attribute file_system_id
    #   <p>The file system identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute mount_point
    #   <p>The mount point for the file system.</p>
    #
    #   @return [String]
    #
    FsxStorageConfiguration = ::Struct.new(
      :file_system_id,
      :mount_point,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The required attributes for a generation data group data set. A generation data set is
    #          one of a collection of successive, historically related, catalogued data sets that together
    #          are known as a generation data group (GDG). Use this structure when you want to import a
    #          GDG. For more information on GDG, see <a href="https://www.ibm.com/docs/en/zos/2.3.0?topic=guide-generation-data-sets">Generation
    #             data sets</a>.</p>
    #
    # @!attribute limit
    #   <p>The maximum number of generation data sets, up to 255, in a GDG.</p>
    #
    #   @return [Integer]
    #
    # @!attribute roll_disposition
    #   <p>The disposition of the data set in the catalog.</p>
    #
    #   @return [String]
    #
    GdgAttributes = ::Struct.new(
      :limit,
      :roll_disposition,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # <p>The required attributes for a generation data group data set. A generation data set is
    #          one of a collection of successive, historically related, catalogued data sets that together
    #          are known as a generation data group (GDG). Use this structure when you want to import a
    #          GDG. For more information on GDG, see <a href="https://www.ibm.com/docs/en/zos/2.3.0?topic=guide-generation-data-sets">Generation
    #             data sets</a>.</p>
    #
    # @!attribute limit
    #   <p>The maximum number of generation data sets, up to 255, in a GDG.</p>
    #
    #   @return [Integer]
    #
    # @!attribute roll_disposition
    #   <p>The disposition of the data set in the catalog.</p>
    #
    #   @return [String]
    #
    GdgDetailAttributes = ::Struct.new(
      :limit,
      :roll_disposition,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute application_id
    #   <p>The identifier of the application.</p>
    #
    #   @return [String]
    #
    GetApplicationInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The unique identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the application.</p>
    #
    #   Enum, one of: ["Creating", "Created", "Available", "Ready", "Starting", "Running", "Stopping", "Stopped", "Failed", "Deleting"]
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   <p>The latest version of the application.</p>
    #
    #   @return [ApplicationVersionSummary]
    #
    # @!attribute deployed_version
    #   <p>The version of the application that is deployed.</p>
    #
    #   @return [DeployedVersionSummary]
    #
    # @!attribute engine_type
    #   <p>The type of the target platform for the application.</p>
    #
    #   Enum, one of: ["microfocus", "bluage"]
    #
    #   @return [String]
    #
    # @!attribute log_groups
    #   <p>The list of log summaries. Each log summary includes the log type as well as the log
    #            group identifier. These are CloudWatch logs. The Amazon Web Services Mainframe Modernization application log is pushed to CloudWatch
    #            under the customer's account.</p>
    #
    #   @return [Array<LogGroupSummary>]
    #
    # @!attribute creation_time
    #   <p>The timestamp when this application was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_start_time
    #   <p>The timestamp when the application was last started. Null until the application has
    #            started running for the first time.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>A list of tags associated with the application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute environment_id
    #   <p>The identifier of the environment where the application will be deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute target_group_arns
    #   <p>Returns the Amazon Resource Names (ARNs) of the target groups that are attached to the
    #            network load balancer.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute listener_arns
    #   <p>The Amazon Resource Name (ARN) for the network load balancer listener created in your
    #            Amazon Web Services account. Amazon Web Services Mainframe Modernization creates this listener on your behalf the first time you deploy an
    #            application.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute listener_ports
    #   <p>The port associated with the network load balancer listener created in your Amazon Web Services
    #            account.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute load_balancer_dns_name
    #   <p>The public DNS name of the load balancer created in your Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #
    #   @return [String]
    #
    GetApplicationOutput = ::Struct.new(
      :name,
      :description,
      :application_id,
      :application_arn,
      :status,
      :latest_version,
      :deployed_version,
      :engine_type,
      :log_groups,
      :creation_time,
      :last_start_time,
      :tags,
      :environment_id,
      :target_group_arns,
      :listener_arns,
      :listener_ports,
      :load_balancer_dns_name,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version
    #   <p>The specific version of the application.</p>
    #
    #   @return [Integer]
    #
    GetApplicationVersionInput = ::Struct.new(
      :application_id,
      :application_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the application version.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version
    #   <p>The specific version of the application.</p>
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   <p>The application description.</p>
    #
    #   @return [String]
    #
    # @!attribute definition_content
    #   <p>The content of the application definition. This is a JSON object that contains the
    #            resource configuration/definitions that identify an application.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the application version.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp when the application version was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #
    #   @return [String]
    #
    GetApplicationVersionOutput = ::Struct.new(
      :name,
      :application_version,
      :description,
      :definition_content,
      :status,
      :creation_time,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_id
    #   <p>The unique identifier of the batch job execution.</p>
    #
    #   @return [String]
    #
    GetBatchJobExecutionInput = ::Struct.new(
      :application_id,
      :execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute execution_id
    #   <p>The unique identifier for this batch job execution.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The unique identifier for this batch job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name of this batch job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_user
    #   <p>The user for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_type
    #   <p>The type of job.</p>
    #
    #   Enum, one of: ["VSE", "JES2", "JES3"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the batch job execution.</p>
    #
    #   Enum, one of: ["Submitting", "Holding", "Dispatching", "Running", "Cancelling", "Cancelled", "Succeeded", "Failed", "Succeeded With Warning"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The timestamp when the batch job execution started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The timestamp when the batch job execution ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #
    #   @return [String]
    #
    GetBatchJobExecutionOutput = ::Struct.new(
      :execution_id,
      :application_id,
      :job_id,
      :job_name,
      :job_user,
      :job_type,
      :status,
      :start_time,
      :end_time,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application that this data set is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_name
    #   <p>The name of the data set.</p>
    #
    #   @return [String]
    #
    GetDataSetDetailsInput = ::Struct.new(
      :application_id,
      :data_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_set_name
    #   <p>The name of the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_org
    #   <p>The type of data set. Possible values include VSAM, IS, PS, GDG, PO, PS, or
    #            unknown.</p>
    #
    #   @return [DatasetDetailOrgAttributes]
    #
    # @!attribute record_length
    #   <p>The length of records in the data set.</p>
    #
    #   @return [Integer]
    #
    # @!attribute location
    #   <p>The locaion where the data set is stored.</p>
    #
    #   @return [String]
    #
    # @!attribute blocksize
    #   <p>The size of the block on disk. </p>
    #
    #   @return [Integer]
    #
    # @!attribute creation_time
    #   <p>The timestamp when the data set was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The last time the data set was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_referenced_time
    #   <p>The last time the data set was referenced.</p>
    #
    #   @return [Time]
    #
    GetDataSetDetailsOutput = ::Struct.new(
      :data_set_name,
      :data_set_org,
      :record_length,
      :location,
      :blocksize,
      :creation_time,
      :last_updated_time,
      :last_referenced_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute task_id
    #   <p>The task identifier returned by the <a>CreateDataSetImportTask</a> operation.
    #         </p>
    #
    #   @return [String]
    #
    GetDataSetImportTaskInput = ::Struct.new(
      :application_id,
      :task_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_id
    #   <p>The task identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the task.</p>
    #
    #   Enum, one of: ["Creating", "Running", "Completed"]
    #
    #   @return [String]
    #
    # @!attribute summary
    #   <p>A summary of the status of the task.</p>
    #
    #   @return [DataSetImportSummary]
    #
    GetDataSetImportTaskOutput = ::Struct.new(
      :task_id,
      :status,
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployment_id
    #   <p>The unique identifier for the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #
    #   @return [String]
    #
    GetDeploymentInput = ::Struct.new(
      :deployment_id,
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployment_id
    #   <p>The unique identifier of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version
    #   <p>The application version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the deployment.</p>
    #
    #   Enum, one of: ["Deploying", "Succeeded", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp when the deployment was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #
    #   @return [String]
    #
    GetDeploymentOutput = ::Struct.new(
      :deployment_id,
      :application_id,
      :environment_id,
      :application_version,
      :status,
      :creation_time,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment.</p>
    #
    #   @return [String]
    #
    GetEnvironmentInput = ::Struct.new(
      :environment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the runtime environment. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the runtime environment.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_arn
    #   <p>The Amazon Resource Name (ARN) of the runtime environment.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The type of instance underlying the runtime environment.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the runtime environment.</p>
    #
    #   Enum, one of: ["Creating", "Available", "Deleting", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute engine_type
    #   <p>The target platform for the runtime environment.</p>
    #
    #   Enum, one of: ["microfocus", "bluage"]
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version of the runtime engine.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The unique identifier for the VPC used with this runtime environment.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The unique identifiers of the subnets assigned to this runtime environment.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The unique identifiers of the security groups assigned to this runtime
    #            environment.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute creation_time
    #   <p>The timestamp when the runtime environment was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute storage_configurations
    #   <p>The storage configurations defined for the runtime environment.</p>
    #
    #   @return [Array<StorageConfiguration>]
    #
    # @!attribute tags
    #   <p>The tags defined for this runtime environment.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute high_availability_config
    #   <p>The desired capacity of the high availability configuration for the runtime
    #            environment.</p>
    #
    #   @return [HighAvailabilityConfig]
    #
    # @!attribute publicly_accessible
    #   <p>Whether applications running in this runtime environment are publicly accessible.
    #         </p>
    #
    #   @return [Boolean]
    #
    # @!attribute actual_capacity
    #   <p>The number of instances included in the runtime environment. A standalone runtime
    #            environment has a maxiumum of one instance. Currently, a high availability runtime
    #            environment has a maximum of two instances. </p>
    #
    #   @return [Integer]
    #
    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) for the load balancer used with the runtime
    #            environment.</p>
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>Configures a desired maintenance window for the environment. If you do not provide a
    #            value, a random system-generated value will be assigned.</p>
    #
    #   @return [String]
    #
    # @!attribute pending_maintenance
    #   <p>Indicates the pending maintenance scheduled on this environment.</p>
    #
    #   @return [PendingMaintenance]
    #
    GetEnvironmentOutput = ::Struct.new(
      :name,
      :description,
      :environment_arn,
      :environment_id,
      :instance_type,
      :status,
      :engine_type,
      :engine_version,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :creation_time,
      :storage_configurations,
      :tags,
      :high_availability_config,
      :publicly_accessible,
      :actual_capacity,
      :load_balancer_arn,
      :status_reason,
      :preferred_maintenance_window,
      :pending_maintenance,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.publicly_accessible ||= false
      end

    end

    # <p>Defines the details of a high availability configuration.</p>
    #
    # @!attribute desired_capacity
    #   <p>The number of instances in a high availability configuration.</p>
    #
    #   @return [Integer]
    #
    HighAvailabilityConfig = ::Struct.new(
      :desired_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An unexpected error occurred during the processing of the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #
    #   @return [Integer]
    #
    InternalServerException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end

    end

    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the
    #     list, exclude this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of application versions to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #
    #   @return [String]
    #
    ListApplicationVersionsInput = ::Struct.new(
      :next_token,
      :max_results,
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_versions
    #   <p>The list of application versions.</p>
    #
    #   @return [Array<ApplicationVersionSummary>]
    #
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token
    #     that is passed to a subsequent call to this operation to retrieve the next set of items.</p>
    #
    #   @return [String]
    #
    ListApplicationVersionsOutput = ::Struct.new(
      :application_versions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token to control the number of applications displayed in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of applications to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute names
    #   <p>The names of the applications.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment where the applications are
    #            deployed.</p>
    #
    #   @return [String]
    #
    ListApplicationsInput = ::Struct.new(
      :next_token,
      :max_results,
      :names,
      :environment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute applications
    #   <p>Returns a list of summary details for all the applications in an environment.</p>
    #
    #   @return [Array<ApplicationSummary>]
    #
    # @!attribute next_token
    #   <p>A pagination token that's returned when the response doesn't contain all
    #            applications.</p>
    #
    #   @return [String]
    #
    ListApplicationsOutput = ::Struct.new(
      :applications,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the
    #     list, exclude this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of batch job definitions to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_id
    #   <p>The identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>If the batch job definition is a FileBatchJobDefinition, the prefix allows you to search
    #            on the file names of FileBatchJobDefinitions.</p>
    #
    #   @return [String]
    #
    ListBatchJobDefinitionsInput = ::Struct.new(
      :next_token,
      :max_results,
      :application_id,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute batch_job_definitions
    #   <p>The list of batch job definitions.</p>
    #
    #   @return [Array<BatchJobDefinition>]
    #
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token
    #     that is passed to a subsequent call to this operation to retrieve the next set of items.</p>
    #
    #   @return [String]
    #
    ListBatchJobDefinitionsOutput = ::Struct.new(
      :batch_job_definitions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token to control the number of batch job executions displayed in the
    #            list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of batch job executions to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_ids
    #   <p>The unique identifier of each batch job execution.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute job_name
    #   <p>The name of each batch job execution.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the batch job executions.</p>
    #
    #   Enum, one of: ["Submitting", "Holding", "Dispatching", "Running", "Cancelling", "Cancelled", "Succeeded", "Failed", "Succeeded With Warning"]
    #
    #   @return [String]
    #
    # @!attribute started_after
    #   <p>The time after which the batch job executions started.</p>
    #
    #   @return [Time]
    #
    # @!attribute started_before
    #   <p>The time before the batch job executions started.</p>
    #
    #   @return [Time]
    #
    ListBatchJobExecutionsInput = ::Struct.new(
      :next_token,
      :max_results,
      :application_id,
      :execution_ids,
      :job_name,
      :status,
      :started_after,
      :started_before,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute batch_job_executions
    #   <p>Returns a list of batch job executions for an application.</p>
    #
    #   @return [Array<BatchJobExecutionSummary>]
    #
    # @!attribute next_token
    #   <p>A pagination token that's returned when the response doesn't contain all batch job
    #            executions.</p>
    #
    #   @return [String]
    #
    ListBatchJobExecutionsOutput = ::Struct.new(
      :batch_job_executions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the
    #     list, exclude this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #
    #   @return [String]
    #
    ListDataSetImportHistoryInput = ::Struct.new(
      :next_token,
      :max_results,
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_set_import_tasks
    #   <p>The data set import tasks.</p>
    #
    #   @return [Array<DataSetImportTask>]
    #
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token
    #     that is passed to a subsequent call to this operation to retrieve the next set of items.</p>
    #
    #   @return [String]
    #
    ListDataSetImportHistoryOutput = ::Struct.new(
      :data_set_import_tasks,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application for which you want to list the associated data
    #            sets.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the
    #     list, exclude this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute prefix
    #   <p>The prefix of the data set name, which you can use to filter the list of data
    #            sets.</p>
    #
    #   @return [String]
    #
    ListDataSetsInput = ::Struct.new(
      :application_id,
      :next_token,
      :max_results,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_sets
    #   <p>The list of data sets, containing ionformation including the creating time, the data set
    #            name, the data set organization, the data set format, and the last time the data set was
    #            referenced or updated.</p>
    #
    #   @return [Array<DataSetSummary>]
    #
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token
    #     that is passed to a subsequent call to this operation to retrieve the next set of items.</p>
    #
    #   @return [String]
    #
    ListDataSetsOutput = ::Struct.new(
      :data_sets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the
    #     list, exclude this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_id
    #   <p>The application identifier.</p>
    #
    #   @return [String]
    #
    ListDeploymentsInput = ::Struct.new(
      :next_token,
      :max_results,
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployments
    #   <p>The list of deployments that is returned.</p>
    #
    #   @return [Array<DeploymentSummary>]
    #
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token
    #     that is passed to a subsequent call to this operation to retrieve the next set of items.</p>
    #
    #   @return [String]
    #
    ListDeploymentsOutput = ::Struct.new(
      :deployments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine_type
    #   <p>The type of target platform.</p>
    #
    #   Enum, one of: ["microfocus", "bluage"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the
    #     list, exclude this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects to return.</p>
    #
    #   @return [Integer]
    #
    ListEngineVersionsInput = ::Struct.new(
      :engine_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine_versions
    #   <p>Returns the engine versions.</p>
    #
    #   @return [Array<EngineVersionsSummary>]
    #
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token
    #     that is passed to a subsequent call to this operation to retrieve the next set of items.</p>
    #
    #   @return [String]
    #
    ListEngineVersionsOutput = ::Struct.new(
      :engine_versions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token to control the number of environments displayed in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of environments to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute names
    #   <p>The name of the environment.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute engine_type
    #   <p>The engine type for the environment.</p>
    #
    #   Enum, one of: ["microfocus", "bluage"]
    #
    #   @return [String]
    #
    ListEnvironmentsInput = ::Struct.new(
      :next_token,
      :max_results,
      :names,
      :engine_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environments
    #   <p>Returns a list of summary details for all the environments in your account. </p>
    #
    #   @return [Array<EnvironmentSummary>]
    #
    # @!attribute next_token
    #   <p>A pagination token that's returned when the response doesn't contain all the
    #            environments.</p>
    #
    #   @return [String]
    #
    ListEnvironmentsOutput = ::Struct.new(
      :environments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
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
    #   <p>The tags for the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A subset of the attributes about a log group. In CloudWatch a log group is a group of log
    #          streams that share the same retention, monitoring, and access control settings.</p>
    #
    # @!attribute log_type
    #   <p>The type of log.</p>
    #
    #   @return [String]
    #
    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #
    #   @return [String]
    #
    LogGroupSummary = ::Struct.new(
      :log_type,
      :log_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The information about the maintenance schedule.</p>
    #
    # @!attribute start_time
    #   <p>The time the scheduled maintenance is to start.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time the scheduled maintenance is to end.</p>
    #
    #   @return [Time]
    #
    MaintenanceSchedule = ::Struct.new(
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The scheduled maintenance for a runtime engine.</p>
    #
    # @!attribute schedule
    #   <p>The maintenance schedule for the engine version.</p>
    #
    #   @return [MaintenanceSchedule]
    #
    # @!attribute engine_version
    #   <p>The specific runtime engine that the maintenance schedule applies to.</p>
    #
    #   @return [String]
    #
    PendingMaintenance = ::Struct.new(
      :schedule,
      :engine_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The primary key for a KSDS data set.</p>
    #
    # @!attribute name
    #   <p>A name for the Primary Key.</p>
    #
    #   @return [String]
    #
    # @!attribute offset
    #   <p>A positive integer value representing the offset to mark the start of the primary key in
    #            the record byte array.</p>
    #
    #   @return [Integer]
    #
    # @!attribute length
    #   <p>A strictly positive integer value representing the length of the primary key. </p>
    #
    #   @return [Integer]
    #
    PrimaryKey = ::Struct.new(
      :name,
      :offset,
      :length,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.offset ||= 0
        self.length ||= 0
      end

    end

    # <p>The length of the records in the data set.</p>
    #
    # @!attribute min
    #   <p>The minimum record length of a record.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max
    #   <p>The maximum record length. In case of fixed, both minimum and maximum are the
    #            same.</p>
    #
    #   @return [Integer]
    #
    RecordLength = ::Struct.new(
      :min,
      :max,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.min ||= 0
        self.max ||= 0
      end

    end

    # <p>The specified resource was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the missing resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the missing resource.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A batch job definition contained in a script.</p>
    #
    # @!attribute script_name
    #   <p>The name of the script containing the batch job definition.</p>
    #
    #   @return [String]
    #
    ScriptBatchJobDefinition = ::Struct.new(
      :script_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A batch job identifier in which the batch job to run is identified by the script
    #          name.</p>
    #
    # @!attribute script_name
    #   <p>The name of the script containing the batch job definition.</p>
    #
    #   @return [String]
    #
    ScriptBatchJobIdentifier = ::Struct.new(
      :script_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more quotas for Amazon Web Services Mainframe Modernization exceeds the limit.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource that is exceeding the quota limit.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource that is exceeding the quota limit for Amazon Web Services Mainframe Modernization.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>A code that identifies the service that the exceeded quota belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The identifier of the exceeded quota.</p>
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application you want to start.</p>
    #
    #   @return [String]
    #
    StartApplicationInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application associated with this batch job.</p>
    #
    #   @return [String]
    #
    # @!attribute batch_job_identifier
    #   <p>The unique identifier of the batch job.</p>
    #
    #   @return [BatchJobIdentifier]
    #
    # @!attribute job_params
    #   <p>The collection of batch job parameters. For details about limits for keys and values,
    #            see <a href="https://www.ibm.com/docs/en/workload-automation/9.3.0?topic=zos-coding-variables-in-jcl">Coding variables in JCL</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    StartBatchJobInput = ::Struct.new(
      :application_id,
      :batch_job_identifier,
      :job_params,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute execution_id
    #   <p>The unique identifier of this execution of the batch job.</p>
    #
    #   @return [String]
    #
    StartBatchJobOutput = ::Struct.new(
      :execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application you want to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute force_stop
    #   <p>Stopping an application process can take a long time. Setting this parameter to true
    #            lets you force stop the application so you don't need to wait until the process finishes to
    #            apply another action on the application. The default value is false.</p>
    #
    #   @return [Boolean]
    #
    StopApplicationInput = ::Struct.new(
      :application_id,
      :force_stop,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.force_stop ||= false
      end

    end

    StopApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the storage configuration for an environment.</p>
    #
    class StorageConfiguration < Hearth::Union
      # <p>Defines the storage configuration for an Amazon EFS file system.</p>
      #
      class Efs < StorageConfiguration
        def to_h
          { efs: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::Efs #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Defines the storage configuration for an Amazon FSx file system.</p>
      #
      class Fsx < StorageConfiguration
        def to_h
          { fsx: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::Fsx #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < StorageConfiguration
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::M2::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to add to the resource.</p>
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

    # <p>The number of requests made exceeds the limit.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The identifier of the service that the throttled request was made to.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The identifier of the throttled reuqest.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #
    #   @return [Integer]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end

    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove.</p>
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

    # @!attribute application_id
    #   <p>The unique identifier of the application you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application to update.</p>
    #
    #   @return [String]
    #
    # @!attribute current_application_version
    #   <p>The current version of the application to update.</p>
    #
    #   @return [Integer]
    #
    # @!attribute definition
    #   <p>The application definition for this application. You can specify either inline JSON or
    #            an S3 bucket location.</p>
    #
    #   @return [Definition]
    #
    UpdateApplicationInput = ::Struct.new(
      :application_id,
      :description,
      :current_application_version,
      :definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_version
    #   <p>The new version of the application.</p>
    #
    #   @return [Integer]
    #
    UpdateApplicationOutput = ::Struct.new(
      :application_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_capacity
    #   <p>The desired capacity for the environment to update.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_type
    #   <p>The instance type for the environment to update.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version of the runtime engine for the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>Configures a desired maintenance window for the environment. If you do not provide a
    #            value, a random system-generated value will be assigned.</p>
    #
    #   @return [String]
    #
    # @!attribute apply_during_maintenance_window
    #   <p>Indicates whether to update the environment during the maintenance window. The default
    #            is false. Currently, Amazon Web Services Mainframe Modernization accepts the <code>engineVersion</code> parameter only if
    #               <code>applyDuringMaintenanceWindow</code> is true. If any parameter other than
    #               <code>engineVersion</code> is provided in <code>UpdateEnvironmentRequest</code>, it will
    #            fail if <code>applyDuringMaintenanceWindow</code> is set to true.</p>
    #
    #   @return [Boolean]
    #
    UpdateEnvironmentInput = ::Struct.new(
      :environment_id,
      :desired_capacity,
      :instance_type,
      :engine_version,
      :preferred_maintenance_window,
      :apply_during_maintenance_window,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.apply_during_maintenance_window ||= false
      end

    end

    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment that was updated.</p>
    #
    #   @return [String]
    #
    UpdateEnvironmentOutput = ::Struct.new(
      :environment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more parameters provided in the request is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason why it failed service validation.</p>
    #
    #   Enum, one of: ["unknownOperation", "cannotParse", "fieldValidationFailed", "other"]
    #
    #   @return [String]
    #
    # @!attribute field_list
    #   <p>The list of fields that failed service validation.</p>
    #
    #   @return [Array<ValidationExceptionField>]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a validation exception field.</p>
    #
    # @!attribute name
    #   <p>The name of the exception field.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message of the exception field.</p>
    #
    #   @return [String]
    #
    ValidationExceptionField = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationExceptionReason
    #
    module ValidationExceptionReason
      # No documentation available.
      #
      UNKNOWN_OPERATION = "unknownOperation"

      # No documentation available.
      #
      CANNOT_PARSE = "cannotParse"

      # No documentation available.
      #
      FIELD_VALIDATION_FAILED = "fieldValidationFailed"

      # No documentation available.
      #
      OTHER = "other"
    end

    # <p>The attributes of a VSAM type data set.</p>
    #
    # @!attribute format
    #   <p>The record format of the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute encoding
    #   <p>The character set used by the data set. Can be ASCII, EBCDIC, or unknown.</p>
    #
    #   @return [String]
    #
    # @!attribute compressed
    #   <p>Indicates whether indexes for this dataset are stored as compressed values. If you have
    #            a large data set (typically &gt; 100 Mb), consider setting this flag to True.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute primary_key
    #   <p>The primary key of the data set.</p>
    #
    #   @return [PrimaryKey]
    #
    # @!attribute alternate_keys
    #   <p>The alternate key definitions, if any. A legacy dataset might not have any alternate key
    #            defined, but if those alternate keys definitions exist, provide them as some applications
    #            will make use of them.</p>
    #
    #   @return [Array<AlternateKey>]
    #
    VsamAttributes = ::Struct.new(
      :format,
      :encoding,
      :compressed,
      :primary_key,
      :alternate_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.compressed ||= false
      end

    end

    # <p>The attributes of a VSAM type data set.</p>
    #
    # @!attribute encoding
    #   <p>The character set used by the data set. Can be ASCII, EBCDIC, or unknown.</p>
    #
    #   @return [String]
    #
    # @!attribute record_format
    #   <p>The record format of the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute compressed
    #   <p>Indicates whether indexes for this dataset are stored as compressed values. If you have
    #            a large data set (typically &gt; 100 Mb), consider setting this flag to True.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cache_at_startup
    #   <p>If set to True, enforces loading the data set into cache before it’s used by the
    #            application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute primary_key
    #   <p>The primary key of the data set.</p>
    #
    #   @return [PrimaryKey]
    #
    # @!attribute alternate_keys
    #   <p>The alternate key definitions, if any. A legacy dataset might not have any alternate key
    #            defined, but if those alternate keys definitions exist, provide them as some applications
    #            will make use of them.</p>
    #
    #   @return [Array<AlternateKey>]
    #
    VsamDetailAttributes = ::Struct.new(
      :encoding,
      :record_format,
      :compressed,
      :cache_at_startup,
      :primary_key,
      :alternate_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
