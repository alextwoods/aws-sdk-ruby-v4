# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppStream
  module Types

    # <p>Describes an interface VPC endpoint (interface endpoint) that lets you create a private connection between the virtual private cloud (VPC) that you specify and AppStream 2.0. When you specify an interface endpoint for a stack, users of the stack can connect to AppStream 2.0 only through that endpoint. When you specify an interface endpoint for an image builder, administrators can connect to the image builder only through that endpoint.</p>
    #
    # @!attribute endpoint_type
    #   <p>The type of interface endpoint.</p>
    #
    #   Enum, one of: ["STREAMING"]
    #
    #   @return [String]
    #
    # @!attribute vpce_id
    #   <p>The identifier (ID) of the VPC in which the interface endpoint is used.</p>
    #
    #   @return [String]
    #
    AccessEndpoint = ::Struct.new(
      :endpoint_type,
      :vpce_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccessEndpointType
    #
    module AccessEndpointType
      # No documentation available.
      #
      STREAMING = "STREAMING"
    end

    # Includes enum constants for Action
    #
    module Action
      # No documentation available.
      #
      CLIPBOARD_COPY_FROM_LOCAL_DEVICE = "CLIPBOARD_COPY_FROM_LOCAL_DEVICE"

      # No documentation available.
      #
      CLIPBOARD_COPY_TO_LOCAL_DEVICE = "CLIPBOARD_COPY_TO_LOCAL_DEVICE"

      # No documentation available.
      #
      FILE_UPLOAD = "FILE_UPLOAD"

      # No documentation available.
      #
      FILE_DOWNLOAD = "FILE_DOWNLOAD"

      # No documentation available.
      #
      PRINTING_TO_LOCAL_DEVICE = "PRINTING_TO_LOCAL_DEVICE"

      # No documentation available.
      #
      DOMAIN_PASSWORD_SIGNIN = "DOMAIN_PASSWORD_SIGNIN"

      # No documentation available.
      #
      DOMAIN_SMART_CARD_SIGNIN = "DOMAIN_SMART_CARD_SIGNIN"
    end

    # <p>Describes an app block.</p>
    #          <p>App blocks are an Amazon AppStream 2.0 resource that stores the details about the
    #            virtual hard disk in an S3 bucket. It also stores the setup script with details about
    #            how to mount the virtual hard disk. The virtual hard disk includes the application
    #            binaries and other files necessary to launch your applications. Multiple applications
    #            can be assigned to a single app block.</p>
    #          <p>This is only supported for Elastic fleets.</p>
    #
    # @!attribute name
    #   <p>The name of the app block.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the app block.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the app block.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The display name of the app block.</p>
    #
    #   @return [String]
    #
    # @!attribute source_s3_location
    #   <p>The source S3 location of the app block.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute setup_script_details
    #   <p>The setup script details of the app block.</p>
    #
    #   @return [ScriptDetails]
    #
    # @!attribute created_time
    #   <p>The created time of the app block.</p>
    #
    #   @return [Time]
    #
    AppBlock = ::Struct.new(
      :name,
      :arn,
      :description,
      :display_name,
      :source_s3_location,
      :setup_script_details,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AppVisibility
    #
    module AppVisibility
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      ASSOCIATED = "ASSOCIATED"
    end

    # <p>Describes an application in the application catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The application name to display.</p>
    #
    #   @return [String]
    #
    # @!attribute icon_url
    #   <p>The URL for the application icon. This URL might be time-limited.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_path
    #   <p>The path to the application executable in the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_parameters
    #   <p>The arguments that are passed to the application at launch.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>If there is a problem, the application can be disabled after image creation.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute metadata
    #   <p>Additional attributes that describe the application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute working_directory
    #   <p>The working directory for the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute app_block_arn
    #   <p>The app block ARN of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute icon_s3_location
    #   <p>The S3 location of the application icon.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute platforms
    #   <p>The platforms on which the application can run.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute instance_families
    #   <p>The instance families for the application.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute created_time
    #   <p>The time at which the application was created within the app block.</p>
    #
    #   @return [Time]
    #
    Application = ::Struct.new(
      :name,
      :display_name,
      :icon_url,
      :launch_path,
      :launch_parameters,
      :enabled,
      :metadata,
      :working_directory,
      :description,
      :arn,
      :app_block_arn,
      :icon_s3_location,
      :platforms,
      :instance_families,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # Includes enum constants for ApplicationAttribute
    #
    module ApplicationAttribute
      # No documentation available.
      #
      LAUNCH_PARAMETERS = "LAUNCH_PARAMETERS"

      # No documentation available.
      #
      WORKING_DIRECTORY = "WORKING_DIRECTORY"
    end

    # <p>Describes the application fleet association.</p>
    #
    # @!attribute fleet_name
    #   <p>The name of the fleet associated with the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_arn
    #   <p>The ARN of the application associated with the fleet.</p>
    #
    #   @return [String]
    #
    ApplicationFleetAssociation = ::Struct.new(
      :fleet_name,
      :application_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The persistent application settings for users of a stack.</p>
    #
    # @!attribute enabled
    #   <p>Enables or disables persistent application settings for users during their streaming sessions. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute settings_group
    #   <p>The path prefix for the S3 bucket where users’ persistent application settings are stored. You can allow the same persistent application settings to be used across multiple stacks by specifying the same settings group for each stack. </p>
    #
    #   @return [String]
    #
    ApplicationSettings = ::Struct.new(
      :enabled,
      :settings_group,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>Describes the persistent application settings for users of a stack.</p>
    #
    # @!attribute enabled
    #   <p>Specifies whether persistent application settings are enabled for users during their streaming sessions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute settings_group
    #   <p>The path prefix for the S3 bucket where users’ persistent application settings are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The S3 bucket where users’ persistent application settings are stored. When persistent application settings are enabled for the first time for an account in an AWS Region, an S3 bucket is created. The bucket is unique to the AWS account and the Region.
    #           </p>
    #
    #   @return [String]
    #
    ApplicationSettingsResponse = ::Struct.new(
      :enabled,
      :settings_group,
      :s3_bucket_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # @!attribute fleet_name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute application_arn
    #   <p>The ARN of the application.</p>
    #
    #   @return [String]
    #
    AssociateApplicationFleetInput = ::Struct.new(
      :fleet_name,
      :application_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_fleet_association
    #   <p>If fleet name is specified, this returns the list of applications that are associated
    #               to it. If application ARN is specified, this returns the list of fleets to which it is
    #               associated.</p>
    #
    #   @return [ApplicationFleetAssociation]
    #
    AssociateApplicationFleetOutput = ::Struct.new(
      :application_fleet_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute entitlement_name
    #   <p>The name of the entitlement.</p>
    #
    #   @return [String]
    #
    # @!attribute application_identifier
    #   <p>The identifier of the application.</p>
    #
    #   @return [String]
    #
    AssociateApplicationToEntitlementInput = ::Struct.new(
      :stack_name,
      :entitlement_name,
      :application_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateApplicationToEntitlementOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_name
    #   <p>The name of the fleet. </p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>The name of the stack.</p>
    #
    #   @return [String]
    #
    AssociateFleetInput = ::Struct.new(
      :fleet_name,
      :stack_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateFleetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuthenticationType
    #
    module AuthenticationType
      # No documentation available.
      #
      API = "API"

      # No documentation available.
      #
      SAML = "SAML"

      # No documentation available.
      #
      USERPOOL = "USERPOOL"
    end

    # @!attribute user_stack_associations
    #   <p>The list of UserStackAssociation objects.</p>
    #
    #   @return [Array<UserStackAssociation>]
    #
    BatchAssociateUserStackInput = ::Struct.new(
      :user_stack_associations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>The list of UserStackAssociationError objects.</p>
    #
    #   @return [Array<UserStackAssociationError>]
    #
    BatchAssociateUserStackOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_stack_associations
    #   <p>The list of UserStackAssociation objects.</p>
    #
    #   @return [Array<UserStackAssociation>]
    #
    BatchDisassociateUserStackInput = ::Struct.new(
      :user_stack_associations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>The list of UserStackAssociationError objects.</p>
    #
    #   @return [Array<UserStackAssociationError>]
    #
    BatchDisassociateUserStackOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the capacity for a fleet.</p>
    #
    # @!attribute desired_instances
    #   <p>The desired number of streaming instances.</p>
    #
    #   @return [Integer]
    #
    ComputeCapacity = ::Struct.new(
      :desired_instances,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the capacity status for a fleet.</p>
    #
    # @!attribute desired
    #   <p>The desired number of streaming instances.</p>
    #
    #   @return [Integer]
    #
    # @!attribute running
    #   <p>The total number of simultaneous streaming instances that are running.</p>
    #
    #   @return [Integer]
    #
    # @!attribute in_use
    #   <p>The number of instances in use for streaming.</p>
    #
    #   @return [Integer]
    #
    # @!attribute available
    #   <p>The number of currently available instances that can be used to stream
    #               sessions.</p>
    #
    #   @return [Integer]
    #
    ComputeCapacityStatus = ::Struct.new(
      :desired,
      :running,
      :in_use,
      :available,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An API error occurred. Wait a few minutes and try again.</p>
    #
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_image_name
    #   <p>The name of the image to copy.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_image_name
    #   <p>The name that the image will have when it is copied to the destination.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_region
    #   <p>The destination region to which the image will be copied. This parameter is required, even if you are copying an image within the same region.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_image_description
    #   <p>The description that the image will have when it is copied to the destination.</p>
    #
    #   @return [String]
    #
    CopyImageInput = ::Struct.new(
      :source_image_name,
      :destination_image_name,
      :destination_region,
      :destination_image_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute destination_image_name
    #   <p>The name of the destination image.</p>
    #
    #   @return [String]
    #
    CopyImageOutput = ::Struct.new(
      :destination_image_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the app block.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the app block.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The display name of the app block. This is not displayed to the user.</p>
    #
    #   @return [String]
    #
    # @!attribute source_s3_location
    #   <p>The source S3 location of the app block.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute setup_script_details
    #   <p>The setup script details of the app block.</p>
    #
    #   @return [ScriptDetails]
    #
    # @!attribute tags
    #   <p>The tags assigned to the app block.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateAppBlockInput = ::Struct.new(
      :name,
      :description,
      :display_name,
      :source_s3_location,
      :setup_script_details,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_block
    #   <p>The app block.</p>
    #
    #   @return [AppBlock]
    #
    CreateAppBlockOutput = ::Struct.new(
      :app_block,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the application. This name is visible to users when display name is not specified.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The display name of the application. This name is visible to users in the application catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute icon_s3_location
    #   <p>The location in S3 of the application icon.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute launch_path
    #   <p>The launch path of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute working_directory
    #   <p>The working directory of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_parameters
    #   <p>The launch parameters of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute platforms
    #   <p>The platforms the application supports. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic fleets.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute instance_families
    #   <p>The instance families the application supports. Valid values are GENERAL_PURPOSE and GRAPHICS_G4.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute app_block_arn
    #   <p>The app block ARN to which the application should be associated</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the application.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateApplicationInput = ::Struct.new(
      :name,
      :display_name,
      :description,
      :icon_s3_location,
      :launch_path,
      :working_directory,
      :launch_parameters,
      :platforms,
      :instance_families,
      :app_block_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>Describes an application in the application catalog.</p>
    #
    #   @return [Application]
    #
    CreateApplicationOutput = ::Struct.new(
      :application,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_name
    #   <p>The fully qualified name of the directory (for example, corp.example.com).</p>
    #
    #   @return [String]
    #
    # @!attribute organizational_unit_distinguished_names
    #   <p>The distinguished names of the organizational units for computer accounts.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute service_account_credentials
    #   <p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>
    #
    #   @return [ServiceAccountCredentials]
    #
    CreateDirectoryConfigInput = ::Struct.new(
      :directory_name,
      :organizational_unit_distinguished_names,
      :service_account_credentials,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_config
    #   <p>Information about the directory configuration.</p>
    #
    #   @return [DirectoryConfig]
    #
    CreateDirectoryConfigOutput = ::Struct.new(
      :directory_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the entitlement.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the entitlement.</p>
    #
    #   @return [String]
    #
    # @!attribute app_visibility
    #   <p>Specifies whether all or selected apps are entitled.</p>
    #
    #   Enum, one of: ["ALL", "ASSOCIATED"]
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The attributes of the entitlement.</p>
    #
    #   @return [Array<EntitlementAttribute>]
    #
    CreateEntitlementInput = ::Struct.new(
      :name,
      :stack_name,
      :description,
      :app_visibility,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entitlement
    #   <p>The entitlement.</p>
    #
    #   @return [Entitlement]
    #
    CreateEntitlementOutput = ::Struct.new(
      :entitlement,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A unique name for the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute image_name
    #   <p>The name of the image used to create the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute image_arn
    #   <p>The ARN of the public, private, or shared image to use.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The instance type to use when launching fleet instances. The following instance types are available:</p>
    #           <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #            </ul>
    #           <p>The following instance types are available for Elastic fleets:</p>
    #           <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute fleet_type
    #   <p>The fleet type.</p>
    #           <dl>
    #               <dt>ALWAYS_ON</dt>
    #               <dd>
    #                       <p>Provides users with instant-on access to their apps.
    #                           You are charged for all running instances in your fleet, even if no users are streaming apps.</p>
    #                   </dd>
    #               <dt>ON_DEMAND</dt>
    #               <dd>
    #                       <p>Provide users with access to applications after they connect, which takes one to two minutes.
    #                           You are charged for instance streaming when users are connected and a
    #                           small hourly fee for instances that are not streaming apps.</p>
    #                   </dd>
    #            </dl>
    #
    #   Enum, one of: ["ALWAYS_ON", "ON_DEMAND", "ELASTIC"]
    #
    #   @return [String]
    #
    # @!attribute compute_capacity
    #   <p>The desired capacity for the fleet. This is not allowed for Elastic fleets. For Elastic fleets, specify MaxConcurrentSessions instead.</p>
    #
    #   @return [ComputeCapacity]
    #
    # @!attribute vpc_config
    #   <p>The VPC configuration for the fleet. This is required for Elastic fleets, but not required for other fleet types. Elastic fleets require that you specify at least two subnets in different availability zones.</p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute max_user_duration_in_seconds
    #   <p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.</p>
    #           <p>Specify a value between 600 and 360000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute disconnect_timeout_in_seconds
    #   <p>The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance. </p>
    #           <p>Specify a value between 60 and 360000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   <p>The description to display.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The fleet name to display.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_default_internet_access
    #   <p>Enables or disables default internet access for the fleet.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. This is not allowed for Elastic fleets. </p>
    #
    #   @return [DomainJoinInfo]
    #
    # @!attribute tags
    #   <p>The tags to associate with the fleet. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #
    #           <p>If you do not specify a value, the value is set to an empty string.</p>
    #
    #           <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #           <p>_ . : / = + \ - @</p>
    #
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute idle_disconnect_timeout_in_seconds
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected
    #               from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time
    #               interval begins. Users are notified before they are disconnected due to inactivity. If
    #               they try to reconnect to the streaming session before the time interval specified in
    #               <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their
    #               previous session. Users are considered idle when they stop providing keyboard or mouse
    #               input during their streaming session. File uploads and downloads, audio in, audio out,
    #               and pixels changing do not qualify as user activity. If users continue to be idle after
    #               the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are
    #               disconnected.</p>
    #           <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 3600. The default value is 0.</p>
    #           <note>
    #               <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_view
    #   <p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>
    #
    #           <p>The default value is <code>APP</code>.</p>
    #
    #   Enum, one of: ["APP", "DESKTOP"]
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The fleet platform. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic
    #               fleets. </p>
    #
    #   Enum, one of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #
    #   @return [String]
    #
    # @!attribute max_concurrent_sessions
    #   <p>The maximum concurrent sessions of the Elastic fleet. This is required for Elastic
    #               fleets, and not allowed for other fleet types.</p>
    #
    #   @return [Integer]
    #
    # @!attribute usb_device_filter_strings
    #   <p>The USB device filter strings that specify which USB devices a user can redirect to the fleet streaming session, when using the Windows native client. This is allowed but not required for Elastic fleets.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute session_script_s3_location
    #   <p>The S3 location of the session scripts configuration zip file. This only applies to Elastic fleets.</p>
    #
    #   @return [S3Location]
    #
    CreateFleetInput = ::Struct.new(
      :name,
      :image_name,
      :image_arn,
      :instance_type,
      :fleet_type,
      :compute_capacity,
      :vpc_config,
      :max_user_duration_in_seconds,
      :disconnect_timeout_in_seconds,
      :description,
      :display_name,
      :enable_default_internet_access,
      :domain_join_info,
      :tags,
      :idle_disconnect_timeout_in_seconds,
      :iam_role_arn,
      :stream_view,
      :platform,
      :max_concurrent_sessions,
      :usb_device_filter_strings,
      :session_script_s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet
    #   <p>Information about the fleet.</p>
    #
    #   @return [Fleet]
    #
    CreateFleetOutput = ::Struct.new(
      :fleet,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A unique name for the image builder.</p>
    #
    #   @return [String]
    #
    # @!attribute image_name
    #   <p>The name of the image used to create the image builder.</p>
    #
    #   @return [String]
    #
    # @!attribute image_arn
    #   <p>The ARN of the public, private, or shared image to use.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The instance type to use when launching the image builder. The following instance types are available:</p>
    #           <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description to display.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The image builder name to display.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>The VPC configuration for the image builder. You can specify only one subnet.</p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the image builder. To assume a role, the image builder calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_default_internet_access
    #   <p>Enables or disables default internet access for the image builder.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. </p>
    #
    #   @return [DomainJoinInfo]
    #
    # @!attribute appstream_agent_version
    #   <p>The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to associate with the image builder. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #
    #           <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #           <p>_ . : / = + \ - @</p>
    #
    #           <p>If you do not specify a value, the value is set to an empty string.</p>
    #
    #           <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Administrators can connect to the image builder only through the specified endpoints.</p>
    #
    #   @return [Array<AccessEndpoint>]
    #
    CreateImageBuilderInput = ::Struct.new(
      :name,
      :image_name,
      :image_arn,
      :instance_type,
      :description,
      :display_name,
      :vpc_config,
      :iam_role_arn,
      :enable_default_internet_access,
      :domain_join_info,
      :appstream_agent_version,
      :tags,
      :access_endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_builder
    #   <p>Information about the image builder.</p>
    #
    #   @return [ImageBuilder]
    #
    CreateImageBuilderOutput = ::Struct.new(
      :image_builder,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the image builder.</p>
    #
    #   @return [String]
    #
    # @!attribute validity
    #   <p>The time that the streaming URL will be valid, in seconds.
    #               Specify a value between 1 and 604800 seconds. The default is 3600 seconds.</p>
    #
    #   @return [Integer]
    #
    CreateImageBuilderStreamingURLInput = ::Struct.new(
      :name,
      :validity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute streaming_url
    #   <p>The URL to start the AppStream 2.0 streaming session.</p>
    #
    #   @return [String]
    #
    # @!attribute expires
    #   <p>The elapsed time, in seconds after the Unix epoch, when this URL expires.</p>
    #
    #   @return [Time]
    #
    CreateImageBuilderStreamingURLOutput = ::Struct.new(
      :streaming_url,
      :expires,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description to display.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The stack name to display.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_connectors
    #   <p>The storage connectors to enable.</p>
    #
    #   @return [Array<StorageConnector>]
    #
    # @!attribute redirect_url
    #   <p>The URL that users are redirected to after their streaming session ends.</p>
    #
    #   @return [String]
    #
    # @!attribute feedback_url
    #   <p>The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>
    #
    #   @return [String]
    #
    # @!attribute user_settings
    #   <p>The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled. </p>
    #
    #   @return [Array<UserSetting>]
    #
    # @!attribute application_settings
    #   <p>The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.</p>
    #
    #   @return [ApplicationSettings]
    #
    # @!attribute tags
    #   <p>The tags to associate with the stack. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #
    #           <p>If you do not specify a value, the value is set to an empty string.</p>
    #
    #           <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #           <p>_ . : / = + \ - @</p>
    #
    #           <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.</p>
    #
    #   @return [Array<AccessEndpoint>]
    #
    # @!attribute embed_host_domains
    #   <p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions. </p>
    #
    #   @return [Array<String>]
    #
    CreateStackInput = ::Struct.new(
      :name,
      :description,
      :display_name,
      :storage_connectors,
      :redirect_url,
      :feedback_url,
      :user_settings,
      :application_settings,
      :tags,
      :access_endpoints,
      :embed_host_domains,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack
    #   <p>Information about the stack.</p>
    #
    #   @return [Stack]
    #
    CreateStackOutput = ::Struct.new(
      :stack,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The identifier of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The name of the application to launch after the session starts. This is the name that you specified
    #               as <b>Name</b> in the Image Assistant. If your fleet is enabled for the <b>Desktop</b> stream view, you can also choose to launch directly to the operating system desktop. To do so, specify <b>Desktop</b>.</p>
    #
    #   @return [String]
    #
    # @!attribute validity
    #   <p>The time that the streaming URL will be valid, in seconds.
    #               Specify a value between 1 and 604800 seconds. The default is 60 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute session_context
    #   <p>The session context. For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/managing-stacks-fleets.html managing-stacks-fleets-parameters">Session Context</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    #   @return [String]
    #
    CreateStreamingURLInput = ::Struct.new(
      :stack_name,
      :fleet_name,
      :user_id,
      :application_id,
      :validity,
      :session_context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute streaming_url
    #   <p>The URL to start the AppStream 2.0 streaming session.</p>
    #
    #   @return [String]
    #
    # @!attribute expires
    #   <p>The elapsed time, in seconds after the Unix epoch, when this URL expires.</p>
    #
    #   @return [Time]
    #
    CreateStreamingURLOutput = ::Struct.new(
      :streaming_url,
      :expires,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute existing_image_name
    #   <p>The name of the image to update.</p>
    #
    #   @return [String]
    #
    # @!attribute new_image_name
    #   <p>The name of the new image. The name must be unique within the AWS account and Region.</p>
    #
    #   @return [String]
    #
    # @!attribute new_image_description
    #   <p>The description to display for the new image.</p>
    #
    #   @return [String]
    #
    # @!attribute new_image_display_name
    #   <p>The name to display for the new image.</p>
    #
    #   @return [String]
    #
    # @!attribute new_image_tags
    #   <p>The tags to associate with the new image. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #           <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #           <p>_ . : / = + \ - @</p>
    #           <p>If you do not specify a value, the value is set to an empty string.</p>
    #           <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute dry_run
    #   <p>Indicates whether to display the status of image update availability before AppStream 2.0 initiates the process of creating a new updated image. If this value is set to <code>true</code>, AppStream 2.0 displays whether image updates are available. If this value is set to <code>false</code>, AppStream 2.0 initiates the process of creating a new updated image without displaying whether image updates are available.</p>
    #
    #   @return [Boolean]
    #
    CreateUpdatedImageInput = ::Struct.new(
      :existing_image_name,
      :new_image_name,
      :new_image_description,
      :new_image_display_name,
      :new_image_tags,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.dry_run ||= false
      end

    end

    # @!attribute image
    #   <p>Describes an image.</p>
    #
    #   @return [Image]
    #
    # @!attribute can_update_image
    #   <p>Indicates whether a new image can be created.</p>
    #
    #   @return [Boolean]
    #
    CreateUpdatedImageOutput = ::Struct.new(
      :image,
      :can_update_image,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.can_update_image ||= false
      end

    end

    CreateUsageReportSubscriptionInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute s3_bucket_name
    #   <p>The Amazon S3 bucket where generated reports are stored.</p>
    #
    #               <p>If you enabled on-instance session scripts and Amazon S3 logging for your session script
    #               configuration, AppStream 2.0 created an S3 bucket to store the script output. The bucket is
    #               unique to your account and Region. When you enable usage reporting in this case, AppStream 2.0
    #               uses the same bucket to store your usage reports. If you haven't already enabled on-instance session scripts,
    #               when you enable usage reports, AppStream 2.0 creates a new S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>The schedule for generating usage reports.</p>
    #
    #   Enum, one of: ["DAILY"]
    #
    #   @return [String]
    #
    CreateUsageReportSubscriptionOutput = ::Struct.new(
      :s3_bucket_name,
      :schedule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_name
    #   <p>The email address of the user.</p>
    #
    #           <note>
    #               <p>Users' email addresses are case-sensitive. During login, if they specify an email address that doesn't use the same capitalization as the email address specified when their user pool account was created, a "user does not exist" error message displays.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute message_action
    #   <p>The action to take for the welcome email that is sent to a user after the user is created in the user pool. If you specify SUPPRESS, no email is sent. If you specify RESEND, do not specify the first name or last name of the user. If the value is null, the email is sent. </p>
    #
    #           <note>
    #               <p>The temporary password in the welcome email is valid for only 7 days. If users don’t set their passwords within 7 days, you must send them a new welcome email.</p>
    #            </note>
    #
    #   Enum, one of: ["SUPPRESS", "RESEND"]
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The first name, or given name, of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The last name, or surname, of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL. </p>
    #
    #   Enum, one of: ["API", "SAML", "USERPOOL"]
    #
    #   @return [String]
    #
    CreateUserInput = ::Struct.new(
      :user_name,
      :message_action,
      :first_name,
      :last_name,
      :authentication_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AppStream::Types::CreateUserInput "\
          "user_name=\"[SENSITIVE]\", "\
          "message_action=#{message_action || 'nil'}, "\
          "first_name=\"[SENSITIVE]\", "\
          "last_name=\"[SENSITIVE]\", "\
          "authentication_type=#{authentication_type || 'nil'}>"
      end
    end

    CreateUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the app block.</p>
    #
    #   @return [String]
    #
    DeleteAppBlockInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAppBlockOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    DeleteApplicationInput = ::Struct.new(
      :name,
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

    # @!attribute directory_name
    #   <p>The name of the directory configuration.</p>
    #
    #   @return [String]
    #
    DeleteDirectoryConfigInput = ::Struct.new(
      :directory_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDirectoryConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the entitlement.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #
    #   @return [String]
    #
    DeleteEntitlementInput = ::Struct.new(
      :name,
      :stack_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEntitlementOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    DeleteFleetInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFleetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the image builder.</p>
    #
    #   @return [String]
    #
    DeleteImageBuilderInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_builder
    #   <p>Information about the image builder.</p>
    #
    #   @return [ImageBuilder]
    #
    DeleteImageBuilderOutput = ::Struct.new(
      :image_builder,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the image.</p>
    #
    #   @return [String]
    #
    DeleteImageInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image
    #   <p>Information about the image.</p>
    #
    #   @return [Image]
    #
    DeleteImageOutput = ::Struct.new(
      :image,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the private image.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_account_id
    #   <p>The 12-digit identifier of the AWS account for which to delete image permissions.</p>
    #
    #   @return [String]
    #
    DeleteImagePermissionsInput = ::Struct.new(
      :name,
      :shared_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteImagePermissionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the stack.</p>
    #
    #   @return [String]
    #
    DeleteStackInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteStackOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteUsageReportSubscriptionInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteUsageReportSubscriptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_name
    #   <p>The email address of the user.</p>
    #
    #           <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL.</p>
    #
    #   Enum, one of: ["API", "SAML", "USERPOOL"]
    #
    #   @return [String]
    #
    DeleteUserInput = ::Struct.new(
      :user_name,
      :authentication_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AppStream::Types::DeleteUserInput "\
          "user_name=\"[SENSITIVE]\", "\
          "authentication_type=#{authentication_type || 'nil'}>"
      end
    end

    DeleteUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arns
    #   <p>The ARNs of the app blocks.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #
    #   @return [Integer]
    #
    DescribeAppBlocksInput = ::Struct.new(
      :arns,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_blocks
    #   <p>The app blocks in the list.</p>
    #
    #   @return [Array<AppBlock>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #
    #   @return [String]
    #
    DescribeAppBlocksOutput = ::Struct.new(
      :app_blocks,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute application_arn
    #   <p>The ARN of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #
    #   @return [String]
    #
    DescribeApplicationFleetAssociationsInput = ::Struct.new(
      :fleet_name,
      :application_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_fleet_associations
    #   <p>The application fleet associations in the list.</p>
    #
    #   @return [Array<ApplicationFleetAssociation>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #
    #   @return [String]
    #
    DescribeApplicationFleetAssociationsOutput = ::Struct.new(
      :application_fleet_associations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arns
    #   <p>The ARNs for the applications.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #
    #   @return [Integer]
    #
    DescribeApplicationsInput = ::Struct.new(
      :arns,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute applications
    #   <p>The applications in the list.</p>
    #
    #   @return [Array<Application>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #
    #   @return [String]
    #
    DescribeApplicationsOutput = ::Struct.new(
      :applications,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_names
    #   <p>The directory names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    DescribeDirectoryConfigsInput = ::Struct.new(
      :directory_names,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_configs
    #   <p>Information about the directory configurations. Note that although the response syntax in this topic includes the account password, this password is not returned in the actual response. </p>
    #
    #   @return [Array<DirectoryConfig>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    DescribeDirectoryConfigsOutput = ::Struct.new(
      :directory_configs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the entitlement.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #
    #   @return [Integer]
    #
    DescribeEntitlementsInput = ::Struct.new(
      :name,
      :stack_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entitlements
    #   <p>The entitlements.</p>
    #
    #   @return [Array<Entitlement>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #
    #   @return [String]
    #
    DescribeEntitlementsOutput = ::Struct.new(
      :entitlements,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute names
    #   <p>The names of the fleets to describe.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    DescribeFleetsInput = ::Struct.new(
      :names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleets
    #   <p>Information about the fleets.</p>
    #
    #   @return [Array<Fleet>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    DescribeFleetsOutput = ::Struct.new(
      :fleets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute names
    #   <p>The names of the image builders to describe.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    DescribeImageBuildersInput = ::Struct.new(
      :names,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_builders
    #   <p>Information about the image builders.</p>
    #
    #   @return [Array<ImageBuilder>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    DescribeImageBuildersOutput = ::Struct.new(
      :image_builders,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the private image for which to describe permissions. The image must be one that you own. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute shared_aws_account_ids
    #   <p>The 12-digit identifier of one or more AWS accounts with which the image is shared.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    DescribeImagePermissionsInput = ::Struct.new(
      :name,
      :max_results,
      :shared_aws_account_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the private image.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_image_permissions_list
    #   <p>The permissions for a private image that you own. </p>
    #
    #   @return [Array<SharedImagePermissions>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    DescribeImagePermissionsOutput = ::Struct.new(
      :name,
      :shared_image_permissions_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute names
    #   <p>The names of the public or private images to describe.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute arns
    #   <p>The ARNs of the public, private, and shared images to describe.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute type
    #   <p>The type of image (public, private, or shared) to describe. </p>
    #
    #   Enum, one of: ["PUBLIC", "PRIVATE", "SHARED"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #
    #   @return [Integer]
    #
    DescribeImagesInput = ::Struct.new(
      :names,
      :arns,
      :type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute images
    #   <p>Information about the images.</p>
    #
    #   @return [Array<Image>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    DescribeImagesOutput = ::Struct.new(
      :images,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack. This value is case-sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_name
    #   <p>The name of the fleet. This value is case-sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The user identifier (ID). If you specify a user ID, you must also specify the authentication type.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The size of each page of results. The default value is 20 and the maximum value is 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute authentication_type
    #   <p>The authentication method. Specify <code>API</code> for a user
    #               authenticated using a streaming URL or <code>SAML</code> for a SAML federated user.
    #               The default is to authenticate users using a streaming URL.</p>
    #
    #   Enum, one of: ["API", "SAML", "USERPOOL"]
    #
    #   @return [String]
    #
    DescribeSessionsInput = ::Struct.new(
      :stack_name,
      :fleet_name,
      :user_id,
      :next_token,
      :limit,
      :authentication_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sessions
    #   <p>Information about the streaming sessions.</p>
    #
    #   @return [Array<Session>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    DescribeSessionsOutput = ::Struct.new(
      :sessions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute names
    #   <p>The names of the stacks to describe.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    DescribeStacksInput = ::Struct.new(
      :names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stacks
    #   <p>Information about the stacks.</p>
    #
    #   @return [Array<Stack>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    DescribeStacksOutput = ::Struct.new(
      :stacks,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    DescribeUsageReportSubscriptionsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute usage_report_subscriptions
    #   <p>Information about the usage report subscription.</p>
    #
    #   @return [Array<UsageReportSubscription>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    DescribeUsageReportSubscriptionsOutput = ::Struct.new(
      :usage_report_subscriptions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack that is associated with the user.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The email address of the user who is associated with the stack.</p>
    #
    #           <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute authentication_type
    #   <p>The authentication type for the user who is associated with the stack. You must specify USERPOOL.</p>
    #
    #   Enum, one of: ["API", "SAML", "USERPOOL"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    DescribeUserStackAssociationsInput = ::Struct.new(
      :stack_name,
      :user_name,
      :authentication_type,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AppStream::Types::DescribeUserStackAssociationsInput "\
          "stack_name=#{stack_name || 'nil'}, "\
          "user_name=\"[SENSITIVE]\", "\
          "authentication_type=#{authentication_type || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=#{next_token || 'nil'}>"
      end
    end

    # @!attribute user_stack_associations
    #   <p>The UserStackAssociation objects.</p>
    #
    #   @return [Array<UserStackAssociation>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    DescribeUserStackAssociationsOutput = ::Struct.new(
      :user_stack_associations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_type
    #   <p>The authentication type for the users in the user pool to describe. You must specify USERPOOL.</p>
    #
    #   Enum, one of: ["API", "SAML", "USERPOOL"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    DescribeUsersInput = ::Struct.new(
      :authentication_type,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute users
    #   <p>Information about users in the user pool.</p>
    #
    #   @return [Array<User>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    DescribeUsersOutput = ::Struct.new(
      :users,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>
    #
    # @!attribute directory_name
    #   <p>The fully qualified name of the directory (for example, corp.example.com).</p>
    #
    #   @return [String]
    #
    # @!attribute organizational_unit_distinguished_names
    #   <p>The distinguished names of the organizational units for computer accounts.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute service_account_credentials
    #   <p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>
    #
    #   @return [ServiceAccountCredentials]
    #
    # @!attribute created_time
    #   <p>The time the directory configuration was created.</p>
    #
    #   @return [Time]
    #
    DirectoryConfig = ::Struct.new(
      :directory_name,
      :organizational_unit_distinguished_names,
      :service_account_credentials,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_name
    #   <p>The email address of the user.</p>
    #
    #           <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL.</p>
    #
    #   Enum, one of: ["API", "SAML", "USERPOOL"]
    #
    #   @return [String]
    #
    DisableUserInput = ::Struct.new(
      :user_name,
      :authentication_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AppStream::Types::DisableUserInput "\
          "user_name=\"[SENSITIVE]\", "\
          "authentication_type=#{authentication_type || 'nil'}>"
      end
    end

    DisableUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute application_arn
    #   <p>The ARN of the application.</p>
    #
    #   @return [String]
    #
    DisassociateApplicationFleetInput = ::Struct.new(
      :fleet_name,
      :application_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateApplicationFleetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #
    #   @return [String]
    #
    # @!attribute entitlement_name
    #   <p>The name of the entitlement.</p>
    #
    #   @return [String]
    #
    # @!attribute application_identifier
    #   <p>The identifier of the application to remove from the entitlement.</p>
    #
    #   @return [String]
    #
    DisassociateApplicationFromEntitlementInput = ::Struct.new(
      :stack_name,
      :entitlement_name,
      :application_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateApplicationFromEntitlementOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>The name of the stack.</p>
    #
    #   @return [String]
    #
    DisassociateFleetInput = ::Struct.new(
      :fleet_name,
      :stack_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateFleetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>
    #
    # @!attribute directory_name
    #   <p>The fully qualified name of the directory (for example, corp.example.com).</p>
    #
    #   @return [String]
    #
    # @!attribute organizational_unit_distinguished_name
    #   <p>The distinguished name of the organizational unit for computer accounts.</p>
    #
    #   @return [String]
    #
    DomainJoinInfo = ::Struct.new(
      :directory_name,
      :organizational_unit_distinguished_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_name
    #   <p>The email address of the user.</p>
    #
    #           <note>
    #               <p>Users' email addresses are case-sensitive. During login, if they specify an email address that doesn't use the same capitalization as the email address specified when their user pool account was created, a "user does not exist" error message displays. </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL.</p>
    #
    #   Enum, one of: ["API", "SAML", "USERPOOL"]
    #
    #   @return [String]
    #
    EnableUserInput = ::Struct.new(
      :user_name,
      :authentication_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AppStream::Types::EnableUserInput "\
          "user_name=\"[SENSITIVE]\", "\
          "authentication_type=#{authentication_type || 'nil'}>"
      end
    end

    EnableUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The application associated to an entitlement. Access is controlled based on user attributes.</p>
    #
    # @!attribute application_identifier
    #   <p>The identifier of the application.</p>
    #
    #   @return [String]
    #
    EntitledApplication = ::Struct.new(
      :application_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an entitlement. Entitlements control access to specific applications within
    #             a stack, based on user attributes. Entitlements apply to SAML 2.0 federated user
    #             identities. Amazon AppStream 2.0 user pool and streaming URL users are entitled to all
    #             applications in a stack. Entitlements don't apply to the desktop stream view
    #             application, or to applications managed by a dynamic app provider using the Dynamic
    #             Application Framework.</p>
    #
    # @!attribute name
    #   <p>The name of the entitlement.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the entitlement.</p>
    #
    #   @return [String]
    #
    # @!attribute app_visibility
    #   <p>Specifies whether all or selected apps are entitled.</p>
    #
    #   Enum, one of: ["ALL", "ASSOCIATED"]
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The attributes of the entitlement.</p>
    #
    #   @return [Array<EntitlementAttribute>]
    #
    # @!attribute created_time
    #   <p>The time when the entitlement was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>The time when the entitlement was last modified.</p>
    #
    #   @return [Time]
    #
    Entitlement = ::Struct.new(
      :name,
      :stack_name,
      :description,
      :app_visibility,
      :attributes,
      :created_time,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The entitlement already exists.</p>
    #
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #
    #   @return [String]
    #
    EntitlementAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An attribute associated with an entitlement. Application entitlements work by matching
    #             a supported SAML 2.0 attribute name to a value when a user identity federates to an
    #             Amazon AppStream 2.0 SAML application.</p>
    #
    # @!attribute name
    #   <p>A supported AWS IAM SAML <code>PrincipalTag</code> attribute that is matched to the
    #               associated value when a user identity federates into an Amazon AppStream 2.0 SAML
    #               application.</p>
    #           <p>The following are valid values:</p>
    #           <ul>
    #               <li>
    #                  <p>roles</p>
    #               </li>
    #               <li>
    #                  <p>department </p>
    #               </li>
    #               <li>
    #                  <p>organization </p>
    #               </li>
    #               <li>
    #                  <p>groups </p>
    #               </li>
    #               <li>
    #                  <p>title </p>
    #               </li>
    #               <li>
    #                  <p>costCenter </p>
    #               </li>
    #               <li>
    #                  <p>userType</p>
    #               </li>
    #            </ul>
    #           <p> </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A value that is matched to a supported SAML attribute name when a user identity
    #               federates into an Amazon AppStream 2.0 SAML application. </p>
    #
    #   @return [String]
    #
    EntitlementAttribute = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The entitlement can't be found.</p>
    #
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #
    #   @return [String]
    #
    EntitlementNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_id
    #   <p>The identifier of the streaming session.</p>
    #
    #   @return [String]
    #
    ExpireSessionInput = ::Struct.new(
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ExpireSessionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a fleet.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The fleet name to display.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description to display.</p>
    #
    #   @return [String]
    #
    # @!attribute image_name
    #   <p>The name of the image used to create the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute image_arn
    #   <p>The ARN for the public, private, or shared image.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The instance type to use when launching fleet instances. The following instance types are available:</p>
    #           <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute fleet_type
    #   <p>The fleet type.</p>
    #           <dl>
    #               <dt>ALWAYS_ON</dt>
    #               <dd>
    #                       <p>Provides users with instant-on access to their apps.
    #                           You are charged for all running instances in your fleet, even if no users are streaming apps.</p>
    #                   </dd>
    #               <dt>ON_DEMAND</dt>
    #               <dd>
    #                       <p>Provide users with access to applications after they connect, which takes one to two minutes.
    #                           You are charged for instance streaming when users are connected and a
    #                           small hourly fee for instances that are not streaming apps.</p>
    #                   </dd>
    #            </dl>
    #
    #   Enum, one of: ["ALWAYS_ON", "ON_DEMAND", "ELASTIC"]
    #
    #   @return [String]
    #
    # @!attribute compute_capacity_status
    #   <p>The capacity status for the fleet.</p>
    #
    #   @return [ComputeCapacityStatus]
    #
    # @!attribute max_user_duration_in_seconds
    #   <p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance. </p>
    #           <p>Specify a value between 600 and 360000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute disconnect_timeout_in_seconds
    #   <p>The amount of time that a streaming session remains active after users disconnect. If they try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance.</p>
    #           <p>Specify a value between 60 and 360000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>The current state for the fleet.</p>
    #
    #   Enum, one of: ["STARTING", "RUNNING", "STOPPING", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>The VPC configuration for the fleet.</p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute created_time
    #   <p>The time the fleet was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute fleet_errors
    #   <p>The fleet errors.</p>
    #
    #   @return [Array<FleetError>]
    #
    # @!attribute enable_default_internet_access
    #   <p>Indicates whether default internet access is enabled for the fleet.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. </p>
    #
    #   @return [DomainJoinInfo]
    #
    # @!attribute idle_disconnect_timeout_in_seconds
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected
    #               from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time
    #               interval begins. Users are notified before they are disconnected due to inactivity. If
    #               users try to reconnect to the streaming session before the time interval specified in
    #               <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their
    #               previous session. Users are considered idle when they stop providing keyboard or mouse
    #               input during their streaming session. File uploads and downloads, audio in, audio out,
    #               and pixels changing do not qualify as user activity. If users continue to be idle after
    #               the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are
    #               disconnected.</p>
    #           <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 3600. The default value is 0.</p>
    #
    #           <note>
    #               <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role that is applied to the fleet. To assume a role, the fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_view
    #   <p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>
    #
    #           <p>The default value is <code>APP</code>.</p>
    #
    #   Enum, one of: ["APP", "DESKTOP"]
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the fleet.</p>
    #
    #   Enum, one of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #
    #   @return [String]
    #
    # @!attribute max_concurrent_sessions
    #   <p>The maximum number of concurrent sessions for the fleet.</p>
    #
    #   @return [Integer]
    #
    # @!attribute usb_device_filter_strings
    #   <p>The USB device filter strings associated with the fleet.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute session_script_s3_location
    #   <p>The S3 location of the session scripts configuration zip file. This only applies to Elastic fleets.</p>
    #
    #   @return [S3Location]
    #
    Fleet = ::Struct.new(
      :arn,
      :name,
      :display_name,
      :description,
      :image_name,
      :image_arn,
      :instance_type,
      :fleet_type,
      :compute_capacity_status,
      :max_user_duration_in_seconds,
      :disconnect_timeout_in_seconds,
      :state,
      :vpc_config,
      :created_time,
      :fleet_errors,
      :enable_default_internet_access,
      :domain_join_info,
      :idle_disconnect_timeout_in_seconds,
      :iam_role_arn,
      :stream_view,
      :platform,
      :max_concurrent_sessions,
      :usb_device_filter_strings,
      :session_script_s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FleetAttribute
    #
    module FleetAttribute
      # No documentation available.
      #
      VPC_CONFIGURATION = "VPC_CONFIGURATION"

      # No documentation available.
      #
      VPC_CONFIGURATION_SECURITY_GROUP_IDS = "VPC_CONFIGURATION_SECURITY_GROUP_IDS"

      # No documentation available.
      #
      DOMAIN_JOIN_INFO = "DOMAIN_JOIN_INFO"

      # No documentation available.
      #
      IAM_ROLE_ARN = "IAM_ROLE_ARN"

      # No documentation available.
      #
      USB_DEVICE_FILTER_STRINGS = "USB_DEVICE_FILTER_STRINGS"

      # No documentation available.
      #
      SESSION_SCRIPT_S3_LOCATION = "SESSION_SCRIPT_S3_LOCATION"
    end

    # <p>Describes a fleet error.</p>
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    FleetError = ::Struct.new(
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FleetErrorCode
    #
    module FleetErrorCode
      # No documentation available.
      #
      IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION = "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION"

      # No documentation available.
      #
      IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION = "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION"

      # No documentation available.
      #
      IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION = "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION"

      # No documentation available.
      #
      NETWORK_INTERFACE_LIMIT_EXCEEDED = "NETWORK_INTERFACE_LIMIT_EXCEEDED"

      # No documentation available.
      #
      INTERNAL_SERVICE_ERROR = "INTERNAL_SERVICE_ERROR"

      # No documentation available.
      #
      IAM_SERVICE_ROLE_IS_MISSING = "IAM_SERVICE_ROLE_IS_MISSING"

      # No documentation available.
      #
      MACHINE_ROLE_IS_MISSING = "MACHINE_ROLE_IS_MISSING"

      # No documentation available.
      #
      STS_DISABLED_IN_REGION = "STS_DISABLED_IN_REGION"

      # No documentation available.
      #
      SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES = "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES"

      # No documentation available.
      #
      IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION = "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION"

      # No documentation available.
      #
      SUBNET_NOT_FOUND = "SUBNET_NOT_FOUND"

      # No documentation available.
      #
      IMAGE_NOT_FOUND = "IMAGE_NOT_FOUND"

      # No documentation available.
      #
      INVALID_SUBNET_CONFIGURATION = "INVALID_SUBNET_CONFIGURATION"

      # No documentation available.
      #
      SECURITY_GROUPS_NOT_FOUND = "SECURITY_GROUPS_NOT_FOUND"

      # No documentation available.
      #
      IGW_NOT_ATTACHED = "IGW_NOT_ATTACHED"

      # No documentation available.
      #
      IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION = "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION"

      # No documentation available.
      #
      FLEET_STOPPED = "FLEET_STOPPED"

      # No documentation available.
      #
      FLEET_INSTANCE_PROVISIONING_FAILURE = "FLEET_INSTANCE_PROVISIONING_FAILURE"

      # No documentation available.
      #
      DOMAIN_JOIN_ERROR_FILE_NOT_FOUND = "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND"

      # No documentation available.
      #
      DOMAIN_JOIN_ERROR_ACCESS_DENIED = "DOMAIN_JOIN_ERROR_ACCESS_DENIED"

      # No documentation available.
      #
      DOMAIN_JOIN_ERROR_LOGON_FAILURE = "DOMAIN_JOIN_ERROR_LOGON_FAILURE"

      # No documentation available.
      #
      DOMAIN_JOIN_ERROR_INVALID_PARAMETER = "DOMAIN_JOIN_ERROR_INVALID_PARAMETER"

      # No documentation available.
      #
      DOMAIN_JOIN_ERROR_MORE_DATA = "DOMAIN_JOIN_ERROR_MORE_DATA"

      # No documentation available.
      #
      DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN = "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN"

      # No documentation available.
      #
      DOMAIN_JOIN_ERROR_NOT_SUPPORTED = "DOMAIN_JOIN_ERROR_NOT_SUPPORTED"

      # No documentation available.
      #
      DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME = "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME"

      # No documentation available.
      #
      DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED = "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED"

      # No documentation available.
      #
      DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED = "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED"

      # No documentation available.
      #
      DOMAIN_JOIN_NERR_PASSWORD_EXPIRED = "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED"

      # No documentation available.
      #
      DOMAIN_JOIN_INTERNAL_SERVICE_ERROR = "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"
    end

    # Includes enum constants for FleetState
    #
    module FleetState
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
      STOPPED = "STOPPED"
    end

    # Includes enum constants for FleetType
    #
    module FleetType
      # No documentation available.
      #
      ALWAYS_ON = "ALWAYS_ON"

      # No documentation available.
      #
      ON_DEMAND = "ON_DEMAND"

      # No documentation available.
      #
      ELASTIC = "ELASTIC"
    end

    # <p>Describes an image.</p>
    #
    # @!attribute name
    #   <p>The name of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute base_image_arn
    #   <p>The ARN of the image from which this image was created.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The image name to display.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The image starts in the <code>PENDING</code> state. If image creation succeeds, the
    #               state is <code>AVAILABLE</code>. If image creation fails, the state is <code>FAILED</code>.</p>
    #
    #   Enum, one of: ["PENDING", "AVAILABLE", "FAILED", "COPYING", "DELETING", "CREATING", "IMPORTING"]
    #
    #   @return [String]
    #
    # @!attribute visibility
    #   <p>Indicates whether the image is public or private.</p>
    #
    #   Enum, one of: ["PUBLIC", "PRIVATE", "SHARED"]
    #
    #   @return [String]
    #
    # @!attribute image_builder_supported
    #   <p>Indicates whether an image builder can be launched from this image.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute image_builder_name
    #   <p>The name of the image builder that was used to create the private image. If the image is shared, this value is null.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The operating system platform of the image.</p>
    #
    #   Enum, one of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description to display.</p>
    #
    #   @return [String]
    #
    # @!attribute state_change_reason
    #   <p>The reason why the last state change occurred.</p>
    #
    #   @return [ImageStateChangeReason]
    #
    # @!attribute applications
    #   <p>The applications associated with the image.</p>
    #
    #   @return [Array<Application>]
    #
    # @!attribute created_time
    #   <p>The time the image was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute public_base_image_released_date
    #   <p>The release date of the public base image.
    #               For private images, this date is the release date of the base image from which the image was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute appstream_agent_version
    #   <p>The version of the AppStream 2.0 agent to use for instances that are launched from this image. </p>
    #
    #   @return [String]
    #
    # @!attribute image_permissions
    #   <p>The permissions to provide to the destination AWS account for the specified image.</p>
    #
    #   @return [ImagePermissions]
    #
    # @!attribute image_errors
    #   <p>Describes the errors that are returned when a new image can't be created.</p>
    #
    #   @return [Array<ResourceError>]
    #
    Image = ::Struct.new(
      :name,
      :arn,
      :base_image_arn,
      :display_name,
      :state,
      :visibility,
      :image_builder_supported,
      :image_builder_name,
      :platform,
      :description,
      :state_change_reason,
      :applications,
      :created_time,
      :public_base_image_released_date,
      :appstream_agent_version,
      :image_permissions,
      :image_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.image_builder_supported ||= false
      end

    end

    # <p>Describes a virtual machine that is used to create an image. </p>
    #
    # @!attribute name
    #   <p>The name of the image builder.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN for the image builder.</p>
    #
    #   @return [String]
    #
    # @!attribute image_arn
    #   <p>The ARN of the image from which this builder was created.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description to display.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The image builder name to display.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>The VPC configuration of the image builder.</p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute instance_type
    #   <p>The instance type for the image builder. The following instance types are available:</p>
    #               <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The operating system platform of the image builder.</p>
    #
    #   Enum, one of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role that is applied to the image builder. To assume a role, the image builder calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the image builder.</p>
    #
    #   Enum, one of: ["PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"]
    #
    #   @return [String]
    #
    # @!attribute state_change_reason
    #   <p>The reason why the last state change occurred.</p>
    #
    #   @return [ImageBuilderStateChangeReason]
    #
    # @!attribute created_time
    #   <p>The time stamp when the image builder was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute enable_default_internet_access
    #   <p>Enables or disables default internet access for the image builder.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. </p>
    #
    #   @return [DomainJoinInfo]
    #
    # @!attribute network_access_configuration
    #   <p>Describes the network details of the fleet or image builder instance.</p>
    #
    #   @return [NetworkAccessConfiguration]
    #
    # @!attribute image_builder_errors
    #   <p>The image builder errors.</p>
    #
    #   @return [Array<ResourceError>]
    #
    # @!attribute appstream_agent_version
    #   <p>The version of the AppStream 2.0 agent that is currently being used by the image builder. </p>
    #
    #   @return [String]
    #
    # @!attribute access_endpoints
    #   <p>The list of virtual private cloud (VPC) interface endpoint objects. Administrators can connect to the image builder only through the specified endpoints.</p>
    #
    #   @return [Array<AccessEndpoint>]
    #
    ImageBuilder = ::Struct.new(
      :name,
      :arn,
      :image_arn,
      :description,
      :display_name,
      :vpc_config,
      :instance_type,
      :platform,
      :iam_role_arn,
      :state,
      :state_change_reason,
      :created_time,
      :enable_default_internet_access,
      :domain_join_info,
      :network_access_configuration,
      :image_builder_errors,
      :appstream_agent_version,
      :access_endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImageBuilderState
    #
    module ImageBuilderState
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      UPDATING_AGENT = "UPDATING_AGENT"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      REBOOTING = "REBOOTING"

      # No documentation available.
      #
      SNAPSHOTTING = "SNAPSHOTTING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      PENDING_QUALIFICATION = "PENDING_QUALIFICATION"
    end

    # <p>Describes the reason why the last image builder state change occurred.</p>
    #
    # @!attribute code
    #   <p>The state change reason code.</p>
    #
    #   Enum, one of: ["INTERNAL_ERROR", "IMAGE_UNAVAILABLE"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The state change reason message.</p>
    #
    #   @return [String]
    #
    ImageBuilderStateChangeReason = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImageBuilderStateChangeReasonCode
    #
    module ImageBuilderStateChangeReasonCode
      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      IMAGE_UNAVAILABLE = "IMAGE_UNAVAILABLE"
    end

    # <p>Describes the permissions for an image. </p>
    #
    # @!attribute allow_fleet
    #   <p>Indicates whether the image can be used for a fleet.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute allow_image_builder
    #   <p>Indicates whether the image can be used for an image builder.</p>
    #
    #   @return [Boolean]
    #
    ImagePermissions = ::Struct.new(
      :allow_fleet,
      :allow_image_builder,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImageState
    #
    module ImageState
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      COPYING = "COPYING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      IMPORTING = "IMPORTING"
    end

    # <p>Describes the reason why the last image state change occurred.</p>
    #
    # @!attribute code
    #   <p>The state change reason code.</p>
    #
    #   Enum, one of: ["INTERNAL_ERROR", "IMAGE_BUILDER_NOT_AVAILABLE", "IMAGE_COPY_FAILURE"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The state change reason message.</p>
    #
    #   @return [String]
    #
    ImageStateChangeReason = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImageStateChangeReasonCode
    #
    module ImageStateChangeReasonCode
      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      IMAGE_BUILDER_NOT_AVAILABLE = "IMAGE_BUILDER_NOT_AVAILABLE"

      # No documentation available.
      #
      IMAGE_COPY_FAILURE = "IMAGE_COPY_FAILURE"
    end

    # <p>The image can't be updated because it's not compatible for updates.</p>
    #
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #
    #   @return [String]
    #
    IncompatibleImageException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource cannot be created because your AWS account is suspended. For assistance, contact AWS Support. </p>
    #
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #
    #   @return [String]
    #
    InvalidAccountStatusException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates an incorrect combination of parameters, or a missing parameter.</p>
    #
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #
    #   @return [String]
    #
    InvalidParameterCombinationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified role is invalid.</p>
    #
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #
    #   @return [String]
    #
    InvalidRoleException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the error that is returned when a usage report can't be generated.</p>
    #
    # @!attribute error_code
    #   <p>The error code for the error that is returned when a usage report can't be generated.</p>
    #
    #   Enum, one of: ["RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message for the error that is returned when a usage report can't be generated.</p>
    #
    #   @return [String]
    #
    LastReportGenerationExecutionError = ::Struct.new(
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested limit exceeds the permitted limit for an account.</p>
    #
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    ListAssociatedFleetsInput = ::Struct.new(
      :stack_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute names
    #   <p>The name of the fleet.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    ListAssociatedFleetsOutput = ::Struct.new(
      :names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    ListAssociatedStacksInput = ::Struct.new(
      :fleet_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute names
    #   <p>The name of the stack.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    ListAssociatedStacksOutput = ::Struct.new(
      :names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #
    #   @return [String]
    #
    # @!attribute entitlement_name
    #   <p>The name of the entitlement.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #
    #   @return [Integer]
    #
    ListEntitledApplicationsInput = ::Struct.new(
      :stack_name,
      :entitlement_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entitled_applications
    #   <p>The entitled applications.</p>
    #
    #   @return [Array<EntitledApplication>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    #   @return [String]
    #
    ListEntitledApplicationsOutput = ::Struct.new(
      :entitled_applications,
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
    #   <p>The information about the tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MessageAction
    #
    module MessageAction
      # No documentation available.
      #
      SUPPRESS = "SUPPRESS"

      # No documentation available.
      #
      RESEND = "RESEND"
    end

    # <p>Describes the network details of the fleet or image builder instance.</p>
    #
    # @!attribute eni_private_ip_address
    #   <p>The private IP address of the elastic network interface that is attached to instances in your VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute eni_id
    #   <p>The resource identifier of the elastic network interface that is attached to instances in your VPC. All network interfaces have the eni-xxxxxxxx resource identifier.</p>
    #
    #   @return [String]
    #
    NetworkAccessConfiguration = ::Struct.new(
      :eni_private_ip_address,
      :eni_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The attempted operation is not permitted.</p>
    #
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #
    #   @return [String]
    #
    OperationNotPermittedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Permission
    #
    module Permission
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for PlatformType
    #
    module PlatformType
      # No documentation available.
      #
      WINDOWS = "WINDOWS"

      # No documentation available.
      #
      WINDOWS_SERVER_2016 = "WINDOWS_SERVER_2016"

      # No documentation available.
      #
      WINDOWS_SERVER_2019 = "WINDOWS_SERVER_2019"

      # No documentation available.
      #
      AMAZON_LINUX2 = "AMAZON_LINUX2"
    end

    # <p>AppStream 2.0 can’t process the request right now because the Describe calls from your AWS account are being throttled by Amazon EC2. Try again later.</p>
    #
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #
    #   @return [String]
    #
    RequestLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource already exists.</p>
    #
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #
    #   @return [String]
    #
    ResourceAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a resource error.</p>
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    # @!attribute error_timestamp
    #   <p>The time the error occurred.</p>
    #
    #   @return [Time]
    #
    ResourceError = ::Struct.new(
      :error_code,
      :error_message,
      :error_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource is in use.</p>
    #
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource exists and is not in use, but isn't available.</p>
    #
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #
    #   @return [String]
    #
    ResourceNotAvailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource was not found.</p>
    #
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the S3 location.</p>
    #
    # @!attribute s3_bucket
    #   <p>The S3 bucket of the S3 object.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key
    #   <p>The S3 key of the S3 object.</p>
    #
    #   @return [String]
    #
    S3Location = ::Struct.new(
      :s3_bucket,
      :s3_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the details of the script.</p>
    #
    # @!attribute script_s3_location
    #   <p>The S3 object location for the script.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute executable_path
    #   <p>The run path for the script.</p>
    #
    #   @return [String]
    #
    # @!attribute executable_parameters
    #   <p>The runtime parameters passed to the run path for the script.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout_in_seconds
    #   <p>The run timeout, in seconds, for the script.</p>
    #
    #   @return [Integer]
    #
    ScriptDetails = ::Struct.new(
      :script_s3_location,
      :executable_path,
      :executable_parameters,
      :timeout_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the credentials for the service account used by the fleet or image builder to connect to the directory.</p>
    #
    # @!attribute account_name
    #   <p>The user name of the account. This account must have the following privileges: create computer objects,
    #               join computers to the domain, and change/reset the password on descendant computer objects for the
    #               organizational units specified.</p>
    #
    #   @return [String]
    #
    # @!attribute account_password
    #   <p>The password for the account.</p>
    #
    #   @return [String]
    #
    ServiceAccountCredentials = ::Struct.new(
      :account_name,
      :account_password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AppStream::Types::ServiceAccountCredentials "\
          "account_name=\"[SENSITIVE]\", "\
          "account_password=\"[SENSITIVE]\">"
      end
    end

    # <p>Describes a streaming session.</p>
    #
    # @!attribute id
    #   <p>The identifier of the streaming session.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The identifier of the user for whom the session was created.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>The name of the stack for the streaming session.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_name
    #   <p>The name of the fleet for the streaming session.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the streaming session.</p>
    #
    #   Enum, one of: ["ACTIVE", "PENDING", "EXPIRED"]
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>Specifies whether a user is connected to the streaming session.</p>
    #
    #   Enum, one of: ["CONNECTED", "NOT_CONNECTED"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time when a streaming instance is dedicated for the user.</p>
    #
    #   @return [Time]
    #
    # @!attribute max_expiration_time
    #   <p>The time when the streaming session is set to expire. This time is based on the <code>MaxUserDurationinSeconds</code> value, which determines the maximum length of time that a streaming session can run. A streaming session might end earlier than the time specified in <code>SessionMaxExpirationTime</code>, when the <code>DisconnectTimeOutInSeconds</code> elapses or the user chooses to end his or her session. If the <code>DisconnectTimeOutInSeconds</code> elapses, or the user chooses to end his or her session, the streaming instance is terminated and the streaming session ends.</p>
    #
    #   @return [Time]
    #
    # @!attribute authentication_type
    #   <p>The authentication method. The user is authenticated using a streaming URL
    #               (<code>API</code>) or SAML 2.0 federation (<code>SAML</code>).</p>
    #
    #   Enum, one of: ["API", "SAML", "USERPOOL"]
    #
    #   @return [String]
    #
    # @!attribute network_access_configuration
    #   <p>The network details for the streaming session.</p>
    #
    #   @return [NetworkAccessConfiguration]
    #
    Session = ::Struct.new(
      :id,
      :user_id,
      :stack_name,
      :fleet_name,
      :state,
      :connection_state,
      :start_time,
      :max_expiration_time,
      :authentication_type,
      :network_access_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SessionConnectionState
    #
    module SessionConnectionState
      # No documentation available.
      #
      CONNECTED = "CONNECTED"

      # No documentation available.
      #
      NOT_CONNECTED = "NOT_CONNECTED"
    end

    # Includes enum constants for SessionState
    #
    module SessionState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"
    end

    # <p>Describes the permissions that are available to the specified AWS account for a shared image.</p>
    #
    # @!attribute shared_account_id
    #   <p>The 12-digit identifier of the AWS account with which the image is shared.</p>
    #
    #   @return [String]
    #
    # @!attribute image_permissions
    #   <p>Describes the permissions for a shared image.</p>
    #
    #   @return [ImagePermissions]
    #
    SharedImagePermissions = ::Struct.new(
      :shared_account_id,
      :image_permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a stack.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description to display.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The stack name to display.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time the stack was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute storage_connectors
    #   <p>The storage connectors to enable.</p>
    #
    #   @return [Array<StorageConnector>]
    #
    # @!attribute redirect_url
    #   <p>The URL that users are redirected to after their streaming session ends.</p>
    #
    #   @return [String]
    #
    # @!attribute feedback_url
    #   <p>The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_errors
    #   <p>The errors for the stack.</p>
    #
    #   @return [Array<StackError>]
    #
    # @!attribute user_settings
    #   <p>The actions that are enabled or disabled for users during their streaming sessions. By default these actions are enabled.</p>
    #
    #   @return [Array<UserSetting>]
    #
    # @!attribute application_settings
    #   <p>The persistent application settings for users of the stack.</p>
    #
    #   @return [ApplicationSettingsResponse]
    #
    # @!attribute access_endpoints
    #   <p>The list of virtual private cloud (VPC) interface endpoint objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints. </p>
    #
    #   @return [Array<AccessEndpoint>]
    #
    # @!attribute embed_host_domains
    #   <p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions.</p>
    #
    #   @return [Array<String>]
    #
    Stack = ::Struct.new(
      :arn,
      :name,
      :description,
      :display_name,
      :created_time,
      :storage_connectors,
      :redirect_url,
      :feedback_url,
      :stack_errors,
      :user_settings,
      :application_settings,
      :access_endpoints,
      :embed_host_domains,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StackAttribute
    #
    module StackAttribute
      # No documentation available.
      #
      STORAGE_CONNECTORS = "STORAGE_CONNECTORS"

      # No documentation available.
      #
      STORAGE_CONNECTOR_HOMEFOLDERS = "STORAGE_CONNECTOR_HOMEFOLDERS"

      # No documentation available.
      #
      STORAGE_CONNECTOR_GOOGLE_DRIVE = "STORAGE_CONNECTOR_GOOGLE_DRIVE"

      # No documentation available.
      #
      STORAGE_CONNECTOR_ONE_DRIVE = "STORAGE_CONNECTOR_ONE_DRIVE"

      # No documentation available.
      #
      REDIRECT_URL = "REDIRECT_URL"

      # No documentation available.
      #
      FEEDBACK_URL = "FEEDBACK_URL"

      # No documentation available.
      #
      THEME_NAME = "THEME_NAME"

      # No documentation available.
      #
      USER_SETTINGS = "USER_SETTINGS"

      # No documentation available.
      #
      EMBED_HOST_DOMAINS = "EMBED_HOST_DOMAINS"

      # No documentation available.
      #
      IAM_ROLE_ARN = "IAM_ROLE_ARN"

      # No documentation available.
      #
      ACCESS_ENDPOINTS = "ACCESS_ENDPOINTS"
    end

    # <p>Describes a stack error.</p>
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    StackError = ::Struct.new(
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StackErrorCode
    #
    module StackErrorCode
      # No documentation available.
      #
      STORAGE_CONNECTOR_ERROR = "STORAGE_CONNECTOR_ERROR"

      # No documentation available.
      #
      INTERNAL_SERVICE_ERROR = "INTERNAL_SERVICE_ERROR"
    end

    # @!attribute name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    StartFleetInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartFleetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the image builder.</p>
    #
    #   @return [String]
    #
    # @!attribute appstream_agent_version
    #   <p>The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. </p>
    #
    #   @return [String]
    #
    StartImageBuilderInput = ::Struct.new(
      :name,
      :appstream_agent_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_builder
    #   <p>Information about the image builder.</p>
    #
    #   @return [ImageBuilder]
    #
    StartImageBuilderOutput = ::Struct.new(
      :image_builder,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    StopFleetInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopFleetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the image builder.</p>
    #
    #   @return [String]
    #
    StopImageBuilderInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_builder
    #   <p>Information about the image builder.</p>
    #
    #   @return [ImageBuilder]
    #
    StopImageBuilderOutput = ::Struct.new(
      :image_builder,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a connector that enables persistent storage for users.</p>
    #
    # @!attribute connector_type
    #   <p>The type of storage connector.</p>
    #
    #   Enum, one of: ["HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"]
    #
    #   @return [String]
    #
    # @!attribute resource_identifier
    #   <p>The ARN of the storage connector.</p>
    #
    #   @return [String]
    #
    # @!attribute domains
    #   <p>The names of the domains for the account.</p>
    #
    #   @return [Array<String>]
    #
    StorageConnector = ::Struct.new(
      :connector_type,
      :resource_identifier,
      :domains,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StorageConnectorType
    #
    module StorageConnectorType
      # No documentation available.
      #
      HOMEFOLDERS = "HOMEFOLDERS"

      # No documentation available.
      #
      GOOGLE_DRIVE = "GOOGLE_DRIVE"

      # No documentation available.
      #
      ONE_DRIVE = "ONE_DRIVE"
    end

    # Includes enum constants for StreamView
    #
    module StreamView
      # No documentation available.
      #
      APP = "APP"

      # No documentation available.
      #
      DESKTOP = "DESKTOP"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to associate. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #
    #           <p>If you do not specify a value, the value is set to an empty string.</p>
    #
    #           <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #           <p>_ . : / = + \ - @</p>
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
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys for the tags to disassociate.</p>
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
    #   <p>The name of the application. This name is visible to users when display name is not specified.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The display name of the application. This name is visible to users in the application catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute icon_s3_location
    #   <p>The icon S3 location of the application.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute launch_path
    #   <p>The launch path of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute working_directory
    #   <p>The working directory of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_parameters
    #   <p>The launch parameters of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute app_block_arn
    #   <p>The ARN of the app block.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes_to_delete
    #   <p>The attributes to delete for an application.</p>
    #
    #   @return [Array<String>]
    #
    UpdateApplicationInput = ::Struct.new(
      :name,
      :display_name,
      :description,
      :icon_s3_location,
      :launch_path,
      :working_directory,
      :launch_parameters,
      :app_block_arn,
      :attributes_to_delete,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>Describes an application in the application catalog.</p>
    #
    #   @return [Application]
    #
    UpdateApplicationOutput = ::Struct.new(
      :application,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_name
    #   <p>The name of the Directory Config object.</p>
    #
    #   @return [String]
    #
    # @!attribute organizational_unit_distinguished_names
    #   <p>The distinguished names of the organizational units for computer accounts.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute service_account_credentials
    #   <p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>
    #
    #   @return [ServiceAccountCredentials]
    #
    UpdateDirectoryConfigInput = ::Struct.new(
      :directory_name,
      :organizational_unit_distinguished_names,
      :service_account_credentials,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_config
    #   <p>Information about the Directory Config object.</p>
    #
    #   @return [DirectoryConfig]
    #
    UpdateDirectoryConfigOutput = ::Struct.new(
      :directory_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the entitlement.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the entitlement.</p>
    #
    #   @return [String]
    #
    # @!attribute app_visibility
    #   <p>Specifies whether all or only selected apps are entitled.</p>
    #
    #   Enum, one of: ["ALL", "ASSOCIATED"]
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The attributes of the entitlement.</p>
    #
    #   @return [Array<EntitlementAttribute>]
    #
    UpdateEntitlementInput = ::Struct.new(
      :name,
      :stack_name,
      :description,
      :app_visibility,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entitlement
    #   <p>The entitlement.</p>
    #
    #   @return [Entitlement]
    #
    UpdateEntitlementOutput = ::Struct.new(
      :entitlement,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_name
    #   <p>The name of the image used to create the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute image_arn
    #   <p>The ARN of the public, private, or shared image to use.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A unique name for the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The instance type to use when launching fleet instances. The following instance types are available:</p>
    #           <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #            </ul>
    #           <p>The following instance types are available for Elastic fleets:</p>
    #           <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute compute_capacity
    #   <p>The desired capacity for the fleet. This is not allowed for Elastic fleets.</p>
    #
    #   @return [ComputeCapacity]
    #
    # @!attribute vpc_config
    #   <p>The VPC configuration for the fleet. This is required for Elastic fleets, but not required for other fleet types. Elastic fleets require that you specify at least two subnets in different availability zones. </p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute max_user_duration_in_seconds
    #   <p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.</p>
    #           <p>Specify a value between 600 and 360000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute disconnect_timeout_in_seconds
    #   <p>The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance. </p>
    #           <p>Specify a value between 60 and 360000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute delete_vpc_config
    #   <p>Deletes the VPC association for the specified fleet.</p>
    #
    #   @deprecated
    #
    #   @return [Boolean]
    #
    # @!attribute description
    #   <p>The description to display.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The fleet name to display.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_default_internet_access
    #   <p>Enables or disables default internet access for the fleet.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. </p>
    #
    #   @return [DomainJoinInfo]
    #
    # @!attribute idle_disconnect_timeout_in_seconds
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected
    #               from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time
    #               interval begins. Users are notified before they are disconnected due to inactivity. If
    #               users try to reconnect to the streaming session before the time interval specified in
    #               <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their
    #               previous session. Users are considered idle when they stop providing keyboard or mouse
    #               input during their streaming session. File uploads and downloads, audio in, audio out,
    #               and pixels changing do not qualify as user activity. If users continue to be idle after
    #               the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are
    #               disconnected. </p>
    #           <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 3600. The default value is 0.</p>
    #
    #           <note>
    #               <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute attributes_to_delete
    #   <p>The fleet attributes to delete.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_view
    #   <p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>
    #
    #           <p>The default value is <code>APP</code>.</p>
    #
    #   Enum, one of: ["APP", "DESKTOP"]
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the fleet. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic fleets. </p>
    #
    #   Enum, one of: ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #
    #   @return [String]
    #
    # @!attribute max_concurrent_sessions
    #   <p>The maximum number of concurrent sessions for a fleet.</p>
    #
    #   @return [Integer]
    #
    # @!attribute usb_device_filter_strings
    #   <p>The USB device filter strings that specify which USB devices a user can redirect to the fleet streaming session, when using the Windows native client. This is allowed but not required for Elastic fleets.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute session_script_s3_location
    #   <p>The S3 location of the session scripts configuration zip file. This only applies to Elastic fleets. </p>
    #
    #   @return [S3Location]
    #
    UpdateFleetInput = ::Struct.new(
      :image_name,
      :image_arn,
      :name,
      :instance_type,
      :compute_capacity,
      :vpc_config,
      :max_user_duration_in_seconds,
      :disconnect_timeout_in_seconds,
      :delete_vpc_config,
      :description,
      :display_name,
      :enable_default_internet_access,
      :domain_join_info,
      :idle_disconnect_timeout_in_seconds,
      :attributes_to_delete,
      :iam_role_arn,
      :stream_view,
      :platform,
      :max_concurrent_sessions,
      :usb_device_filter_strings,
      :session_script_s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.delete_vpc_config ||= false
      end

    end

    # @!attribute fleet
    #   <p>Information about the fleet.</p>
    #
    #   @return [Fleet]
    #
    UpdateFleetOutput = ::Struct.new(
      :fleet,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the private image.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_account_id
    #   <p>The 12-digit identifier of the AWS account for which you want add or update image permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute image_permissions
    #   <p>The permissions for the image.</p>
    #
    #   @return [ImagePermissions]
    #
    UpdateImagePermissionsInput = ::Struct.new(
      :name,
      :shared_account_id,
      :image_permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateImagePermissionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute display_name
    #   <p>The stack name to display.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description to display.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_connectors
    #   <p>The storage connectors to enable.</p>
    #
    #   @return [Array<StorageConnector>]
    #
    # @!attribute delete_storage_connectors
    #   <p>Deletes the storage connectors currently enabled for the stack.</p>
    #
    #   @deprecated
    #
    #   @return [Boolean]
    #
    # @!attribute redirect_url
    #   <p>The URL that users are redirected to after their streaming session ends.</p>
    #
    #   @return [String]
    #
    # @!attribute feedback_url
    #   <p>The URL that users are redirected to after they choose the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes_to_delete
    #   <p>The stack attributes to delete.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute user_settings
    #   <p>The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled.</p>
    #
    #   @return [Array<UserSetting>]
    #
    # @!attribute application_settings
    #   <p>The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.</p>
    #
    #   @return [ApplicationSettings]
    #
    # @!attribute access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.</p>
    #
    #   @return [Array<AccessEndpoint>]
    #
    # @!attribute embed_host_domains
    #   <p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions. </p>
    #
    #   @return [Array<String>]
    #
    UpdateStackInput = ::Struct.new(
      :display_name,
      :description,
      :name,
      :storage_connectors,
      :delete_storage_connectors,
      :redirect_url,
      :feedback_url,
      :attributes_to_delete,
      :user_settings,
      :application_settings,
      :access_endpoints,
      :embed_host_domains,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.delete_storage_connectors ||= false
      end

    end

    # @!attribute stack
    #   <p>Information about the stack.</p>
    #
    #   @return [Stack]
    #
    UpdateStackOutput = ::Struct.new(
      :stack,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UsageReportExecutionErrorCode
    #
    module UsageReportExecutionErrorCode
      # No documentation available.
      #
      RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND"

      # No documentation available.
      #
      ACCESS_DENIED = "ACCESS_DENIED"

      # No documentation available.
      #
      INTERNAL_SERVICE_ERROR = "INTERNAL_SERVICE_ERROR"
    end

    # Includes enum constants for UsageReportSchedule
    #
    module UsageReportSchedule
      # No documentation available.
      #
      DAILY = "DAILY"
    end

    # <p>Describes information about the usage report subscription.</p>
    #
    # @!attribute s3_bucket_name
    #   <p>The Amazon S3 bucket where generated reports are stored.</p>
    #
    #           <p>If you enabled on-instance session scripts and Amazon S3 logging for your session script
    #               configuration, AppStream 2.0 created an S3 bucket to store the script output. The bucket is
    #               unique to your account and Region. When you enable usage reporting in this case, AppStream 2.0
    #               uses the same bucket to store your usage reports. If you haven't already enabled on-instance session scripts,
    #               when you enable usage reports, AppStream 2.0 creates a new S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>The schedule for generating usage reports.</p>
    #
    #   Enum, one of: ["DAILY"]
    #
    #   @return [String]
    #
    # @!attribute last_generated_report_date
    #   <p>The time when the last usage report was generated.</p>
    #
    #   @return [Time]
    #
    # @!attribute subscription_errors
    #   <p>The errors that were returned if usage reports couldn't be generated.</p>
    #
    #   @return [Array<LastReportGenerationExecutionError>]
    #
    UsageReportSubscription = ::Struct.new(
      :s3_bucket_name,
      :schedule,
      :last_generated_report_date,
      :subscription_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a user in the user pool.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The email address of the user.</p>
    #
    #           <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether the user in the user pool is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>The status of the user in the user pool. The status can be one of the following:</p>
    #           <ul>
    #               <li>
    #                  <p>UNCONFIRMED – The user is created but not confirmed.</p>
    #               </li>
    #               <li>
    #                  <p>CONFIRMED – The user is confirmed.</p>
    #               </li>
    #               <li>
    #                  <p>ARCHIVED – The user is no longer active.</p>
    #               </li>
    #               <li>
    #                  <p>COMPROMISED – The user is disabled because of a potential security threat.</p>
    #               </li>
    #               <li>
    #                  <p>UNKNOWN – The user status is not known.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The first name, or given name, of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The last name, or surname, of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time the user was created in the user pool.</p>
    #
    #   @return [Time]
    #
    # @!attribute authentication_type
    #   <p>The authentication type for the user.</p>
    #
    #   Enum, one of: ["API", "SAML", "USERPOOL"]
    #
    #   @return [String]
    #
    User = ::Struct.new(
      :arn,
      :user_name,
      :enabled,
      :status,
      :first_name,
      :last_name,
      :created_time,
      :authentication_type,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::AppStream::Types::User "\
          "arn=#{arn || 'nil'}, "\
          "user_name=\"[SENSITIVE]\", "\
          "enabled=#{enabled || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "first_name=\"[SENSITIVE]\", "\
          "last_name=\"[SENSITIVE]\", "\
          "created_time=#{created_time || 'nil'}, "\
          "authentication_type=#{authentication_type || 'nil'}>"
      end
    end

    # <p>Describes an action and whether the action is enabled or disabled for users during their streaming sessions.</p>
    #
    # @!attribute action
    #   <p>The action that is enabled or disabled.</p>
    #
    #   Enum, one of: ["CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE", "DOMAIN_PASSWORD_SIGNIN", "DOMAIN_SMART_CARD_SIGNIN"]
    #
    #   @return [String]
    #
    # @!attribute permission
    #   <p>Indicates whether the action is enabled or disabled.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    UserSetting = ::Struct.new(
      :action,
      :permission,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a user in the user pool and the associated stack.</p>
    #
    # @!attribute stack_name
    #   <p>The name of the stack that is associated with the user.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The email address of the user who is associated with the stack.</p>
    #
    #           <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute authentication_type
    #   <p>The authentication type for the user.</p>
    #
    #   Enum, one of: ["API", "SAML", "USERPOOL"]
    #
    #   @return [String]
    #
    # @!attribute send_email_notification
    #   <p>Specifies whether a welcome email is sent to a user after the user is created in the user pool.</p>
    #
    #   @return [Boolean]
    #
    UserStackAssociation = ::Struct.new(
      :stack_name,
      :user_name,
      :authentication_type,
      :send_email_notification,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.send_email_notification ||= false
      end

      def to_s
        "#<struct AWS::SDK::AppStream::Types::UserStackAssociation "\
          "stack_name=#{stack_name || 'nil'}, "\
          "user_name=\"[SENSITIVE]\", "\
          "authentication_type=#{authentication_type || 'nil'}, "\
          "send_email_notification=#{send_email_notification || 'nil'}>"
      end
    end

    # <p>Describes the error that is returned when a user can’t be associated with or disassociated from a stack. </p>
    #
    # @!attribute user_stack_association
    #   <p>Information about the user and associated stack.</p>
    #
    #   @return [UserStackAssociation]
    #
    # @!attribute error_code
    #   <p>The error code for the error that is returned when a user can’t be associated with or disassociated from a stack.</p>
    #
    #   Enum, one of: ["STACK_NOT_FOUND", "USER_NAME_NOT_FOUND", "DIRECTORY_NOT_FOUND", "INTERNAL_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message for the error that is returned when a user can’t be associated with or disassociated from a stack.</p>
    #
    #   @return [String]
    #
    UserStackAssociationError = ::Struct.new(
      :user_stack_association,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UserStackAssociationErrorCode
    #
    module UserStackAssociationErrorCode
      # No documentation available.
      #
      STACK_NOT_FOUND = "STACK_NOT_FOUND"

      # No documentation available.
      #
      USER_NAME_NOT_FOUND = "USER_NAME_NOT_FOUND"

      # No documentation available.
      #
      DIRECTORY_NOT_FOUND = "DIRECTORY_NOT_FOUND"

      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"
    end

    # Includes enum constants for VisibilityType
    #
    module VisibilityType
      # No documentation available.
      #
      PUBLIC = "PUBLIC"

      # No documentation available.
      #
      PRIVATE = "PRIVATE"

      # No documentation available.
      #
      SHARED = "SHARED"
    end

    # <p>Describes VPC configuration information for fleets and image builders.</p>
    #
    # @!attribute subnet_ids
    #   <p>The identifiers of the subnets to which a network interface is attached from the fleet instance or image builder instance. Fleet instances use one or more subnets. Image builder instances use one subnet.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The identifiers of the security groups for the fleet or image builder.</p>
    #
    #   @return [Array<String>]
    #
    VpcConfig = ::Struct.new(
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
