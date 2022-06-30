# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EMRContainers
  module Types

    # @!attribute id
    #   <p>The ID of the job run to cancel.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_cluster_id
    #   <p>The ID of the virtual cluster for which the job run will be canceled.</p>
    #
    #   @return [String]
    #
    CancelJobRunInput = ::Struct.new(
      :id,
      :virtual_cluster_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The output contains the ID of the cancelled job run.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_cluster_id
    #   <p>The output contains the virtual cluster ID for which the job run is cancelled.</p>
    #
    #   @return [String]
    #
    CancelJobRunOutput = ::Struct.new(
      :id,
      :virtual_cluster_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The entity representing certificate data generated for managed endpoint.</p>
    #
    # @!attribute certificate_arn
    #   <p>The ARN of the certificate generated for managed endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_data
    #   <p>The base64 encoded PEM certificate data generated for managed endpoint.</p>
    #
    #   @return [String]
    #
    Certificate = ::Struct.new(
      :certificate_arn,
      :certificate_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A configuration for CloudWatch monitoring. You can configure your jobs to send log information to CloudWatch Logs.</p>
    #
    # @!attribute log_group_name
    #   <p>The name of the log group for log publishing.</p>
    #
    #   @return [String]
    #
    # @!attribute log_stream_name_prefix
    #   <p>The specified name prefix for log streams.</p>
    #
    #   @return [String]
    #
    CloudWatchMonitoringConfiguration = ::Struct.new(
      :log_group_name,
      :log_stream_name_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A configuration specification to be used when provisioning virtual clusters, which can include configurations for applications and software bundled with Amazon EMR on EKS. A configuration consists of a classification, properties, and optional nested configurations. A classification refers to an application-specific configuration file. Properties are the settings you want to change in that file.</p>
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
        "#<struct AWS::SDK::EMRContainers::Types::Configuration "\
          "classification=#{classification || 'nil'}, "\
          "properties=\"[SENSITIVE]\", "\
          "configurations=#{configurations || 'nil'}>"
      end
    end

    # <p>A configuration specification to be used to override existing configurations.</p>
    #
    # @!attribute application_configuration
    #   <p>The configurations for the application running by the job run. </p>
    #
    #   @return [Array<Configuration>]
    #
    # @!attribute monitoring_configuration
    #   <p>The configurations for monitoring.</p>
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

    # <p>The information about the container used for a job run or a managed endpoint.</p>
    #
    class ContainerInfo < Hearth::Union
      # <p>The information about the EKS cluster.</p>
      #
      class EksInfo < ContainerInfo
        def to_h
          { eks_info: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::EMRContainers::Types::EksInfo #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ContainerInfo
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::EMRContainers::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>The information about the container provider.</p>
    #
    # @!attribute type
    #   <p>The type of the container provider. EKS is the only supported type as of now.</p>
    #
    #   Enum, one of: ["EKS"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the container cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute info
    #   <p>The information about the container cluster.</p>
    #
    #   @return [ContainerInfo]
    #
    ContainerProvider = ::Struct.new(
      :type,
      :id,
      :info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContainerProviderType
    #
    module ContainerProviderType
      # No documentation available.
      #
      EKS = "EKS"
    end

    # @!attribute name
    #   <p>The name of the managed endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_cluster_id
    #   <p>The ID of the virtual cluster for which a managed endpoint is created.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the managed endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute release_label
    #   <p>The Amazon EMR release version.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The ARN of the execution role.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_arn
    #   <p>The certificate ARN provided by users for the managed endpoint. This fiedd is under deprecation and will be removed in future releases.</p>
    #
    #   @deprecated
    #     Customer provided certificate-arn is deprecated and would be removed in future.
    #
    #   @return [String]
    #
    # @!attribute configuration_overrides
    #   <p>The configuration settings that will be used to override existing configurations.</p>
    #
    #   @return [ConfigurationOverrides]
    #
    # @!attribute client_token
    #   <p>The client idempotency token for this create call.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags of the managed endpoint.
    #         </p>
    #
    #   @return [Hash<String, String>]
    #
    CreateManagedEndpointInput = ::Struct.new(
      :name,
      :virtual_cluster_id,
      :type,
      :release_label,
      :execution_role_arn,
      :certificate_arn,
      :configuration_overrides,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The output contains the ID of the managed endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The output contains the name of the managed endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The output contains the ARN of the managed endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_cluster_id
    #   <p>The output contains the ID of the virtual cluster.</p>
    #
    #   @return [String]
    #
    CreateManagedEndpointOutput = ::Struct.new(
      :id,
      :name,
      :arn,
      :virtual_cluster_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The specified name of the virtual cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute container_provider
    #   <p>The container provider of the virtual cluster.</p>
    #
    #   @return [ContainerProvider]
    #
    # @!attribute client_token
    #   <p>The client token of the virtual cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the virtual cluster.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateVirtualClusterInput = ::Struct.new(
      :name,
      :container_provider,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>This output contains the virtual cluster ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>This output contains the name of the virtual cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>This output contains the ARN of virtual cluster.</p>
    #
    #   @return [String]
    #
    CreateVirtualClusterOutput = ::Struct.new(
      :id,
      :name,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the managed endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_cluster_id
    #   <p>The ID of the endpoint's virtual cluster.</p>
    #
    #   @return [String]
    #
    DeleteManagedEndpointInput = ::Struct.new(
      :id,
      :virtual_cluster_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The output displays the ID of the managed endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_cluster_id
    #   <p>The output displays the ID of the endpoint's virtual cluster.</p>
    #
    #   @return [String]
    #
    DeleteManagedEndpointOutput = ::Struct.new(
      :id,
      :virtual_cluster_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the virtual cluster that will be deleted.</p>
    #
    #   @return [String]
    #
    DeleteVirtualClusterInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>This output contains the ID of the virtual cluster that will be deleted. </p>
    #
    #   @return [String]
    #
    DeleteVirtualClusterOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the job run request. </p>
    #
    #   @return [String]
    #
    # @!attribute virtual_cluster_id
    #   <p>The ID of the virtual cluster for which the job run is submitted.</p>
    #
    #   @return [String]
    #
    DescribeJobRunInput = ::Struct.new(
      :id,
      :virtual_cluster_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_run
    #   <p>The output displays information about a job run.</p>
    #
    #   @return [JobRun]
    #
    DescribeJobRunOutput = ::Struct.new(
      :job_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>This output displays ID of the managed endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_cluster_id
    #   <p>The ID of the endpoint's virtual cluster.</p>
    #
    #   @return [String]
    #
    DescribeManagedEndpointInput = ::Struct.new(
      :id,
      :virtual_cluster_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint
    #   <p>This output displays information about a managed endpoint.</p>
    #
    #   @return [Endpoint]
    #
    DescribeManagedEndpointOutput = ::Struct.new(
      :endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the virtual cluster that will be described.</p>
    #
    #   @return [String]
    #
    DescribeVirtualClusterInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_cluster
    #   <p>This output displays information about the specified virtual cluster.</p>
    #
    #   @return [VirtualCluster]
    #
    DescribeVirtualClusterOutput = ::Struct.new(
      :virtual_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The information about the EKS cluster.</p>
    #
    # @!attribute namespace
    #   <p>The namespaces of the EKS cluster.</p>
    #
    #   @return [String]
    #
    EksInfo = ::Struct.new(
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This entity represents the endpoint that is managed by Amazon EMR on EKS.</p>
    #
    # @!attribute id
    #   <p>The ID of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_cluster_id
    #   <p>The ID of the endpoint's virtual cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the endpoint.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"]
    #
    #   @return [String]
    #
    # @!attribute release_label
    #   <p>The EMR release version to be used for the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The execution role ARN of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_arn
    #   <p>The certificate ARN of the endpoint. This field is under deprecation and will be removed in future.</p>
    #
    #   @deprecated
    #     Customer provided certificate-arn is deprecated and would be removed in future.
    #
    #   @return [String]
    #
    # @!attribute certificate_authority
    #   <p>The certificate generated by emr control plane on customer behalf to secure the managed endpoint.</p>
    #
    #   @return [Certificate]
    #
    # @!attribute configuration_overrides
    #   <p>The configuration settings that are used to override existing configurations for endpoints.</p>
    #
    #   @return [ConfigurationOverrides]
    #
    # @!attribute server_url
    #   <p>The server URL of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time when the endpoint was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute security_group
    #   <p>The security group configuration of the endpoint.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The subnet IDs of the endpoint.
    #         </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute state_details
    #   <p>
    #            Additional details of the endpoint state.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>
    #            The reasons why the endpoint has failed.
    #         </p>
    #
    #   Enum, one of: ["INTERNAL_ERROR", "USER_ERROR", "VALIDATION_ERROR", "CLUSTER_UNAVAILABLE"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags of the endpoint.
    #         </p>
    #
    #   @return [Hash<String, String>]
    #
    Endpoint = ::Struct.new(
      :id,
      :name,
      :arn,
      :virtual_cluster_id,
      :type,
      :state,
      :release_label,
      :execution_role_arn,
      :certificate_arn,
      :certificate_authority,
      :configuration_overrides,
      :server_url,
      :created_at,
      :security_group,
      :subnet_ids,
      :state_details,
      :failure_reason,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EndpointState
    #
    module EndpointState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      TERMINATING = "TERMINATING"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"

      # No documentation available.
      #
      TERMINATED_WITH_ERRORS = "TERMINATED_WITH_ERRORS"
    end

    # Includes enum constants for FailureReason
    #
    module FailureReason
      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      USER_ERROR = "USER_ERROR"

      # No documentation available.
      #
      VALIDATION_ERROR = "VALIDATION_ERROR"

      # No documentation available.
      #
      CLUSTER_UNAVAILABLE = "CLUSTER_UNAVAILABLE"
    end

    # <p>This is an internal server exception.</p>
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

    # <p>Specify the driver that the job runs on.</p>
    #
    # @!attribute spark_submit_job_driver
    #   <p>The job driver parameters specified for spark submit.</p>
    #
    #   @return [SparkSubmitJobDriver]
    #
    JobDriver = ::Struct.new(
      :spark_submit_job_driver,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This entity describes a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS. </p>
    #
    # @!attribute id
    #   <p>The ID of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_cluster_id
    #   <p>The ID of the job run's virtual cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of job run.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the job run. </p>
    #
    #   Enum, one of: ["PENDING", "SUBMITTED", "RUNNING", "FAILED", "CANCELLED", "CANCEL_PENDING", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The client token used to start a job run.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The execution role ARN of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute release_label
    #   <p>The release version of Amazon EMR.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_overrides
    #   <p>The configuration settings that are used to override default configuration.</p>
    #
    #   @return [ConfigurationOverrides]
    #
    # @!attribute job_driver
    #   <p>Parameters of job driver for the job run.</p>
    #
    #   @return [JobDriver]
    #
    # @!attribute created_at
    #   <p>The date and time when the job run was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>The user who created the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute finished_at
    #   <p>The date and time when the job run has finished.</p>
    #
    #   @return [Time]
    #
    # @!attribute state_details
    #   <p>Additional details of the job run state.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reasons why the job run has failed.</p>
    #
    #   Enum, one of: ["INTERNAL_ERROR", "USER_ERROR", "VALIDATION_ERROR", "CLUSTER_UNAVAILABLE"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The assigned tags of the job run.</p>
    #
    #   @return [Hash<String, String>]
    #
    JobRun = ::Struct.new(
      :id,
      :name,
      :virtual_cluster_id,
      :arn,
      :state,
      :client_token,
      :execution_role_arn,
      :release_label,
      :configuration_overrides,
      :job_driver,
      :created_at,
      :created_by,
      :finished_at,
      :state_details,
      :failure_reason,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobRunState
    #
    module JobRunState
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      SUBMITTED = "SUBMITTED"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      CANCEL_PENDING = "CANCEL_PENDING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"
    end

    # @!attribute virtual_cluster_id
    #   <p>The ID of the virtual cluster for which to list the job run. </p>
    #
    #   @return [String]
    #
    # @!attribute created_before
    #   <p>The date and time before which the job runs were submitted.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_after
    #   <p>The date and time after which the job runs were submitted.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>The name of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute states
    #   <p>The states of the job run.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of job runs that can be listed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of job runs to return.</p>
    #
    #   @return [String]
    #
    ListJobRunsInput = ::Struct.new(
      :virtual_cluster_id,
      :created_before,
      :created_after,
      :name,
      :states,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_runs
    #   <p>This output lists information about the specified job runs.</p>
    #
    #   @return [Array<JobRun>]
    #
    # @!attribute next_token
    #   <p>This output displays the token for the next set of job runs.</p>
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

    # @!attribute virtual_cluster_id
    #   <p>The ID of the virtual cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute created_before
    #   <p>The date and time before which the endpoints are created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_after
    #   <p> The date and time after which the endpoints are created.</p>
    #
    #   @return [Time]
    #
    # @!attribute types
    #   <p>The types of the managed endpoints.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute states
    #   <p>The states of the managed endpoints.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of managed endpoints that can be listed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p> The token for the next set of managed endpoints to return. </p>
    #
    #   @return [String]
    #
    ListManagedEndpointsInput = ::Struct.new(
      :virtual_cluster_id,
      :created_before,
      :created_after,
      :types,
      :states,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoints
    #   <p>The managed endpoints to be listed.</p>
    #
    #   @return [Array<Endpoint>]
    #
    # @!attribute next_token
    #   <p> The token for the next set of endpoints to return. </p>
    #
    #   @return [String]
    #
    ListManagedEndpointsOutput = ::Struct.new(
      :endpoints,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of tagged resources.</p>
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
    #   <p>The tags assigned to resources.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_provider_id
    #   <p>The container provider ID of the virtual cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute container_provider_type
    #   <p>The container provider type of the virtual cluster. EKS is the only supported type as of now.</p>
    #
    #   Enum, one of: ["EKS"]
    #
    #   @return [String]
    #
    # @!attribute created_after
    #   <p>The date and time after which the virtual clusters are created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_before
    #   <p>The date and time before which the virtual clusters are created.</p>
    #
    #   @return [Time]
    #
    # @!attribute states
    #   <p>The states of the requested virtual clusters.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of virtual clusters that can be listed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of virtual clusters to return. </p>
    #
    #   @return [String]
    #
    ListVirtualClustersInput = ::Struct.new(
      :container_provider_id,
      :container_provider_type,
      :created_after,
      :created_before,
      :states,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute virtual_clusters
    #   <p>This output lists the specified virtual clusters.</p>
    #
    #   @return [Array<VirtualCluster>]
    #
    # @!attribute next_token
    #   <p>This output displays the token for the next set of virtual clusters.</p>
    #
    #   @return [String]
    #
    ListVirtualClustersOutput = ::Struct.new(
      :virtual_clusters,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration setting for monitoring.</p>
    #
    # @!attribute persistent_app_ui
    #   <p>Monitoring configurations for the persistent application UI. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_monitoring_configuration
    #   <p>Monitoring configurations for CloudWatch.</p>
    #
    #   @return [CloudWatchMonitoringConfiguration]
    #
    # @!attribute s3_monitoring_configuration
    #   <p>Amazon S3 configuration for monitoring log publishing.</p>
    #
    #   @return [S3MonitoringConfiguration]
    #
    MonitoringConfiguration = ::Struct.new(
      :persistent_app_ui,
      :cloud_watch_monitoring_configuration,
      :s3_monitoring_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PersistentAppUI
    #
    module PersistentAppUI
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
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

    # <p> Amazon S3 configuration for monitoring log publishing. You can configure your jobs to send log information to Amazon S3.</p>
    #
    # @!attribute log_uri
    #   <p>Amazon S3 destination URI for log publishing.</p>
    #
    #   @return [String]
    #
    S3MonitoringConfiguration = ::Struct.new(
      :log_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The information about job driver for Spark submit.</p>
    #
    # @!attribute entry_point
    #   <p>The entry point of job application.</p>
    #
    #   @return [String]
    #
    # @!attribute entry_point_arguments
    #   <p>The arguments for job application.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute spark_submit_parameters
    #   <p>The Spark submit parameters that are used for job runs.</p>
    #
    #   @return [String]
    #
    SparkSubmitJobDriver = ::Struct.new(
      :entry_point,
      :entry_point_arguments,
      :spark_submit_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::EMRContainers::Types::SparkSubmitJobDriver "\
          "entry_point=\"[SENSITIVE]\", "\
          "entry_point_arguments=#{entry_point_arguments || 'nil'}, "\
          "spark_submit_parameters=\"[SENSITIVE]\">"
      end
    end

    # @!attribute name
    #   <p>The name of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_cluster_id
    #   <p>The virtual cluster ID for which the job run request is submitted.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The client idempotency token of the job run request. </p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The execution role ARN for the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute release_label
    #   <p>The Amazon EMR release version to use for the job run.</p>
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
    #   <p>The tags assigned to job runs.</p>
    #
    #   @return [Hash<String, String>]
    #
    StartJobRunInput = ::Struct.new(
      :name,
      :virtual_cluster_id,
      :client_token,
      :execution_role_arn,
      :release_label,
      :job_driver,
      :configuration_overrides,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>This output displays the started job run ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>This output displays the name of the started job run.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>This output lists the ARN of job run.</p>
    #
    #   @return [String]
    #
    # @!attribute virtual_cluster_id
    #   <p>This output displays the virtual cluster ID for which the job run was submitted.</p>
    #
    #   @return [String]
    #
    StartJobRunOutput = ::Struct.new(
      :id,
      :name,
      :arn,
      :virtual_cluster_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of resources.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to resources.</p>
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
    #   <p>The ARN of resources.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys of the resources.</p>
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

    # <p>There are invalid parameters in the client request.</p>
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

    # <p>This entity describes a virtual cluster. A virtual cluster is a Kubernetes namespace that Amazon EMR is registered with. Amazon EMR uses virtual clusters to run jobs and host endpoints. Multiple virtual clusters can be backed by the same physical cluster. However, each virtual cluster maps to one namespace on an EKS cluster. Virtual clusters do not create any active resources that contribute to your bill or that require lifecycle management outside the service.</p>
    #
    # @!attribute id
    #   <p>The ID of the virtual cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the virtual cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the virtual cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the virtual cluster.</p>
    #
    #   Enum, one of: ["RUNNING", "TERMINATING", "TERMINATED", "ARRESTED"]
    #
    #   @return [String]
    #
    # @!attribute container_provider
    #   <p>The container provider of the virtual cluster.</p>
    #
    #   @return [ContainerProvider]
    #
    # @!attribute created_at
    #   <p>The date and time when the virtual cluster is created.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The assigned tags of the virtual cluster.</p>
    #
    #   @return [Hash<String, String>]
    #
    VirtualCluster = ::Struct.new(
      :id,
      :name,
      :arn,
      :state,
      :container_provider,
      :created_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VirtualClusterState
    #
    module VirtualClusterState
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      TERMINATING = "TERMINATING"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"

      # No documentation available.
      #
      ARRESTED = "ARRESTED"
    end

  end
end
