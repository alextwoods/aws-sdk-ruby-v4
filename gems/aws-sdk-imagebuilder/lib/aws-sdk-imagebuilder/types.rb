# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Imagebuilder
  module Types

    # <p>In addition to your infrastruction configuration, these settings provide an extra layer of
    # 			control over your build instances. For instances where Image Builder installs the Systems Manager agent,
    # 			you can choose whether to keep it for the AMI that you create. You can also specify commands
    # 			to run on launch for all of your build instances.</p>
    #
    # @!attribute systems_manager_agent
    #   <p>Contains settings for the Systems Manager agent on your build instance.</p>
    #
    #   @return [SystemsManagerAgent]
    #
    # @!attribute user_data_override
    #   <p>Use this property to provide commands or a command script to run when you launch
    #   			your build instance.</p>
    #   		       <p>The userDataOverride property replaces any commands that Image Builder might have added to ensure
    #   			that Systems Manager is installed on your Linux build instance. If you override the user data,
    #   			make sure that you add commands to install Systems Manager, if it is not pre-installed on your
    #   			base image.</p>
    #   		       <note>
    #   			         <p>The user data is always base 64 encoded. For example, the
    #   				following commands are encoded as <code>IyEvYmluL2Jhc2gKbWtkaXIgLXAgL3Zhci9iYi8KdG91Y2ggL3Zhci$</code>:</p>
    #   			
    #   			         <p>
    #                  <i> !/bin/bash</i>
    #               </p>
    #   			         <p>mkdir -p /var/bb/</p>
    #   			         <p>touch /var</p>
    #   		       </note>
    #
    #   @return [String]
    #
    AdditionalInstanceConfiguration = ::Struct.new(
      :systems_manager_agent,
      :user_data_override,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Details of an Amazon EC2 AMI.</p>
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region of the Amazon EC2 AMI.</p>
    #
    #   @return [String]
    #
    # @!attribute image
    #   <p>The AMI ID of the Amazon EC2 AMI.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Amazon EC2 AMI.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the Amazon EC2 AMI. Minimum and maximum length are in characters.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p> Image state shows the image status and the reason for that status.</p>
    #
    #   @return [ImageState]
    #
    # @!attribute account_id
    #   <p>The account ID of the owner of the AMI.</p>
    #
    #   @return [String]
    #
    Ami = ::Struct.new(
      :region,
      :image,
      :name,
      :description,
      :state,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Define and configure the output AMIs of the pipeline.</p>
    #
    # @!attribute name
    #   <p>The name of the output AMI.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the AMI distribution configuration. Minimum and maximum length are in characters.</p>
    #
    #   @return [String]
    #
    # @!attribute target_account_ids
    #   <p>The ID of an account to which you want to distribute an image.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ami_tags
    #   <p>The tags to apply to AMIs distributed to this Region.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute kms_key_id
    #   <p>The KMS key identifier used to encrypt the distributed image.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_permission
    #   <p> Launch permissions can be used to configure which Amazon Web Services accounts can use the AMI to launch
    #   			instances.</p>
    #
    #   @return [LaunchPermissionConfiguration]
    #
    AmiDistributionConfiguration = ::Struct.new(
      :name,
      :description,
      :target_account_ids,
      :ami_tags,
      :kms_key_id,
      :launch_permission,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BuildType
    #
    module BuildType
      # No documentation available.
      #
      USER_INITIATED = "USER_INITIATED"

      # No documentation available.
      #
      SCHEDULED = "SCHEDULED"

      # No documentation available.
      #
      IMPORT = "IMPORT"
    end

    # <p>You have exceeded the permitted request rate for the specific operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CallRateLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image whose creation you want to cancel.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #
    #   @return [String]
    #
    CancelImageCreationInput = ::Struct.new(
      :image_build_version_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token that was used for this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image whose creation has been cancelled.</p>
    #
    #   @return [String]
    #
    CancelImageCreationOutput = ::Struct.new(
      :request_id,
      :client_token,
      :image_build_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>These errors are usually caused by a client action, such as using an action or resource on
    # 			behalf of a user that doesn't have permissions to use the action or resource, or specifying an
    # 			invalid resource identifier.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClientException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A detailed view of a component.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute change_description
    #   <p>The change description of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the component denotes whether the component is used to build the image or only
    #   			to test it.</p>
    #
    #   Enum, one of: ["BUILD", "TEST"]
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the component.</p>
    #
    #   Enum, one of: ["Windows", "Linux"]
    #
    #   @return [String]
    #
    # @!attribute supported_os_versions
    #   <p>The operating system (OS) version supported by the component. If the OS information is
    #   			available, a prefix match is performed against the base image OS version during image recipe
    #   			creation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute state
    #   <p>Describes the current status of the component. This is used for
    #   			components that are no longer active.</p>
    #
    #   @return [ComponentState]
    #
    # @!attribute parameters
    #   <p>Contains parameter details for each of the parameters that are defined for the component.</p>
    #
    #   @return [Array<ComponentParameterDetail>]
    #
    # @!attribute owner
    #   <p>The owner of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>Component data contains the YAML document content for the component.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The KMS key identifier used to encrypt the component.</p>
    #
    #   @return [String]
    #
    # @!attribute encrypted
    #   <p>The encryption status of the component.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute date_created
    #   <p>The date that the component was created.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the component.</p>
    #
    #   @return [Hash<String, String>]
    #
    Component = ::Struct.new(
      :arn,
      :name,
      :version,
      :description,
      :change_description,
      :type,
      :platform,
      :supported_os_versions,
      :state,
      :parameters,
      :owner,
      :data,
      :kms_key_id,
      :encrypted,
      :date_created,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Configuration details of the component.</p>
    #
    # @!attribute component_arn
    #   <p>The Amazon Resource Name (ARN) of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A group of parameter settings that are used to configure the component for a specific recipe.</p>
    #
    #   @return [Array<ComponentParameter>]
    #
    ComponentConfiguration = ::Struct.new(
      :component_arn,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComponentFormat
    #
    module ComponentFormat
      # No documentation available.
      #
      SHELL = "SHELL"
    end

    # <p>Contains a key/value pair that sets the named component parameter.</p>
    #
    # @!attribute name
    #   <p>The name of the component parameter to set.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Sets the value for the named component parameter.</p>
    #
    #   @return [Array<String>]
    #
    ComponentParameter = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a parameter that is used to provide configuration details for the component.</p>
    #
    # @!attribute name
    #   <p>The name of this input parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of input this parameter provides. The currently supported value is "string".</p>
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>The default value of this parameter if no input is provided.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute description
    #   <p>Describes this parameter.</p>
    #
    #   @return [String]
    #
    ComponentParameterDetail = ::Struct.new(
      :name,
      :type,
      :default_value,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A group of fields that describe the current status of components
    # 			that are no longer active.</p>
    #
    # @!attribute status
    #   <p>The current state of the component.</p>
    #
    #   Enum, one of: ["DEPRECATED"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>Describes how or why the component changed state.</p>
    #
    #   @return [String]
    #
    ComponentState = ::Struct.new(
      :status,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComponentStatus
    #
    module ComponentStatus
      # No documentation available.
      #
      DEPRECATED = "DEPRECATED"
    end

    # <p>A high-level summary of a component.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the component.</p>
    #
    #   Enum, one of: ["Windows", "Linux"]
    #
    #   @return [String]
    #
    # @!attribute supported_os_versions
    #   <p>The operating system (OS) version supported by the component. If the OS information is
    #   			available, a prefix match is performed against the base image OS version during image recipe
    #   			creation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute state
    #   <p>Describes the current status of the component.</p>
    #
    #   @return [ComponentState]
    #
    # @!attribute type
    #   <p>The type of the component denotes whether the component is used to build the image or only
    #   			to test it.</p>
    #
    #   Enum, one of: ["BUILD", "TEST"]
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The owner of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute change_description
    #   <p>The change description of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute date_created
    #   <p>The date that the component was created.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the component.</p>
    #
    #   @return [Hash<String, String>]
    #
    ComponentSummary = ::Struct.new(
      :arn,
      :name,
      :version,
      :platform,
      :supported_os_versions,
      :state,
      :type,
      :owner,
      :description,
      :change_description,
      :date_created,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComponentType
    #
    module ComponentType
      # No documentation available.
      #
      BUILD = "BUILD"

      # No documentation available.
      #
      TEST = "TEST"
    end

    # <p>The defining characteristics of a specific version of an Amazon Web Services TOE component.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the component.</p>
    #   		       <note>
    #   			         <p>Semantic versioning is included in each object's Amazon Resource Name (ARN),
    #   	at the level that applies to that object as follows:</p>
    #   	           <ol>
    #                  <li>
    #   			               <p>Versionless ARNs and Name ARNs do not include specific values in any of the nodes. The nodes are
    #   				either left off entirely, or they are specified as wildcards, for example: x.x.x.</p>
    #   		             </li>
    #                  <li>
    #   			               <p>Version ARNs have only the first three nodes: <major>.<minor>.<patch></p>
    #   		             </li>
    #                  <li>
    #   			               <p>Build version ARNs have all four nodes, and point to a specific build for a specific version of an object.</p>
    #   		             </li>
    #               </ol>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The semantic version of the component.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   			         <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #   			         <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #   			         <p>
    #                  <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x)
    #   	to specify the most recent versions or nodes when selecting the base image or components for your
    #   	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be
    #   	wildcards.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the component.</p>
    #
    #   Enum, one of: ["Windows", "Linux"]
    #
    #   @return [String]
    #
    # @!attribute supported_os_versions
    #   <p>he operating system (OS) version supported by the component. If the OS information is
    #   			available, a prefix match is performed against the base image OS version during image recipe
    #   			creation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute type
    #   <p>The type of the component denotes whether the component is used to build the image or only
    #   			to test it.</p>
    #
    #   Enum, one of: ["BUILD", "TEST"]
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The owner of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute date_created
    #   <p>The date that the component was created.</p>
    #
    #   @return [String]
    #
    ComponentVersion = ::Struct.new(
      :arn,
      :name,
      :version,
      :description,
      :platform,
      :supported_os_versions,
      :type,
      :owner,
      :date_created,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container encapsulates the runtime environment for an application.</p>
    #
    # @!attribute region
    #   <p>Containers and container images are Region-specific. This is the Region context for the container.</p>
    #
    #   @return [String]
    #
    # @!attribute image_uris
    #   <p>A list of URIs for containers created in the context Region.</p>
    #
    #   @return [Array<String>]
    #
    Container = ::Struct.new(
      :region,
      :image_uris,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container distribution settings for encryption, licensing, and sharing in a specific Region.</p>
    #
    # @!attribute description
    #   <p>The description of the container distribution configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute container_tags
    #   <p>Tags that are attached to the container distribution configuration.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute target_repository
    #   <p>The destination repository for the container distribution configuration.</p>
    #
    #   @return [TargetContainerRepository]
    #
    ContainerDistributionConfiguration = ::Struct.new(
      :description,
      :container_tags,
      :target_repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container recipe.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe.</p>
    #   		       <note>
    #   			         <p>Semantic versioning is included in each object's Amazon Resource Name (ARN),
    #   	at the level that applies to that object as follows:</p>
    #   	           <ol>
    #                  <li>
    #   			               <p>Versionless ARNs and Name ARNs do not include specific values in any of the nodes. The nodes are
    #   				either left off entirely, or they are specified as wildcards, for example: x.x.x.</p>
    #   		             </li>
    #                  <li>
    #   			               <p>Version ARNs have only the first three nodes: <major>.<minor>.<patch></p>
    #   		             </li>
    #                  <li>
    #   			               <p>Build version ARNs have all four nodes, and point to a specific build for a specific version of an object.</p>
    #   		             </li>
    #               </ol>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute container_type
    #   <p>Specifies the type of container, such as Docker.</p>
    #
    #   Enum, one of: ["DOCKER"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the container recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the container recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The system platform for the container, such as Windows or Linux.</p>
    #
    #   Enum, one of: ["Windows", "Linux"]
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The owner of the container recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The semantic version of the container recipe.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   			         <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #   			         <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #   			         <p>
    #                  <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x)
    #   	to specify the most recent versions or nodes when selecting the base image or components for your
    #   	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be
    #   	wildcards.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute components
    #   <p>Components for build and test that are included in the container recipe.</p>
    #
    #   @return [Array<ComponentConfiguration>]
    #
    # @!attribute instance_configuration
    #   <p>A group of options that can be used to configure an instance for building and testing container images.</p>
    #
    #   @return [InstanceConfiguration]
    #
    # @!attribute dockerfile_template_data
    #   <p>Dockerfiles are text documents that are used to build Docker containers, and ensure that they contain all of the elements required by the application running inside. The template data consists of contextual variables where Image Builder places build information or scripts, based on your container image recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>Identifies which KMS key is used to encrypt the container image for distribution to the target Region.</p>
    #
    #   @return [String]
    #
    # @!attribute encrypted
    #   <p>A flag that indicates if the target container is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parent_image
    #   <p>The base image for the container recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute date_created
    #   <p>The date when this container recipe was created.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags that are attached to the container recipe.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute working_directory
    #   <p>The working directory for use during build and test workflows.</p>
    #
    #   @return [String]
    #
    # @!attribute target_repository
    #   <p>The destination repository for the container image.</p>
    #
    #   @return [TargetContainerRepository]
    #
    ContainerRecipe = ::Struct.new(
      :arn,
      :container_type,
      :name,
      :description,
      :platform,
      :owner,
      :version,
      :components,
      :instance_configuration,
      :dockerfile_template_data,
      :kms_key_id,
      :encrypted,
      :parent_image,
      :date_created,
      :tags,
      :working_directory,
      :target_repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of a container recipe</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute container_type
    #   <p>Specifies the type of container, such as "Docker".</p>
    #
    #   Enum, one of: ["DOCKER"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the container recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The system platform for the container, such as Windows or Linux.</p>
    #
    #   Enum, one of: ["Windows", "Linux"]
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The owner of the container recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_image
    #   <p>The base image for the container recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute date_created
    #   <p>The date when this container recipe was created.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags that are attached to the container recipe.</p>
    #
    #   @return [Hash<String, String>]
    #
    ContainerRecipeSummary = ::Struct.new(
      :arn,
      :container_type,
      :name,
      :platform,
      :owner,
      :parent_image,
      :date_created,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContainerRepositoryService
    #
    module ContainerRepositoryService
      # No documentation available.
      #
      ECR = "ECR"
    end

    # Includes enum constants for ContainerType
    #
    module ContainerType
      # No documentation available.
      #
      DOCKER = "DOCKER"
    end

    # @!attribute name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute semantic_version
    #   <p>The semantic version of the component. This version follows the semantic version syntax.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   			         <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #   			         <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the component. Describes the contents of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute change_description
    #   <p>The change description of the component. Describes what change has been made in this
    #   			version, or what makes this version different from other versions of this component.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the component.</p>
    #
    #   Enum, one of: ["Windows", "Linux"]
    #
    #   @return [String]
    #
    # @!attribute supported_os_versions
    #   <p> The operating system (OS) version supported by the component. If the OS information is
    #   			available, a prefix match is performed against the base image OS version during image recipe
    #   			creation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute data
    #   <p>Component <code>data</code> contains inline YAML document content for the component.
    #   			Alternatively, you can specify the <code>uri</code> of a YAML document file stored in
    #   			Amazon S3. However, you cannot specify both properties.</p>
    #
    #   @return [String]
    #
    # @!attribute uri
    #   <p>The <code>uri</code> of a YAML component document file. This must be an S3 URL
    #   			(<code>s3://bucket/key</code>), and the requester must have permission to access
    #   			the S3 bucket it points to. If you use Amazon S3, you can specify component content
    #   			up to your service quota.</p>
    #   		       <p>Alternatively, you can specify the YAML document inline, using the component
    #   			<code>data</code> property. You cannot specify both properties.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key that should be used to encrypt this component.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags of the component.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>The idempotency token of the component.</p>
    #
    #   @return [String]
    #
    CreateComponentInput = ::Struct.new(
      :name,
      :semantic_version,
      :description,
      :change_description,
      :platform,
      :supported_os_versions,
      :data,
      :uri,
      :kms_key_id,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    # @!attribute component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the component that was created by this request.</p>
    #
    #   @return [String]
    #
    CreateComponentOutput = ::Struct.new(
      :request_id,
      :client_token,
      :component_build_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_type
    #   <p>The type of container to create.</p>
    #
    #   Enum, one of: ["DOCKER"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the container recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the container recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute semantic_version
    #   <p>The semantic version of the container recipe. This version follows the semantic version syntax.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   			         <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #   			         <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute components
    #   <p>Components for build and test that are included in the container recipe.</p>
    #
    #   @return [Array<ComponentConfiguration>]
    #
    # @!attribute instance_configuration
    #   <p>A group of options that can be used to configure an instance for building and testing container images.</p>
    #
    #   @return [InstanceConfiguration]
    #
    # @!attribute dockerfile_template_data
    #   <p>The Dockerfile template used to build your image as an inline data blob.</p>
    #
    #   @return [String]
    #
    # @!attribute dockerfile_template_uri
    #   <p>The Amazon S3 URI for the Dockerfile that will be used to build your container image.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_override
    #   <p>Specifies the operating system platform when you use a custom base image.</p>
    #
    #   Enum, one of: ["Windows", "Linux"]
    #
    #   @return [String]
    #
    # @!attribute image_os_version_override
    #   <p>Specifies the operating system version for the base image.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_image
    #   <p>The base image for the container recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags that are attached to the container recipe.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute working_directory
    #   <p>The working directory for use during build and test workflows.</p>
    #
    #   @return [String]
    #
    # @!attribute target_repository
    #   <p>The destination repository for the container image.</p>
    #
    #   @return [TargetContainerRepository]
    #
    # @!attribute kms_key_id
    #   <p>Identifies which KMS key is used to encrypt the container image.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The client token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    CreateContainerRecipeInput = ::Struct.new(
      :container_type,
      :name,
      :description,
      :semantic_version,
      :components,
      :instance_configuration,
      :dockerfile_template_data,
      :dockerfile_template_uri,
      :platform_override,
      :image_os_version_override,
      :parent_image,
      :tags,
      :working_directory,
      :target_repository,
      :kms_key_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The client token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    # @!attribute container_recipe_arn
    #   <p>Returns the Amazon Resource Name (ARN) of the container recipe that the request created.</p>
    #
    #   @return [String]
    #
    CreateContainerRecipeOutput = ::Struct.new(
      :request_id,
      :client_token,
      :container_recipe_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p> The name of the distribution configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the distribution configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute distributions
    #   <p> The distributions of the distribution configuration.</p>
    #
    #   @return [Array<Distribution>]
    #
    # @!attribute tags
    #   <p> The tags of the distribution configuration.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p> The idempotency token of the distribution configuration.</p>
    #
    #   @return [String]
    #
    CreateDistributionConfigurationInput = ::Struct.new(
      :name,
      :description,
      :distributions,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p> The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p> The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    # @!attribute distribution_configuration_arn
    #   <p> The Amazon Resource Name (ARN) of the distribution configuration that was created by this
    #   			request.</p>
    #
    #   @return [String]
    #
    CreateDistributionConfigurationOutput = ::Struct.new(
      :request_id,
      :client_token,
      :distribution_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_recipe_arn
    #   <p> The Amazon Resource Name (ARN) of the image recipe that defines how images are
    #   			configured, tested, and assessed.</p>
    #
    #   @return [String]
    #
    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that defines how images are configured and tested.</p>
    #
    #   @return [String]
    #
    # @!attribute distribution_configuration_arn
    #   <p> The Amazon Resource Name (ARN) of the distribution configuration that defines and
    #   			configures the outputs of your pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute infrastructure_configuration_arn
    #   <p> The Amazon Resource Name (ARN) of the infrastructure configuration that defines the
    #   			environment in which your image will be built and tested.</p>
    #
    #   @return [String]
    #
    # @!attribute image_tests_configuration
    #   <p> The image tests configuration of the image.</p>
    #
    #   @return [ImageTestsConfiguration]
    #
    # @!attribute enhanced_image_metadata_enabled
    #   <p> Collects additional information about the image being created, including the operating
    #   			system (OS) version and package list. This information is used to enhance the overall
    #   			experience of using EC2 Image Builder. Enabled by default.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p> The tags of the image.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p> The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    CreateImageInput = ::Struct.new(
      :image_recipe_arn,
      :container_recipe_arn,
      :distribution_configuration_arn,
      :infrastructure_configuration_arn,
      :image_tests_configuration,
      :enhanced_image_metadata_enabled,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p> The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p> The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    # @!attribute image_build_version_arn
    #   <p> The Amazon Resource Name (ARN) of the image that was created by this request.</p>
    #
    #   @return [String]
    #
    CreateImageOutput = ::Struct.new(
      :request_id,
      :client_token,
      :image_build_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p> The name of the image pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the image pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute image_recipe_arn
    #   <p> The Amazon Resource Name (ARN) of the image recipe that will be used to configure images
    #   			created by this image pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that is used to configure images created by this container pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute infrastructure_configuration_arn
    #   <p> The Amazon Resource Name (ARN) of the infrastructure configuration that will be used to
    #   			build images created by this image pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute distribution_configuration_arn
    #   <p> The Amazon Resource Name (ARN) of the distribution configuration that will be used to
    #   			configure and distribute images created by this image pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute image_tests_configuration
    #   <p> The image test configuration of the image pipeline.</p>
    #
    #   @return [ImageTestsConfiguration]
    #
    # @!attribute enhanced_image_metadata_enabled
    #   <p> Collects additional information about the image being created, including the operating
    #   			system (OS) version and package list. This information is used to enhance the overall
    #   			experience of using EC2 Image Builder. Enabled by default.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute schedule
    #   <p> The schedule of the image pipeline.</p>
    #
    #   @return [Schedule]
    #
    # @!attribute status
    #   <p> The status of the image pipeline.</p>
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p> The tags of the image pipeline.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p> The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    CreateImagePipelineInput = ::Struct.new(
      :name,
      :description,
      :image_recipe_arn,
      :container_recipe_arn,
      :infrastructure_configuration_arn,
      :distribution_configuration_arn,
      :image_tests_configuration,
      :enhanced_image_metadata_enabled,
      :schedule,
      :status,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p> The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p> The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    # @!attribute image_pipeline_arn
    #   <p> The Amazon Resource Name (ARN) of the image pipeline that was created by this request.</p>
    #
    #   @return [String]
    #
    CreateImagePipelineOutput = ::Struct.new(
      :request_id,
      :client_token,
      :image_pipeline_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p> The name of the image recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description of the image recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute semantic_version
    #   <p>The semantic version of the image recipe. This version follows the semantic version syntax.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   			         <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #   			         <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute components
    #   <p>The components of the image recipe.</p>
    #
    #   @return [Array<ComponentConfiguration>]
    #
    # @!attribute parent_image
    #   <p>The base image of the image recipe. The value of the string can be the ARN of the base
    #   			image or an AMI ID. The format for the ARN follows this example:
    #   			<code>arn:aws:imagebuilder:us-west-2:aws:image/windows-server-2016-english-full-base-x86/x.x.x</code>.
    #   			You can provide the specific version that you want to use, or you can use a wildcard in
    #   			all of the fields. If you enter an AMI ID for the string value, you must have access to the AMI,
    #   			and the AMI must be in the same Region in which you are using Image Builder.</p>
    #
    #   @return [String]
    #
    # @!attribute block_device_mappings
    #   <p>The block device mappings of the image recipe.</p>
    #
    #   @return [Array<InstanceBlockDeviceMapping>]
    #
    # @!attribute tags
    #   <p> The tags of the image recipe.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute working_directory
    #   <p>The working directory used during build and test workflows.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_instance_configuration
    #   <p>Specify additional settings and launch scripts for your build instances.</p>
    #
    #   @return [AdditionalInstanceConfiguration]
    #
    # @!attribute client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    CreateImageRecipeInput = ::Struct.new(
      :name,
      :description,
      :semantic_version,
      :components,
      :parent_image,
      :block_device_mappings,
      :tags,
      :working_directory,
      :additional_instance_configuration,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that was created by this request.</p>
    #
    #   @return [String]
    #
    CreateImageRecipeOutput = ::Struct.new(
      :request_id,
      :client_token,
      :image_recipe_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the infrastructure configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the infrastructure configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_types
    #   <p>The instance types of the infrastructure configuration. You can specify one or more
    #   			instance types to use for this build. The service will pick one of these instance types based
    #   			on availability.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute instance_profile_name
    #   <p>The instance profile to associate with the instance used to customize your Amazon EC2 AMI.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_ids
    #   <p>The security group IDs to associate with the instance used to customize your Amazon EC2 AMI.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_id
    #   <p>The subnet ID in which to place the instance used to customize your Amazon EC2 AMI.</p>
    #
    #   @return [String]
    #
    # @!attribute logging
    #   <p>The logging configuration of the infrastructure configuration.</p>
    #
    #   @return [Logging]
    #
    # @!attribute key_pair
    #   <p>The key pair of the infrastructure configuration. You can use this to log on to and debug
    #   			the instance used to create your image.</p>
    #
    #   @return [String]
    #
    # @!attribute terminate_instance_on_failure
    #   <p>The terminate instance on failure setting of the infrastructure configuration. Set to
    #   			false if you want Image Builder to retain the instance used to configure your AMI if the build
    #   			or test phase of your workflow fails.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) for the SNS topic to which we send image build event notifications.</p>
    #   		       <note>
    #   			         <p>EC2 Image Builder is unable to send notifications to SNS topics that are encrypted using keys
    #   				from other accounts. The key that is used to encrypt the SNS topic must reside in the
    #   				account that the Image Builder service runs under.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute resource_tags
    #   <p>The tags attached to the resource created by Image Builder.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute instance_metadata_options
    #   <p>The instance metadata options that you can set for the HTTP requests that
    #   			pipeline builds use to launch EC2 build and test instances.</p>
    #
    #   @return [InstanceMetadataOptions]
    #
    # @!attribute tags
    #   <p>The tags of the infrastructure configuration.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    CreateInfrastructureConfigurationInput = ::Struct.new(
      :name,
      :description,
      :instance_types,
      :instance_profile_name,
      :security_group_ids,
      :subnet_id,
      :logging,
      :key_pair,
      :terminate_instance_on_failure,
      :sns_topic_arn,
      :resource_tags,
      :instance_metadata_options,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that was created by
    #   			this request.</p>
    #
    #   @return [String]
    #
    CreateInfrastructureConfigurationOutput = ::Struct.new(
      :request_id,
      :client_token,
      :infrastructure_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the component build version to delete.</p>
    #
    #   @return [String]
    #
    DeleteComponentInput = ::Struct.new(
      :component_build_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the component build version that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteComponentOutput = ::Struct.new(
      :request_id,
      :component_build_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe to delete.</p>
    #
    #   @return [String]
    #
    DeleteContainerRecipeInput = ::Struct.new(
      :container_recipe_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteContainerRecipeOutput = ::Struct.new(
      :request_id,
      :container_recipe_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration to delete.</p>
    #
    #   @return [String]
    #
    DeleteDistributionConfigurationInput = ::Struct.new(
      :distribution_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteDistributionConfigurationOutput = ::Struct.new(
      :request_id,
      :distribution_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the Image Builder image resource to delete.</p>
    #
    #   @return [String]
    #
    DeleteImageInput = ::Struct.new(
      :image_build_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the Image Builder image resource that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteImageOutput = ::Struct.new(
      :request_id,
      :image_build_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline to delete.</p>
    #
    #   @return [String]
    #
    DeleteImagePipelineInput = ::Struct.new(
      :image_pipeline_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteImagePipelineOutput = ::Struct.new(
      :request_id,
      :image_pipeline_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe to delete.</p>
    #
    #   @return [String]
    #
    DeleteImageRecipeInput = ::Struct.new(
      :image_recipe_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteImageRecipeOutput = ::Struct.new(
      :request_id,
      :image_recipe_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration to delete.</p>
    #
    #   @return [String]
    #
    DeleteInfrastructureConfigurationInput = ::Struct.new(
      :infrastructure_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteInfrastructureConfigurationOutput = ::Struct.new(
      :request_id,
      :infrastructure_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DiskImageFormat
    #
    module DiskImageFormat
      # No documentation available.
      #
      VMDK = "VMDK"

      # No documentation available.
      #
      RAW = "RAW"

      # No documentation available.
      #
      VHD = "VHD"
    end

    # <p> Defines the settings for a specific Region.</p>
    #
    # @!attribute region
    #   <p>The target Region.</p>
    #
    #   @return [String]
    #
    # @!attribute ami_distribution_configuration
    #   <p>The specific AMI settings; for example, launch permissions or AMI tags.</p>
    #
    #   @return [AmiDistributionConfiguration]
    #
    # @!attribute container_distribution_configuration
    #   <p>Container distribution settings for encryption, licensing, and sharing
    #   			in a specific Region.</p>
    #
    #   @return [ContainerDistributionConfiguration]
    #
    # @!attribute license_configuration_arns
    #   <p>The License Manager Configuration to associate with the AMI in the specified
    #   			Region.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute launch_template_configurations
    #   <p>A group of launchTemplateConfiguration settings that apply to image distribution
    #   			for specified accounts.</p>
    #
    #   @return [Array<LaunchTemplateConfiguration>]
    #
    # @!attribute s3_export_configuration
    #   <p>Configure export settings to deliver disk images created from your image build,
    #   			using a file format that is compatible with your VMs in that Region.</p>
    #
    #   @return [S3ExportConfiguration]
    #
    # @!attribute fast_launch_configurations
    #   <p>The Windows faster-launching configurations to use for AMI distribution.</p>
    #
    #   @return [Array<FastLaunchConfiguration>]
    #
    Distribution = ::Struct.new(
      :region,
      :ami_distribution_configuration,
      :container_distribution_configuration,
      :license_configuration_arns,
      :launch_template_configurations,
      :s3_export_configuration,
      :fast_launch_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A distribution configuration.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the distribution configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the distribution configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute distributions
    #   <p>The distribution objects that apply Region-specific
    #   			settings for the deployment of the image to targeted Regions.</p>
    #
    #   @return [Array<Distribution>]
    #
    # @!attribute timeout_minutes
    #   <p>The maximum duration in minutes for this distribution configuration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute date_created
    #   <p>The date on which this distribution configuration was created.</p>
    #
    #   @return [String]
    #
    # @!attribute date_updated
    #   <p>The date on which this distribution configuration was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags of the distribution configuration.</p>
    #
    #   @return [Hash<String, String>]
    #
    DistributionConfiguration = ::Struct.new(
      :arn,
      :name,
      :description,
      :distributions,
      :timeout_minutes,
      :date_created,
      :date_updated,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A high-level overview of a distribution configuration.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the distribution configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the distribution configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute date_created
    #   <p>The date on which the distribution configuration was created.</p>
    #
    #   @return [String]
    #
    # @!attribute date_updated
    #   <p>The date on which the distribution configuration was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the distribution configuration.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute regions
    #   <p>A list of Regions where the container image is distributed to.</p>
    #
    #   @return [Array<String>]
    #
    DistributionConfigurationSummary = ::Struct.new(
      :arn,
      :name,
      :description,
      :date_created,
      :date_updated,
      :tags,
      :regions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon EBS-specific block device mapping specifications.</p>
    #
    # @!attribute encrypted
    #   <p>Use to configure device encryption.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute delete_on_termination
    #   <p>Use to configure delete on termination of the associated device.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute iops
    #   <p>Use to configure device IOPS.</p>
    #
    #   @return [Integer]
    #
    # @!attribute kms_key_id
    #   <p>Use to configure the KMS key to use when encrypting the device.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>The snapshot that defines the device contents.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_size
    #   <p>Use to override the device's volume size.</p>
    #
    #   @return [Integer]
    #
    # @!attribute volume_type
    #   <p>Use to override the device's volume type.</p>
    #
    #   Enum, one of: ["standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"]
    #
    #   @return [String]
    #
    # @!attribute throughput
    #   <p>
    #               <b>For GP3 volumes only</b> –
    #   			The throughput in MiB/s that the volume supports. </p>
    #
    #   @return [Integer]
    #
    EbsInstanceBlockDeviceSpecification = ::Struct.new(
      :encrypted,
      :delete_on_termination,
      :iops,
      :kms_key_id,
      :snapshot_id,
      :volume_size,
      :volume_type,
      :throughput,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EbsVolumeType
    #
    module EbsVolumeType
      # No documentation available.
      #
      STANDARD = "standard"

      # No documentation available.
      #
      IO1 = "io1"

      # No documentation available.
      #
      IO2 = "io2"

      # No documentation available.
      #
      GP2 = "gp2"

      # No documentation available.
      #
      GP3 = "gp3"

      # No documentation available.
      #
      SC1 = "sc1"

      # No documentation available.
      #
      ST1 = "st1"
    end

    # <p>Define and configure faster launching for output Windows AMIs.</p>
    #
    # @!attribute enabled
    #   <p>A Boolean that represents the current state of faster launching for the
    #   			Windows AMI. Set to <code>true</code> to start using Windows faster launching, or
    #   			<code>false</code> to stop using it.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute snapshot_configuration
    #   <p>Configuration settings for managing the number of snapshots that are
    #   			created from pre-provisioned instances for the Windows AMI when faster
    #   			launching is enabled.</p>
    #
    #   @return [FastLaunchSnapshotConfiguration]
    #
    # @!attribute max_parallel_launches
    #   <p>The maximum number of parallel instances that are launched for creating
    #   			resources.</p>
    #
    #   @return [Integer]
    #
    # @!attribute launch_template
    #   <p>The launch template that the fast-launch enabled Windows AMI uses when it
    #   			launches Windows instances to create pre-provisioned snapshots.</p>
    #
    #   @return [FastLaunchLaunchTemplateSpecification]
    #
    # @!attribute account_id
    #   <p>The owner account ID for the fast-launch enabled Windows AMI.</p>
    #
    #   @return [String]
    #
    FastLaunchConfiguration = ::Struct.new(
      :enabled,
      :snapshot_configuration,
      :max_parallel_launches,
      :launch_template,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Identifies the launch template that the associated Windows AMI uses for
    # 			launching an instance when faster launching is enabled.</p>
    # 		       <note>
    # 			         <p>You can specify either the <code>launchTemplateName</code> or the
    # 				<code>launchTemplateId</code>, but not both.</p>
    # 		       </note>
    #
    # @!attribute launch_template_id
    #   <p>The ID of the launch template to use for faster launching for a Windows AMI.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_template_name
    #   <p>The name of the launch template to use for faster launching for a Windows AMI.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_template_version
    #   <p>The version of the launch template to use for faster launching for a Windows AMI.</p>
    #
    #   @return [String]
    #
    FastLaunchLaunchTemplateSpecification = ::Struct.new(
      :launch_template_id,
      :launch_template_name,
      :launch_template_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration settings for creating and managing pre-provisioned snapshots
    # 			for a fast-launch enabled Windows AMI.</p>
    #
    # @!attribute target_resource_count
    #   <p>The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled
    #   			Windows AMI.</p>
    #
    #   @return [Integer]
    #
    FastLaunchSnapshotConfiguration = ::Struct.new(
      :target_resource_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filter name and value pair that is used to return a more specific list of results from a
    # 			list operation. Filters can be used to match a set of resources by specific criteria, such as
    # 			tags, attributes, or IDs.</p>
    #
    # @!attribute name
    #   <p>The name of the filter. Filter names are case-sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The filter values. Filter values are case-sensitive.</p>
    #
    #   @return [Array<String>]
    #
    Filter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You are not authorized to perform the requested operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the component that you want to retrieve. Regex requires
    #   			"/\d+$" suffix.</p>
    #
    #   @return [String]
    #
    GetComponentInput = ::Struct.new(
      :component_build_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute component
    #   <p>The component object associated with the specified ARN.</p>
    #
    #   @return [Component]
    #
    GetComponentOutput = ::Struct.new(
      :request_id,
      :component,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute component_arn
    #   <p>The Amazon Resource Name (ARN) of the component whose policy you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetComponentPolicyInput = ::Struct.new(
      :component_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The component policy.</p>
    #
    #   @return [String]
    #
    GetComponentPolicyOutput = ::Struct.new(
      :request_id,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe to retrieve.</p>
    #
    #   @return [String]
    #
    GetContainerRecipeInput = ::Struct.new(
      :container_recipe_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute container_recipe
    #   <p>The container recipe object that is returned.</p>
    #
    #   @return [ContainerRecipe]
    #
    GetContainerRecipeOutput = ::Struct.new(
      :request_id,
      :container_recipe,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe for the policy being requested.</p>
    #
    #   @return [String]
    #
    GetContainerRecipePolicyInput = ::Struct.new(
      :container_recipe_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The container recipe policy object that is returned.</p>
    #
    #   @return [String]
    #
    GetContainerRecipePolicyOutput = ::Struct.new(
      :request_id,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that you want to
    #   			retrieve.</p>
    #
    #   @return [String]
    #
    GetDistributionConfigurationInput = ::Struct.new(
      :distribution_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute distribution_configuration
    #   <p>The distribution configuration object.</p>
    #
    #   @return [DistributionConfiguration]
    #
    GetDistributionConfigurationOutput = ::Struct.new(
      :request_id,
      :distribution_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image that you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetImageInput = ::Struct.new(
      :image_build_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image
    #   <p>The image object.</p>
    #
    #   @return [Image]
    #
    GetImageOutput = ::Struct.new(
      :request_id,
      :image,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetImagePipelineInput = ::Struct.new(
      :image_pipeline_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_pipeline
    #   <p>The image pipeline object.</p>
    #
    #   @return [ImagePipeline]
    #
    GetImagePipelineOutput = ::Struct.new(
      :request_id,
      :image_pipeline,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_arn
    #   <p>The Amazon Resource Name (ARN) of the image whose policy you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetImagePolicyInput = ::Struct.new(
      :image_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The image policy object.</p>
    #
    #   @return [String]
    #
    GetImagePolicyOutput = ::Struct.new(
      :request_id,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetImageRecipeInput = ::Struct.new(
      :image_recipe_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_recipe
    #   <p>The image recipe object.</p>
    #
    #   @return [ImageRecipe]
    #
    GetImageRecipeOutput = ::Struct.new(
      :request_id,
      :image_recipe,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe whose policy you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetImageRecipePolicyInput = ::Struct.new(
      :image_recipe_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The image recipe policy object.</p>
    #
    #   @return [String]
    #
    GetImageRecipePolicyOutput = ::Struct.new(
      :request_id,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> GetInfrastructureConfiguration request object.</p>
    #
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that you want to
    #   			retrieve.</p>
    #
    #   @return [String]
    #
    GetInfrastructureConfigurationInput = ::Struct.new(
      :infrastructure_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>GetInfrastructureConfiguration response object.</p>
    #
    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute infrastructure_configuration
    #   <p>The infrastructure configuration object.</p>
    #
    #   @return [InfrastructureConfiguration]
    #
    GetInfrastructureConfigurationOutput = ::Struct.new(
      :request_id,
      :infrastructure_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have specified a client token for an operation using parameter values that differ from
    # 			a previous request that used the same client token.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IdempotentParameterMismatchException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Image Builder image. You must specify exactly one recipe for the image – either
    # 			a container recipe (<code>containerRecipe</code>), which creates a container
    # 			image, or an image recipe (<code>imageRecipe</code>), which creates an AMI.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the image.</p>
    #   		       <note>
    #   			         <p>Semantic versioning is included in each object's Amazon Resource Name (ARN),
    #   	at the level that applies to that object as follows:</p>
    #   	           <ol>
    #                  <li>
    #   			               <p>Versionless ARNs and Name ARNs do not include specific values in any of the nodes. The nodes are
    #   				either left off entirely, or they are specified as wildcards, for example: x.x.x.</p>
    #   		             </li>
    #                  <li>
    #   			               <p>Version ARNs have only the first three nodes: <major>.<minor>.<patch></p>
    #   		             </li>
    #                  <li>
    #   			               <p>Build version ARNs have all four nodes, and point to a specific build for a specific version of an object.</p>
    #   		             </li>
    #               </ol>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Specifies whether this is an AMI or container image.</p>
    #
    #   Enum, one of: ["AMI", "DOCKER"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The semantic version of the image.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   			         <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #   			         <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #   			         <p>
    #                  <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x)
    #   	to specify the most recent versions or nodes when selecting the base image or components for your
    #   	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be
    #   	wildcards.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the image.</p>
    #
    #   Enum, one of: ["Windows", "Linux"]
    #
    #   @return [String]
    #
    # @!attribute enhanced_image_metadata_enabled
    #   <p> Collects additional information about the image being created, including the operating
    #   			system (OS) version and package list. This information is used to enhance the overall
    #   			experience of using EC2 Image Builder. Enabled by default.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute os_version
    #   <p>The operating system version of the instance. For example, Amazon Linux 2, Ubuntu 18, or
    #   			Microsoft Windows Server 2019.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the image.</p>
    #
    #   @return [ImageState]
    #
    # @!attribute image_recipe
    #   <p>The image recipe used when creating the image.</p>
    #
    #   @return [ImageRecipe]
    #
    # @!attribute container_recipe
    #   <p>The recipe that is used to create an Image Builder container image.</p>
    #
    #   @return [ContainerRecipe]
    #
    # @!attribute source_pipeline_name
    #   <p>The name of the image pipeline that created this image.</p>
    #
    #   @return [String]
    #
    # @!attribute source_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that created this image.</p>
    #
    #   @return [String]
    #
    # @!attribute infrastructure_configuration
    #   <p>The infrastructure used when creating this image.</p>
    #
    #   @return [InfrastructureConfiguration]
    #
    # @!attribute distribution_configuration
    #   <p>The distribution configuration used when creating this image.</p>
    #
    #   @return [DistributionConfiguration]
    #
    # @!attribute image_tests_configuration
    #   <p>The image tests configuration used when creating this image.</p>
    #
    #   @return [ImageTestsConfiguration]
    #
    # @!attribute date_created
    #   <p>The date on which this image was created.</p>
    #
    #   @return [String]
    #
    # @!attribute output_resources
    #   <p>The output resources produced when creating this image.</p>
    #
    #   @return [OutputResources]
    #
    # @!attribute tags
    #   <p>The tags of the image.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute build_type
    #   <p>Indicates the type of build that created this image. The build can be initiated
    #   			in the following ways:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <b>USER_INITIATED</b> – A manual
    #   					pipeline build request.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>SCHEDULED</b> – A pipeline build
    #   					initiated by a cron expression in the Image Builder pipeline, or from EventBridge.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>IMPORT</b> – A VM import created
    #   					the image to use as the base image for the recipe.</p>
    #   			         </li>
    #            </ul>
    #
    #   Enum, one of: ["USER_INITIATED", "SCHEDULED", "IMPORT"]
    #
    #   @return [String]
    #
    Image = ::Struct.new(
      :arn,
      :type,
      :name,
      :version,
      :platform,
      :enhanced_image_metadata_enabled,
      :os_version,
      :state,
      :image_recipe,
      :container_recipe,
      :source_pipeline_name,
      :source_pipeline_arn,
      :infrastructure_configuration,
      :distribution_configuration,
      :image_tests_configuration,
      :date_created,
      :output_resources,
      :tags,
      :build_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a package installed on an Image Builder image.</p>
    #
    # @!attribute package_name
    #   <p>The name of the package as reported to the operating system package manager.</p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>The version of the package as reported to the operating system package manager.</p>
    #
    #   @return [String]
    #
    ImagePackage = ::Struct.new(
      :package_name,
      :package_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of an image pipeline.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the image pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the image pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the image pipeline.</p>
    #
    #   Enum, one of: ["Windows", "Linux"]
    #
    #   @return [String]
    #
    # @!attribute enhanced_image_metadata_enabled
    #   <p> Collects additional information about the image being created, including the operating
    #   			system (OS) version and package list. This information is used to enhance the overall
    #   			experience of using EC2 Image Builder. Enabled by default.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe associated with this image
    #   			pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that is used for this pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration associated with this
    #   			image pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration associated with this
    #   			image pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute image_tests_configuration
    #   <p>The image tests configuration of the image pipeline.</p>
    #
    #   @return [ImageTestsConfiguration]
    #
    # @!attribute schedule
    #   <p>The schedule of the image pipeline.</p>
    #
    #   @return [Schedule]
    #
    # @!attribute status
    #   <p>The status of the image pipeline.</p>
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute date_created
    #   <p>The date on which this image pipeline was created.</p>
    #
    #   @return [String]
    #
    # @!attribute date_updated
    #   <p>The date on which this image pipeline was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute date_last_run
    #   <p>The date on which this image pipeline was last run.</p>
    #
    #   @return [String]
    #
    # @!attribute date_next_run
    #   <p>The date on which this image pipeline will next be run.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags of this image pipeline.</p>
    #
    #   @return [Hash<String, String>]
    #
    ImagePipeline = ::Struct.new(
      :arn,
      :name,
      :description,
      :platform,
      :enhanced_image_metadata_enabled,
      :image_recipe_arn,
      :container_recipe_arn,
      :infrastructure_configuration_arn,
      :distribution_configuration_arn,
      :image_tests_configuration,
      :schedule,
      :status,
      :date_created,
      :date_updated,
      :date_last_run,
      :date_next_run,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An image recipe.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Specifies which type of image is created by the recipe - an AMI or a
    #   			container image.</p>
    #
    #   Enum, one of: ["AMI", "DOCKER"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the image recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the image recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the image recipe.</p>
    #
    #   Enum, one of: ["Windows", "Linux"]
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The owner of the image recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the image recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute components
    #   <p>The components of the image recipe.</p>
    #
    #   @return [Array<ComponentConfiguration>]
    #
    # @!attribute parent_image
    #   <p>The base image of the image recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute block_device_mappings
    #   <p>The block device mappings to apply when creating images from this recipe.</p>
    #
    #   @return [Array<InstanceBlockDeviceMapping>]
    #
    # @!attribute date_created
    #   <p>The date on which this image recipe was created.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags of the image recipe.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute working_directory
    #   <p>The working directory to be used during build and test workflows.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_instance_configuration
    #   <p>Before you create a new AMI, Image Builder launches temporary Amazon EC2 instances to
    #   			build and test your image configuration. Instance configuration adds a layer
    #   			of control over those instances. You can define settings and add scripts to
    #   			run when an instance is launched from your AMI.</p>
    #
    #   @return [AdditionalInstanceConfiguration]
    #
    ImageRecipe = ::Struct.new(
      :arn,
      :type,
      :name,
      :description,
      :platform,
      :owner,
      :version,
      :components,
      :parent_image,
      :block_device_mappings,
      :date_created,
      :tags,
      :working_directory,
      :additional_instance_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of an image recipe.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the image recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the image recipe.</p>
    #
    #   Enum, one of: ["Windows", "Linux"]
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The owner of the image recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_image
    #   <p>The base image of the image recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute date_created
    #   <p>The date on which this image recipe was created.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags of the image recipe.</p>
    #
    #   @return [Hash<String, String>]
    #
    ImageRecipeSummary = ::Struct.new(
      :arn,
      :name,
      :platform,
      :owner,
      :parent_image,
      :date_created,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Image state shows the image status and the reason for that status.</p>
    #
    # @!attribute status
    #   <p>The status of the image.</p>
    #
    #   Enum, one of: ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the image's status.</p>
    #
    #   @return [String]
    #
    ImageState = ::Struct.new(
      :status,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImageStatus
    #
    module ImageStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      BUILDING = "BUILDING"

      # No documentation available.
      #
      TESTING = "TESTING"

      # No documentation available.
      #
      DISTRIBUTING = "DISTRIBUTING"

      # No documentation available.
      #
      INTEGRATING = "INTEGRATING"

      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      DEPRECATED = "DEPRECATED"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>An image summary.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Specifies whether this is an AMI or container image.</p>
    #
    #   Enum, one of: ["AMI", "DOCKER"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the image.</p>
    #
    #   Enum, one of: ["Windows", "Linux"]
    #
    #   @return [String]
    #
    # @!attribute os_version
    #   <p>The operating system version of the instance. For example, Amazon Linux 2, Ubuntu 18, or
    #   			Microsoft Windows Server 2019.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the image.</p>
    #
    #   @return [ImageState]
    #
    # @!attribute owner
    #   <p>The owner of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute date_created
    #   <p>The date on which this image was created.</p>
    #
    #   @return [String]
    #
    # @!attribute output_resources
    #   <p>The output resources produced when creating this image.</p>
    #
    #   @return [OutputResources]
    #
    # @!attribute tags
    #   <p>The tags of the image.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute build_type
    #   <p>Indicates the type of build that created this image. The build can be initiated
    #   			in the following ways:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <b>USER_INITIATED</b> – A manual
    #   					pipeline build request.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>SCHEDULED</b> – A pipeline build
    #   					initiated by a cron expression in the Image Builder pipeline, or from EventBridge.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>IMPORT</b> – A VM import created
    #   					the image to use as the base image for the recipe.</p>
    #   			         </li>
    #            </ul>
    #
    #   Enum, one of: ["USER_INITIATED", "SCHEDULED", "IMPORT"]
    #
    #   @return [String]
    #
    ImageSummary = ::Struct.new(
      :arn,
      :name,
      :type,
      :version,
      :platform,
      :os_version,
      :state,
      :owner,
      :date_created,
      :output_resources,
      :tags,
      :build_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configure image tests for your pipeline build. Tests run after building
    # 			the image, to verify that the AMI or container image is valid before
    # 			distributing it.</p>
    #
    # @!attribute image_tests_enabled
    #   <p>Determines if tests should run after building the image. Image Builder defaults
    #   			to enable tests to run following the image build, before image distribution.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute timeout_minutes
    #   <p>The maximum time in minutes that tests are permitted to run.</p>
    #
    #   @return [Integer]
    #
    ImageTestsConfiguration = ::Struct.new(
      :image_tests_enabled,
      :timeout_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImageType
    #
    module ImageType
      # No documentation available.
      #
      AMI = "AMI"

      # No documentation available.
      #
      DOCKER = "DOCKER"
    end

    # <p>The defining characteristics of a specific version of an Image Builder image.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of a specific version of an Image Builder image.</p>
    #   		       <note>
    #   			         <p>Semantic versioning is included in each object's Amazon Resource Name (ARN),
    #   	at the level that applies to that object as follows:</p>
    #   	           <ol>
    #                  <li>
    #   			               <p>Versionless ARNs and Name ARNs do not include specific values in any of the nodes. The nodes are
    #   				either left off entirely, or they are specified as wildcards, for example: x.x.x.</p>
    #   		             </li>
    #                  <li>
    #   			               <p>Version ARNs have only the first three nodes: <major>.<minor>.<patch></p>
    #   		             </li>
    #                  <li>
    #   			               <p>Build version ARNs have all four nodes, and point to a specific build for a specific version of an object.</p>
    #   		             </li>
    #               </ol>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of this specific version of an Image Builder image.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Specifies whether this image is an AMI or a container image.</p>
    #
    #   Enum, one of: ["AMI", "DOCKER"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Details for a specific version of an Image Builder image. This version follows the semantic version syntax.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   			         <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #   			         <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #   			         <p>
    #                  <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x)
    #   	to specify the most recent versions or nodes when selecting the base image or components for your
    #   	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be
    #   	wildcards.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the image version, for example "Windows" or "Linux".</p>
    #
    #   Enum, one of: ["Windows", "Linux"]
    #
    #   @return [String]
    #
    # @!attribute os_version
    #   <p>The operating system version of the Amazon EC2 build instance. For example, Amazon Linux 2, Ubuntu 18, or
    #   			Microsoft Windows Server 2019.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The owner of the image version.</p>
    #
    #   @return [String]
    #
    # @!attribute date_created
    #   <p>The date on which this specific version of the Image Builder image was created.</p>
    #
    #   @return [String]
    #
    # @!attribute build_type
    #   <p>Indicates the type of build that created this image. The build can be initiated
    #   			in the following ways:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <b>USER_INITIATED</b> – A manual
    #   					pipeline build request.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>SCHEDULED</b> – A pipeline build
    #   					initiated by a cron expression in the Image Builder pipeline, or from EventBridge.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>IMPORT</b> – A VM import created
    #   					the image to use as the base image for the recipe.</p>
    #   			         </li>
    #            </ul>
    #
    #   Enum, one of: ["USER_INITIATED", "SCHEDULED", "IMPORT"]
    #
    #   @return [String]
    #
    ImageVersion = ::Struct.new(
      :arn,
      :name,
      :type,
      :version,
      :platform,
      :os_version,
      :owner,
      :date_created,
      :build_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p> The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute semantic_version
    #   <p>The semantic version of the component. This version follows the semantic version syntax.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   			         <p>
    #                  <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x)
    #   	to specify the most recent versions or nodes when selecting the base image or components for your
    #   	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be
    #   	wildcards.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the component. Describes the contents of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute change_description
    #   <p>The change description of the component. Describes what change has been made in this
    #   			version, or what makes this version different from other versions of this component.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the component denotes whether the component is used to build the image, or only
    #   			to test it.</p>
    #
    #   Enum, one of: ["BUILD", "TEST"]
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the resource that you want to import as a component.</p>
    #
    #   Enum, one of: ["SHELL"]
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the component.</p>
    #
    #   Enum, one of: ["Windows", "Linux"]
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>The data of the component. Used to specify the data inline. Either <code>data</code> or
    #   			<code>uri</code> can be used to specify the data within the component.</p>
    #
    #   @return [String]
    #
    # @!attribute uri
    #   <p>The uri of the component. Must be an Amazon S3 URL and the requester must have permission to
    #   			access the Amazon S3 bucket. If you use Amazon S3, you can specify component content up to your service
    #   			quota. Either <code>data</code> or <code>uri</code> can be used to specify the data within the
    #   			component.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key that should be used to encrypt this component.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags of the component.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>The idempotency token of the component.</p>
    #
    #   @return [String]
    #
    ImportComponentInput = ::Struct.new(
      :name,
      :semantic_version,
      :description,
      :change_description,
      :type,
      :format,
      :platform,
      :data,
      :uri,
      :kms_key_id,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    # @!attribute component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the imported component.</p>
    #
    #   @return [String]
    #
    ImportComponentOutput = ::Struct.new(
      :request_id,
      :client_token,
      :component_build_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the base image that is created by the import process.</p>
    #
    #   @return [String]
    #
    # @!attribute semantic_version
    #   <p>The semantic version to attach to the base image that was created during the
    #   			import process. This version follows the semantic version syntax.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   			         <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #   			         <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the base image that is created by the import process.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The operating system platform for the imported VM.</p>
    #
    #   Enum, one of: ["Windows", "Linux"]
    #
    #   @return [String]
    #
    # @!attribute os_version
    #   <p>The operating system version for the imported VM.</p>
    #
    #   @return [String]
    #
    # @!attribute vm_import_task_id
    #   <p>The <code>importTaskId</code> (API) or <code>ImportTaskId</code> (CLI) from the
    #   			Amazon EC2 VM import process. Image Builder retrieves information from the import process to pull
    #   			in the AMI that is created from the VM source as the base image for your recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags that are attached to the import resources.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #
    #   @return [String]
    #
    ImportVmImageInput = ::Struct.new(
      :name,
      :semantic_version,
      :description,
      :platform,
      :os_version,
      :vm_import_task_id,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_arn
    #   <p>The Amazon Resource Name (ARN) of the AMI that was created during the VM
    #   			import process. This AMI is used as the base image for the recipe that
    #   			imported the VM.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token that was used for this request.</p>
    #
    #   @return [String]
    #
    ImportVmImageOutput = ::Struct.new(
      :request_id,
      :image_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of the infrastructure configuration.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the infrastructure configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the infrastructure configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_types
    #   <p>The instance types of the infrastructure configuration.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute instance_profile_name
    #   <p>The instance profile of the infrastructure configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_ids
    #   <p>The security group IDs of the infrastructure configuration.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_id
    #   <p>The subnet ID of the infrastructure configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute logging
    #   <p>The logging configuration of the infrastructure configuration.</p>
    #
    #   @return [Logging]
    #
    # @!attribute key_pair
    #   <p>The Amazon EC2 key pair of the infrastructure configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute terminate_instance_on_failure
    #   <p>The terminate instance on failure configuration of the infrastructure
    #   			configuration.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) for the SNS topic to which we send image build event notifications.</p>
    #   		       <note>
    #   			         <p>EC2 Image Builder is unable to send notifications to SNS topics that are encrypted using keys
    #   				from other accounts. The key that is used to encrypt the SNS topic must reside in the
    #   				account that the Image Builder service runs under.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute date_created
    #   <p>The date on which the infrastructure configuration was created.</p>
    #
    #   @return [String]
    #
    # @!attribute date_updated
    #   <p>The date on which the infrastructure configuration was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_tags
    #   <p>The tags attached to the resource created by Image Builder.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute instance_metadata_options
    #   <p>The instance metadata option settings for the infrastructure configuration.</p>
    #
    #   @return [InstanceMetadataOptions]
    #
    # @!attribute tags
    #   <p>The tags of the infrastructure configuration.</p>
    #
    #   @return [Hash<String, String>]
    #
    InfrastructureConfiguration = ::Struct.new(
      :arn,
      :name,
      :description,
      :instance_types,
      :instance_profile_name,
      :security_group_ids,
      :subnet_id,
      :logging,
      :key_pair,
      :terminate_instance_on_failure,
      :sns_topic_arn,
      :date_created,
      :date_updated,
      :resource_tags,
      :instance_metadata_options,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The infrastructure used when building Amazon EC2 AMIs.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the infrastructure configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the infrastructure configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute date_created
    #   <p>The date on which the infrastructure configuration was created.</p>
    #
    #   @return [String]
    #
    # @!attribute date_updated
    #   <p>The date on which the infrastructure configuration was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_tags
    #   <p>The tags attached to the image created by Image Builder.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>The tags of the infrastructure configuration.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute instance_types
    #   <p>The instance types of the infrastructure configuration.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute instance_profile_name
    #   <p>The instance profile of the infrastructure configuration.</p>
    #
    #   @return [String]
    #
    InfrastructureConfigurationSummary = ::Struct.new(
      :arn,
      :name,
      :description,
      :date_created,
      :date_updated,
      :resource_tags,
      :tags,
      :instance_types,
      :instance_profile_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines block device mappings for the instance used to configure your image.</p>
    #
    # @!attribute device_name
    #   <p>The device to which these mappings apply.</p>
    #
    #   @return [String]
    #
    # @!attribute ebs
    #   <p>Use to manage Amazon EBS-specific configuration for this mapping.</p>
    #
    #   @return [EbsInstanceBlockDeviceSpecification]
    #
    # @!attribute virtual_name
    #   <p>Use to manage instance ephemeral devices.</p>
    #
    #   @return [String]
    #
    # @!attribute no_device
    #   <p>Use to remove a mapping from the base image.</p>
    #
    #   @return [String]
    #
    InstanceBlockDeviceMapping = ::Struct.new(
      :device_name,
      :ebs,
      :virtual_name,
      :no_device,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a custom base AMI and block device mapping configurations of an instance
    # 			used for building and testing container images.</p>
    #
    # @!attribute image
    #   <p>The AMI ID to use as the base image for a container build and test instance. If not specified,
    #   			Image Builder will use the appropriate ECS-optimized AMI as a base image.</p>
    #
    #   @return [String]
    #
    # @!attribute block_device_mappings
    #   <p>Defines the block devices to attach for building an instance from this Image Builder AMI.</p>
    #
    #   @return [Array<InstanceBlockDeviceMapping>]
    #
    InstanceConfiguration = ::Struct.new(
      :image,
      :block_device_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The instance metadata options that apply to the HTTP requests that
    # 			pipeline builds use to launch EC2 build and test instances. For more
    # 			information about instance metadata options, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html">Configure
    # 				the instance metadata options</a> in the <i>
    #                <i>Amazon EC2 User Guide</i>
    #             </i>
    # 			for Linux instances, or <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/configuring-instance-metadata-options.html">Configure
    # 				the instance metadata options</a> in the <i>
    #                <i>Amazon EC2 Windows Guide</i>
    #             </i>
    # 			for Windows instances.</p>
    #
    # @!attribute http_tokens
    #   <p>Indicates whether a signed token header is required for instance metadata retrieval requests.
    #   			The values affect the response as follows:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <b>required</b> – When you retrieve the
    #   					IAM role credentials, version 2.0 credentials are returned in all cases.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>optional</b> – You can include a signed token header
    #   					in your request to retrieve instance metadata, or you can leave it out. If you
    #   					include it, version 2.0 credentials are returned for the IAM role. Otherwise,
    #   					version 1.0 credentials are returned.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>The default setting is <b>optional</b>.</p>
    #
    #   @return [String]
    #
    # @!attribute http_put_response_hop_limit
    #   <p>Limit the number of hops that an instance metadata request can traverse to reach its
    #   			destination.</p>
    #
    #   @return [Integer]
    #
    InstanceMetadataOptions = ::Struct.new(
      :http_tokens,
      :http_put_response_hop_limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have provided an invalid pagination token in your request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidPaginationTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have specified two or more mutually exclusive parameters. Review the error message for
    # 			details.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterCombinationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified parameter is invalid. Review the available parameters for the API
    # 			request.</p>
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

    # <p>The value that you provided for the specified parameter is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterValueException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have made a request for an action that is not supported by the service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your version number is out of bounds or does not follow the required syntax.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidVersionNumberException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration for a launch permission. The launch permission modification
    # 			request is sent to the <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html">Amazon EC2 ModifyImageAttribute</a>
    # 			API on behalf of the user for each Region they have selected to distribute the AMI. To make an AMI public,
    # 			set the launch permission authorized accounts to <code>all</code>. See the examples for making an AMI
    # 			public at <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html">Amazon EC2 ModifyImageAttribute</a>.</p>
    #
    # @!attribute user_ids
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute user_groups
    #   <p>The name of the group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute organization_arns
    #   <p>The ARN for an Amazon Web Services Organization that you want to share your AMI with. For more information, see
    #   			<a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html">What is Organizations?</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute organizational_unit_arns
    #   <p>The ARN for an Organizations organizational unit (OU) that you want to share your AMI with. For more
    #   			information about key concepts for Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html">Organizations terminology and concepts</a>.</p>
    #
    #   @return [Array<String>]
    #
    LaunchPermissionConfiguration = ::Struct.new(
      :user_ids,
      :user_groups,
      :organization_arns,
      :organizational_unit_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies an Amazon EC2 launch template to use for a specific account.</p>
    #
    # @!attribute launch_template_id
    #   <p>Identifies the Amazon EC2 launch template to use.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The account ID that this configuration applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute set_default_version
    #   <p>Set the specified Amazon EC2 launch template as the default launch template for the specified account.</p>
    #
    #   @return [Boolean]
    #
    LaunchTemplateConfiguration = ::Struct.new(
      :launch_template_id,
      :account_id,
      :set_default_version,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.set_default_version ||= false
      end
    end

    # @!attribute component_version_arn
    #   <p>The component version Amazon Resource Name (ARN) whose versions you want to list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum items to return in a request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    #   @return [String]
    #
    ListComponentBuildVersionsInput = ::Struct.new(
      :component_version_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute component_summary_list
    #   <p>The list of component summaries for the specified semantic version.</p>
    #
    #   @return [Array<ComponentSummary>]
    #
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this is not empty, there are additional
    #   			elements that the service has not included in this request. Use this token with the next
    #   			request to retrieve additional objects.</p>
    #
    #   @return [String]
    #
    ListComponentBuildVersionsOutput = ::Struct.new(
      :request_id,
      :component_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute owner
    #   <p>The owner defines which components you want to list. By default, this request will only
    #   			show components owned by your account. You can use this field to specify if you want to view
    #   			components owned by yourself, by Amazon, or those components that have been shared with you by
    #   			other customers.</p>
    #
    #   Enum, one of: ["Self", "Shared", "Amazon"]
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Use the following filters to streamline results:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>description</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>supportedOsVersion</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute by_name
    #   <p>Returns the list of component build versions for the specified name.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_results
    #   <p>The maximum items to return in a request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    #   @return [String]
    #
    ListComponentsInput = ::Struct.new(
      :owner,
      :filters,
      :by_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.by_name ||= false
      end
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute component_version_list
    #   <p>The list of component semantic versions.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   		       </note>
    #
    #   @return [Array<ComponentVersion>]
    #
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this is not empty, there are additional
    #   			elements that the service has not included in this request. Use this token with the next
    #   			request to retrieve additional objects.</p>
    #
    #   @return [String]
    #
    ListComponentsOutput = ::Struct.new(
      :request_id,
      :component_version_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute owner
    #   <p>Returns container recipes belonging to the specified owner, that have been shared with you. You can omit this field to return container recipes belonging to your account.</p>
    #
    #   Enum, one of: ["Self", "Shared", "Amazon"]
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Use the following filters to streamline results:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>containerType</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>parentImage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Provides a token for pagination, which determines where to begin the next set of results when the current set reaches the maximum for one request.</p>
    #
    #   @return [String]
    #
    ListContainerRecipesInput = ::Struct.new(
      :owner,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute container_recipe_summary_list
    #   <p>The list of container recipes returned for the request.</p>
    #
    #   @return [Array<ContainerRecipeSummary>]
    #
    # @!attribute next_token
    #   <p>The next token field is used for paginated responses. When this is not empty, there are additional container recipes that the service has not included in this response. Use this token with the next request to retrieve additional list items.</p>
    #
    #   @return [String]
    #
    ListContainerRecipesOutput = ::Struct.new(
      :request_id,
      :container_recipe_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>You can filter on <code>name</code> to streamline results.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_results
    #   <p>The maximum items to return in a request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    #   @return [String]
    #
    ListDistributionConfigurationsInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute distribution_configuration_summary_list
    #   <p>The list of distributions.</p>
    #
    #   @return [Array<DistributionConfigurationSummary>]
    #
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this is not empty, there are additional
    #   			elements that the service has not included in this request. Use this token with the next
    #   			request to retrieve additional objects.</p>
    #
    #   @return [String]
    #
    ListDistributionConfigurationsOutput = ::Struct.new(
      :request_id,
      :distribution_configuration_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image whose build versions you want to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Use the following filters to streamline results:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>osVersion</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_results
    #   <p>The maximum items to return in a request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    #   @return [String]
    #
    ListImageBuildVersionsInput = ::Struct.new(
      :image_version_arn,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_summary_list
    #   <p>The list of image build versions.</p>
    #
    #   @return [Array<ImageSummary>]
    #
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this is not empty, there are additional
    #   			elements that the service has not included in this request. Use this token with the next
    #   			request to retrieve additional objects.</p>
    #
    #   @return [String]
    #
    ListImageBuildVersionsOutput = ::Struct.new(
      :request_id,
      :image_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_build_version_arn
    #   <p>Filter results for the ListImagePackages request by the Image Build Version ARN</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maxiumum number of results to return from the ListImagePackages request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously truncated response.</p>
    #
    #   @return [String]
    #
    ListImagePackagesInput = ::Struct.new(
      :image_build_version_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_package_list
    #   <p>The list of Image Packages returned in the response.</p>
    #
    #   @return [Array<ImagePackage>]
    #
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously truncated response.</p>
    #
    #   @return [String]
    #
    ListImagePackagesOutput = ::Struct.new(
      :request_id,
      :image_package_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline whose images you want to view.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Use the following filters to streamline results:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_results
    #   <p>The maximum items to return in a request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    #   @return [String]
    #
    ListImagePipelineImagesInput = ::Struct.new(
      :image_pipeline_arn,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_summary_list
    #   <p>The list of images built by this pipeline.</p>
    #
    #   @return [Array<ImageSummary>]
    #
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this is not empty, there are additional
    #   			elements that the service has not included in this request. Use this token with the next
    #   			request to retrieve additional objects.</p>
    #
    #   @return [String]
    #
    ListImagePipelineImagesOutput = ::Struct.new(
      :request_id,
      :image_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>Use the following filters to streamline results:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>description</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>distributionConfigurationArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>imageRecipeArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>infrastructureConfigurationArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>status</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_results
    #   <p>The maximum items to return in a request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    #   @return [String]
    #
    ListImagePipelinesInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_pipeline_list
    #   <p>The list of image pipelines.</p>
    #
    #   @return [Array<ImagePipeline>]
    #
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this is not empty, there are additional
    #   			elements that the service has not included in this request. Use this token with the next
    #   			request to retrieve additional objects.</p>
    #
    #   @return [String]
    #
    ListImagePipelinesOutput = ::Struct.new(
      :request_id,
      :image_pipeline_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute owner
    #   <p>The owner defines which image recipes you want to list. By default, this request will only
    #   			show image recipes owned by your account. You can use this field to specify if you want to
    #   			view image recipes owned by yourself, by Amazon, or those image recipes that have been shared
    #   			with you by other customers.</p>
    #
    #   Enum, one of: ["Self", "Shared", "Amazon"]
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Use the following filters to streamline results:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>parentImage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_results
    #   <p>The maximum items to return in a request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    #   @return [String]
    #
    ListImageRecipesInput = ::Struct.new(
      :owner,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_recipe_summary_list
    #   <p>The list of image pipelines.</p>
    #
    #   @return [Array<ImageRecipeSummary>]
    #
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this is not empty, there are additional
    #   			elements that the service has not included in this request. Use this token with the next
    #   			request to retrieve additional objects.</p>
    #
    #   @return [String]
    #
    ListImageRecipesOutput = ::Struct.new(
      :request_id,
      :image_recipe_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute owner
    #   <p>The owner defines which images you want to list. By default, this request will only show
    #   			images owned by your account. You can use this field to specify if you want to view images
    #   			owned by yourself, by Amazon, or those images that have been shared with you by other
    #   			customers.</p>
    #
    #   Enum, one of: ["Self", "Shared", "Amazon"]
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Use the following filters to streamline results:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>osVersion</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute by_name
    #   <p>Requests a list of images with a specific recipe name.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_results
    #   <p>The maximum items to return in a request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    #   @return [String]
    #
    # @!attribute include_deprecated
    #   <p>Includes deprecated images in the response list.</p>
    #
    #   @return [Boolean]
    #
    ListImagesInput = ::Struct.new(
      :owner,
      :filters,
      :by_name,
      :max_results,
      :next_token,
      :include_deprecated,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.by_name ||= false
      end
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_version_list
    #   <p>The list of image semantic versions.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   			         <p>
    #                  <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x)
    #   	to specify the most recent versions or nodes when selecting the base image or components for your
    #   	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be
    #   	wildcards.</p>
    #   		       </note>
    #
    #   @return [Array<ImageVersion>]
    #
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this is not empty, there are additional
    #   			elements that the service has not included in this request. Use this token with the next
    #   			request to retrieve additional objects.</p>
    #
    #   @return [String]
    #
    ListImagesOutput = ::Struct.new(
      :request_id,
      :image_version_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>You can filter on <code>name</code> to streamline results.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_results
    #   <p>The maximum items to return in a request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    #   @return [String]
    #
    ListInfrastructureConfigurationsInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute infrastructure_configuration_summary_list
    #   <p>The list of infrastructure configurations.</p>
    #
    #   @return [Array<InfrastructureConfigurationSummary>]
    #
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this is not empty, there are additional
    #   			elements that the service has not included in this request. Use this token with the next
    #   			request to retrieve additional objects.</p>
    #
    #   @return [String]
    #
    ListInfrastructureConfigurationsOutput = ::Struct.new(
      :request_id,
      :infrastructure_configuration_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.</p>
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
    #   <p>The tags for the specified resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Logging configuration defines where Image Builder uploads your logs.</p>
    #
    # @!attribute s3_logs
    #   <p>The Amazon S3 logging configuration.</p>
    #
    #   @return [S3Logs]
    #
    Logging = ::Struct.new(
      :s3_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resources produced by this image.</p>
    #
    # @!attribute amis
    #   <p>The Amazon EC2 AMIs created by this image.</p>
    #
    #   @return [Array<Ami>]
    #
    # @!attribute containers
    #   <p>Container images that the pipeline has generated and stored in the output repository.</p>
    #
    #   @return [Array<Container>]
    #
    OutputResources = ::Struct.new(
      :amis,
      :containers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Ownership
    #
    module Ownership
      # No documentation available.
      #
      SELF = "Self"

      # No documentation available.
      #
      SHARED = "Shared"

      # No documentation available.
      #
      AMAZON = "Amazon"
    end

    # Includes enum constants for PipelineExecutionStartCondition
    #
    module PipelineExecutionStartCondition
      # No documentation available.
      #
      EXPRESSION_MATCH_ONLY = "EXPRESSION_MATCH_ONLY"

      # No documentation available.
      #
      EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE = "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"
    end

    # Includes enum constants for PipelineStatus
    #
    module PipelineStatus
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for Platform
    #
    module Platform
      # No documentation available.
      #
      WINDOWS = "Windows"

      # No documentation available.
      #
      LINUX = "Linux"
    end

    # @!attribute component_arn
    #   <p>The Amazon Resource Name (ARN) of the component that this policy should be applied to.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The policy to apply.</p>
    #
    #   @return [String]
    #
    PutComponentPolicyInput = ::Struct.new(
      :component_arn,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute component_arn
    #   <p>The Amazon Resource Name (ARN) of the component that this policy was applied to.</p>
    #
    #   @return [String]
    #
    PutComponentPolicyOutput = ::Struct.new(
      :request_id,
      :component_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that this policy should be applied to.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The policy to apply to the container recipe.</p>
    #
    #   @return [String]
    #
    PutContainerRecipePolicyInput = ::Struct.new(
      :container_recipe_arn,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that this policy was applied to.</p>
    #
    #   @return [String]
    #
    PutContainerRecipePolicyOutput = ::Struct.new(
      :request_id,
      :container_recipe_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_arn
    #   <p>The Amazon Resource Name (ARN) of the image that this policy should be applied to.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The policy to apply.</p>
    #
    #   @return [String]
    #
    PutImagePolicyInput = ::Struct.new(
      :image_arn,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_arn
    #   <p>The Amazon Resource Name (ARN) of the image that this policy was applied to.</p>
    #
    #   @return [String]
    #
    PutImagePolicyOutput = ::Struct.new(
      :request_id,
      :image_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that this policy should be applied to.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The policy to apply.</p>
    #
    #   @return [String]
    #
    PutImageRecipePolicyInput = ::Struct.new(
      :image_recipe_arn,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that this policy was applied to.</p>
    #
    #   @return [String]
    #
    PutImageRecipePolicyOutput = ::Struct.new(
      :request_id,
      :image_recipe_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource that you are trying to create already exists.</p>
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

    # <p>You have attempted to mutate or delete a resource with a dependency that prohibits this
    # 			action. See the error message for more details.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceDependencyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource that you are trying to operate on is currently in use. Review the message
    # 			details and retry later.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>At least one of the resources referenced by your request does not exist.</p>
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

    # <p>Properties that configure export from your build instance
    # 			to a compatible file format for your VM.</p>
    #
    # @!attribute role_name
    #   <p>The name of the role that grants VM Import/Export permission to
    #   			export images to your S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute disk_image_format
    #   <p>Export the updated image to one of the following supported disk
    #   			image formats:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <b>Virtual Hard Disk (VHD)</b> –
    #   					Compatible with Citrix Xen and Microsoft Hyper-V virtualization products.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>Stream-optimized ESX Virtual Machine Disk
    #   					(VMDK)</b> – Compatible with VMware ESX and
    #   					VMware vSphere versions 4, 5, and 6.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>Raw</b> – Raw format.</p>
    #   			         </li>
    #            </ul>
    #
    #   Enum, one of: ["VMDK", "RAW", "VHD"]
    #
    #   @return [String]
    #
    # @!attribute s3_bucket
    #   <p>The S3 bucket in which to store the output disk images for your VM.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_prefix
    #   <p>The Amazon S3 path for the bucket where the output disk images for your VM are stored.</p>
    #
    #   @return [String]
    #
    S3ExportConfiguration = ::Struct.new(
      :role_name,
      :disk_image_format,
      :s3_bucket,
      :s3_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon S3 logging configuration.</p>
    #
    # @!attribute s3_bucket_name
    #   <p>The S3 bucket in which to store the logs.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>The Amazon S3 path to the bucket where the logs are stored.</p>
    #
    #   @return [String]
    #
    S3Logs = ::Struct.new(
      :s3_bucket_name,
      :s3_key_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A schedule configures how often and when a pipeline will automatically create a new image.</p>
    #
    # @!attribute schedule_expression
    #   <p>The cron expression determines how often EC2 Image Builder evaluates your
    #   			<code>pipelineExecutionStartCondition</code>.</p>
    #   		       <p>For information on how to format a cron expression in Image Builder, see <a href="https://docs.aws.amazon.com/imagebuilder/latest/userguide/image-builder-cron.html">Use cron
    #   			expressions in EC2 Image Builder</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute timezone
    #   <p>The timezone that applies to the scheduling expression. For example, "Etc/UTC",
    #   			"America/Los_Angeles" in the <a href="https://www.joda.org/joda-time/timezones.html">IANA
    #   				timezone format</a>. If not specified this defaults to UTC.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_execution_start_condition
    #   <p>The condition configures when the pipeline should trigger a new image build. When the
    #   			<code>pipelineExecutionStartCondition</code> is set to
    #   			<code>EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE</code>, and you use semantic version
    #   			filters on the base image or components in your image recipe, EC2 Image Builder will build a
    #   			new image only when there are new versions of the image or components in your recipe that
    #   			match the semantic version filter. When it is set to <code>EXPRESSION_MATCH_ONLY</code>, it
    #   			will build a new image every time the CRON expression matches the current time. For semantic
    #   			version syntax, see <a href="https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_CreateComponent.html">CreateComponent</a> in the <i> EC2 Image Builder API
    #   					Reference</i>.</p>
    #
    #   Enum, one of: ["EXPRESSION_MATCH_ONLY", "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"]
    #
    #   @return [String]
    #
    Schedule = ::Struct.new(
      :schedule_expression,
      :timezone,
      :pipeline_execution_start_condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the service encounters an unrecoverable exception.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded the number of permitted resources or operations for this service. For service quotas, see <a href="https://docs.aws.amazon.com/general/latest/gr/imagebuilder.html#limits_imagebuilder">EC2 Image Builder endpoints and quotas</a>.</p>
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

    # <p>The service is unable to process your request at this time.</p>
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

    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that you want to manually invoke.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    StartImagePipelineExecutionInput = ::Struct.new(
      :image_pipeline_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image that was created by this request.</p>
    #
    #   @return [String]
    #
    StartImagePipelineExecutionOutput = ::Struct.new(
      :request_id,
      :client_token,
      :image_build_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains settings for the Systems Manager agent on your build instance.</p>
    #
    # @!attribute uninstall_after_build
    #   <p>Controls whether the Systems Manager agent is removed from your final build image, prior to creating
    #   			the new AMI. If this is set to true, then the agent is removed from the final image. If it's
    #   			set to false, then the agent is left in, so that it is included in the new AMI. The default
    #   			value is false.</p>
    #
    #   @return [Boolean]
    #
    SystemsManagerAgent = ::Struct.new(
      :uninstall_after_build,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to apply to the resource.</p>
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

    # <p>The container repository where the output container image is stored.</p>
    #
    # @!attribute service
    #   <p>Specifies the service in which this image was registered.</p>
    #
    #   Enum, one of: ["ECR"]
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the container repository where the output container image is stored. This name is prefixed by the repository location.</p>
    #
    #   @return [String]
    #
    TargetContainerRepository = ::Struct.new(
      :service,
      :repository_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys to remove from the resource.</p>
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

    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the distribution configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute distributions
    #   <p>The distributions of the distribution configuration.</p>
    #
    #   @return [Array<Distribution>]
    #
    # @!attribute client_token
    #   <p>The idempotency token of the distribution configuration.</p>
    #
    #   @return [String]
    #
    UpdateDistributionConfigurationInput = ::Struct.new(
      :distribution_configuration_arn,
      :description,
      :distributions,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that was updated by this
    #   			request.</p>
    #
    #   @return [String]
    #
    UpdateDistributionConfigurationOutput = ::Struct.new(
      :request_id,
      :client_token,
      :distribution_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the image pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that will be used to configure images
    #   			updated by this image pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container pipeline to update.</p>
    #
    #   @return [String]
    #
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that will be used to
    #   			build images updated by this image pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that will be used to
    #   			configure and distribute images updated by this image pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute image_tests_configuration
    #   <p>The image test configuration of the image pipeline.</p>
    #
    #   @return [ImageTestsConfiguration]
    #
    # @!attribute enhanced_image_metadata_enabled
    #   <p> Collects additional information about the image being created, including the operating
    #   			system (OS) version and package list. This information is used to enhance the overall
    #   			experience of using EC2 Image Builder. Enabled by default.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute schedule
    #   <p>The schedule of the image pipeline.</p>
    #
    #   @return [Schedule]
    #
    # @!attribute status
    #   <p>The status of the image pipeline.</p>
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    UpdateImagePipelineInput = ::Struct.new(
      :image_pipeline_arn,
      :description,
      :image_recipe_arn,
      :container_recipe_arn,
      :infrastructure_configuration_arn,
      :distribution_configuration_arn,
      :image_tests_configuration,
      :enhanced_image_metadata_enabled,
      :schedule,
      :status,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that was updated by this request.</p>
    #
    #   @return [String]
    #
    UpdateImagePipelineOutput = ::Struct.new(
      :request_id,
      :client_token,
      :image_pipeline_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that you want to
    #   			update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the infrastructure configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_types
    #   <p>The instance types of the infrastructure configuration. You can specify one or more
    #   			instance types to use for this build. The service will pick one of these instance types based
    #   			on availability.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute instance_profile_name
    #   <p>The instance profile to associate with the instance used to customize your Amazon EC2 AMI.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_ids
    #   <p>The security group IDs to associate with the instance used to customize your Amazon EC2 AMI.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_id
    #   <p>The subnet ID to place the instance used to customize your Amazon EC2 AMI in.</p>
    #
    #   @return [String]
    #
    # @!attribute logging
    #   <p>The logging configuration of the infrastructure configuration.</p>
    #
    #   @return [Logging]
    #
    # @!attribute key_pair
    #   <p>The key pair of the infrastructure configuration. You can use this to log on to and debug
    #   			the instance used to create your image.</p>
    #
    #   @return [String]
    #
    # @!attribute terminate_instance_on_failure
    #   <p>The terminate instance on failure setting of the infrastructure configuration. Set to
    #   			false if you want Image Builder to retain the instance used to configure your AMI if the build
    #   			or test phase of your workflow fails.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) for the SNS topic to which we send image build event notifications.</p>
    #   		       <note>
    #   			         <p>EC2 Image Builder is unable to send notifications to SNS topics that are encrypted using keys
    #   				from other accounts. The key that is used to encrypt the SNS topic must reside in the
    #   				account that the Image Builder service runs under.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_tags
    #   <p>The tags attached to the resource created by Image Builder.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute instance_metadata_options
    #   <p>The instance metadata options that you can set for the HTTP requests that pipeline builds
    #   			use to launch EC2 build and test instances. For more information about instance metadata
    #   			options, see one of the following links:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html">Configure
    #   					the instance metadata options</a> in the <i>
    #                        <i>Amazon EC2 User Guide</i>
    #                     </i>
    #   					for Linux instances.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/configuring-instance-metadata-options.html">Configure
    #   					the instance metadata options</a> in the <i>
    #                        <i>Amazon EC2 Windows Guide</i>
    #                     </i>
    #   					for Windows instances.</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [InstanceMetadataOptions]
    #
    UpdateInfrastructureConfigurationInput = ::Struct.new(
      :infrastructure_configuration_arn,
      :description,
      :instance_types,
      :instance_profile_name,
      :security_group_ids,
      :subnet_id,
      :logging,
      :key_pair,
      :terminate_instance_on_failure,
      :sns_topic_arn,
      :client_token,
      :resource_tags,
      :instance_metadata_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    #   @return [String]
    #
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that was updated by
    #   			this request.</p>
    #
    #   @return [String]
    #
    UpdateInfrastructureConfigurationOutput = ::Struct.new(
      :request_id,
      :client_token,
      :infrastructure_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
