# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GreengrassV2
  module Types

    # <p>You don't have permission to perform the action.</p>
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

    # <p>Contains a request to associate a client device with a core device. The <a href="https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchAssociateClientDeviceWithCoreDevice.html">BatchAssociateClientDeviceWithCoreDevice</a> operation consumes a list of these
    #       requests.</p>
    #
    # @!attribute thing_name
    #   <p>The name of the IoT thing that represents the client device to associate.</p>
    #
    #   @return [String]
    #
    AssociateClientDeviceWithCoreDeviceEntry = ::Struct.new(
      :thing_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an error that occurs from a request to associate a client device with a core
    #       device. The <a href="https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchAssociateClientDeviceWithCoreDevice.html">BatchAssociateClientDeviceWithCoreDevice</a> operation returns a list of these
    #       errors.</p>
    #
    # @!attribute thing_name
    #   <p>The name of the IoT thing whose associate request failed.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>The error code for the request.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message that provides additional information about the error.</p>
    #
    #   @return [String]
    #
    AssociateClientDeviceWithCoreDeviceErrorEntry = ::Struct.new(
      :thing_name,
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role to associate with IoT Greengrass for your
    #         Amazon Web Services account in this Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    AssociateServiceRoleToAccountInput = ::Struct.new(
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute associated_at
    #   <p>The time when the service role was associated with IoT Greengrass for your Amazon Web Services account in this
    #         Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    AssociateServiceRoleToAccountOutput = ::Struct.new(
      :associated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a client device that is associated to a core device for cloud
    #       discovery.</p>
    #
    # @!attribute thing_name
    #   <p>The name of the IoT thing that represents the associated client device.</p>
    #
    #   @return [String]
    #
    # @!attribute association_timestamp
    #   <p>The time that the client device was associated, expressed in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    AssociatedClientDevice = ::Struct.new(
      :thing_name,
      :association_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entries
    #   <p>The list of client devices to associate.</p>
    #
    #   @return [Array<AssociateClientDeviceWithCoreDeviceEntry>]
    #
    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    #   @return [String]
    #
    BatchAssociateClientDeviceWithCoreDeviceInput = ::Struct.new(
      :entries,
      :core_device_thing_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute error_entries
    #   <p>The list of any errors for the entries in the request. Each error entry contains the name
    #         of the IoT thing that failed to associate.</p>
    #
    #   @return [Array<AssociateClientDeviceWithCoreDeviceErrorEntry>]
    #
    BatchAssociateClientDeviceWithCoreDeviceOutput = ::Struct.new(
      :error_entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entries
    #   <p>The list of client devices to disassociate.</p>
    #
    #   @return [Array<DisassociateClientDeviceFromCoreDeviceEntry>]
    #
    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    #   @return [String]
    #
    BatchDisassociateClientDeviceFromCoreDeviceInput = ::Struct.new(
      :entries,
      :core_device_thing_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute error_entries
    #   <p>The list of any errors for the entries in the request. Each error entry contains the name
    #         of the IoT thing that failed to disassociate.</p>
    #
    #   @return [Array<DisassociateClientDeviceFromCoreDeviceErrorEntry>]
    #
    BatchDisassociateClientDeviceFromCoreDeviceOutput = ::Struct.new(
      :error_entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #
    #   @return [String]
    #
    CancelDeploymentInput = ::Struct.new(
      :deployment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message
    #   <p>A message that communicates if the cancel was successful.</p>
    #
    #   @return [String]
    #
    CancelDeploymentOutput = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CloudComponentState
    #
    module CloudComponentState
      # No documentation available.
      #
      REQUESTED = "REQUESTED"

      # No documentation available.
      #
      INITIATED = "INITIATED"

      # No documentation available.
      #
      DEPLOYABLE = "DEPLOYABLE"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      DEPRECATED = "DEPRECATED"
    end

    # <p>Contains the status of a component version in the IoT Greengrass service.</p>
    #
    # @!attribute component_state
    #   <p>The state of the component version.</p>
    #
    #   Enum, one of: ["REQUESTED", "INITIATED", "DEPLOYABLE", "FAILED", "DEPRECATED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message that communicates details, such as errors, about the status of the component
    #         version.</p>
    #
    #   @return [String]
    #
    # @!attribute errors
    #   <p>A dictionary of errors that communicate why the component version is in an error state.
    #         For example, if IoT Greengrass can't access an artifact for the component version, then
    #           <code>errors</code> contains the artifact's URI as a key, and the error message as the value
    #         for that key.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vendor_guidance
    #   <p>The vendor guidance state for the component version. This state indicates whether
    #         the component version has any issues that you should consider before you deploy it. The vendor guidance state can be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> – This component version is available and recommended for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISCONTINUED</code> – This component version has been discontinued by its publisher.
    #             You can deploy this component version, but we recommend that you use a different version of this component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> – This component version has been deleted by its publisher, so you can't
    #             deploy it. If you have any existing deployments that specify this component version, those deployments will fail.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ACTIVE", "DISCONTINUED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute vendor_guidance_message
    #   <p>A message that communicates details about the vendor guidance state
    #       of the component version. This message communicates why a component version is discontinued or deleted.</p>
    #
    #   @return [String]
    #
    CloudComponentStatus = ::Struct.new(
      :component_state,
      :message,
      :errors,
      :vendor_guidance,
      :vendor_guidance_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a component.</p>
    #
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   <p>The latest version of the component and its details.</p>
    #
    #   @return [ComponentLatestVersion]
    #
    Component = ::Struct.new(
      :arn,
      :component_name,
      :latest_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a component that is a candidate to deploy to a Greengrass core
    #       device.</p>
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute version_requirements
    #   <p>The version requirements for the component's dependencies. Greengrass core devices get the
    #         version requirements from component recipes.</p>
    #            <p>IoT Greengrass V2 uses semantic version constraints. For more information, see <a href="https://semver.org/">Semantic Versioning</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    ComponentCandidate = ::Struct.new(
      :component_name,
      :component_version,
      :version_requirements,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a deployment's update to a component's configuration on
    #       Greengrass core devices. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html">Update component
    #         configurations</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    # @!attribute merge
    #   <p>A serialized JSON string that contains the configuration object to merge to target
    #         devices. The core device merges this configuration with the component's existing
    #         configuration. If this is the first time a component deploys on a device, the core device
    #         merges this configuration with the component's default configuration. This means that the core
    #         device keeps it's existing configuration for keys and values that you don't specify in this
    #         object. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html merge-configuration-update">Merge configuration updates</a> in the <i>IoT Greengrass V2 Developer
    #             Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute reset
    #   <p>The list of configuration nodes to reset to default values on target devices. Use JSON
    #         pointers to specify each node to reset. JSON pointers start with a forward slash
    #         (<code>/</code>) and use forward slashes to separate the key for each level in the object.
    #         For more information, see the <a href="https://tools.ietf.org/html/rfc6901">JSON pointer
    #           specification</a> and <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html reset-configuration-update">Reset configuration updates</a> in the <i>IoT Greengrass V2 Developer
    #               Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    ComponentConfigurationUpdate = ::Struct.new(
      :merge,
      :reset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a component dependency for a Lambda function component.</p>
    #
    # @!attribute version_requirement
    #   <p>The component version requirement for the component dependency.</p>
    #            <p>IoT Greengrass V2 uses semantic version constraints. For more information, see <a href="https://semver.org/">Semantic Versioning</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute dependency_type
    #   <p>The type of this dependency. Choose from the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SOFT</code> – The component doesn't restart if the dependency changes
    #             state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HARD</code> – The component restarts if the dependency changes
    #             state.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>HARD</code>
    #            </p>
    #
    #   Enum, one of: ["HARD", "SOFT"]
    #
    #   @return [String]
    #
    ComponentDependencyRequirement = ::Struct.new(
      :version_requirement,
      :dependency_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComponentDependencyType
    #
    module ComponentDependencyType
      # No documentation available.
      #
      HARD = "HARD"

      # No documentation available.
      #
      SOFT = "SOFT"
    end

    # <p>Contains information about a component to deploy.</p>
    #
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_update
    #   <p>The configuration updates to deploy for the component. You can define
    #         <i>reset</i> updates and <i>merge</i> updates. A reset updates
    #         the keys that you specify to the default configuration for the component. A merge updates the
    #         core device's component configuration with the keys and values that you specify. The IoT Greengrass Core
    #         software applies reset updates before it applies merge updates. For more information, see
    #         <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html">Update component
    #           configurations</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    #   @return [ComponentConfigurationUpdate]
    #
    # @!attribute run_with
    #   <p>The system user and group that the IoT Greengrass Core software uses to run component processes on the
    #         core device. If you omit this parameter, the IoT Greengrass Core software uses the system user and group
    #         that you configure for the core device. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html configure-component-user">Configure the user and group that run components</a> in the <i>IoT Greengrass V2 Developer
    #           Guide</i>.</p>
    #
    #   @return [ComponentRunWith]
    #
    ComponentDeploymentSpecification = ::Struct.new(
      :component_version,
      :configuration_update,
      :run_with,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the latest version of a component.</p>
    #
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #
    #   @return [String]
    #
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The time at which the component was created, expressed in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the component version.</p>
    #
    #   @return [String]
    #
    # @!attribute publisher
    #   <p>The publisher of the component version.</p>
    #
    #   @return [String]
    #
    # @!attribute platforms
    #   <p>The platforms that the component version supports.</p>
    #
    #   @return [Array<ComponentPlatform>]
    #
    ComponentLatestVersion = ::Struct.new(
      :arn,
      :component_version,
      :creation_timestamp,
      :description,
      :publisher,
      :platforms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a platform that a component supports.</p>
    #
    # @!attribute name
    #   <p>The friendly name of the platform. This name helps you identify the platform.</p>
    #            <p>If you omit this parameter, IoT Greengrass creates a friendly name from the <code>os</code> and
    #           <code>architecture</code> of the platform.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A dictionary of attributes for the platform. The IoT Greengrass Core software defines the
    #           <code>os</code> and <code>platform</code> by default. You can specify additional platform
    #         attributes for a core device when you deploy the Greengrass nucleus component. For more information,
    #         see the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html">Greengrass nucleus
    #           component</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    ComponentPlatform = ::Struct.new(
      :name,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information system user and group that the IoT Greengrass Core software uses to run component
    #       processes on the core device. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user">Configure the user and group that run components</a> in the <i>IoT Greengrass V2 Developer
    #         Guide</i>.</p>
    #
    # @!attribute posix_user
    #   <p>The POSIX system user and, optionally, group to use to run this component on Linux core
    #         devices. The user, and group if specified, must exist on each Linux core device. Specify the
    #         user and group separated by a colon (<code>:</code>) in the following format:
    #           <code>user:group</code>. The group is optional. If you don't specify a group, the IoT Greengrass Core
    #         software uses the primary user for the group.</p>
    #            <p>If you omit this parameter, the IoT Greengrass Core software uses the default system user and group that
    #         you configure on the Greengrass nucleus component. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html configure-component-user">Configure the user and group that run components</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute system_resource_limits
    #   <p>The system resource limits to apply to this component's process on the core device. IoT Greengrass
    #         currently supports this feature on only Linux core devices.</p>
    #            <p>If you omit this parameter, the IoT Greengrass Core software uses the default system resource limits
    #         that you configure on the Greengrass nucleus component. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html configure-component-system-resource-limits">Configure system resource limits for components</a>.</p>
    #
    #   @return [SystemResourceLimits]
    #
    # @!attribute windows_user
    #   <p>The Windows user to use to run this component on Windows core devices. The user must exist
    #         on each Windows core device, and its name and password must be in the LocalSystem account's
    #         Credentials Manager instance.</p>
    #            <p>If you omit this parameter, the IoT Greengrass Core software uses the default Windows user that you
    #         configure on the Greengrass nucleus component. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html configure-component-user">Configure the user and group that run components</a>.</p>
    #
    #   @return [String]
    #
    ComponentRunWith = ::Struct.new(
      :posix_user,
      :system_resource_limits,
      :windows_user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a component version in a list.</p>
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #
    #   @return [String]
    #
    ComponentVersionListItem = ::Struct.new(
      :component_name,
      :component_version,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComponentVisibilityScope
    #
    module ComponentVisibilityScope
      # No documentation available.
      #
      PRIVATE = "PRIVATE"

      # No documentation available.
      #
      PUBLIC = "PUBLIC"
    end

    # <p>Your request has conflicting operations. This can occur if you're trying to perform more
    #       than one operation on the same resource at the same time.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource that conflicts with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource that conflicts with the request.</p>
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

    # <p>Contains information about an endpoint and port where client devices can connect to an
    #       MQTT broker on a Greengrass core device.</p>
    #
    # @!attribute id
    #   <p>An ID for the connectivity information.</p>
    #
    #   @return [String]
    #
    # @!attribute host_address
    #   <p>The IP address or DNS address where client devices can connect to an MQTT broker on the
    #         Greengrass core device.</p>
    #
    #   @return [String]
    #
    # @!attribute port_number
    #   <p>The port where the MQTT broker operates on the core device. This port is typically 8883,
    #         which is the default port for the MQTT broker component that runs on core devices.</p>
    #
    #   @return [Integer]
    #
    # @!attribute metadata
    #   <p>Additional metadata to provide to client devices that connect to this core device.</p>
    #
    #   @return [String]
    #
    ConnectivityInfo = ::Struct.new(
      :id,
      :host_address,
      :port_number,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.port_number ||= 0
      end

    end

    # <p>Contains information about a Greengrass core device, which is an IoT thing that runs the IoT Greengrass
    #       Core software.</p>
    #
    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the core device. Core devices can have the following
    #         statuses:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HEALTHY</code> – The IoT Greengrass Core software and all components run on the core device without issue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNHEALTHY</code> – The IoT Greengrass Core software or a component is in a failed state
    #             on the core device.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["HEALTHY", "UNHEALTHY"]
    #
    #   @return [String]
    #
    # @!attribute last_status_update_timestamp
    #   <p>The time at which the core device's status last updated, expressed in ISO 8601
    #         format.</p>
    #
    #   @return [Time]
    #
    CoreDevice = ::Struct.new(
      :core_device_thing_name,
      :status,
      :last_status_update_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CoreDeviceStatus
    #
    module CoreDeviceStatus
      # No documentation available.
      #
      HEALTHY = "HEALTHY"

      # No documentation available.
      #
      UNHEALTHY = "UNHEALTHY"
    end

    # @!attribute inline_recipe
    #   <p>The recipe to use to create the component. The recipe defines the component's metadata,
    #         parameters, dependencies, lifecycle, artifacts, and platform compatibility.</p>
    #            <p>You must specify either <code>inlineRecipe</code> or <code>lambdaFunction</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute lambda_function
    #   <p>The parameters to create a component from a Lambda function.</p>
    #            <p>You must specify either <code>inlineRecipe</code> or <code>lambdaFunction</code>.</p>
    #
    #   @return [LambdaFunctionRecipeSource]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you can provide to ensure that the request is idempotent.
    #       Idempotency means that the request is successfully processed only once, even if you send the request multiple times.
    #       When a request succeeds, and you specify the same client token for subsequent successful requests, the IoT Greengrass V2 service
    #       returns the successful response that it caches from the previous request. IoT Greengrass V2 caches successful responses for
    #       idempotent requests for up to 8 hours.</p>
    #
    #   @return [String]
    #
    CreateComponentVersionInput = ::Struct.new(
      :inline_recipe,
      :lambda_function,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The time at which the component was created, expressed in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the component version in IoT Greengrass V2. This status
    #         is different from the status of the component on a core device.</p>
    #
    #   @return [CloudComponentStatus]
    #
    CreateComponentVersionOutput = ::Struct.new(
      :arn,
      :component_name,
      :component_version,
      :creation_timestamp,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the target IoT thing or thing group.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_name
    #   <p>The name of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute components
    #   <p>The components to deploy. This is a dictionary, where each key is the name of a component,
    #           and each key's value is the version and configuration to deploy for that component.</p>
    #
    #   @return [Hash<String, ComponentDeploymentSpecification>]
    #
    # @!attribute iot_job_configuration
    #   <p>The job configuration for the deployment configuration. The job configuration specifies
    #         the rollout, timeout, and stop configurations for the deployment configuration.</p>
    #
    #   @return [DeploymentIoTJobConfiguration]
    #
    # @!attribute deployment_policies
    #   <p>The deployment policies for the deployment. These policies define how the deployment
    #         updates components and handles failure.</p>
    #
    #   @return [DeploymentPolicies]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you can provide to ensure that the request is idempotent.
    #       Idempotency means that the request is successfully processed only once, even if you send the request multiple times.
    #       When a request succeeds, and you specify the same client token for subsequent successful requests, the IoT Greengrass V2 service
    #       returns the successful response that it caches from the previous request. IoT Greengrass V2 caches successful responses for
    #       idempotent requests for up to 8 hours.</p>
    #
    #   @return [String]
    #
    CreateDeploymentInput = ::Struct.new(
      :target_arn,
      :deployment_name,
      :components,
      :iot_job_configuration,
      :deployment_policies,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute iot_job_id
    #   <p>The ID of the IoT job that applies the deployment to target devices.</p>
    #
    #   @return [String]
    #
    # @!attribute iot_job_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IoT job that applies the deployment to target devices.</p>
    #
    #   @return [String]
    #
    CreateDeploymentOutput = ::Struct.new(
      :deployment_id,
      :iot_job_id,
      :iot_job_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #
    #   @return [String]
    #
    DeleteComponentInput = ::Struct.new(
      :arn,
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

    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    #   @return [String]
    #
    DeleteCoreDeviceInput = ::Struct.new(
      :core_device_thing_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCoreDeviceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #
    #   @return [String]
    #
    DeleteDeploymentInput = ::Struct.new(
      :deployment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDeploymentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a deployment.</p>
    #
    # @!attribute target_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the target IoT thing or thing group.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The revision number of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_name
    #   <p>The name of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The time at which the deployment was created, expressed in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute deployment_status
    #   <p>The status of the deployment.</p>
    #
    #   Enum, one of: ["ACTIVE", "COMPLETED", "CANCELED", "FAILED", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute is_latest_for_target
    #   <p>Whether or not the deployment is the latest revision for its target.</p>
    #
    #   @return [Boolean]
    #
    Deployment = ::Struct.new(
      :target_arn,
      :revision_id,
      :deployment_id,
      :deployment_name,
      :creation_timestamp,
      :deployment_status,
      :is_latest_for_target,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_latest_for_target ||= false
      end

    end

    # <p>Contains information about a deployment's policy that defines when components are safe to
    #       update.</p>
    #          <p>Each component on a device can report whether or not it's ready to update. After a
    #       component and its dependencies are ready, they can apply the update in the deployment. You can
    #       configure whether or not the deployment notifies components of an update and waits for a
    #       response. You specify the amount of time each component has to respond to the update
    #       notification.</p>
    #
    # @!attribute timeout_in_seconds
    #   <p>The amount of time in seconds that each component on a device has to report that it's safe
    #         to update. If the component waits for longer than this timeout, then the deployment proceeds
    #         on the device.</p>
    #            <p>Default: <code>60</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute action
    #   <p>Whether or not to notify components and wait for components to become safe to update.
    #         Choose from the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NOTIFY_COMPONENTS</code> – The deployment notifies each component before
    #             it stops and updates that component. Components can use the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html ipc-operation-subscribetocomponentupdates">SubscribeToComponentUpdates</a> IPC operation to receive these notifications. Then,
    #             components can respond with the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html ipc-operation-defercomponentupdate">DeferComponentUpdate</a> IPC operation. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html">Create deployments</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIP_NOTIFY_COMPONENTS</code> – The deployment doesn't notify components
    #             or wait for them to be safe to update.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>NOTIFY_COMPONENTS</code>
    #            </p>
    #
    #   Enum, one of: ["NOTIFY_COMPONENTS", "SKIP_NOTIFY_COMPONENTS"]
    #
    #   @return [String]
    #
    DeploymentComponentUpdatePolicy = ::Struct.new(
      :timeout_in_seconds,
      :action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeploymentComponentUpdatePolicyAction
    #
    module DeploymentComponentUpdatePolicyAction
      # No documentation available.
      #
      NOTIFY_COMPONENTS = "NOTIFY_COMPONENTS"

      # No documentation available.
      #
      SKIP_NOTIFY_COMPONENTS = "SKIP_NOTIFY_COMPONENTS"
    end

    # <p>Contains information about how long a component on a core device can validate its
    #       configuration updates before it times out. Components can use the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-subscribetovalidateconfigurationupdates">SubscribeToValidateConfigurationUpdates</a> IPC operation to receive notifications when
    #       a deployment specifies a configuration update. Then, components can respond with the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-sendconfigurationvalidityreport">SendConfigurationValidityReport</a> IPC operation. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html">Create deployments</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    # @!attribute timeout_in_seconds
    #   <p>The amount of time in seconds that a component can validate its configuration updates. If
    #         the validation time exceeds this timeout, then the deployment proceeds for the device.</p>
    #            <p>Default: <code>30</code>
    #            </p>
    #
    #   @return [Integer]
    #
    DeploymentConfigurationValidationPolicy = ::Struct.new(
      :timeout_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeploymentFailureHandlingPolicy
    #
    module DeploymentFailureHandlingPolicy
      # No documentation available.
      #
      ROLLBACK = "ROLLBACK"

      # No documentation available.
      #
      DO_NOTHING = "DO_NOTHING"
    end

    # Includes enum constants for DeploymentHistoryFilter
    #
    module DeploymentHistoryFilter
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      LATEST_ONLY = "LATEST_ONLY"
    end

    # <p>Contains information about an IoT job configuration.</p>
    #
    # @!attribute job_executions_rollout_config
    #   <p>The rollout configuration for the job. This configuration defines the rate at which the
    #         job rolls out to the fleet of target devices.</p>
    #
    #   @return [IoTJobExecutionsRolloutConfig]
    #
    # @!attribute abort_config
    #   <p>The stop configuration for the job. This configuration defines when and how to stop a job
    #         rollout.</p>
    #
    #   @return [IoTJobAbortConfig]
    #
    # @!attribute timeout_config
    #   <p>The timeout configuration for the job. This configuration defines the amount of time each
    #         device has to complete the job.</p>
    #
    #   @return [IoTJobTimeoutConfig]
    #
    DeploymentIoTJobConfiguration = ::Struct.new(
      :job_executions_rollout_config,
      :abort_config,
      :timeout_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about policies that define how a deployment updates components and
    #       handles failure.</p>
    #
    # @!attribute failure_handling_policy
    #   <p>The failure handling policy for the configuration deployment. This policy defines what to
    #         do if the deployment fails.</p>
    #            <p>Default: <code>ROLLBACK</code>
    #            </p>
    #
    #   Enum, one of: ["ROLLBACK", "DO_NOTHING"]
    #
    #   @return [String]
    #
    # @!attribute component_update_policy
    #   <p>The component update policy for the configuration deployment. This policy defines when
    #         it's safe to deploy the configuration to devices.</p>
    #
    #   @return [DeploymentComponentUpdatePolicy]
    #
    # @!attribute configuration_validation_policy
    #   <p>The configuration validation policy for the configuration deployment. This policy defines
    #         how long each component has to validate its configure updates.</p>
    #
    #   @return [DeploymentConfigurationValidationPolicy]
    #
    DeploymentPolicies = ::Struct.new(
      :failure_handling_policy,
      :component_update_policy,
      :configuration_validation_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeploymentStatus
    #
    module DeploymentStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      CANCELED = "CANCELED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #
    #   @return [String]
    #
    DescribeComponentInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The time at which the component was created, expressed in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute publisher
    #   <p>The publisher of the component version.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the component version.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the component version in IoT Greengrass V2. This status
    #         is different from the status of the component on a core device.</p>
    #
    #   @return [CloudComponentStatus]
    #
    # @!attribute platforms
    #   <p>The platforms that the component version supports.</p>
    #
    #   @return [Array<ComponentPlatform>]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeComponentOutput = ::Struct.new(
      :arn,
      :component_name,
      :component_version,
      :creation_timestamp,
      :publisher,
      :description,
      :status,
      :platforms,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a request to disassociate a client device from a core device. The <a href="https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchDisassociateClientDeviceWithCoreDevice.html">BatchDisassociateClientDeviceWithCoreDevice</a> operation consumes a list of these
    #       requests.</p>
    #
    # @!attribute thing_name
    #   <p>The name of the IoT thing that represents the client device to disassociate.</p>
    #
    #   @return [String]
    #
    DisassociateClientDeviceFromCoreDeviceEntry = ::Struct.new(
      :thing_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an error that occurs from a request to disassociate a client device from a core
    #       device. The <a href="https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchDisassociateClientDeviceWithCoreDevice.html">BatchDisassociateClientDeviceWithCoreDevice</a> operation returns a list of these
    #       errors.</p>
    #
    # @!attribute thing_name
    #   <p>The name of the IoT thing whose disassociate request failed.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>The error code for the request.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message that provides additional information about the error.</p>
    #
    #   @return [String]
    #
    DisassociateClientDeviceFromCoreDeviceErrorEntry = ::Struct.new(
      :thing_name,
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateServiceRoleFromAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute disassociated_at
    #   <p>The time when the service role was disassociated from IoT Greengrass for your Amazon Web Services account in this
    #         Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    DisassociateServiceRoleFromAccountOutput = ::Struct.new(
      :disassociated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a deployment job that IoT Greengrass sends to a Greengrass core device.</p>
    #
    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_name
    #   <p>The name of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute iot_job_id
    #   <p>The ID of the IoT job that applies the deployment to target devices.</p>
    #
    #   @return [String]
    #
    # @!attribute iot_job_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IoT job that applies the deployment to target devices.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the deployment job.</p>
    #
    #   @return [String]
    #
    # @!attribute target_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the target IoT thing or thing group.</p>
    #
    #   @return [String]
    #
    # @!attribute core_device_execution_status
    #   <p>The status of the deployment job on the Greengrass core device.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "QUEUED", "FAILED", "COMPLETED", "TIMED_OUT", "CANCELED", "REJECTED"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason code for the update, if the job was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The time at which the deployment was created, expressed in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute modified_timestamp
    #   <p>The time at which the deployment job was last modified, expressed in ISO 8601
    #         format.</p>
    #
    #   @return [Time]
    #
    EffectiveDeployment = ::Struct.new(
      :deployment_id,
      :deployment_name,
      :iot_job_id,
      :iot_job_arn,
      :description,
      :target_arn,
      :core_device_execution_status,
      :reason,
      :creation_timestamp,
      :modified_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EffectiveDeploymentExecutionStatus
    #
    module EffectiveDeploymentExecutionStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      QUEUED = "QUEUED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      TIMED_OUT = "TIMED_OUT"

      # No documentation available.
      #
      CANCELED = "CANCELED"

      # No documentation available.
      #
      REJECTED = "REJECTED"
    end

    # @!attribute recipe_output_format
    #   <p>The format of the recipe.</p>
    #
    #   Enum, one of: ["JSON", "YAML"]
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #
    #   @return [String]
    #
    GetComponentInput = ::Struct.new(
      :recipe_output_format,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recipe_output_format
    #   <p>The format of the recipe.</p>
    #
    #   Enum, one of: ["JSON", "YAML"]
    #
    #   @return [String]
    #
    # @!attribute recipe
    #   <p>The recipe of the component version.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetComponentOutput = ::Struct.new(
      :recipe_output_format,
      :recipe,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version. Specify the ARN of a public or a Lambda component version.</p>
    #
    #   @return [String]
    #
    # @!attribute artifact_name
    #   <p>The name of the artifact.</p>
    #            <p>You can use the <a href="https://docs.aws.amazon.com/greengrass/v2/APIReference/API_GetComponent.html">GetComponent</a> operation to
    #         download the component recipe, which includes the URI of the artifact. The artifact name is
    #         the section of the URI after the scheme. For example, in the artifact URI
    #           <code>greengrass:SomeArtifact.zip</code>, the artifact name is
    #         <code>SomeArtifact.zip</code>.</p>
    #
    #   @return [String]
    #
    GetComponentVersionArtifactInput = ::Struct.new(
      :arn,
      :artifact_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pre_signed_url
    #   <p>The URL of the artifact.</p>
    #
    #   @return [String]
    #
    GetComponentVersionArtifactOutput = ::Struct.new(
      :pre_signed_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    #   @return [String]
    #
    GetConnectivityInfoInput = ::Struct.new(
      :thing_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connectivity_info
    #   <p>The connectivity information for the core device.</p>
    #
    #   @return [Array<ConnectivityInfo>]
    #
    # @!attribute message
    #   <p>A message about the connectivity information request.</p>
    #
    #   @return [String]
    #
    GetConnectivityInfoOutput = ::Struct.new(
      :connectivity_info,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    #   @return [String]
    #
    GetCoreDeviceInput = ::Struct.new(
      :core_device_thing_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    #   @return [String]
    #
    # @!attribute core_version
    #   <p>The version of the IoT Greengrass Core software that the core device runs. This version is equivalent to
    #         the version of the Greengrass nucleus component that runs on the core device. For more information,
    #         see the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html">Greengrass nucleus
    #           component</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The operating system platform that the core device runs.</p>
    #
    #   @return [String]
    #
    # @!attribute architecture
    #   <p>The computer architecture of the core device.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the core device. The core device status can be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HEALTHY</code> – The IoT Greengrass Core software and all components run on the core device without issue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNHEALTHY</code> – The IoT Greengrass Core software or a component is in a failed state
    #             on the core device.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["HEALTHY", "UNHEALTHY"]
    #
    #   @return [String]
    #
    # @!attribute last_status_update_timestamp
    #   <p>The time at which the core device's status last updated, expressed in ISO 8601
    #         format.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetCoreDeviceOutput = ::Struct.new(
      :core_device_thing_name,
      :core_version,
      :platform,
      :architecture,
      :status,
      :last_status_update_timestamp,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #
    #   @return [String]
    #
    GetDeploymentInput = ::Struct.new(
      :deployment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the target IoT thing or thing group.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The revision number of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_name
    #   <p>The name of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_status
    #   <p>The status of the deployment.</p>
    #
    #   Enum, one of: ["ACTIVE", "COMPLETED", "CANCELED", "FAILED", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute iot_job_id
    #   <p>The ID of the IoT job that applies the deployment to target devices.</p>
    #
    #   @return [String]
    #
    # @!attribute iot_job_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IoT job that applies the deployment to target devices.</p>
    #
    #   @return [String]
    #
    # @!attribute components
    #   <p>The components to deploy. This is a dictionary, where each key is the name of a component,
    #           and each key's value is the version and configuration to deploy for that component.</p>
    #
    #   @return [Hash<String, ComponentDeploymentSpecification>]
    #
    # @!attribute deployment_policies
    #   <p>The deployment policies for the deployment. These policies define how the deployment
    #         updates components and handles failure.</p>
    #
    #   @return [DeploymentPolicies]
    #
    # @!attribute iot_job_configuration
    #   <p>The job configuration for the deployment configuration. The job configuration specifies
    #         the rollout, timeout, and stop configurations for the deployment configuration.</p>
    #
    #   @return [DeploymentIoTJobConfiguration]
    #
    # @!attribute creation_timestamp
    #   <p>The time at which the deployment was created, expressed in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute is_latest_for_target
    #   <p>Whether or not the deployment is the latest revision for its target.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetDeploymentOutput = ::Struct.new(
      :target_arn,
      :revision_id,
      :deployment_id,
      :deployment_name,
      :deployment_status,
      :iot_job_id,
      :iot_job_arn,
      :components,
      :deployment_policies,
      :iot_job_configuration,
      :creation_timestamp,
      :is_latest_for_target,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_latest_for_target ||= false
      end

    end

    GetServiceRoleForAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute associated_at
    #   <p>The time when the service role was associated with IoT Greengrass for your Amazon Web Services account in this
    #         Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the service role that is associated with IoT Greengrass for your Amazon Web Services account in this
    #         Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    GetServiceRoleForAccountOutput = ::Struct.new(
      :associated_at,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a component on a Greengrass core device.</p>
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_state
    #   <p>The lifecycle state of the component.</p>
    #
    #   Enum, one of: ["NEW", "INSTALLED", "STARTING", "RUNNING", "STOPPING", "ERRORED", "BROKEN", "FINISHED"]
    #
    #   @return [String]
    #
    # @!attribute lifecycle_state_details
    #   <p>The details about the lifecycle state of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute is_root
    #   <p>Whether or not the component is a root component.</p>
    #
    #   @return [Boolean]
    #
    InstalledComponent = ::Struct.new(
      :component_name,
      :component_version,
      :lifecycle_state,
      :lifecycle_state_details,
      :is_root,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_root ||= false
      end

    end

    # Includes enum constants for InstalledComponentLifecycleState
    #
    module InstalledComponentLifecycleState
      # No documentation available.
      #
      NEW = "NEW"

      # No documentation available.
      #
      INSTALLED = "INSTALLED"

      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      ERRORED = "ERRORED"

      # No documentation available.
      #
      BROKEN = "BROKEN"

      # No documentation available.
      #
      FINISHED = "FINISHED"
    end

    # <p>IoT Greengrass can't process your request right now. Try again later.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The amount of time to wait before you retry the request.</p>
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

    # Includes enum constants for IoTJobAbortAction
    #
    module IoTJobAbortAction
      # No documentation available.
      #
      CANCEL = "CANCEL"
    end

    # <p>Contains a list of criteria that define when and how to cancel a configuration
    #       deployment.</p>
    #
    # @!attribute criteria_list
    #   <p>The list of criteria that define when and how to cancel the configuration deployment.</p>
    #
    #   @return [Array<IoTJobAbortCriteria>]
    #
    IoTJobAbortConfig = ::Struct.new(
      :criteria_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains criteria that define when and how to cancel a job.</p>
    #          <p>The deployment stops if the following conditions are true:</p>
    #          <ol>
    #             <li>
    #                <p>The number of things that receive the deployment exceeds the
    #           <code>minNumberOfExecutedThings</code>.</p>
    #             </li>
    #             <li>
    #                <p>The percentage of failures with type <code>failureType</code> exceeds the
    #           <code>thresholdPercentage</code>.</p>
    #             </li>
    #          </ol>
    #
    # @!attribute failure_type
    #   <p>The type of job deployment failure that can cancel a job.</p>
    #
    #   Enum, one of: ["FAILED", "REJECTED", "TIMED_OUT", "ALL"]
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The action to perform when the criteria are met.</p>
    #
    #   Enum, one of: ["CANCEL"]
    #
    #   @return [String]
    #
    # @!attribute threshold_percentage
    #   <p>The minimum percentage of <code>failureType</code> failures that occur before the job can
    #         cancel.</p>
    #            <p>This parameter supports up to two digits after the decimal (for example, you can specify
    #         <code>10.9</code> or <code>10.99</code>, but not <code>10.999</code>).</p>
    #
    #   @return [Float]
    #
    # @!attribute min_number_of_executed_things
    #   <p>The minimum number of things that receive the configuration before the job can
    #         cancel.</p>
    #
    #   @return [Integer]
    #
    IoTJobAbortCriteria = ::Struct.new(
      :failure_type,
      :action,
      :threshold_percentage,
      :min_number_of_executed_things,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.threshold_percentage ||= 0
        self.min_number_of_executed_things ||= 0
      end

    end

    # Includes enum constants for IoTJobExecutionFailureType
    #
    module IoTJobExecutionFailureType
      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      REJECTED = "REJECTED"

      # No documentation available.
      #
      TIMED_OUT = "TIMED_OUT"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # <p>Contains information about the rollout configuration for a job. This configuration defines
    #       the rate at which the job deploys a configuration to a fleet of target devices.</p>
    #
    # @!attribute exponential_rate
    #   <p>The exponential rate to increase the job rollout rate.</p>
    #
    #   @return [IoTJobExponentialRolloutRate]
    #
    # @!attribute maximum_per_minute
    #   <p>The maximum number of devices that receive a pending job notification, per minute.</p>
    #
    #   @return [Integer]
    #
    IoTJobExecutionsRolloutConfig = ::Struct.new(
      :exponential_rate,
      :maximum_per_minute,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about an exponential rollout rate for a configuration deployment
    #       job.</p>
    #
    # @!attribute base_rate_per_minute
    #   <p>The minimum number of devices that receive a pending job notification, per minute, when
    #         the job starts. This parameter defines the initial rollout rate of the job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute increment_factor
    #   <p>The exponential factor to increase the rollout rate for the job.</p>
    #            <p>This parameter supports up to one digit after the decimal (for example, you can specify
    #         <code>1.5</code>, but not <code>1.55</code>).</p>
    #
    #   @return [Float]
    #
    # @!attribute rate_increase_criteria
    #   <p>The criteria to increase the rollout rate for the job.</p>
    #
    #   @return [IoTJobRateIncreaseCriteria]
    #
    IoTJobExponentialRolloutRate = ::Struct.new(
      :base_rate_per_minute,
      :increment_factor,
      :rate_increase_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.base_rate_per_minute ||= 0
        self.increment_factor ||= 0
      end

    end

    # <p>Contains information about criteria to meet before a job increases its rollout rate.
    #       Specify either <code>numberOfNotifiedThings</code> or
    #       <code>numberOfSucceededThings</code>.</p>
    #
    # @!attribute number_of_notified_things
    #   <p>The number of devices to receive the job notification before the rollout rate
    #         increases.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_succeeded_things
    #   <p>The number of devices to successfully run the configuration job before the rollout rate
    #         increases.</p>
    #
    #   @return [Integer]
    #
    IoTJobRateIncreaseCriteria = ::Struct.new(
      :number_of_notified_things,
      :number_of_succeeded_things,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the timeout configuration for a job.</p>
    #
    # @!attribute in_progress_timeout_in_minutes
    #   <p>The amount of time, in minutes, that devices have to complete the job. The timer starts
    #         when the job status is set to <code>IN_PROGRESS</code>. If the job status doesn't change to a
    #         terminal state before the time expires, then the job status is set to
    #         <code>TIMED_OUT</code>.</p>
    #            <p>The timeout interval must be between 1 minute and 7 days (10080 minutes).</p>
    #
    #   @return [Integer]
    #
    IoTJobTimeoutConfig = ::Struct.new(
      :in_progress_timeout_in_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a container in which Lambda functions run on Greengrass core
    #       devices.</p>
    #
    # @!attribute memory_size_in_kb
    #   <p>The memory size of the container, expressed in kilobytes.</p>
    #            <p>Default: <code>16384</code> (16 MB)</p>
    #
    #   @return [Integer]
    #
    # @!attribute mount_ro_sysfs
    #   <p>Whether or not the container can read information from the device's <code>/sys</code>
    #         folder.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute volumes
    #   <p>The list of volumes that the container can access.</p>
    #
    #   @return [Array<LambdaVolumeMount>]
    #
    # @!attribute devices
    #   <p>The list of system devices that the container can access.</p>
    #
    #   @return [Array<LambdaDeviceMount>]
    #
    LambdaContainerParams = ::Struct.new(
      :memory_size_in_kb,
      :mount_ro_sysfs,
      :volumes,
      :devices,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a device that Linux processes in a container can access.</p>
    #
    # @!attribute path
    #   <p>The mount path for the device in the file system.</p>
    #
    #   @return [String]
    #
    # @!attribute permission
    #   <p>The permission to access the device: read/only (<code>ro</code>) or read/write
    #         (<code>rw</code>).</p>
    #            <p>Default: <code>ro</code>
    #            </p>
    #
    #   Enum, one of: ["ro", "rw"]
    #
    #   @return [String]
    #
    # @!attribute add_group_owner
    #   <p>Whether or not to add the component's system user as an owner of the device.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    LambdaDeviceMount = ::Struct.new(
      :path,
      :permission,
      :add_group_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about an event source for an Lambda function. The event source
    #       defines the topics on which this Lambda function subscribes to receive messages that run the
    #       function.</p>
    #
    # @!attribute topic
    #   <p>The topic to which to subscribe to receive event messages.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of event source. Choose from the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PUB_SUB</code> – Subscribe to local publish/subscribe messages. This event
    #             source type doesn't support MQTT wildcards (<code>+</code> and <code> </code>) in the
    #             event source topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IOT_CORE</code> – Subscribe to Amazon Web Services IoT Core MQTT messages. This event source
    #             type supports MQTT wildcards (<code>+</code> and <code> </code>) in the event source
    #             topic.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PUB_SUB", "IOT_CORE"]
    #
    #   @return [String]
    #
    LambdaEventSource = ::Struct.new(
      :topic,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LambdaEventSourceType
    #
    module LambdaEventSourceType
      # No documentation available.
      #
      PUB_SUB = "PUB_SUB"

      # No documentation available.
      #
      IOT_CORE = "IOT_CORE"
    end

    # <p>Contains parameters for a Lambda function that runs on IoT Greengrass.</p>
    #
    # @!attribute event_sources
    #   <p>The list of event sources to which to subscribe to receive work messages. The Lambda
    #         function runs when it receives a message from an event source. You can subscribe this function
    #         to local publish/subscribe messages and Amazon Web Services IoT Core MQTT messages.</p>
    #
    #   @return [Array<LambdaEventSource>]
    #
    # @!attribute max_queue_size
    #   <p>The maximum size of the message queue for the Lambda function component. The IoT Greengrass core
    #         stores messages in a FIFO (first-in-first-out) queue until it can run the Lambda function to
    #         consume each message.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_instances_count
    #   <p>The maximum number of instances that a non-pinned Lambda function can run at the same
    #         time.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_idle_time_in_seconds
    #   <p>The maximum amount of time in seconds that a non-pinned Lambda function can idle before the
    #         IoT Greengrass Core software stops its process.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timeout_in_seconds
    #   <p>The maximum amount of time in seconds that the Lambda function can process a work
    #         item.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status_timeout_in_seconds
    #   <p>The interval in seconds at which a pinned (also known as long-lived) Lambda function
    #         component sends status updates to the Lambda manager component.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pinned
    #   <p>Whether or not the Lambda function is pinned, or long-lived.</p>
    #            <ul>
    #               <li>
    #                  <p>A pinned Lambda function starts
    #             when IoT Greengrass starts and keeps running in its own container.</p>
    #               </li>
    #               <li>
    #                  <p>A non-pinned Lambda function starts only when it receives a work item and exists after
    #             it idles for <code>maxIdleTimeInSeconds</code>. If the function has multiple work items,
    #             the IoT Greengrass Core software creates multiple instances of the function.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute input_payload_encoding_type
    #   <p>The encoding type that the Lambda function supports.</p>
    #            <p>Default: <code>json</code>
    #            </p>
    #
    #   Enum, one of: ["json", "binary"]
    #
    #   @return [String]
    #
    # @!attribute exec_args
    #   <p>The list of arguments to pass to the Lambda function when it runs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute environment_variables
    #   <p>The map of environment variables that are available to the Lambda function when it runs.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute linux_process_params
    #   <p>The parameters for the Linux process that contains the Lambda function.</p>
    #
    #   @return [LambdaLinuxProcessParams]
    #
    LambdaExecutionParameters = ::Struct.new(
      :event_sources,
      :max_queue_size,
      :max_instances_count,
      :max_idle_time_in_seconds,
      :timeout_in_seconds,
      :status_timeout_in_seconds,
      :pinned,
      :input_payload_encoding_type,
      :exec_args,
      :environment_variables,
      :linux_process_params,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LambdaFilesystemPermission
    #
    module LambdaFilesystemPermission
      # No documentation available.
      #
      RO = "ro"

      # No documentation available.
      #
      RW = "rw"
    end

    # <p>Contains information about an Lambda function to import to create a component.</p>
    #
    # @!attribute lambda_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the Lambda function. The ARN must include the version of the function to
    #         import. You can't use version aliases like <code>$LATEST</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #            <p>Defaults to the name of the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #            <p>Defaults to the version of the Lambda function as a semantic version. For example, if your
    #         function version is <code>3</code>, the component version becomes <code>3.0.0</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute component_platforms
    #   <p>The platforms that the component version supports.</p>
    #
    #   @return [Array<ComponentPlatform>]
    #
    # @!attribute component_dependencies
    #   <p>The component versions on which this Lambda function component depends.</p>
    #
    #   @return [Hash<String, ComponentDependencyRequirement>]
    #
    # @!attribute component_lambda_parameters
    #   <p>The system and runtime parameters for the Lambda function as it runs on the Greengrass core
    #         device.</p>
    #
    #   @return [LambdaExecutionParameters]
    #
    LambdaFunctionRecipeSource = ::Struct.new(
      :lambda_arn,
      :component_name,
      :component_version,
      :component_platforms,
      :component_dependencies,
      :component_lambda_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LambdaInputPayloadEncodingType
    #
    module LambdaInputPayloadEncodingType
      # No documentation available.
      #
      JSON = "json"

      # No documentation available.
      #
      BINARY = "binary"
    end

    # Includes enum constants for LambdaIsolationMode
    #
    module LambdaIsolationMode
      # No documentation available.
      #
      GREENGRASS_CONTAINER = "GreengrassContainer"

      # No documentation available.
      #
      NO_CONTAINER = "NoContainer"
    end

    # <p>Contains parameters for a Linux process that contains an Lambda function.</p>
    #
    # @!attribute isolation_mode
    #   <p>The isolation mode for the process that contains the Lambda function. The process can run
    #         in an isolated runtime environment inside the IoT Greengrass container, or as a regular process outside
    #         any container.</p>
    #            <p>Default: <code>GreengrassContainer</code>
    #            </p>
    #
    #   Enum, one of: ["GreengrassContainer", "NoContainer"]
    #
    #   @return [String]
    #
    # @!attribute container_params
    #   <p>The parameters for the container in which the Lambda function runs.</p>
    #
    #   @return [LambdaContainerParams]
    #
    LambdaLinuxProcessParams = ::Struct.new(
      :isolation_mode,
      :container_params,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a volume that Linux processes in a container can access. When
    #       you define a volume, the IoT Greengrass Core software mounts the source files to the destination inside the
    #       container.</p>
    #
    # @!attribute source_path
    #   <p>The path to the physical volume in the file system.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_path
    #   <p>The path to the logical volume in the file system.</p>
    #
    #   @return [String]
    #
    # @!attribute permission
    #   <p>The permission to access the volume: read/only (<code>ro</code>) or read/write
    #           (<code>rw</code>).</p>
    #            <p>Default: <code>ro</code>
    #            </p>
    #
    #   Enum, one of: ["ro", "rw"]
    #
    #   @return [String]
    #
    # @!attribute add_group_owner
    #   <p>Whether or not to add the IoT Greengrass user group as an owner of the volume.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    LambdaVolumeMount = ::Struct.new(
      :source_path,
      :destination_path,
      :permission,
      :add_group_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    ListClientDevicesAssociatedWithCoreDeviceInput = ::Struct.new(
      :core_device_thing_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute associated_client_devices
    #   <p>A list that describes the client devices that are associated with the core device.</p>
    #
    #   @return [Array<AssociatedClientDevice>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListClientDevicesAssociatedWithCoreDeviceOutput = ::Struct.new(
      :associated_client_devices,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    ListComponentVersionsInput = ::Struct.new(
      :arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute component_versions
    #   <p>A list of versions that exist for the component.</p>
    #
    #   @return [Array<ComponentVersionListItem>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListComponentVersionsOutput = ::Struct.new(
      :component_versions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scope
    #   <p>The scope of the components to list.</p>
    #            <p>Default: <code>PRIVATE</code>
    #            </p>
    #
    #   Enum, one of: ["PRIVATE", "PUBLIC"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    ListComponentsInput = ::Struct.new(
      :scope,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute components
    #   <p>A list that summarizes each component.</p>
    #
    #   @return [Array<Component>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListComponentsOutput = ::Struct.new(
      :components,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute thing_group_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IoT thing group by which to filter. If you specify this parameter,
    #         the list includes only core devices that have successfully deployed a deployment that targets
    #         the thing group. When you remove a core device from a thing group, the list continues to
    #         include that core device.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The core device status by which to filter. If you specify this parameter, the list
    #         includes only core devices that have this status. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HEALTHY</code> – The IoT Greengrass Core software and all components run on the core device without issue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNHEALTHY</code> – The IoT Greengrass Core software or a component is in a failed state
    #             on the core device.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["HEALTHY", "UNHEALTHY"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    ListCoreDevicesInput = ::Struct.new(
      :thing_group_arn,
      :status,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_devices
    #   <p>A list that summarizes each core device.</p>
    #
    #   @return [Array<CoreDevice>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListCoreDevicesOutput = ::Struct.new(
      :core_devices,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the target IoT thing or thing group.</p>
    #
    #   @return [String]
    #
    # @!attribute history_filter
    #   <p>The filter for the list of deployments. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – The list includes all deployments.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LATEST_ONLY</code> – The list includes only the latest revision of each
    #             deployment.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>LATEST_ONLY</code>
    #            </p>
    #
    #   Enum, one of: ["ALL", "LATEST_ONLY"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    ListDeploymentsInput = ::Struct.new(
      :target_arn,
      :history_filter,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployments
    #   <p>A list that summarizes each deployment.</p>
    #
    #   @return [Array<Deployment>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
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

    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    ListEffectiveDeploymentsInput = ::Struct.new(
      :core_device_thing_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute effective_deployments
    #   <p>A list that summarizes each deployment on the core device.</p>
    #
    #   @return [Array<EffectiveDeployment>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListEffectiveDeploymentsOutput = ::Struct.new(
      :effective_deployments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    ListInstalledComponentsInput = ::Struct.new(
      :core_device_thing_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute installed_components
    #   <p>A list that summarizes each component on the core device.</p>
    #
    #   @return [Array<InstalledComponent>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListInstalledComponentsOutput = ::Struct.new(
      :installed_components,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource.</p>
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
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecipeOutputFormat
    #
    module RecipeOutputFormat
      # No documentation available.
      #
      JSON = "JSON"

      # No documentation available.
      #
      YAML = "YAML"
    end

    # <p>The request is already in progress. This exception occurs when you use a client token for
    #       multiple requests while IoT Greengrass is still processing an earlier request that uses the same client
    #       token.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RequestAlreadyInProgressException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute platform
    #   <p>The platform to use to resolve compatible components.</p>
    #
    #   @return [ComponentPlatform]
    #
    # @!attribute component_candidates
    #   <p>The list of components to resolve.</p>
    #
    #   @return [Array<ComponentCandidate>]
    #
    ResolveComponentCandidatesInput = ::Struct.new(
      :platform,
      :component_candidates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resolved_component_versions
    #   <p>A list of components that meet the requirements that you specify in the request. This list
    #         includes each component's recipe that you can use to install the component.</p>
    #
    #   @return [Array<ResolvedComponentVersion>]
    #
    ResolveComponentCandidatesOutput = ::Struct.new(
      :resolved_component_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a component version that is compatible to run on a Greengrass core
    #       device.</p>
    #
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute recipe
    #   <p>The recipe of the component version.</p>
    #
    #   @return [String]
    #
    # @!attribute vendor_guidance
    #   <p>The vendor guidance state for the component version. This state indicates whether
    #         the component version has any issues that you should consider before you deploy it. The vendor guidance state can be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> – This component version is available and recommended for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISCONTINUED</code> – This component version has been discontinued by its publisher.
    #             You can deploy this component version, but we recommend that you use a different version of this component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> – This component version has been deleted by its publisher, so you can't
    #             deploy it. If you have any existing deployments that specify this component version, those deployments will fail.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ACTIVE", "DISCONTINUED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message that communicates details about the vendor guidance state
    #       of the component version. This message communicates why a component version is discontinued or deleted.</p>
    #
    #   @return [String]
    #
    ResolvedComponentVersion = ::Struct.new(
      :arn,
      :component_name,
      :component_version,
      :recipe,
      :vendor_guidance,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested resource can't be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource that isn't found.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource that isn't found.</p>
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

    # <p>Your request exceeds a service quota. For example, you might have the maximum number of
    #       components that you can create.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource that exceeds the service quota.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource that exceeds the service quota.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The code for the quota in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The code for the service in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
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

    # <p>Contains information about system resource limits that the IoT Greengrass Core software applies to a
    #       component's processes. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-system-resource-limits">Configure system resource limits for components</a>.</p>
    #
    # @!attribute memory
    #   <p>The maximum amount of RAM, expressed in kilobytes, that a component's processes can use on
    #         the core device.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cpus
    #   <p>The maximum amount of CPU time that a component's processes can use on the core device. A
    #         core device's total CPU time is equivalent to the device's number of CPU cores. For example,
    #         on a core device with 4 CPU cores, you can set this value to <code>2</code> to limit the
    #         component's processes to 50 percent usage of each CPU core. On a device with 1 CPU core, you
    #         can set this value to <code>0.25</code> to limit the component's processes to 25 percent usage
    #         of the CPU. If you set this value to a number greater than the number of CPU cores, the IoT Greengrass Core
    #         software doesn't limit the component's CPU usage.</p>
    #
    #   @return [Float]
    #
    SystemResourceLimits = ::Struct.new(
      :memory,
      :cpus,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.memory ||= 0
        self.cpus ||= 0
      end

    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
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

    # <p>Your request exceeded a request rate quota. For example, you might have exceeded the
    #       amount of times that you can retrieve device or deployment status per second.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The code for the quota in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The code for the service in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The amount of time to wait before you retry the request.</p>
    #
    #   @return [Integer]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :quota_code,
      :service_code,
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
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to untag.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of keys for tags to remove from the resource.</p>
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

    # @!attribute thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    #   @return [String]
    #
    # @!attribute connectivity_info
    #   <p>The connectivity information for the core device.</p>
    #
    #   @return [Array<ConnectivityInfo>]
    #
    UpdateConnectivityInfoInput = ::Struct.new(
      :thing_name,
      :connectivity_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute version
    #   <p>The new version of the connectivity information for the core device.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message about the connectivity information update request.</p>
    #
    #   @return [String]
    #
    UpdateConnectivityInfoOutput = ::Struct.new(
      :version,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request isn't valid. This can occur if your request contains malformed JSON or
    #       unsupported characters.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the validation exception.</p>
    #
    #   Enum, one of: ["UNKNOWN_OPERATION", "CANNOT_PARSE", "FIELD_VALIDATION_FAILED", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>The list of fields that failed to validate.</p>
    #
    #   @return [Array<ValidationExceptionField>]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      :fields,
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

    # Includes enum constants for VendorGuidance
    #
    module VendorGuidance
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DISCONTINUED = "DISCONTINUED"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

  end
end
