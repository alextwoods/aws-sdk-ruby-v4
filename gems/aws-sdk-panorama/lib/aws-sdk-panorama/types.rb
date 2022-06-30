# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Panorama
  module Types

    # <p>The requestor does not have permission to access the target action or resource.</p>
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

    # <p>Details about a beta appliance software update.</p>
    #
    # @!attribute version
    #   <p>The appliance software version.</p>
    #
    #   @return [String]
    #
    AlternateSoftwareMetadata = ::Struct.new(
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An application instance on a device.</p>
    #
    # @!attribute name
    #   <p>The application instance's name.</p>
    #
    #   @return [String]
    #
    # @!attribute application_instance_id
    #   <p>The application instance's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute default_runtime_context_device
    #   <p>The device's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute default_runtime_context_device_name
    #   <p>The device's name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The application instance's description.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The application instance's status.</p>
    #
    #   Enum, one of: ["DEPLOYMENT_PENDING", "DEPLOYMENT_REQUESTED", "DEPLOYMENT_IN_PROGRESS", "DEPLOYMENT_ERROR", "DEPLOYMENT_SUCCEEDED", "REMOVAL_PENDING", "REMOVAL_REQUESTED", "REMOVAL_IN_PROGRESS", "REMOVAL_FAILED", "REMOVAL_SUCCEEDED", "DEPLOYMENT_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute health_status
    #   <p>The application instance's health status.</p>
    #
    #   Enum, one of: ["RUNNING", "ERROR", "NOT_AVAILABLE"]
    #
    #   @return [String]
    #
    # @!attribute status_description
    #   <p>The application instance's status description.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>When the application instance was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute arn
    #   <p>The application instance's ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The application instance's tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    ApplicationInstance = ::Struct.new(
      :name,
      :application_instance_id,
      :default_runtime_context_device,
      :default_runtime_context_device_name,
      :description,
      :status,
      :health_status,
      :status_description,
      :created_time,
      :arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ApplicationInstanceHealthStatus
    #
    module ApplicationInstanceHealthStatus
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      NOT_AVAILABLE = "NOT_AVAILABLE"
    end

    # Includes enum constants for ApplicationInstanceStatus
    #
    module ApplicationInstanceStatus
      # No documentation available.
      #
      DEPLOYMENT_PENDING = "DEPLOYMENT_PENDING"

      # No documentation available.
      #
      DEPLOYMENT_REQUESTED = "DEPLOYMENT_REQUESTED"

      # No documentation available.
      #
      DEPLOYMENT_IN_PROGRESS = "DEPLOYMENT_IN_PROGRESS"

      # No documentation available.
      #
      DEPLOYMENT_ERROR = "DEPLOYMENT_ERROR"

      # No documentation available.
      #
      DEPLOYMENT_SUCCEEDED = "DEPLOYMENT_SUCCEEDED"

      # No documentation available.
      #
      REMOVAL_PENDING = "REMOVAL_PENDING"

      # No documentation available.
      #
      REMOVAL_REQUESTED = "REMOVAL_REQUESTED"

      # No documentation available.
      #
      REMOVAL_IN_PROGRESS = "REMOVAL_IN_PROGRESS"

      # No documentation available.
      #
      REMOVAL_FAILED = "REMOVAL_FAILED"

      # No documentation available.
      #
      REMOVAL_SUCCEEDED = "REMOVAL_SUCCEEDED"

      # No documentation available.
      #
      DEPLOYMENT_FAILED = "DEPLOYMENT_FAILED"
    end

    # <p>The target resource is in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The resource's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource's type.</p>
    #
    #   @return [String]
    #
    # @!attribute error_id
    #   <p>A unique ID for the error.</p>
    #
    #   @return [String]
    #
    # @!attribute error_arguments
    #   <p>A list of attributes that led to the exception and their values.</p>
    #
    #   @return [Array<ConflictExceptionErrorArgument>]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :error_id,
      :error_arguments,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A conflict exception error argument.</p>
    #
    # @!attribute name
    #   <p>The error argument's name.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The error argument's value.</p>
    #
    #   @return [String]
    #
    ConflictExceptionErrorArgument = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectionType
    #
    module ConnectionType
      # No documentation available.
      #
      STATIC_IP = "STATIC_IP"

      # No documentation available.
      #
      DHCP = "DHCP"
    end

    # @!attribute name
    #   <p>A name for the application instance.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the application instance.</p>
    #
    #   @return [String]
    #
    # @!attribute manifest_payload
    #   <p>The application's manifest document.</p>
    #
    #   @return [ManifestPayload]
    #
    # @!attribute manifest_overrides_payload
    #   <p>Setting overrides for the application manifest.</p>
    #
    #   @return [ManifestOverridesPayload]
    #
    # @!attribute application_instance_id_to_replace
    #   <p>The ID of an application instance to replace with the new instance.</p>
    #
    #   @return [String]
    #
    # @!attribute runtime_role_arn
    #   <p>The ARN of a runtime role for the application instance.</p>
    #
    #   @return [String]
    #
    # @!attribute default_runtime_context_device
    #   <p>A device's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags for the application instance.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateApplicationInstanceInput = ::Struct.new(
      :name,
      :description,
      :manifest_payload,
      :manifest_overrides_payload,
      :application_instance_id_to_replace,
      :runtime_role_arn,
      :default_runtime_context_device,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_instance_id
    #   <p>The application instance's ID.</p>
    #
    #   @return [String]
    #
    CreateApplicationInstanceOutput = ::Struct.new(
      :application_instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_ids
    #   <p>IDs of target devices.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute device_job_config
    #   <p>Configuration settings for the job.</p>
    #
    #   @return [DeviceJobConfig]
    #
    # @!attribute job_type
    #   <p>The type of job to run.</p>
    #
    #   Enum, one of: ["OTA"]
    #
    #   @return [String]
    #
    CreateJobForDevicesInput = ::Struct.new(
      :device_ids,
      :device_job_config,
      :job_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute jobs
    #   <p>A list of jobs.</p>
    #
    #   @return [Array<Job>]
    #
    CreateJobForDevicesOutput = ::Struct.new(
      :jobs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_type
    #   <p>The type of node.</p>
    #
    #   Enum, one of: ["RTSP_CAMERA_STREAM"]
    #
    #   @return [String]
    #
    # @!attribute output_package_name
    #   <p>An output package name for the node.</p>
    #
    #   @return [String]
    #
    # @!attribute output_package_version
    #   <p>An output package version for the node.</p>
    #
    #   @return [String]
    #
    # @!attribute node_name
    #   <p>A name for the node.</p>
    #
    #   @return [String]
    #
    # @!attribute node_description
    #   <p>A description for the node.</p>
    #
    #   @return [String]
    #
    # @!attribute template_parameters
    #   <p>Template parameters for the node.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute job_tags
    #   <p>Tags for the job.</p>
    #
    #   @return [Array<JobResourceTags>]
    #
    CreateNodeFromTemplateJobInput = ::Struct.new(
      :template_type,
      :output_package_name,
      :output_package_version,
      :node_name,
      :node_description,
      :template_parameters,
      :job_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #
    #   @return [String]
    #
    CreateNodeFromTemplateJobOutput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_type
    #   <p>A job type for the package import job.</p>
    #
    #   Enum, one of: ["NODE_PACKAGE_VERSION", "MARKETPLACE_NODE_PACKAGE_VERSION"]
    #
    #   @return [String]
    #
    # @!attribute input_config
    #   <p>An input config for the package import job.</p>
    #
    #   @return [PackageImportJobInputConfig]
    #
    # @!attribute output_config
    #   <p>An output config for the package import job.</p>
    #
    #   @return [PackageImportJobOutputConfig]
    #
    # @!attribute client_token
    #   <p>A client token for the package import job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_tags
    #   <p>Tags for the package import job.</p>
    #
    #   @return [Array<JobResourceTags>]
    #
    CreatePackageImportJobInput = ::Struct.new(
      :job_type,
      :input_config,
      :output_config,
      :client_token,
      :job_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #
    #   @return [String]
    #
    CreatePackageImportJobOutput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute package_name
    #   <p>A name for the package.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags for the package.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreatePackageInput = ::Struct.new(
      :package_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute package_id
    #   <p>The package's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The package's ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_location
    #   <p>The package's storage location.</p>
    #
    #   @return [StorageLocation]
    #
    CreatePackageOutput = ::Struct.new(
      :package_id,
      :arn,
      :storage_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_id
    #   <p>The device's ID.</p>
    #
    #   @return [String]
    #
    DeleteDeviceInput = ::Struct.new(
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_id
    #   <p>The device's ID.</p>
    #
    #   @return [String]
    #
    DeleteDeviceOutput = ::Struct.new(
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute package_id
    #   <p>The package's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute force_delete
    #   <p>Delete the package even if it has artifacts stored in its access point. Deletes the package's artifacts from
    #         Amazon S3.</p>
    #
    #   @return [Boolean]
    #
    DeletePackageInput = ::Struct.new(
      :package_id,
      :force_delete,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.force_delete ||= false
      end

    end

    DeletePackageOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute owner_account
    #   <p>An owner account.</p>
    #
    #   @return [String]
    #
    # @!attribute package_id
    #   <p>A package ID.</p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>A package version.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_version
    #   <p>A patch version.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_latest_patch_version
    #   <p>If the version was marked latest, the new version to maker as latest.</p>
    #
    #   @return [String]
    #
    DeregisterPackageVersionInput = ::Struct.new(
      :owner_account,
      :package_id,
      :package_version,
      :patch_version,
      :updated_latest_patch_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterPackageVersionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_instance_id
    #   <p>The application instance's ID.</p>
    #
    #   @return [String]
    #
    DescribeApplicationInstanceDetailsInput = ::Struct.new(
      :application_instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The application instance's name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The application instance's description.</p>
    #
    #   @return [String]
    #
    # @!attribute default_runtime_context_device
    #   <p>The application instance's default runtime context device.</p>
    #
    #   @return [String]
    #
    # @!attribute manifest_payload
    #   <p>The application instance's configuration manifest.</p>
    #
    #   @return [ManifestPayload]
    #
    # @!attribute manifest_overrides_payload
    #   <p>Parameter overrides for the configuration manifest.</p>
    #
    #   @return [ManifestOverridesPayload]
    #
    # @!attribute application_instance_id_to_replace
    #   <p>The ID of the application instance that this instance replaced.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>When the application instance was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute application_instance_id
    #   <p>The application instance's ID.</p>
    #
    #   @return [String]
    #
    DescribeApplicationInstanceDetailsOutput = ::Struct.new(
      :name,
      :description,
      :default_runtime_context_device,
      :manifest_payload,
      :manifest_overrides_payload,
      :application_instance_id_to_replace,
      :created_time,
      :application_instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_instance_id
    #   <p>The application instance's ID.</p>
    #
    #   @return [String]
    #
    DescribeApplicationInstanceInput = ::Struct.new(
      :application_instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The application instance's name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The application instance's description.</p>
    #
    #   @return [String]
    #
    # @!attribute default_runtime_context_device
    #   <p>The device's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute default_runtime_context_device_name
    #   <p>The device's bane.</p>
    #
    #   @return [String]
    #
    # @!attribute application_instance_id_to_replace
    #   <p>The ID of the application instance that this instance replaced.</p>
    #
    #   @return [String]
    #
    # @!attribute runtime_role_arn
    #   <p>The application instance's runtime role ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The application instance's status.</p>
    #
    #   Enum, one of: ["DEPLOYMENT_PENDING", "DEPLOYMENT_REQUESTED", "DEPLOYMENT_IN_PROGRESS", "DEPLOYMENT_ERROR", "DEPLOYMENT_SUCCEEDED", "REMOVAL_PENDING", "REMOVAL_REQUESTED", "REMOVAL_IN_PROGRESS", "REMOVAL_FAILED", "REMOVAL_SUCCEEDED", "DEPLOYMENT_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute health_status
    #   <p>The application instance's health status.</p>
    #
    #   Enum, one of: ["RUNNING", "ERROR", "NOT_AVAILABLE"]
    #
    #   @return [String]
    #
    # @!attribute status_description
    #   <p>The application instance's status description.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>When the application instance was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The application instance was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute application_instance_id
    #   <p>The application instance's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The application instance's ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The application instance's tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeApplicationInstanceOutput = ::Struct.new(
      :name,
      :description,
      :default_runtime_context_device,
      :default_runtime_context_device_name,
      :application_instance_id_to_replace,
      :runtime_role_arn,
      :status,
      :health_status,
      :status_description,
      :created_time,
      :last_updated_time,
      :application_instance_id,
      :arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_id
    #   <p>The device's ID.</p>
    #
    #   @return [String]
    #
    DescribeDeviceInput = ::Struct.new(
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #
    #   @return [String]
    #
    DescribeDeviceJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The device's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute device_arn
    #   <p>The device's ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute device_name
    #   <p>The device's name.</p>
    #
    #   @return [String]
    #
    # @!attribute device_type
    #   <p>The device's type.</p>
    #
    #   Enum, one of: ["PANORAMA_APPLIANCE_DEVELOPER_KIT", "PANORAMA_APPLIANCE"]
    #
    #   @return [String]
    #
    # @!attribute image_version
    #   <p>For an OTA job, the target version of the device software.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The job's status.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "VERIFYING", "REBOOTING", "DOWNLOADING", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>When the job was created.</p>
    #
    #   @return [Time]
    #
    DescribeDeviceJobOutput = ::Struct.new(
      :job_id,
      :device_id,
      :device_arn,
      :device_name,
      :device_type,
      :image_version,
      :status,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_id
    #   <p>The device's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The device's name.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The device's ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The device's description.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The device's type.</p>
    #
    #   Enum, one of: ["PANORAMA_APPLIANCE_DEVELOPER_KIT", "PANORAMA_APPLIANCE"]
    #
    #   @return [String]
    #
    # @!attribute device_connection_status
    #   <p>The device's connection status.</p>
    #
    #   Enum, one of: ["ONLINE", "OFFLINE", "AWAITING_CREDENTIALS", "NOT_AVAILABLE", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>When the device was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute provisioning_status
    #   <p>The device's provisioning status.</p>
    #
    #   Enum, one of: ["AWAITING_PROVISIONING", "PENDING", "SUCCEEDED", "FAILED", "ERROR", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute latest_software
    #   <p>The latest software version available for the device.</p>
    #
    #   @return [String]
    #
    # @!attribute current_software
    #   <p>The device's current software version.</p>
    #
    #   @return [String]
    #
    # @!attribute serial_number
    #   <p>The device's serial number.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The device's tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute networking_configuration
    #   <p>The device's networking configuration.</p>
    #
    #   @return [NetworkPayload]
    #
    # @!attribute current_networking_status
    #   <p>The device's networking status.</p>
    #
    #   @return [NetworkStatus]
    #
    # @!attribute lease_expiration_time
    #   <p>The device's lease expiration time.</p>
    #
    #   @return [Time]
    #
    # @!attribute alternate_softwares
    #   <p>Beta software releases available for the device.</p>
    #
    #   @return [Array<AlternateSoftwareMetadata>]
    #
    # @!attribute latest_alternate_software
    #   <p>The most recent beta software release.</p>
    #
    #   @return [String]
    #
    # @!attribute brand
    #   <p>The device's maker.</p>
    #
    #   Enum, one of: ["AWS_PANORAMA", "LENOVO"]
    #
    #   @return [String]
    #
    DescribeDeviceOutput = ::Struct.new(
      :device_id,
      :name,
      :arn,
      :description,
      :type,
      :device_connection_status,
      :created_time,
      :provisioning_status,
      :latest_software,
      :current_software,
      :serial_number,
      :tags,
      :networking_configuration,
      :current_networking_status,
      :lease_expiration_time,
      :alternate_softwares,
      :latest_alternate_software,
      :brand,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #
    #   @return [String]
    #
    DescribeNodeFromTemplateJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The job's status.</p>
    #
    #   Enum, one of: ["PENDING", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The job's status message.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>When the job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>When the job was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute output_package_name
    #   <p>The job's output package name.</p>
    #
    #   @return [String]
    #
    # @!attribute output_package_version
    #   <p>The job's output package version.</p>
    #
    #   @return [String]
    #
    # @!attribute node_name
    #   <p>The node's name.</p>
    #
    #   @return [String]
    #
    # @!attribute node_description
    #   <p>The node's description.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The job's template type.</p>
    #
    #   Enum, one of: ["RTSP_CAMERA_STREAM"]
    #
    #   @return [String]
    #
    # @!attribute template_parameters
    #   <p>The job's template parameters.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute job_tags
    #   <p>The job's tags.</p>
    #
    #   @return [Array<JobResourceTags>]
    #
    DescribeNodeFromTemplateJobOutput = ::Struct.new(
      :job_id,
      :status,
      :status_message,
      :created_time,
      :last_updated_time,
      :output_package_name,
      :output_package_version,
      :node_name,
      :node_description,
      :template_type,
      :template_parameters,
      :job_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute node_id
    #   <p>The node's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The account ID of the node's owner.</p>
    #
    #   @return [String]
    #
    DescribeNodeInput = ::Struct.new(
      :node_id,
      :owner_account,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute node_id
    #   <p>The node's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The node's name.</p>
    #
    #   @return [String]
    #
    # @!attribute category
    #   <p>The node's category.</p>
    #
    #   Enum, one of: ["BUSINESS_LOGIC", "ML_MODEL", "MEDIA_SOURCE", "MEDIA_SINK"]
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The account ID of the node's owner.</p>
    #
    #   @return [String]
    #
    # @!attribute package_name
    #   <p>The node's package name.</p>
    #
    #   @return [String]
    #
    # @!attribute package_id
    #   <p>The node's package ID.</p>
    #
    #   @return [String]
    #
    # @!attribute package_arn
    #   <p>The node's ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>The node's package version.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_version
    #   <p>The node's patch version.</p>
    #
    #   @return [String]
    #
    # @!attribute node_interface
    #   <p>The node's interface.</p>
    #
    #   @return [NodeInterface]
    #
    # @!attribute asset_name
    #   <p>The node's asset name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The node's description.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>When the node was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>When the node was updated.</p>
    #
    #   @return [Time]
    #
    DescribeNodeOutput = ::Struct.new(
      :node_id,
      :name,
      :category,
      :owner_account,
      :package_name,
      :package_id,
      :package_arn,
      :package_version,
      :patch_version,
      :node_interface,
      :asset_name,
      :description,
      :created_time,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #
    #   @return [String]
    #
    DescribePackageImportJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The job's client token.</p>
    #
    #   @return [String]
    #
    # @!attribute job_type
    #   <p>The job's type.</p>
    #
    #   Enum, one of: ["NODE_PACKAGE_VERSION", "MARKETPLACE_NODE_PACKAGE_VERSION"]
    #
    #   @return [String]
    #
    # @!attribute input_config
    #   <p>The job's input config.</p>
    #
    #   @return [PackageImportJobInputConfig]
    #
    # @!attribute output_config
    #   <p>The job's output config.</p>
    #
    #   @return [PackageImportJobOutputConfig]
    #
    # @!attribute output
    #   <p>The job's output.</p>
    #
    #   @return [PackageImportJobOutput]
    #
    # @!attribute created_time
    #   <p>When the job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>When the job was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The job's status.</p>
    #
    #   Enum, one of: ["PENDING", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The job's status message.</p>
    #
    #   @return [String]
    #
    # @!attribute job_tags
    #   <p>The job's tags.</p>
    #
    #   @return [Array<JobResourceTags>]
    #
    DescribePackageImportJobOutput = ::Struct.new(
      :job_id,
      :client_token,
      :job_type,
      :input_config,
      :output_config,
      :output,
      :created_time,
      :last_updated_time,
      :status,
      :status_message,
      :job_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute package_id
    #   <p>The package's ID.</p>
    #
    #   @return [String]
    #
    DescribePackageInput = ::Struct.new(
      :package_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute package_id
    #   <p>The package's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute package_name
    #   <p>The package's name.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The package's ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_location
    #   <p>The package's storage location.</p>
    #
    #   @return [StorageLocation]
    #
    # @!attribute read_access_principal_arns
    #   <p>ARNs of accounts that have read access to the package.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute write_access_principal_arns
    #   <p>ARNs of accounts that have write access to the package.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute created_time
    #   <p>When the package was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The package's tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribePackageOutput = ::Struct.new(
      :package_id,
      :package_name,
      :arn,
      :storage_location,
      :read_access_principal_arns,
      :write_access_principal_arns,
      :created_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute owner_account
    #   <p>The version's owner account.</p>
    #
    #   @return [String]
    #
    # @!attribute package_id
    #   <p>The version's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>The version's version.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_version
    #   <p>The version's patch version.</p>
    #
    #   @return [String]
    #
    DescribePackageVersionInput = ::Struct.new(
      :owner_account,
      :package_id,
      :package_version,
      :patch_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute owner_account
    #   <p>The account ID of the version's owner.</p>
    #
    #   @return [String]
    #
    # @!attribute package_id
    #   <p>The version's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute package_arn
    #   <p>The ARN of the package.</p>
    #
    #   @return [String]
    #
    # @!attribute package_name
    #   <p>The version's name.</p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>The version's version.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_version
    #   <p>The version's patch version.</p>
    #
    #   @return [String]
    #
    # @!attribute is_latest_patch
    #   <p>Whether the version is the latest available.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>The version's status.</p>
    #
    #   Enum, one of: ["REGISTER_PENDING", "REGISTER_COMPLETED", "FAILED", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute status_description
    #   <p>The version's status description.</p>
    #
    #   @return [String]
    #
    # @!attribute registered_time
    #   <p>The version's registered time.</p>
    #
    #   @return [Time]
    #
    DescribePackageVersionOutput = ::Struct.new(
      :owner_account,
      :package_id,
      :package_arn,
      :package_name,
      :package_version,
      :patch_version,
      :is_latest_patch,
      :status,
      :status_description,
      :registered_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_latest_patch ||= false
      end

    end

    # <p>A device.</p>
    #
    # @!attribute device_id
    #   <p>The device's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The device's name.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>When the device was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute provisioning_status
    #   <p>The device's provisioning status.</p>
    #
    #   Enum, one of: ["AWAITING_PROVISIONING", "PENDING", "SUCCEEDED", "FAILED", "ERROR", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>When the device was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute lease_expiration_time
    #   <p>The device's lease expiration time.</p>
    #
    #   @return [Time]
    #
    # @!attribute brand
    #   <p>The device's maker.</p>
    #
    #   Enum, one of: ["AWS_PANORAMA", "LENOVO"]
    #
    #   @return [String]
    #
    Device = ::Struct.new(
      :device_id,
      :name,
      :created_time,
      :provisioning_status,
      :last_updated_time,
      :lease_expiration_time,
      :brand,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeviceBrand
    #
    module DeviceBrand
      # No documentation available.
      #
      AWS_PANORAMA = "AWS_PANORAMA"

      # No documentation available.
      #
      LENOVO = "LENOVO"
    end

    # Includes enum constants for DeviceConnectionStatus
    #
    module DeviceConnectionStatus
      # No documentation available.
      #
      ONLINE = "ONLINE"

      # No documentation available.
      #
      OFFLINE = "OFFLINE"

      # No documentation available.
      #
      AWAITING_CREDENTIALS = "AWAITING_CREDENTIALS"

      # No documentation available.
      #
      NOT_AVAILABLE = "NOT_AVAILABLE"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # <p>A job that runs on a device.</p>
    #
    # @!attribute device_name
    #   <p>The name of the target device</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The ID of the target device.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The job's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>When the job was created.</p>
    #
    #   @return [Time]
    #
    DeviceJob = ::Struct.new(
      :device_name,
      :device_id,
      :job_id,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A job's configuration.</p>
    #
    # @!attribute ota_job_config
    #   <p>A configuration for an over-the-air (OTA) upgrade. Required for OTA jobs.</p>
    #
    #   @return [OTAJobConfig]
    #
    DeviceJobConfig = ::Struct.new(
      :ota_job_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeviceStatus
    #
    module DeviceStatus
      # No documentation available.
      #
      AWAITING_PROVISIONING = "AWAITING_PROVISIONING"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # Includes enum constants for DeviceType
    #
    module DeviceType
      # No documentation available.
      #
      PANORAMA_APPLIANCE_DEVELOPER_KIT = "PANORAMA_APPLIANCE_DEVELOPER_KIT"

      # No documentation available.
      #
      PANORAMA_APPLIANCE = "PANORAMA_APPLIANCE"
    end

    # <p>A device's network configuration.</p>
    #
    # @!attribute connection_type
    #   <p>How the device gets an IP address.</p>
    #
    #   Enum, one of: ["STATIC_IP", "DHCP"]
    #
    #   @return [String]
    #
    # @!attribute static_ip_connection_info
    #   <p>Network configuration for a static IP connection.</p>
    #
    #   @return [StaticIpConnectionInfo]
    #
    EthernetPayload = ::Struct.new(
      :connection_type,
      :static_ip_connection_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A device's Ethernet status.</p>
    #
    # @!attribute ip_address
    #   <p>The device's IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_status
    #   <p>The device's connection status.</p>
    #
    #   Enum, one of: ["CONNECTED", "NOT_CONNECTED", "CONNECTING"]
    #
    #   @return [String]
    #
    # @!attribute hw_address
    #   <p>The device's physical address.</p>
    #
    #   @return [String]
    #
    EthernetStatus = ::Struct.new(
      :ip_address,
      :connection_status,
      :hw_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal error occurred.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The number of seconds a client should wait before retrying the call.</p>
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

    # <p>A job for a device.</p>
    #
    # @!attribute job_id
    #   <p>The job's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The target device's ID.</p>
    #
    #   @return [String]
    #
    Job = ::Struct.new(
      :job_id,
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Tags for a job.</p>
    #
    # @!attribute resource_type
    #   <p>The job's type.</p>
    #
    #   Enum, one of: ["PACKAGE"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The job's tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    JobResourceTags = ::Struct.new(
      :resource_type,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobResourceType
    #
    module JobResourceType
      # No documentation available.
      #
      PACKAGE = "PACKAGE"
    end

    # Includes enum constants for JobType
    #
    module JobType
      # No documentation available.
      #
      OTA = "OTA"
    end

    # @!attribute application_instance_id
    #   <p>The application instance's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of application instance dependencies to return in one page of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListApplicationInstanceDependenciesInput = ::Struct.new(
      :application_instance_id,
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

    # @!attribute package_objects
    #   <p>A list of package objects.</p>
    #
    #   @return [Array<PackageObject>]
    #
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ListApplicationInstanceDependenciesOutput = ::Struct.new(
      :package_objects,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_instance_id
    #   <p>The node instances' application instance ID.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of node instances to return in one page of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListApplicationInstanceNodeInstancesInput = ::Struct.new(
      :application_instance_id,
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

    # @!attribute node_instances
    #   <p>A list of node instances.</p>
    #
    #   @return [Array<NodeInstance>]
    #
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ListApplicationInstanceNodeInstancesOutput = ::Struct.new(
      :node_instances,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_id
    #   <p>The application instances' device ID.</p>
    #
    #   @return [String]
    #
    # @!attribute status_filter
    #   <p>Only include instances with a specific status.</p>
    #
    #   Enum, one of: ["DEPLOYMENT_SUCCEEDED", "DEPLOYMENT_ERROR", "REMOVAL_SUCCEEDED", "REMOVAL_FAILED", "PROCESSING_DEPLOYMENT", "PROCESSING_REMOVAL", "DEPLOYMENT_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of application instances to return in one page of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListApplicationInstancesInput = ::Struct.new(
      :device_id,
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

    # @!attribute application_instances
    #   <p>A list of application instances.</p>
    #
    #   @return [Array<ApplicationInstance>]
    #
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ListApplicationInstancesOutput = ::Struct.new(
      :application_instances,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of devices to return in one page of results.</p>
    #
    #   @return [Integer]
    #
    ListDevicesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute device_id
    #   <p>Filter results by the job's target device ID.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of device jobs to return in one page of results.</p>
    #
    #   @return [Integer]
    #
    ListDevicesJobsInput = ::Struct.new(
      :device_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute device_jobs
    #   <p>A list of jobs.</p>
    #
    #   @return [Array<DeviceJob>]
    #
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ListDevicesJobsOutput = ::Struct.new(
      :device_jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute devices
    #   <p>A list of devices.</p>
    #
    #   @return [Array<Device>]
    #
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ListDevicesOutput = ::Struct.new(
      :devices,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of node from template jobs to return in one page of results.</p>
    #
    #   @return [Integer]
    #
    ListNodeFromTemplateJobsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute node_from_template_jobs
    #   <p>A list of jobs.</p>
    #
    #   @return [Array<NodeFromTemplateJob>]
    #
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ListNodeFromTemplateJobsOutput = ::Struct.new(
      :node_from_template_jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute category
    #   <p>Search for nodes by category.</p>
    #
    #   Enum, one of: ["BUSINESS_LOGIC", "ML_MODEL", "MEDIA_SOURCE", "MEDIA_SINK"]
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>Search for nodes by the account ID of the nodes' owner.</p>
    #
    #   @return [String]
    #
    # @!attribute package_name
    #   <p>Search for nodes by name.</p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>Search for nodes by version.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_version
    #   <p>Search for nodes by patch version.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of nodes to return in one page of results.</p>
    #
    #   @return [Integer]
    #
    ListNodesInput = ::Struct.new(
      :category,
      :owner_account,
      :package_name,
      :package_version,
      :patch_version,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute nodes
    #   <p>A list of nodes.</p>
    #
    #   @return [Array<Node>]
    #
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ListNodesOutput = ::Struct.new(
      :nodes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of package import jobs to return in one page of results.</p>
    #
    #   @return [Integer]
    #
    ListPackageImportJobsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute package_import_jobs
    #   <p>A list of package import jobs.</p>
    #
    #   @return [Array<PackageImportJob>]
    #
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ListPackageImportJobsOutput = ::Struct.new(
      :package_import_jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of packages to return in one page of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListPackagesInput = ::Struct.new(
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

    # @!attribute packages
    #   <p>A list of packages.</p>
    #
    #   @return [Array<PackageListItem>]
    #
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ListPackagesOutput = ::Struct.new(
      :packages,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource's ARN.</p>
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
    #   <p>A list of tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Parameter overrides for an application instance. This is a JSON document that has a single key
    #         (<code>PayloadData</code>) where the value is an escaped string representation of the overrides document.</p>
    #
    class ManifestOverridesPayload < Hearth::Union
      # <p>The overrides document.</p>
      #
      class PayloadData < ManifestOverridesPayload
        def to_h
          { payload_data: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Panorama::Types::PayloadData #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ManifestOverridesPayload
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Panorama::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>A application verion's manifest file. This is a JSON document that has a single key (<code>PayloadData</code>)
    #       where the value is an escaped string representation of the application manifest (<code>graph.json</code>). This
    #       file is located in the <code>graphs</code> folder in your application source.</p>
    #
    class ManifestPayload < Hearth::Union
      # <p>The application manifest.</p>
      #
      class PayloadData < ManifestPayload
        def to_h
          { payload_data: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Panorama::Types::PayloadData #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ManifestPayload
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Panorama::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Includes enum constants for NetworkConnectionStatus
    #
    module NetworkConnectionStatus
      # No documentation available.
      #
      CONNECTED = "CONNECTED"

      # No documentation available.
      #
      NOT_CONNECTED = "NOT_CONNECTED"

      # No documentation available.
      #
      CONNECTING = "CONNECTING"
    end

    # <p>The network configuration for a device.</p>
    #
    # @!attribute ethernet0
    #   <p>Settings for Ethernet port 0.</p>
    #
    #   @return [EthernetPayload]
    #
    # @!attribute ethernet1
    #   <p>Settings for Ethernet port 1.</p>
    #
    #   @return [EthernetPayload]
    #
    # @!attribute ntp
    #   <p>Network time protocol (NTP) server settings.</p>
    #
    #   @return [NtpPayload]
    #
    NetworkPayload = ::Struct.new(
      :ethernet0,
      :ethernet1,
      :ntp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The network status of a device.</p>
    #
    # @!attribute ethernet0_status
    #   <p>The status of Ethernet port 0.</p>
    #
    #   @return [EthernetStatus]
    #
    # @!attribute ethernet1_status
    #   <p>The status of Ethernet port 1.</p>
    #
    #   @return [EthernetStatus]
    #
    # @!attribute ntp_status
    #   <p>Details about a network time protocol (NTP) server connection.</p>
    #
    #   @return [NtpStatus]
    #
    # @!attribute last_updated_time
    #   <p>When the network status changed.</p>
    #
    #   @return [Time]
    #
    NetworkStatus = ::Struct.new(
      :ethernet0_status,
      :ethernet1_status,
      :ntp_status,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An application node that represents a camera stream, a model, code, or output.</p>
    #
    # @!attribute node_id
    #   <p>The node's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The node's name.</p>
    #
    #   @return [String]
    #
    # @!attribute category
    #   <p>The node's category.</p>
    #
    #   Enum, one of: ["BUSINESS_LOGIC", "ML_MODEL", "MEDIA_SOURCE", "MEDIA_SINK"]
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The account ID of the node's owner.</p>
    #
    #   @return [String]
    #
    # @!attribute package_name
    #   <p>The node's package name.</p>
    #
    #   @return [String]
    #
    # @!attribute package_id
    #   <p>The node's package ID.</p>
    #
    #   @return [String]
    #
    # @!attribute package_arn
    #   <p>The node's ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>The node's package version.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_version
    #   <p>The node's patch version.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The node's description.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>When the node was created.</p>
    #
    #   @return [Time]
    #
    Node = ::Struct.new(
      :node_id,
      :name,
      :category,
      :owner_account,
      :package_name,
      :package_id,
      :package_arn,
      :package_version,
      :patch_version,
      :description,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NodeCategory
    #
    module NodeCategory
      # No documentation available.
      #
      BUSINESS_LOGIC = "BUSINESS_LOGIC"

      # No documentation available.
      #
      ML_MODEL = "ML_MODEL"

      # No documentation available.
      #
      MEDIA_SOURCE = "MEDIA_SOURCE"

      # No documentation available.
      #
      MEDIA_SINK = "MEDIA_SINK"
    end

    # <p>A job to create a camera stream node.</p>
    #
    # @!attribute job_id
    #   <p>The job's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The job's template type.</p>
    #
    #   Enum, one of: ["RTSP_CAMERA_STREAM"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The job's status.</p>
    #
    #   Enum, one of: ["PENDING", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The job's status message.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>When the job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute node_name
    #   <p>The node's name.</p>
    #
    #   @return [String]
    #
    NodeFromTemplateJob = ::Struct.new(
      :job_id,
      :template_type,
      :status,
      :status_message,
      :created_time,
      :node_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NodeFromTemplateJobStatus
    #
    module NodeFromTemplateJobStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>A node input port.</p>
    #
    # @!attribute name
    #   <p>The input port's name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The input port's description.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The input port's type.</p>
    #
    #   Enum, one of: ["BOOLEAN", "STRING", "INT32", "FLOAT32", "MEDIA"]
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>The input port's default value.</p>
    #
    #   @return [String]
    #
    # @!attribute max_connections
    #   <p>The input port's max connections.</p>
    #
    #   @return [Integer]
    #
    NodeInputPort = ::Struct.new(
      :name,
      :description,
      :type,
      :default_value,
      :max_connections,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_connections ||= 0
      end

    end

    # <p>A node instance.</p>
    #
    # @!attribute node_instance_id
    #   <p>The instance's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute node_id
    #   <p>The node's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute package_name
    #   <p>The instance's package name.</p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>The instance's package version.</p>
    #
    #   @return [String]
    #
    # @!attribute package_patch_version
    #   <p>The instance's package patch version.</p>
    #
    #   @return [String]
    #
    # @!attribute node_name
    #   <p>The instance's name.</p>
    #
    #   @return [String]
    #
    # @!attribute current_status
    #   <p>The instance's current status.</p>
    #
    #   Enum, one of: ["RUNNING", "ERROR", "NOT_AVAILABLE"]
    #
    #   @return [String]
    #
    NodeInstance = ::Struct.new(
      :node_instance_id,
      :node_id,
      :package_name,
      :package_version,
      :package_patch_version,
      :node_name,
      :current_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NodeInstanceStatus
    #
    module NodeInstanceStatus
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      NOT_AVAILABLE = "NOT_AVAILABLE"
    end

    # <p>A node interface.</p>
    #
    # @!attribute inputs
    #   <p>The node interface's inputs.</p>
    #
    #   @return [Array<NodeInputPort>]
    #
    # @!attribute outputs
    #   <p>The node interface's outputs.</p>
    #
    #   @return [Array<NodeOutputPort>]
    #
    NodeInterface = ::Struct.new(
      :inputs,
      :outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A node output port.</p>
    #
    # @!attribute name
    #   <p>The output port's name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The output port's description.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The output port's type.</p>
    #
    #   Enum, one of: ["BOOLEAN", "STRING", "INT32", "FLOAT32", "MEDIA"]
    #
    #   @return [String]
    #
    NodeOutputPort = ::Struct.new(
      :name,
      :description,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Network time protocol (NTP) server settings. Use this option to connect to local NTP servers instead of
    #         <code>pool.ntp.org</code>.</p>
    #
    # @!attribute ntp_servers
    #   <p>NTP servers to use, in order of preference.</p>
    #
    #   @return [Array<String>]
    #
    NtpPayload = ::Struct.new(
      :ntp_servers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about an NTP server connection.</p>
    #
    # @!attribute connection_status
    #   <p>The connection's status.</p>
    #
    #   Enum, one of: ["CONNECTED", "NOT_CONNECTED", "CONNECTING"]
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>The IP address of the server.</p>
    #
    #   @return [String]
    #
    # @!attribute ntp_server_name
    #   <p>The domain name of the server.</p>
    #
    #   @return [String]
    #
    NtpStatus = ::Struct.new(
      :connection_status,
      :ip_address,
      :ntp_server_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An over-the-air update (OTA) job configuration.</p>
    #
    # @!attribute image_version
    #   <p>The target version of the device software.</p>
    #
    #   @return [String]
    #
    OTAJobConfig = ::Struct.new(
      :image_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The location of an output object in Amazon S3.</p>
    #
    # @!attribute bucket_name
    #   <p>The object's bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute object_key
    #   <p>The object's key.</p>
    #
    #   @return [String]
    #
    OutPutS3Location = ::Struct.new(
      :bucket_name,
      :object_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A job to import a package version.</p>
    #
    # @!attribute job_id
    #   <p>The job's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute job_type
    #   <p>The job's type.</p>
    #
    #   Enum, one of: ["NODE_PACKAGE_VERSION", "MARKETPLACE_NODE_PACKAGE_VERSION"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The job's status.</p>
    #
    #   Enum, one of: ["PENDING", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The job's status message.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>When the job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>When the job was updated.</p>
    #
    #   @return [Time]
    #
    PackageImportJob = ::Struct.new(
      :job_id,
      :job_type,
      :status,
      :status_message,
      :created_time,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A configuration for a package import job.</p>
    #
    # @!attribute package_version_input_config
    #   <p>The package version's input configuration.</p>
    #
    #   @return [PackageVersionInputConfig]
    #
    PackageImportJobInputConfig = ::Struct.new(
      :package_version_input_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Results of a package import job.</p>
    #
    # @!attribute package_id
    #   <p>The package's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>The package's version.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_version
    #   <p>The package's patch version.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_location
    #   <p>The package's output location.</p>
    #
    #   @return [OutPutS3Location]
    #
    PackageImportJobOutput = ::Struct.new(
      :package_id,
      :package_version,
      :patch_version,
      :output_s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An output configuration for a package import job.</p>
    #
    # @!attribute package_version_output_config
    #   <p>The package version's output configuration.</p>
    #
    #   @return [PackageVersionOutputConfig]
    #
    PackageImportJobOutputConfig = ::Struct.new(
      :package_version_output_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PackageImportJobStatus
    #
    module PackageImportJobStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for PackageImportJobType
    #
    module PackageImportJobType
      # No documentation available.
      #
      NODE_PACKAGE_VERSION = "NODE_PACKAGE_VERSION"

      # No documentation available.
      #
      MARKETPLACE_NODE_PACKAGE_VERSION = "MARKETPLACE_NODE_PACKAGE_VERSION"
    end

    # <p>A package summary.</p>
    #
    # @!attribute package_id
    #   <p>The package's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute package_name
    #   <p>The package's name.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The package's ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>When the package was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The package's tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    PackageListItem = ::Struct.new(
      :package_id,
      :package_name,
      :arn,
      :created_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A package object.</p>
    #
    # @!attribute name
    #   <p>The object's name.</p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>The object's package version.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_version
    #   <p>The object's patch version.</p>
    #
    #   @return [String]
    #
    PackageObject = ::Struct.new(
      :name,
      :package_version,
      :patch_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A package version input configuration.</p>
    #
    # @!attribute s3_location
    #   <p>A location in Amazon S3.</p>
    #
    #   @return [S3Location]
    #
    PackageVersionInputConfig = ::Struct.new(
      :s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A package version output configuration.</p>
    #
    # @!attribute package_name
    #   <p>The output's package name.</p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>The output's package version.</p>
    #
    #   @return [String]
    #
    # @!attribute mark_latest
    #   <p>Indicates that the version is recommended for all users.</p>
    #
    #   @return [Boolean]
    #
    PackageVersionOutputConfig = ::Struct.new(
      :package_name,
      :package_version,
      :mark_latest,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.mark_latest ||= false
      end

    end

    # Includes enum constants for PackageVersionStatus
    #
    module PackageVersionStatus
      # No documentation available.
      #
      REGISTER_PENDING = "REGISTER_PENDING"

      # No documentation available.
      #
      REGISTER_COMPLETED = "REGISTER_COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # Includes enum constants for PortType
    #
    module PortType
      # No documentation available.
      #
      BOOLEAN = "BOOLEAN"

      # No documentation available.
      #
      STRING = "STRING"

      # No documentation available.
      #
      INT32 = "INT32"

      # No documentation available.
      #
      FLOAT32 = "FLOAT32"

      # No documentation available.
      #
      MEDIA = "MEDIA"
    end

    # @!attribute name
    #   <p>A name for the device.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the device.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags for the device.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute networking_configuration
    #   <p>A networking configuration for the device.</p>
    #
    #   @return [NetworkPayload]
    #
    ProvisionDeviceInput = ::Struct.new(
      :name,
      :description,
      :tags,
      :networking_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_id
    #   <p>The device's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The device's ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The device's status.</p>
    #
    #   Enum, one of: ["AWAITING_PROVISIONING", "PENDING", "SUCCEEDED", "FAILED", "ERROR", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute certificates
    #   <p>The device's configuration bundle.</p>
    #
    #   @return [String]
    #
    # @!attribute iot_thing_name
    #   <p>The device's IoT thing name.</p>
    #
    #   @return [String]
    #
    ProvisionDeviceOutput = ::Struct.new(
      :device_id,
      :arn,
      :status,
      :certificates,
      :iot_thing_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute owner_account
    #   <p>An owner account.</p>
    #
    #   @return [String]
    #
    # @!attribute package_id
    #   <p>A package ID.</p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>A package version.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_version
    #   <p>A patch version.</p>
    #
    #   @return [String]
    #
    # @!attribute mark_latest
    #   <p>Whether to mark the new version as the latest version.</p>
    #
    #   @return [Boolean]
    #
    RegisterPackageVersionInput = ::Struct.new(
      :owner_account,
      :package_id,
      :package_version,
      :patch_version,
      :mark_latest,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.mark_latest ||= false
      end

    end

    RegisterPackageVersionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_instance_id
    #   <p>An application instance ID.</p>
    #
    #   @return [String]
    #
    RemoveApplicationInstanceInput = ::Struct.new(
      :application_instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveApplicationInstanceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The target resource was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The resource's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource's type.</p>
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

    # <p>A location in Amazon S3.</p>
    #
    # @!attribute region
    #   <p>The bucket's Region.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_name
    #   <p>A bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute object_key
    #   <p>An object key.</p>
    #
    #   @return [String]
    #
    S3Location = ::Struct.new(
      :region,
      :bucket_name,
      :object_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would cause a limit to be exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The target resource's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The target resource's type.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The name of the limit.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The name of the service.</p>
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A static IP configuration.</p>
    #
    # @!attribute ip_address
    #   <p>The connection's IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute mask
    #   <p>The connection's DNS mask.</p>
    #
    #   @return [String]
    #
    # @!attribute dns
    #   <p>The connection's DNS address.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute default_gateway
    #   <p>The connection's default gateway.</p>
    #
    #   @return [String]
    #
    StaticIpConnectionInfo = ::Struct.new(
      :ip_address,
      :mask,
      :dns,
      :default_gateway,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StatusFilter
    #
    module StatusFilter
      # No documentation available.
      #
      DEPLOYMENT_SUCCEEDED = "DEPLOYMENT_SUCCEEDED"

      # No documentation available.
      #
      DEPLOYMENT_ERROR = "DEPLOYMENT_ERROR"

      # No documentation available.
      #
      REMOVAL_SUCCEEDED = "REMOVAL_SUCCEEDED"

      # No documentation available.
      #
      REMOVAL_FAILED = "REMOVAL_FAILED"

      # No documentation available.
      #
      PROCESSING_DEPLOYMENT = "PROCESSING_DEPLOYMENT"

      # No documentation available.
      #
      PROCESSING_REMOVAL = "PROCESSING_REMOVAL"

      # No documentation available.
      #
      DEPLOYMENT_FAILED = "DEPLOYMENT_FAILED"
    end

    # <p>A storage location.</p>
    #
    # @!attribute bucket
    #   <p>The location's bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute repo_prefix_location
    #   <p>The location's repo prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute generated_prefix_location
    #   <p>The location's generated prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute binary_prefix_location
    #   <p>The location's binary prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute manifest_prefix_location
    #   <p>The location's manifest prefix.</p>
    #
    #   @return [String]
    #
    StorageLocation = ::Struct.new(
      :bucket,
      :repo_prefix_location,
      :generated_prefix_location,
      :binary_prefix_location,
      :manifest_prefix_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource's ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags for the resource.</p>
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

    # Includes enum constants for TemplateType
    #
    module TemplateType
      # No documentation available.
      #
      RTSP_CAMERA_STREAM = "RTSP_CAMERA_STREAM"
    end

    # @!attribute resource_arn
    #   <p>The resource's ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Tag keys to remove.</p>
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

    # @!attribute device_id
    #   <p>The device's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the device.</p>
    #
    #   @return [String]
    #
    UpdateDeviceMetadataInput = ::Struct.new(
      :device_id,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_id
    #   <p>The device's ID.</p>
    #
    #   @return [String]
    #
    UpdateDeviceMetadataOutput = ::Struct.new(
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UpdateProgress
    #
    module UpdateProgress
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      VERIFYING = "VERIFYING"

      # No documentation available.
      #
      REBOOTING = "REBOOTING"

      # No documentation available.
      #
      DOWNLOADING = "DOWNLOADING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>The request contains an invalid parameter value.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason that validation failed.</p>
    #
    #   Enum, one of: ["UNKNOWN_OPERATION", "CANNOT_PARSE", "FIELD_VALIDATION_FAILED", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute error_id
    #   <p>A unique ID for the error.</p>
    #
    #   @return [String]
    #
    # @!attribute error_arguments
    #   <p>A list of attributes that led to the exception and their values.</p>
    #
    #   @return [Array<ValidationExceptionErrorArgument>]
    #
    # @!attribute fields
    #   <p>A list of request parameters that failed validation.</p>
    #
    #   @return [Array<ValidationExceptionField>]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      :error_id,
      :error_arguments,
      :fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A validation exception error argument.</p>
    #
    # @!attribute name
    #   <p>The argument's name.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The argument's value.</p>
    #
    #   @return [String]
    #
    ValidationExceptionErrorArgument = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A validation exception field.</p>
    #
    # @!attribute name
    #   <p>The field's name.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The field's message.</p>
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
      UNKNOWN_OPERATION = "UNKNOWN_OPERATION"

      # No documentation available.
      #
      CANNOT_PARSE = "CANNOT_PARSE"

      # No documentation available.
      #
      FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED"

      # No documentation available.
      #
      OTHER = "OTHER"
    end

  end
end
