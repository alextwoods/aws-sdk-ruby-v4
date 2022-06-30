# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EMRServerless
  module Types

    # <p>Information about an application. EMR Serverless uses applications to run jobs.</p>
    #
    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute release_label
    #   <p>The EMR release version associated with the application.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of application, such as Spark or Hive.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the application.</p>
    #
    #   Enum, one of: ["CREATING", "CREATED", "STARTING", "STARTED", "STOPPING", "STOPPED", "TERMINATED"]
    #
    #   @return [String]
    #
    # @!attribute state_details
    #   <p>The state details of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute initial_capacity
    #   <p>The initial capacity of the application.</p>
    #
    #   @return [Hash<String, InitialCapacityConfig>]
    #
    # @!attribute maximum_capacity
    #   <p>The maximum capacity of the application. This is cumulative across all workers at any
    #            given point in time during the lifespan of the application is created. No new resources
    #            will be created once any one of the defined limits is hit.</p>
    #
    #   @return [MaximumAllowedResources]
    #
    # @!attribute created_at
    #   <p>The date and time when the application run was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The date and time when the application run was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags assigned to the application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute auto_start_configuration
    #   <p>The configuration for an application to automatically start on job submission.</p>
    #
    #   @return [AutoStartConfig]
    #
    # @!attribute auto_stop_configuration
    #   <p>The configuration for an application to automatically stop after a certain amount of time being idle.</p>
    #
    #   @return [AutoStopConfig]
    #
    # @!attribute network_configuration
    #   <p>The network configuration for customer VPC connectivity for the application.</p>
    #
    #   @return [NetworkConfiguration]
    #
    Application = ::Struct.new(
      :application_id,
      :name,
      :arn,
      :release_label,
      :type,
      :state,
      :state_details,
      :initial_capacity,
      :maximum_capacity,
      :created_at,
      :updated_at,
      :tags,
      :auto_start_configuration,
      :auto_stop_configuration,
      :network_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ApplicationState
    #
    module ApplicationState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      STARTED = "STARTED"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"
    end

    # <p>The summary of attributes associated with an application.</p>
    #
    # @!attribute id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute release_label
    #   <p>The EMR release version associated with the application.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of application, such as Spark or Hive.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the application.</p>
    #
    #   Enum, one of: ["CREATING", "CREATED", "STARTING", "STARTED", "STOPPING", "STOPPED", "TERMINATED"]
    #
    #   @return [String]
    #
    # @!attribute state_details
    #   <p>The state details of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time when the application was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The date and time when the application was last updated.</p>
    #
    #   @return [Time]
    #
    ApplicationSummary = ::Struct.new(
      :id,
      :name,
      :arn,
      :release_label,
      :type,
      :state,
      :state_details,
      :created_at,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for an application to automatically start on job submission.</p>
    #
    # @!attribute enabled
    #   <p>Enables the application to automatically start on job submission. Defaults to true.</p>
    #
    #   @return [Boolean]
    #
    AutoStartConfig = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for an application to automatically stop after a certain amount of time being idle.</p>
    #
    # @!attribute enabled
    #   <p>Enables the application to automatically stop after a certain amount of time being idle. Defaults to true.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute idle_timeout_minutes
    #   <p>The amount of idle time in minutes after which your application will automatically stop. Defaults to 15 minutes.</p>
    #
    #   @return [Integer]
    #
    AutoStopConfig = ::Struct.new(
      :enabled,
      :idle_timeout_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application on which the job run will be canceled.</p>
    #
    #   @return [String]
    #
    # @!attribute job_run_id
    #   <p>The ID of the job run to cancel.</p>
    #
    #   @return [String]
    #
    CancelJobRunInput = ::Struct.new(
      :application_id,
      :job_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The output contains the application ID on which the job run is cancelled.</p>
    #
    #   @return [String]
    #
    # @!attribute job_run_id
    #   <p>The output contains the ID of the cancelled job run.</p>
    #
    #   @return [String]
    #
    CancelJobRunOutput = ::Struct.new(
      :application_id,
      :job_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A configuration specification to be used when provisioning an application. A
    #          configuration consists of a classification, properties, and optional nested configurations.
    #          A classification refers to an application-specific configuration file. Properties are the
    #          settings you want to change in that file.</p>
    #
    # @!attribute classification
    #   <p>The classification within a configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>A set of properties specified within a configuration classification.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute configurations
    #   <p>A list of additional configurations to apply within a configuration object.</p>
    #
    #   @return [Array<Configuration>]
    #
    Configuration = ::Struct.new(
      :classification,
      :properties,
      :configurations,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::EMRServerless::Types::Configuration "\
          "classification=#{classification || 'nil'}, "\
          "properties=\"[SENSITIVE]\", "\
          "configurations=#{configurations || 'nil'}>"
      end
    end

    # <p>A configuration specification to be used to override existing configurations.</p>
    #
    # @!attribute application_configuration
    #   <p>The override configurations for the application.</p>
    #
    #   @return [Array<Configuration>]
    #
    # @!attribute monitoring_configuration
    #   <p>The override configurations for monitoring.</p>
    #
    #   @return [MonitoringConfiguration]
    #
    ConfigurationOverrides = ::Struct.new(
      :application_configuration,
      :monitoring_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request could not be processed because of conflict in the current state of the
    #          resource.</p>
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
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute release_label
    #   <p>The EMR release version associated with the application.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of application you want to start, such as Spark or Hive.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The client idempotency token of the application to create. Its value must be unique for
    #            each request.</p>
    #
    #   @return [String]
    #
    # @!attribute initial_capacity
    #   <p>The capacity to initialize when the application is created.</p>
    #
    #   @return [Hash<String, InitialCapacityConfig>]
    #
    # @!attribute maximum_capacity
    #   <p>The maximum capacity to allocate when the application is created. This is cumulative
    #            across all workers at any given point in time, not just when an application is created. No
    #            new resources will be created once any one of the defined limits is hit.</p>
    #
    #   @return [MaximumAllowedResources]
    #
    # @!attribute tags
    #   <p>The tags assigned to the application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute auto_start_configuration
    #   <p>The configuration for an application to automatically start on job submission.</p>
    #
    #   @return [AutoStartConfig]
    #
    # @!attribute auto_stop_configuration
    #   <p>The configuration for an application to automatically stop after a certain amount of time being idle.</p>
    #
    #   @return [AutoStopConfig]
    #
    # @!attribute network_configuration
    #   <p>The network configuration for customer VPC connectivity.</p>
    #
    #   @return [NetworkConfiguration]
    #
    CreateApplicationInput = ::Struct.new(
      :name,
      :release_label,
      :type,
      :client_token,
      :initial_capacity,
      :maximum_capacity,
      :tags,
      :auto_start_configuration,
      :auto_stop_configuration,
      :network_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The output contains the application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The output contains the name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The output contains the ARN of the application.</p>
    #
    #   @return [String]
    #
    CreateApplicationOutput = ::Struct.new(
      :application_id,
      :name,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application that will be deleted.</p>
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

    # @!attribute application_id
    #   <p>The ID of the application that will be described.</p>
    #
    #   @return [String]
    #
    GetApplicationInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The output displays information about the specified application.</p>
    #
    #   @return [Application]
    #
    GetApplicationOutput = ::Struct.new(
      :application,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application on which the job run is submitted.</p>
    #
    #   @return [String]
    #
    # @!attribute job_run_id
    #   <p>The ID of the job run.</p>
    #
    #   @return [String]
    #
    GetJobRunInput = ::Struct.new(
      :application_id,
      :job_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_run
    #   <p>The output displays information about the job run.</p>
    #
    #   @return [JobRun]
    #
    GetJobRunOutput = ::Struct.new(
      :job_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configurations for the Hive job driver.</p>
    #
    # @!attribute query
    #   <p>The query for the Hive job run.</p>
    #
    #   @return [String]
    #
    # @!attribute init_query_file
    #   <p>The query file for the Hive job run.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameters for the Hive job run.</p>
    #
    #   @return [String]
    #
    Hive = ::Struct.new(
      :query,
      :init_query_file,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::EMRServerless::Types::Hive "\
          "query=\"[SENSITIVE]\", "\
          "init_query_file=\"[SENSITIVE]\", "\
          "parameters=\"[SENSITIVE]\">"
      end
    end

    # <p>The initial capacity configuration per worker.</p>
    #
    # @!attribute worker_count
    #   <p>The number of workers in the initial capacity configuration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute worker_configuration
    #   <p>The resource configuration of the initial capacity configuration.</p>
    #
    #   @return [WorkerResourceConfig]
    #
    InitialCapacityConfig = ::Struct.new(
      :worker_count,
      :worker_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.worker_count ||= 0
      end

    end

    # <p>Request processing failed because of an error or failure with the service.</p>
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

    # <p>The driver that the job runs on.</p>
    #
    class JobDriver < Hearth::Union
      # <p>The job driver parameters specified for Spark.</p>
      #
      class SparkSubmit < JobDriver
        def to_h
          { spark_submit: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::EMRServerless::Types::SparkSubmit #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The job driver parameters specified for Hive.</p>
      #
      class Hive < JobDriver
        def to_h
          { hive: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::EMRServerless::Types::Hive #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < JobDriver
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::EMRServerless::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Information about a job run. A job run is a unit of work, such as a Spark JAR, Hive
    #          query, or SparkSQL query, that you submit to an EMR Serverless application.</p>
    #
    # @!attribute application_id
    #   <p>The ID of the application the job is running on.</p>
    #
    #   @return [String]
    #
    # @!attribute job_run_id
    #   <p>The ID of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The optional job run name. This doesn't have to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The execution role ARN of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>The user who created the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time when the job run was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The date and time when the job run was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute execution_role
    #   <p>The execution role ARN of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the job run.</p>
    #
    #   Enum, one of: ["SUBMITTED", "PENDING", "SCHEDULED", "RUNNING", "SUCCESS", "FAILED", "CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute state_details
    #   <p>The state details of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute release_label
    #   <p>The EMR release version associated with the application your job is running on.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_overrides
    #   <p>The configuration settings that are used to override default configuration.</p>
    #
    #   @return [ConfigurationOverrides]
    #
    # @!attribute job_driver
    #   <p>The job driver for the job run.</p>
    #
    #   @return [JobDriver]
    #
    # @!attribute tags
    #   <p>The tags assigned to the job run.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute total_resource_utilization
    #   <p>The aggregate vCPU, memory, and storage resources used from the time job start executing till the time job is terminated,
    #             rounded up to the nearest second.</p>
    #
    #   @return [TotalResourceUtilization]
    #
    # @!attribute network_configuration
    #   <p>The network configuration for customer VPC connectivity.</p>
    #
    #   @return [NetworkConfiguration]
    #
    # @!attribute total_execution_duration_seconds
    #   <p>The job run total execution duration in seconds. This field is only available for job runs in a <code>COMPLETED</code>, <code>FAILED</code>, or <code>CANCELLED</code> state.</p>
    #
    #   @return [Integer]
    #
    JobRun = ::Struct.new(
      :application_id,
      :job_run_id,
      :name,
      :arn,
      :created_by,
      :created_at,
      :updated_at,
      :execution_role,
      :state,
      :state_details,
      :release_label,
      :configuration_overrides,
      :job_driver,
      :tags,
      :total_resource_utilization,
      :network_configuration,
      :total_execution_duration_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobRunState
    #
    module JobRunState
      # No documentation available.
      #
      SUBMITTED = "SUBMITTED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      SCHEDULED = "SCHEDULED"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

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

    # <p>The summary of attributes associated with a job run.</p>
    #
    # @!attribute application_id
    #   <p>The ID of the application the job is running on.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The optional job run name. This doesn't have to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>The user who created the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time when the job run was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The date and time when the job run was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute execution_role
    #   <p>The execution role ARN of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the job run.</p>
    #
    #   Enum, one of: ["SUBMITTED", "PENDING", "SCHEDULED", "RUNNING", "SUCCESS", "FAILED", "CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute state_details
    #   <p>The state details of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute release_label
    #   <p>The EMR release version associated with the application your job is running on.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of job run, such as Spark or Hive.</p>
    #
    #   @return [String]
    #
    JobRunSummary = ::Struct.new(
      :application_id,
      :id,
      :name,
      :arn,
      :created_by,
      :created_at,
      :updated_at,
      :execution_role,
      :state,
      :state_details,
      :release_label,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of application results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of applications that can be listed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute states
    #   <p>An optional filter for application states. Note that if this filter contains multiple states, the resulting list will be grouped by the state.</p>
    #
    #   @return [Set<String>]
    #
    ListApplicationsInput = ::Struct.new(
      :next_token,
      :max_results,
      :states,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute applications
    #   <p>The output lists the specified applications.</p>
    #
    #   @return [Array<ApplicationSummary>]
    #
    # @!attribute next_token
    #   <p>The output displays the token for the next set of application results. This is required
    #            for pagination and is available as a response of the previous request.</p>
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

    # @!attribute application_id
    #   <p>The ID of the application for which to list the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of job run results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of job runs that can be listed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_at_after
    #   <p>The lower bound of the option to filter by creation date and time.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_at_before
    #   <p>The upper bound of the option to filter by creation date and time.</p>
    #
    #   @return [Time]
    #
    # @!attribute states
    #   <p>An optional filter for job run states. Note that if this filter contains multiple states, the resulting list will be grouped by the state.</p>
    #
    #   @return [Set<String>]
    #
    ListJobRunsInput = ::Struct.new(
      :application_id,
      :next_token,
      :max_results,
      :created_at_after,
      :created_at_before,
      :states,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_runs
    #   <p>The output lists information about the specified job runs.</p>
    #
    #   @return [Array<JobRunSummary>]
    #
    # @!attribute next_token
    #   <p>The output displays the token for the next set of job run results. This is required for
    #            pagination and is available as a response of the previous request.</p>
    #
    #   @return [String]
    #
    ListJobRunsOutput = ::Struct.new(
      :job_runs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the supported resources are Amazon EMR Serverless applications and job runs.</p>
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

    # <p>The managed log persistence configuration for a job run.</p>
    #
    # @!attribute enabled
    #   <p>Enables managed logging and defaults to true. If set to false, managed logging will be turned off.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute encryption_key_arn
    #   <p>The KMS key ARN to encrypt the logs stored in managed log persistence.</p>
    #
    #   @return [String]
    #
    ManagedPersistenceMonitoringConfiguration = ::Struct.new(
      :enabled,
      :encryption_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum allowed cumulative resources for an application. No new resources will be
    #          created once the limit is hit.</p>
    #
    # @!attribute cpu
    #   <p>The maximum allowed CPU for an application.</p>
    #
    #   @return [String]
    #
    # @!attribute memory
    #   <p>The maximum allowed resources for an application.</p>
    #
    #   @return [String]
    #
    # @!attribute disk
    #   <p>The maximum allowed disk for an application.</p>
    #
    #   @return [String]
    #
    MaximumAllowedResources = ::Struct.new(
      :cpu,
      :memory,
      :disk,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration setting for monitoring.</p>
    #
    # @!attribute s3_monitoring_configuration
    #   <p>The Amazon S3 configuration for monitoring log publishing.</p>
    #
    #   @return [S3MonitoringConfiguration]
    #
    # @!attribute managed_persistence_monitoring_configuration
    #   <p>The managed log persistence configuration for a job run.</p>
    #
    #   @return [ManagedPersistenceMonitoringConfiguration]
    #
    MonitoringConfiguration = ::Struct.new(
      :s3_monitoring_configuration,
      :managed_persistence_monitoring_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The network configuration for customer VPC connectivity.</p>
    #
    # @!attribute subnet_ids
    #   <p>The array of subnet Ids for customer VPC connectivity.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The array of security group Ids for customer VPC connectivity.</p>
    #
    #   @return [Array<String>]
    #
    NetworkConfiguration = ::Struct.new(
      :subnet_ids,
      :security_group_ids,
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

    # <p>The Amazon S3 configuration for monitoring log publishing. You can configure your jobs
    #          to send log information to Amazon S3.</p>
    #
    # @!attribute log_uri
    #   <p>The Amazon S3 destination URI for log publishing.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key_arn
    #   <p>The KMS key ARN to encrypt the logs published to the given Amazon S3 destination.</p>
    #
    #   @return [String]
    #
    S3MonitoringConfiguration = ::Struct.new(
      :log_uri,
      :encryption_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of resources per account has been reached.</p>
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

    # <p>The configurations for the Spark submit job driver.</p>
    #
    # @!attribute entry_point
    #   <p>The entry point for the Spark submit job run.</p>
    #
    #   @return [String]
    #
    # @!attribute entry_point_arguments
    #   <p>The arguments for the Spark submit job run.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute spark_submit_parameters
    #   <p>The parameters for the Spark submit job run.</p>
    #
    #   @return [String]
    #
    SparkSubmit = ::Struct.new(
      :entry_point,
      :entry_point_arguments,
      :spark_submit_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::EMRServerless::Types::SparkSubmit "\
          "entry_point=\"[SENSITIVE]\", "\
          "entry_point_arguments=#{entry_point_arguments || 'nil'}, "\
          "spark_submit_parameters=\"[SENSITIVE]\">"
      end
    end

    # @!attribute application_id
    #   <p>The ID of the application to start.</p>
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
    #   <p>The ID of the application on which to run the job.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The client idempotency token of the job run to start. Its value must be unique for each
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The execution role ARN for the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute job_driver
    #   <p>The job driver for the job run.</p>
    #
    #   @return [JobDriver]
    #
    # @!attribute configuration_overrides
    #   <p>The configuration overrides for the job run.</p>
    #
    #   @return [ConfigurationOverrides]
    #
    # @!attribute tags
    #   <p>The tags assigned to the job run.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute execution_timeout_minutes
    #   <p>The maximum duration for the job run to run. If the job run runs beyond this duration, it will be automatically cancelled.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   <p>The optional job run name. This doesn't have to be unique.</p>
    #
    #   @return [String]
    #
    StartJobRunInput = ::Struct.new(
      :application_id,
      :client_token,
      :execution_role_arn,
      :job_driver,
      :configuration_overrides,
      :tags,
      :execution_timeout_minutes,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>This output displays the application ID on which the job run was submitted.</p>
    #
    #   @return [String]
    #
    # @!attribute job_run_id
    #   <p>The output contains the ID of the started job run.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The output lists the execution role ARN of the job run.</p>
    #
    #   @return [String]
    #
    StartJobRunOutput = ::Struct.new(
      :application_id,
      :job_run_id,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application to stop.</p>
    #
    #   @return [String]
    #
    StopApplicationInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the supported resources are Amazon EMR Serverless applications and job runs.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.</p>
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

    # <p>The aggregate vCPU, memory, and storage resources used from the time job start executing till the time job is terminated,
    #           rounded up to the nearest second.</p>
    #
    # @!attribute v_cpu_hour
    #   <p>The aggregated vCPU used per hour from the time job start executing till the time job is terminated.</p>
    #
    #   @return [Float]
    #
    # @!attribute memory_gb_hour
    #   <p>The aggregated memory used per hour from the time job start executing till the time job is terminated.</p>
    #
    #   @return [Float]
    #
    # @!attribute storage_gb_hour
    #   <p>The aggregated storage used per hour from the time job start executing till the time job is terminated.</p>
    #
    #   @return [Float]
    #
    TotalResourceUtilization = ::Struct.new(
      :v_cpu_hour,
      :memory_gb_hour,
      :storage_gb_hour,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the supported resources are Amazon EMR Serverless applications and job runs.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The keys of the tags to be removed.</p>
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
    #   <p>The ID of the application to update.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The client idempotency token of the application to update. Its value must be unique for
    #            each request.</p>
    #
    #   @return [String]
    #
    # @!attribute initial_capacity
    #   <p>The capacity to initialize when the application is updated.</p>
    #
    #   @return [Hash<String, InitialCapacityConfig>]
    #
    # @!attribute maximum_capacity
    #   <p>The maximum capacity to allocate when the application is updated. This is cumulative
    #            across all workers at any given point in time during the lifespan of the application. No
    #            new resources will be created once any one of the defined limits is hit.</p>
    #
    #   @return [MaximumAllowedResources]
    #
    # @!attribute auto_start_configuration
    #   <p>The configuration for an application to automatically start on job submission.</p>
    #
    #   @return [AutoStartConfig]
    #
    # @!attribute auto_stop_configuration
    #   <p>The configuration for an application to automatically stop after a certain amount of time being idle.</p>
    #
    #   @return [AutoStopConfig]
    #
    # @!attribute network_configuration
    #   <p>The network configuration for customer VPC connectivity.</p>
    #
    #   @return [NetworkConfiguration]
    #
    UpdateApplicationInput = ::Struct.new(
      :application_id,
      :client_token,
      :initial_capacity,
      :maximum_capacity,
      :auto_start_configuration,
      :auto_stop_configuration,
      :network_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>Information about the updated application.</p>
    #
    #   @return [Application]
    #
    UpdateApplicationOutput = ::Struct.new(
      :application,
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

    # <p>The cumulative configuration requirements for every worker instance of the worker
    #          type.</p>
    #
    # @!attribute cpu
    #   <p>The CPU requirements for every worker instance of the worker type.</p>
    #
    #   @return [String]
    #
    # @!attribute memory
    #   <p>The memory requirements for every worker instance of the worker type.</p>
    #
    #   @return [String]
    #
    # @!attribute disk
    #   <p>The disk requirements for every worker instance of the worker type.</p>
    #
    #   @return [String]
    #
    WorkerResourceConfig = ::Struct.new(
      :cpu,
      :memory,
      :disk,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
