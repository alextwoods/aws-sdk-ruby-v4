# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GameLift
  module Types

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute ticket_id
    #   <p>A unique identifier for a matchmaking ticket. The ticket must be in status <code>REQUIRES_ACCEPTANCE</code>; otherwise this
    #               request will fail.</p>
    #
    #   @return [String]
    #
    # @!attribute player_ids
    #   <p>A unique identifier for a player delivering the response. This parameter can include one or multiple
    #               player IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute acceptance_type
    #   <p>Player response to the proposed match.</p>
    #
    #   Enum, one of: ["ACCEPT", "REJECT"]
    #
    #   @return [String]
    #
    AcceptMatchInput = ::Struct.new(
      :ticket_id,
      :player_ids,
      :acceptance_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AcceptMatchOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AcceptanceType
    #
    module AcceptanceType
      # No documentation available.
      #
      ACCEPT = "ACCEPT"

      # No documentation available.
      #
      REJECT = "REJECT"
    end

    # <p>Properties that describe an alias resource.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateAlias</a> |
    #                     <a>ListAliases</a> |
    #                     <a>DescribeAlias</a> |
    #                     <a>UpdateAlias</a> |
    #                     <a>DeleteAlias</a> |
    #                     <a>ResolveAlias</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @!attribute alias_id
    #   <p>A unique identifier for the alias. Alias IDs are unique within a Region.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute alias_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift alias resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::alias/alias-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. In a GameLift alias ARN, the resource ID matches the alias ID value.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A human-readable description of an alias.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_strategy
    #   <p>The routing configuration, including routing type and fleet target, for the alias. </p>
    #
    #   @return [RoutingStrategy]
    #
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The time that this data object was last modified. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    Alias = ::Struct.new(
      :alias_id,
      :name,
      :alias_arn,
      :description,
      :routing_strategy,
      :creation_time,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Values for use in <a>Player</a> attribute key-value pairs. This object lets
    #             you specify an attribute value using any of the valid data types: string, number, string
    #             array, or data map. Each <code>AttributeValue</code> object can use only one of the
    #             available properties.</p>
    #
    # @!attribute s
    #   <p>For single string values. Maximum string length is 100 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute n
    #   <p>For number values, expressed as double.</p>
    #
    #   @return [Float]
    #
    # @!attribute sl
    #   <p>For a list of up to 100 strings. Maximum length for each string is 100 characters.
    #               Duplicate values are not recognized; all occurrences of the repeated value after the
    #               first of a repeated value are ignored.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sdm
    #   <p>For a map of up to 10 data type:value pairs. Maximum length for each string value
    #               is 100 characters. </p>
    #
    #   @return [Hash<String, Float>]
    #
    AttributeValue = ::Struct.new(
      :s,
      :n,
      :sl,
      :sdm,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Temporary access credentials used for uploading game build files to Amazon GameLift. They
    #             are valid for a limited time. If they expire before you upload your game build, get a
    #             new set by calling <a>RequestUploadCredentials</a>.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute access_key_id
    #   <p>Temporary key allowing access to the Amazon GameLift S3 account.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_access_key
    #   <p>Temporary secret key allowing access to the Amazon GameLift S3 account.</p>
    #
    #   @return [String]
    #
    # @!attribute session_token
    #   <p>Token used to associate a specific build ID with the files uploaded using these
    #               credentials.</p>
    #
    #   @return [String]
    #
    AwsCredentials = ::Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::GameLift::Types::AwsCredentials [SENSITIVE]>"
      end
    end

    # Includes enum constants for BackfillMode
    #
    module BackfillMode
      # No documentation available.
      #
      AUTOMATIC = "AUTOMATIC"

      # No documentation available.
      #
      MANUAL = "MANUAL"
    end

    # Includes enum constants for BalancingStrategy
    #
    module BalancingStrategy
      # No documentation available.
      #
      SPOT_ONLY = "SPOT_ONLY"

      # No documentation available.
      #
      SPOT_PREFERRED = "SPOT_PREFERRED"

      # No documentation available.
      #
      ON_DEMAND_ONLY = "ON_DEMAND_ONLY"
    end

    # <p>Properties describing a custom game build.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateBuild</a> |
    #                     <a>ListBuilds</a> |
    #                     <a>DescribeBuild</a> |
    #                     <a>UpdateBuild</a> |
    #                     <a>DeleteBuild</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @!attribute build_id
    #   <p>A unique identifier for the build.</p>
    #
    #   @return [String]
    #
    # @!attribute build_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift build resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::build/build-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. In a GameLift build ARN, the resource ID matches the
    #                   <i>BuildId</i> value.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with a build. Build names do not need to be unique. It can be set using <a>CreateBuild</a> or <a>UpdateBuild</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique. This value can be set using <a>CreateBuild</a> or <a>UpdateBuild</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Current status of the build.</p>
    #           <p>Possible build statuses include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>INITIALIZED</b> -- A new build has been defined,
    #                       but no files have been uploaded. You cannot create fleets for builds that are in
    #                       this status. When a build is successfully created, the build status is set to
    #                       this value. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>READY</b> -- The game build has been successfully
    #                       uploaded. You can now create new fleets for this build.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>FAILED</b> -- The game build upload failed. You
    #                       cannot create new fleets for this build. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["INITIALIZED", "READY", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute size_on_disk
    #   <p>File size of the uploaded game build, expressed in bytes. When the build status is
    #               <code>INITIALIZED</code> or when using a custom Amazon S3 storage location,
    #               this value is 0.</p>
    #
    #   @return [Integer]
    #
    # @!attribute operating_system
    #   <p>Operating system that the game server binaries are built to run on. This value
    #               determines the type of fleet resources that you can use for this build.</p>
    #
    #   Enum, one of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    Build = ::Struct.new(
      :build_id,
      :build_arn,
      :name,
      :version,
      :status,
      :size_on_disk,
      :operating_system,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BuildStatus
    #
    module BuildStatus
      # No documentation available.
      #
      INITIALIZED = "INITIALIZED"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Determines whether a TLS/SSL certificate is generated for a fleet. This feature must be
    #             enabled when creating the fleet. All instances in a fleet share the same
    #             certificate. The certificate can be retrieved by calling the
    #                 <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk.html">GameLift Server
    #                 SDK</a> operation <code>GetInstanceCertificate</code>. </p>
    #         <p>A fleet's certificate configuration is part of <a>FleetAttributes</a>.</p>
    #
    # @!attribute certificate_type
    #   <p>Indicates whether a TLS/SSL certificate is generated for a fleet. </p>
    #           <p>Valid values include: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>GENERATED</b> - Generate a TLS/SSL certificate
    #                       for this fleet.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>DISABLED</b> - (default) Do not generate a
    #                       TLS/SSL certificate for this fleet. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DISABLED", "GENERATED"]
    #
    #   @return [String]
    #
    CertificateConfiguration = ::Struct.new(
      :certificate_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CertificateType
    #
    module CertificateType
      # No documentation available.
      #
      Disabled = "DISABLED"

      # No documentation available.
      #
      Generated = "GENERATED"
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.
    #               Use either the <a>GameServerGroup</a> name or ARN value. If you are not specifying a game server to claim, this value identifies
    #               where you want GameLift FleetIQ to look for an available game server to claim. </p>
    #
    #   @return [String]
    #
    # @!attribute game_server_id
    #   <p>A custom string that uniquely identifies the game server to claim. If this parameter
    #               is left empty, GameLift FleetIQ searches for an available game server in the specified game
    #               server group.</p>
    #
    #   @return [String]
    #
    # @!attribute game_server_data
    #   <p>A set of custom game server properties, formatted as a single string value. This data
    #               is passed to a game client or service when it requests information on game servers using
    #                   <a>ListGameServers</a> or <a>ClaimGameServer</a>. </p>
    #
    #   @return [String]
    #
    ClaimGameServerInput = ::Struct.new(
      :game_server_group_name,
      :game_server_id,
      :game_server_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server
    #   <p>Object that describes the newly claimed game server.</p>
    #
    #   @return [GameServer]
    #
    ClaimGameServerOutput = ::Struct.new(
      :game_server,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComparisonOperatorType
    #
    module ComparisonOperatorType
      # No documentation available.
      #
      GreaterThanOrEqualToThreshold = "GreaterThanOrEqualToThreshold"

      # No documentation available.
      #
      GreaterThanThreshold = "GreaterThanThreshold"

      # No documentation available.
      #
      LessThanThreshold = "LessThanThreshold"

      # No documentation available.
      #
      LessThanOrEqualToThreshold = "LessThanOrEqualToThreshold"
    end

    # <p>The requested operation would cause a conflict with the current state of a service
    #             resource associated with the request. Resolve the conflict before retrying this
    #             request.</p>
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

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A human-readable description of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_strategy
    #   <p>The routing configuration, including routing type and fleet target, for the alias. </p>
    #
    #   @return [RoutingStrategy]
    #
    # @!attribute tags
    #   <p>A list of labels to assign to the new alias resource. Tags are developer-defined
    #               key-value pairs. Tagging
    #               Amazon Web Services resources are useful for resource management, access management and cost allocation.
    #               For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #                   <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a>TagResource</a>, <a>UntagResource</a>, and
    #               <a>ListTagsForResource</a> to add, remove, and view tags. The
    #               maximum tag limit may be lower than stated. See the Amazon Web Services General Reference for actual
    #               tagging limits.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateAliasInput = ::Struct.new(
      :name,
      :description,
      :routing_strategy,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute alias
    #   <p>The newly created alias resource.</p>
    #
    #   @return [Alias]
    #
    CreateAliasOutput = ::Struct.new(
      :alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with a build. Build names do not need to be unique. You can use <a>UpdateBuild</a> to change this value later.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique. You can use <a>UpdateBuild</a> to change this value later.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute storage_location
    #   <p>Information indicating where your game build files are stored. Use this parameter only
    #               when creating a build with files stored in an Amazon S3 bucket that you own. The storage
    #               location must specify an Amazon S3 bucket name and key. The location must also specify a role
    #               ARN that you set up to allow Amazon GameLift to access your Amazon S3 bucket. The S3 bucket and your
    #               new build must be in the same Region.</p>
    #           <p>If a <code>StorageLocation</code> is specified, the size of your file
    #               can be found in your Amazon S3 bucket. Amazon GameLift will report a <code>SizeOnDisk</code> of 0.
    #           </p>
    #
    #   @return [S3Location]
    #
    # @!attribute operating_system
    #   <p>The operating system that the game server binaries are built to run on. This value
    #               determines the type of fleet resources that you can use for this build. If your game
    #               build contains multiple executables, they all must run on the same operating system. If
    #               an operating system is not specified when creating a build, Amazon GameLift uses the
    #               default value (WINDOWS_2012). This value cannot be changed later.</p>
    #
    #   Enum, one of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of labels to assign to the new build resource. Tags are developer-defined
    #               key-value pairs. Tagging
    #               Amazon Web Services resources are useful for resource management, access management and cost allocation.
    #               For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #               <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a>TagResource</a>, <a>UntagResource</a>, and
    #               <a>ListTagsForResource</a> to add, remove, and view tags. The
    #               maximum tag limit may be lower than stated. See the Amazon Web Services General Reference for actual
    #               tagging limits.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateBuildInput = ::Struct.new(
      :name,
      :version,
      :storage_location,
      :operating_system,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute build
    #   <p>The newly created build resource, including a unique build IDs and status. </p>
    #
    #   @return [Build]
    #
    # @!attribute upload_credentials
    #   <p>This element is returned only when the operation is called without a storage
    #               location. It contains credentials to use when you are uploading a build file to an Amazon S3
    #               bucket that is owned by Amazon GameLift. Credentials have a limited life span. To refresh these
    #               credentials, call <a>RequestUploadCredentials</a>. </p>
    #
    #   @return [AwsCredentials]
    #
    # @!attribute storage_location
    #   <p>Amazon S3 location for your game build file, including bucket name and
    #               key.</p>
    #
    #   @return [S3Location]
    #
    CreateBuildOutput = ::Struct.new(
      :build,
      :upload_credentials,
      :storage_location,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::GameLift::Types::CreateBuildOutput "\
          "build=#{build || 'nil'}, "\
          "upload_credentials=\"[SENSITIVE]\", "\
          "storage_location=#{storage_location || 'nil'}>"
      end
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A human-readable description of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute build_id
    #   <p>The unique identifier for a custom game server build to be deployed on fleet
    #               instances. You can use either the build ID or ARN. The build must be uploaded to GameLift
    #               and in <code>READY</code> status. This fleet property cannot be changed later.</p>
    #
    #   @return [String]
    #
    # @!attribute script_id
    #   <p>The unique identifier for a Realtime configuration script to be deployed on fleet
    #               instances. You can use either the script ID or ARN. Scripts must be uploaded to GameLift
    #               prior to creating the fleet. This fleet property cannot be changed later.</p>
    #
    #   @return [String]
    #
    # @!attribute server_launch_path
    #   <p>
    #               <b>This parameter is no longer used.</b> Specify a server
    #               launch path using the <code>RuntimeConfiguration</code> parameter. Requests that use
    #               this parameter instead continue to be valid.</p>
    #
    #   @return [String]
    #
    # @!attribute server_launch_parameters
    #   <p>
    #               <b>This parameter is no longer used.</b> Specify server
    #               launch parameters using the <code>RuntimeConfiguration</code> parameter. Requests that
    #               use this parameter instead continue to be valid.</p>
    #
    #   @return [String]
    #
    # @!attribute log_paths
    #   <p>
    #               <b>This parameter is no longer used.</b> To specify where
    #               GameLift should store log files once a server process shuts down, use the GameLift server
    #               API <code>ProcessReady()</code> and specify one or more directory paths in
    #                   <code>logParameters</code>. See more information in the <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html gamelift-sdk-server-api-ref-dataypes-process">Server API Reference</a>. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ec2_instance_type
    #   <p>The GameLift-supported Amazon EC2 instance type to use for all fleet instances. Instance
    #               type determines the computing resources that will be used to host your game servers,
    #               including CPU, memory, storage, and networking capacity. See <a href="http://aws.amazon.com/ec2/instance-types/">Amazon Elastic Compute Cloud Instance Types</a> for detailed descriptions
    #               of Amazon EC2 instance types.</p>
    #
    #   Enum, one of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"]
    #
    #   @return [String]
    #
    # @!attribute ec2_inbound_permissions
    #   <p>The allowed IP address ranges and port settings that allow inbound traffic to access
    #               game sessions on this fleet. If the fleet is hosting a custom game build, this property
    #               must be set before players can connect to game sessions. For Realtime Servers fleets, GameLift
    #               automatically sets TCP and UDP ranges. </p>
    #
    #   @return [Array<IpPermission>]
    #
    # @!attribute new_game_session_protection_policy
    #   <p>The status of termination protection for active game sessions on the fleet. By
    #               default, this property is set to <code>NoProtection</code>. You can also set game
    #               session protection for an individual game session by calling <a>UpdateGameSession</a>.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>NoProtection</b> - Game sessions can be terminated
    #                       during active gameplay as a result of a scale-down event. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>FullProtection</b> - Game sessions in
    #                           <code>ACTIVE</code> status cannot be terminated during a scale-down
    #                       event.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NoProtection", "FullProtection"]
    #
    #   @return [String]
    #
    # @!attribute runtime_configuration
    #   <p>Instructions for how to launch and maintain server processes on instances in the
    #               fleet. The runtime configuration defines one or more server process configurations, each
    #               identifying a build executable or Realtime script file and the number of processes of
    #               that type to run concurrently. </p>
    #           <note>
    #               <p>The <code>RuntimeConfiguration</code> parameter is required unless the fleet is
    #                   being configured using the older parameters <code>ServerLaunchPath</code> and
    #                       <code>ServerLaunchParameters</code>, which are still supported for backward
    #                   compatibility.</p>
    #           </note>
    #
    #   @return [RuntimeConfiguration]
    #
    # @!attribute resource_creation_limit_policy
    #   <p>A policy that limits the number of game sessions that an individual player can create
    #               on instances in this fleet within a specified span of time.</p>
    #
    #   @return [ResourceCreationLimitPolicy]
    #
    # @!attribute metric_groups
    #   <p>The name of an Amazon Web Services CloudWatch metric group to add this fleet to. A metric group is
    #               used to aggregate the metrics for multiple fleets. You can specify an existing metric
    #               group name or set a new name to create a new metric group. A fleet can be included in
    #               only one metric group at a time. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute peer_vpc_aws_account_id
    #   <p>Used when peering your GameLift fleet with a VPC, the unique identifier for the Amazon Web Services
    #               account that owns the VPC. You can find your account ID in the Amazon Web Services Management Console under account
    #               settings. </p>
    #
    #   @return [String]
    #
    # @!attribute peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with GameLift Fleets</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute fleet_type
    #   <p>Indicates whether to use On-Demand or Spot instances for this fleet. By default, this
    #               property is set to <code>ON_DEMAND</code>. Learn more about when to use <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html gamelift-ec2-instances-spot"> On-Demand versus Spot Instances</a>. This property cannot be changed after the
    #               fleet is created.</p>
    #
    #   Enum, one of: ["ON_DEMAND", "SPOT"]
    #
    #   @return [String]
    #
    # @!attribute instance_role_arn
    #   <p>A unique identifier for an IAM role that manages access to your Amazon Web Services services.
    #           With an instance role ARN set, any application that runs on an instance in this fleet can assume the role,
    #           including install scripts, server processes, and daemons (background processes). Create a role or look up a role's
    #           ARN by using the <a href="https://console.aws.amazon.com/iam/">IAM dashboard</a> in the Amazon Web Services Management Console.
    #           Learn more about using on-box credentials for your game servers at
    #           <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html">
    #           Access external resources from a game server</a>.  This property cannot be changed after the fleet is created.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_configuration
    #   <p>Prompts GameLift to generate a TLS/SSL certificate for the fleet. TLS certificates are
    #               used for encrypting traffic between game clients and the game servers that are running
    #               on GameLift. By default, the <code>CertificateConfiguration</code> is set to
    #                   <code>DISABLED</code>. This property cannot be changed after the fleet is created. </p>
    #           <p>Note: This feature requires the Amazon Web Services Certificate Manager (ACM) service, which is not
    #               available in all Amazon Web Services regions. When working in a region that does not support this
    #               feature, a fleet creation request with certificate generation fails with a 4xx
    #               error.</p>
    #
    #   @return [CertificateConfiguration]
    #
    # @!attribute locations
    #   <p>A set of remote locations to deploy additional instances to and manage as part of the
    #               fleet. This parameter can only be used when creating fleets in Amazon Web Services Regions that support
    #               multiple locations. You can add any GameLift-supported Amazon Web Services Region as a remote location,
    #               in the form of an Amazon Web Services Region code such as <code>us-west-2</code>. To create a fleet with
    #               instances in the home Region only, omit this parameter. </p>
    #
    #   @return [Array<LocationConfiguration>]
    #
    # @!attribute tags
    #   <p>A list of labels to assign to the new fleet resource. Tags are developer-defined
    #               key-value pairs. Tagging Amazon Web Services resources are useful for resource management, access
    #               management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #                   <i>Amazon Web Services General Reference</i>. Once the fleet is created, you can use
    #                   <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a> to add, remove, and view tags. The maximum tag limit
    #               may be lower than stated. See the <i>Amazon Web Services General Reference</i> for actual
    #               tagging limits.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateFleetInput = ::Struct.new(
      :name,
      :description,
      :build_id,
      :script_id,
      :server_launch_path,
      :server_launch_parameters,
      :log_paths,
      :ec2_instance_type,
      :ec2_inbound_permissions,
      :new_game_session_protection_policy,
      :runtime_configuration,
      :resource_creation_limit_policy,
      :metric_groups,
      :peer_vpc_aws_account_id,
      :peer_vpc_id,
      :fleet_type,
      :instance_role_arn,
      :certificate_configuration,
      :locations,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to add locations to. You can use either the fleet ID or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute locations
    #   <p>A list of locations to deploy additional instances to and manage as part of the fleet.
    #               You can add any GameLift-supported Amazon Web Services Region as a remote location, in the form of an Amazon Web Services
    #               Region code such as <code>us-west-2</code>. </p>
    #
    #   @return [Array<LocationConfiguration>]
    #
    CreateFleetLocationsInput = ::Struct.new(
      :fleet_id,
      :locations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation. </p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that was updated with new locations.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute location_states
    #   <p>The remote locations that are being added to the fleet, and the life-cycle status of each location.
    #               For new locations, the status is set to <code>NEW</code>.
    #               During location creation, GameLift updates each location's status as instances
    #               are deployed there and prepared for game hosting.
    #           This list does not include the fleet home Region or any remote locations that were already
    #           added to the fleet.</p>
    #
    #   @return [Array<LocationState>]
    #
    CreateFleetLocationsOutput = ::Struct.new(
      :fleet_id,
      :fleet_arn,
      :location_states,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute fleet_attributes
    #   <p>The properties for the new fleet, including the current status. All fleets are placed
    #               in <code>NEW</code> status on creation. </p>
    #
    #   @return [FleetAttributes]
    #
    # @!attribute location_states
    #   <p>The fleet's locations and life-cycle status of each location. For new fleets, the
    #               status of all locations is set to <code>NEW</code>. During fleet creation, GameLift
    #               updates each location status as instances are deployed there and prepared for game
    #               hosting. This list includes an entry for the fleet's home Region. For fleets with no
    #               remote locations, only one entry, representing the home Region, is returned.</p>
    #
    #   @return [Array<LocationState>]
    #
    CreateFleetOutput = ::Struct.new(
      :fleet_attributes,
      :location_states,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group_name
    #   <p>An identifier for the new game server group. This value is used to generate unique ARN
    #               identifiers for the Amazon EC2 Auto Scaling group and the GameLift FleetIQ game server group. The name
    #               must be unique per Region per Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) for an IAM role that
    #               allows Amazon GameLift to access your Amazon EC2 Auto Scaling groups.</p>
    #
    #   @return [String]
    #
    # @!attribute min_size
    #   <p>The minimum number of instances allowed in the Amazon EC2 Auto Scaling group. During
    #               automatic scaling events, GameLift FleetIQ and Amazon EC2 do not scale down the group below this
    #               minimum. In production, this value should be set to at least 1. After the Auto Scaling
    #               group is created, update this value directly in the Auto Scaling group using the Amazon Web Services
    #               console or APIs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_size
    #   <p>The maximum number of instances allowed in the Amazon EC2 Auto Scaling group. During
    #               automatic scaling events, GameLift FleetIQ and EC2 do not scale up the group above this maximum.
    #               After the Auto Scaling group is created, update this value directly in the Auto Scaling
    #               group using the Amazon Web Services console or APIs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute launch_template
    #   <p>The Amazon EC2 launch template that contains configuration settings and game server code to
    #               be deployed to all instances in the game server group. You can specify the template
    #               using either the template name or ID. For help with creating a launch template, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html">Creating a Launch
    #                   Template for an Auto Scaling Group</a> in the <i>Amazon Elastic Compute Cloud Auto Scaling
    #                   User Guide</i>. After the Auto Scaling group is created, update this value
    #               directly in the Auto Scaling group using the Amazon Web Services console or APIs.</p>
    #           <note>
    #               <p>If you specify network interfaces in your launch template, you must explicitly set
    #                   the property <code>AssociatePublicIpAddress</code> to "true". If no network
    #                   interface is specified in the launch template,  GameLift FleetIQ uses your account's default
    #                   VPC.</p>
    #           </note>
    #
    #   @return [LaunchTemplateSpecification]
    #
    # @!attribute instance_definitions
    #   <p>The Amazon EC2 instance types and sizes to use in the Auto Scaling group. The instance
    #               definitions must specify at least two different instance types that are supported by
    #               GameLift FleetIQ. For more information on instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">EC2 Instance Types</a> in the
    #                   <i>Amazon Elastic Compute Cloud User Guide</i>. You can optionally specify capacity
    #               weighting for each instance type. If no weight value is specified for an instance type,
    #               it is set to the default value "1". For more information about capacity weighting, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html"> Instance Weighting for
    #                   Amazon EC2 Auto Scaling</a> in the Amazon EC2 Auto Scaling User Guide.</p>
    #
    #   @return [Array<InstanceDefinition>]
    #
    # @!attribute auto_scaling_policy
    #   <p>Configuration settings to define a scaling policy for the Auto Scaling group that is
    #               optimized for game hosting. The scaling policy uses the metric
    #                   <code>"PercentUtilizedGameServers"</code> to maintain a buffer of idle game servers
    #               that can immediately accommodate new games and players. After the Auto Scaling group is
    #               created, update this value directly in the Auto Scaling group using the Amazon Web Services console or
    #               APIs.</p>
    #
    #   @return [GameServerGroupAutoScalingPolicy]
    #
    # @!attribute balancing_strategy
    #   <p>Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances in the
    #               game server group. Method options include the following:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>SPOT_ONLY</code> - Only Spot Instances are used in the game server group. If Spot
    #                       Instances are unavailable or not viable for game hosting, the game server group
    #                       provides no hosting capacity until Spot Instances can again be used. Until then,
    #                       no new instances are started, and the existing nonviable Spot Instances are
    #                       terminated (after current gameplay ends) and are not replaced.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SPOT_PREFERRED</code> - (default value) Spot Instances are used whenever available in
    #                       the game server group. If Spot Instances are unavailable, the game server group
    #                       continues to provide hosting capacity by falling back to On-Demand Instances.
    #                       Existing nonviable Spot Instances are terminated (after current gameplay ends)
    #                       and are replaced with new On-Demand Instances.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ON_DEMAND_ONLY</code> - Only On-Demand Instances are used in the game
    #                       server group. No Spot Instances are used, even when available, while this
    #                       balancing strategy is in force.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"]
    #
    #   @return [String]
    #
    # @!attribute game_server_protection_policy
    #   <p>A flag that indicates whether instances in the game server group are protected
    #               from early termination. Unprotected instances that have active game servers running might
    #               be terminated during a scale-down event, causing players to be dropped from the game.
    #               Protected instances cannot be terminated while there are active game servers running except
    #               in the event of a forced game server group deletion (see ). An exception to this is with Spot
    #               Instances, which can be terminated by Amazon Web Services regardless of protection status. This property is set to <code>NO_PROTECTION</code> by default.</p>
    #
    #   Enum, one of: ["NO_PROTECTION", "FULL_PROTECTION"]
    #
    #   @return [String]
    #
    # @!attribute vpc_subnets
    #   <p>A list of virtual private cloud (VPC) subnets to use with instances in the game server
    #               group. By default, all GameLift FleetIQ-supported Availability Zones are used. You can use this
    #               parameter to specify VPCs that you've set up. This property cannot be updated after the
    #               game server group is created, and the corresponding Auto Scaling group will always use
    #               the property value that is set with this request, even if the Auto Scaling group is
    #               updated directly.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>A list of labels to assign to the new game server group resource. Tags are
    #               developer-defined key-value pairs. Tagging Amazon Web Services resources is useful for resource
    #               management, access management, and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services
    #                   Resources</a> in the <i>Amazon Web Services General Reference</i>. Once the
    #               resource is created, you can use <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a> to add, remove,
    #               and view tags, respectively. The maximum tag limit may be lower than stated. See the
    #               Amazon Web Services General Reference for actual tagging limits.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateGameServerGroupInput = ::Struct.new(
      :game_server_group_name,
      :role_arn,
      :min_size,
      :max_size,
      :launch_template,
      :instance_definitions,
      :auto_scaling_policy,
      :balancing_strategy,
      :game_server_protection_policy,
      :vpc_subnets,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group
    #   <p>The newly created game server group object, including the new ARN value for the GameLift FleetIQ
    #               game server group and the object's status. The Amazon EC2 Auto Scaling group ARN is initially
    #               null, since the group has not yet been created. This value is added once the game server
    #               group status reaches <code>ACTIVE</code>. </p>
    #
    #   @return [GameServerGroup]
    #
    CreateGameServerGroupOutput = ::Struct.new(
      :game_server_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to create a game session in. You can use either the fleet ID or ARN value. Each
    #               request must reference either a fleet ID or alias ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute alias_id
    #   <p>A unique identifier for the alias associated with the fleet to create a game session in. You can use either the
    #               alias ID or ARN value. Each request must reference either a fleet ID or alias ID, but
    #               not both.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute game_properties
    #   <p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html gamelift-sdk-server-startsession">Start a Game Session</a>).</p>
    #
    #   @return [Array<GameProperty>]
    #
    # @!attribute creator_id
    #   <p>A unique identifier for a player or entity creating the game session. This parameter is required when
    #               requesting a new game session on a fleet with a resource creation limit policy. This
    #               type of policy limits the number of concurrent active game sessions that one player can
    #               create within a certain time span. GameLift uses the CreatorId to evaluate the new
    #               request against the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute game_session_id
    #   <p>
    #               <i>This parameter is no longer preferred. Please use
    #                       <code>IdempotencyToken</code> instead.</i> Custom string that uniquely
    #               identifies a request for a new game session. Maximum token length is 48 characters. If
    #               provided, this string is included in the new game session's ID.</p>
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>Custom string that uniquely identifies the new game session request.  This is useful
    #               for ensuring that game session requests with the same idempotency token are processed
    #               only once. Subsequent requests with the same string return the original
    #                   <code>GameSession</code> object, with an updated status. Maximum token length is 48
    #               characters. If provided, this string is included in the new game session's ID.
    #               A game session ARN has the following format:
    #       <code>arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string or idempotency token></code>. Idempotency tokens remain in use for 30 days after a game session has ended;
    #               game session objects are retained for this time period and then deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html gamelift-sdk-server-startsession">Start a Game Session</a>).</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>A fleet's remote location to place the new game session in. If this parameter is not
    #               set, the new game session is placed in the fleet's home Region. Specify a remote
    #               location with an Amazon Web Services Region code such as <code>us-west-2</code>.  </p>
    #
    #   @return [String]
    #
    CreateGameSessionInput = ::Struct.new(
      :fleet_id,
      :alias_id,
      :maximum_player_session_count,
      :name,
      :game_properties,
      :creator_id,
      :game_session_id,
      :idempotency_token,
      :game_session_data,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute game_session
    #   <p>Object that describes the newly created game session record.</p>
    #
    #   @return [GameSession]
    #
    CreateGameSessionOutput = ::Struct.new(
      :game_session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout_in_seconds
    #   <p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status.</p>
    #
    #   @return [Integer]
    #
    # @!attribute player_latency_policies
    #   <p>A set of policies that act as a sliding cap on player latency. FleetIQ works to
    #               deliver low latency for most players in a game session. These policies ensure that no
    #               individual player can be placed into a game with unreasonably high latency. Use multiple
    #               policies to gradually relax latency requirements a step at a time. Multiple policies are applied based on their
    #               maximum allowed latency, starting with the lowest value.</p>
    #
    #   @return [Array<PlayerLatencyPolicy>]
    #
    # @!attribute destinations
    #   <p>A list of fleets and/or fleet aliases that can be used to fulfill game session placement requests in the queue.
    #       Destinations are identified by either a fleet ARN or a fleet alias ARN, and are listed in order of placement preference.</p>
    #
    #   @return [Array<GameSessionQueueDestination>]
    #
    # @!attribute filter_configuration
    #   <p>A list of locations where a queue is allowed to place new game sessions. Locations
    #               are specified in the form of Amazon Web Services Region codes, such as <code>us-west-2</code>. If this parameter is
    #               not set, game sessions can be placed in any queue location. </p>
    #
    #   @return [FilterConfiguration]
    #
    # @!attribute priority_configuration
    #   <p>Custom settings to use when prioritizing destinations and locations for game session placements. This
    #               configuration replaces the FleetIQ default prioritization process. Priority types that are not explicitly
    #               named will be automatically applied at the end of the prioritization process. </p>
    #
    #   @return [PriorityConfiguration]
    #
    # @!attribute custom_event_data
    #   <p>
    #               Information to be added to all events that are related to this game session queue.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute notification_target
    #   <p>An SNS topic ARN that is set up to receive game session placement notifications. See <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html">
    #               Setting up notifications for game session placement</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of labels to assign to the new game session queue resource. Tags are developer-defined
    #               key-value pairs. Tagging
    #               Amazon Web Services resources are useful for resource management, access management and cost allocation.
    #               For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #               <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a>TagResource</a>, <a>UntagResource</a>, and
    #               <a>ListTagsForResource</a> to add, remove, and view tags. The
    #               maximum tag limit may be lower than stated. See the Amazon Web Services General Reference for actual
    #               tagging limits.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateGameSessionQueueInput = ::Struct.new(
      :name,
      :timeout_in_seconds,
      :player_latency_policies,
      :destinations,
      :filter_configuration,
      :priority_configuration,
      :custom_event_data,
      :notification_target,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute game_session_queue
    #   <p>An object that describes the newly created game session queue.</p>
    #
    #   @return [GameSessionQueue]
    #
    CreateGameSessionQueueOutput = ::Struct.new(
      :game_session_queue,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute name
    #   <p>A unique identifier for the matchmaking configuration. This name is used to identify the configuration associated with a
    #               matchmaking request or ticket.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A human-readable description of the matchmaking configuration. </p>
    #
    #   @return [String]
    #
    # @!attribute game_session_queue_arns
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>. Queues can be located in any Region. Queues are used to start new
    #               GameLift-hosted game sessions for matches that are created with this matchmaking
    #               configuration. If <code>FlexMatchMode</code> is set to <code>STANDALONE</code>, do not
    #               set this parameter.  </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute request_timeout_seconds
    #   <p>The maximum duration, in seconds, that a matchmaking ticket can remain in process
    #               before timing out. Requests that fail due to timing out can be resubmitted as
    #               needed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute acceptance_timeout_seconds
    #   <p>The length of time (in seconds) to wait for players to accept a proposed match, if
    #               acceptance is required. </p>
    #
    #   @return [Integer]
    #
    # @!attribute acceptance_required
    #   <p>A flag that determines whether a match that was created with this configuration must
    #               be accepted by the matched players. To require acceptance, set to <code>TRUE</code>.
    #               With this option enabled, matchmaking tickets use the status
    #               <code>REQUIRES_ACCEPTANCE</code> to indicate when a completed potential match is
    #               waiting for player acceptance. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute rule_set_name
    #   <p>A unique identifier for the matchmaking rule set to use with this configuration. You can use either the rule set name or ARN
    #               value. A matchmaking configuration can only use rule sets that are defined in the same
    #               Region.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_target
    #   <p>An SNS topic ARN that is set up to receive matchmaking notifications. See <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html">
    #               Setting up notifications for matchmaking</a> for more information.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_player_count
    #   <p>The number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies
    #               a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match. This parameter is not used if <code>FlexMatchMode</code> is set to
    #               <code>STANDALONE</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute custom_event_data
    #   <p>Information to be added to all events related to this matchmaking configuration.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute game_properties
    #   <p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html gamelift-sdk-server-startsession">Start a Game Session</a>). This information is added to the new <a>GameSession</a>
    #               object that is created for a successful match. This parameter is not used if
    #               <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #
    #   @return [Array<GameProperty>]
    #
    # @!attribute game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html gamelift-sdk-server-startsession">Start a Game Session</a>). This information is added to the new <a>GameSession</a> object
    #               that is created for a successful match. This parameter is not used if
    #               <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute backfill_mode
    #   <p>The method used to backfill game sessions that are created with this matchmaking
    #               configuration. Specify <code>MANUAL</code> when your game manages backfill requests
    #               manually or does not use the match backfill feature. Specify <code>AUTOMATIC</code> to
    #               have GameLift create a <a>StartMatchBackfill</a> request whenever a game
    #               session has one or more open slots. Learn more about manual and automatic backfill in
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html"> Backfill Existing Games with FlexMatch</a>. Automatic backfill is not
    #               available when <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #
    #   Enum, one of: ["AUTOMATIC", "MANUAL"]
    #
    #   @return [String]
    #
    # @!attribute flex_match_mode
    #   <p>Indicates whether this matchmaking configuration is being used with GameLift hosting or
    #               as a standalone matchmaking solution. </p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>STANDALONE</b> - FlexMatch forms matches and returns
    #                   match information, including players and team assignments, in a
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html match-events-matchmakingsucceeded">
    #                       MatchmakingSucceeded</a> event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>WITH_QUEUE</b> - FlexMatch forms matches and uses the specified GameLift queue to
    #                   start a game session for the match. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["STANDALONE", "WITH_QUEUE"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of labels to assign to the new matchmaking configuration resource. Tags are developer-defined
    #               key-value pairs. Tagging
    #               Amazon Web Services resources are useful for resource management, access management and cost allocation.
    #               For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #               <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a>TagResource</a>, <a>UntagResource</a>, and
    #               <a>ListTagsForResource</a> to add, remove, and view tags. The
    #               maximum tag limit may be lower than stated. See the Amazon Web Services General Reference for actual
    #               tagging limits.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateMatchmakingConfigurationInput = ::Struct.new(
      :name,
      :description,
      :game_session_queue_arns,
      :request_timeout_seconds,
      :acceptance_timeout_seconds,
      :acceptance_required,
      :rule_set_name,
      :notification_target,
      :additional_player_count,
      :custom_event_data,
      :game_properties,
      :game_session_data,
      :backfill_mode,
      :flex_match_mode,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute configuration
    #   <p>Object that describes the newly created matchmaking configuration.</p>
    #
    #   @return [MatchmakingConfiguration]
    #
    CreateMatchmakingConfigurationOutput = ::Struct.new(
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute name
    #   <p>A unique identifier for the matchmaking rule set. A matchmaking configuration identifies the rule set it uses by this name
    #               value. Note that the rule set name is different from the optional <code>name</code>
    #               field in the rule set body.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_set_body
    #   <p>A collection of matchmaking rules, formatted as a JSON string. Comments are not
    #               allowed in JSON, but most elements support a description field.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of labels to assign to the new matchmaking rule set resource. Tags are developer-defined
    #               key-value pairs. Tagging
    #               Amazon Web Services resources are useful for resource management, access management and cost allocation.
    #               For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #               <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a>TagResource</a>, <a>UntagResource</a>, and
    #               <a>ListTagsForResource</a> to add, remove, and view tags. The
    #               maximum tag limit may be lower than stated. See the Amazon Web Services General Reference for actual
    #               tagging limits.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateMatchmakingRuleSetInput = ::Struct.new(
      :name,
      :rule_set_body,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute rule_set
    #   <p>The newly created matchmaking rule set.</p>
    #
    #   @return [MatchmakingRuleSet]
    #
    CreateMatchmakingRuleSetOutput = ::Struct.new(
      :rule_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute game_session_id
    #   <p>A unique identifier for the game session to add a player to.</p>
    #
    #   @return [String]
    #
    # @!attribute player_id
    #   <p>A unique identifier for a player. Player IDs are developer-defined.</p>
    #
    #   @return [String]
    #
    # @!attribute player_data
    #   <p>Developer-defined information related to a player. GameLift does not use this data, so it can be formatted as needed for use in the game.</p>
    #
    #   @return [String]
    #
    CreatePlayerSessionInput = ::Struct.new(
      :game_session_id,
      :player_id,
      :player_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute player_session
    #   <p>Object that describes the newly created player session record.</p>
    #
    #   @return [PlayerSession]
    #
    CreatePlayerSessionOutput = ::Struct.new(
      :player_session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute game_session_id
    #   <p>A unique identifier for the game session to add players to.</p>
    #
    #   @return [String]
    #
    # @!attribute player_ids
    #   <p>List of unique identifiers for the players to be added.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute player_data_map
    #   <p>Map of string pairs, each specifying a player ID and a set of developer-defined
    #               information related to the player. Amazon GameLift does not use this data, so it can be formatted
    #               as needed for use in the game. Any player data strings for player IDs that are not
    #               included in the <code>PlayerIds</code> parameter are ignored. </p>
    #
    #   @return [Hash<String, String>]
    #
    CreatePlayerSessionsInput = ::Struct.new(
      :game_session_id,
      :player_ids,
      :player_data_map,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute player_sessions
    #   <p>A collection of player session objects created for the added players.</p>
    #
    #   @return [Array<PlayerSession>]
    #
    CreatePlayerSessionsOutput = ::Struct.new(
      :player_sessions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A descriptive label that is associated with a script. Script names do not need to be unique. You can use <a>UpdateScript</a> to change this value later.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique. You can use <a>UpdateScript</a> to change this value later.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute storage_location
    #   <p>The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is
    #               stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the
    #               "key"), and a role ARN that allows Amazon GameLift to access the Amazon S3 storage location. The S3
    #               bucket must be in the same Region where you want to create a new script. By default,
    #               Amazon GameLift uploads the latest version of the zip file; if you have S3 object versioning
    #               turned on, you can use the <code>ObjectVersion</code> parameter to specify an earlier
    #               version. </p>
    #
    #   @return [S3Location]
    #
    # @!attribute zip_file
    #   <p>A data object containing your Realtime scripts and dependencies as a zip file. The zip
    #               file can have one or multiple files. Maximum size of a zip file is 5 MB.</p>
    #           <p>When using the Amazon Web Services CLI tool to create a script, this parameter is set to the zip file name. It must be prepended with the
    #               string "fileb://" to indicate that the file data is a binary object. For example: <code>--zip-file fileb://myRealtimeScript.zip</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of labels to assign to the new script resource. Tags are developer-defined
    #               key-value pairs. Tagging
    #               Amazon Web Services resources are useful for resource management, access management and cost allocation.
    #               For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #               <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a>TagResource</a>, <a>UntagResource</a>, and
    #               <a>ListTagsForResource</a> to add, remove, and view tags. The
    #               maximum tag limit may be lower than stated. See the Amazon Web Services General Reference for actual
    #               tagging limits.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateScriptInput = ::Struct.new(
      :name,
      :version,
      :storage_location,
      :zip_file,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute script
    #   <p>The newly created script record with a unique script ID and ARN. The new script's
    #               storage location reflects an Amazon S3 location: (1) If the script was uploaded from an S3
    #               bucket under your account, the storage location reflects the information that was
    #               provided in the <i>CreateScript</i> request; (2) If the script file was
    #               uploaded from a local zip file, the storage location reflects an S3 location controls by
    #               the Amazon GameLift service.</p>
    #
    #   @return [Script]
    #
    CreateScriptOutput = ::Struct.new(
      :script,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute game_lift_aws_account_id
    #   <p>A unique identifier for the Amazon Web Services account that you use to manage your GameLift fleet.
    #               You can find your Account ID in the Amazon Web Services Management Console under account settings.</p>
    #
    #   @return [String]
    #
    # @!attribute peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with GameLift Fleets</a>.</p>
    #
    #   @return [String]
    #
    CreateVpcPeeringAuthorizationInput = ::Struct.new(
      :game_lift_aws_account_id,
      :peer_vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute vpc_peering_authorization
    #   <p>Details on the requested VPC peering authorization, including expiration.</p>
    #
    #   @return [VpcPeeringAuthorization]
    #
    CreateVpcPeeringAuthorizationOutput = ::Struct.new(
      :vpc_peering_authorization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet. You can use either the fleet ID or ARN value. This tells Amazon GameLift which GameLift
    #               VPC to peer with. </p>
    #
    #   @return [String]
    #
    # @!attribute peer_vpc_aws_account_id
    #   <p>A unique identifier for the Amazon Web Services account with the VPC that you want to peer your
    #               Amazon GameLift fleet with. You can find your Account ID in the Amazon Web Services Management Console under account
    #               settings.</p>
    #
    #   @return [String]
    #
    # @!attribute peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with GameLift Fleets</a>.</p>
    #
    #   @return [String]
    #
    CreateVpcPeeringConnectionInput = ::Struct.new(
      :fleet_id,
      :peer_vpc_aws_account_id,
      :peer_vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateVpcPeeringConnectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute alias_id
    #   <p>A unique identifier of the alias that you want to delete. You can use either the alias
    #               ID or ARN value.</p>
    #
    #   @return [String]
    #
    DeleteAliasInput = ::Struct.new(
      :alias_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAliasOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute build_id
    #   <p>A unique identifier for the build to delete. You can use either the build ID or ARN value. </p>
    #
    #   @return [String]
    #
    DeleteBuildInput = ::Struct.new(
      :build_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBuildOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to be deleted. You can use either the fleet ID or ARN value.</p>
    #
    #   @return [String]
    #
    DeleteFleetInput = ::Struct.new(
      :fleet_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to delete locations for.
    #               You can use either the fleet ID or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute locations
    #   <p>The list of fleet locations to delete. Specify locations in the form of an Amazon Web Services Region code, such as
    #                   <code>us-west-2</code>.</p>
    #
    #   @return [Array<String>]
    #
    DeleteFleetLocationsInput = ::Struct.new(
      :fleet_id,
      :locations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that location attributes are being deleted for.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute location_states
    #   <p>The remote locations that are being deleted, with each location status set to
    #                   <code>DELETING</code>.</p>
    #
    #   @return [Array<LocationState>]
    #
    DeleteFleetLocationsOutput = ::Struct.new(
      :fleet_id,
      :fleet_arn,
      :location_states,
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

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute delete_option
    #   <p>The type of delete to perform. Options include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SAFE_DELETE</code> – (default) Terminates the game server group and
    #                       Amazon EC2 Auto Scaling group only when it has no game servers that are in
    #                           <code>UTILIZED</code> status.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FORCE_DELETE</code> – Terminates the game server group, including all
    #                       active game servers regardless of their utilization status, and the Amazon EC2 Auto
    #                       Scaling group. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RETAIN</code> – Does a safe delete of the game server group but retains
    #                       the Amazon EC2 Auto Scaling group as is.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SAFE_DELETE", "FORCE_DELETE", "RETAIN"]
    #
    #   @return [String]
    #
    DeleteGameServerGroupInput = ::Struct.new(
      :game_server_group_name,
      :delete_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group
    #   <p>An object that describes the deleted game server group resource, with status updated
    #               to <code>DELETE_SCHEDULED</code>. </p>
    #
    #   @return [GameServerGroup]
    #
    DeleteGameServerGroupOutput = ::Struct.new(
      :game_server_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation. </p>
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. </p>
    #
    #   @return [String]
    #
    DeleteGameSessionQueueInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteGameSessionQueueOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute name
    #   <p>A unique identifier for the matchmaking configuration.  You can use either the configuration name or ARN value.</p>
    #
    #   @return [String]
    #
    DeleteMatchmakingConfigurationInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteMatchmakingConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute name
    #   <p>A unique identifier for the matchmaking rule set to be deleted. (Note: The rule set name is different from the optional "name"
    #               field in the rule set body.)  You can use either the rule set name or ARN value.</p>
    #
    #   @return [String]
    #
    DeleteMatchmakingRuleSetInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    DeleteMatchmakingRuleSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to be deleted. You can use either the fleet ID or ARN value.</p>
    #
    #   @return [String]
    #
    DeleteScalingPolicyInput = ::Struct.new(
      :name,
      :fleet_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteScalingPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute script_id
    #   <p>A unique identifier for the Realtime script to delete. You can use either the script ID or ARN value.</p>
    #
    #   @return [String]
    #
    DeleteScriptInput = ::Struct.new(
      :script_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteScriptOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute game_lift_aws_account_id
    #   <p>A unique identifier for the Amazon Web Services account that you use to manage your GameLift fleet.
    #               You can find your Account ID in the Amazon Web Services Management Console under account settings.</p>
    #
    #   @return [String]
    #
    # @!attribute peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with GameLift Fleets</a>.</p>
    #
    #   @return [String]
    #
    DeleteVpcPeeringAuthorizationInput = ::Struct.new(
      :game_lift_aws_account_id,
      :peer_vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVpcPeeringAuthorizationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet. This fleet specified must match the fleet referenced in the VPC peering
    #               connection record. You can use either the fleet ID or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_peering_connection_id
    #   <p>A unique identifier for a VPC peering connection. This value is included in the <a>VpcPeeringConnection</a> object, which can be retrieved by calling <a>DescribeVpcPeeringConnections</a>.</p>
    #
    #   @return [String]
    #
    DeleteVpcPeeringConnectionInput = ::Struct.new(
      :fleet_id,
      :vpc_peering_connection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVpcPeeringConnectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.
    #               Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute game_server_id
    #   <p>A custom string that uniquely identifies the game server to deregister.</p>
    #
    #   @return [String]
    #
    DeregisterGameServerInput = ::Struct.new(
      :game_server_group_name,
      :game_server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterGameServerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute alias_id
    #   <p>The unique identifier for the fleet alias that you want to retrieve. You can use
    #               either the alias ID or ARN value. </p>
    #
    #   @return [String]
    #
    DescribeAliasInput = ::Struct.new(
      :alias_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute alias
    #   <p>The requested alias resource.</p>
    #
    #   @return [Alias]
    #
    DescribeAliasOutput = ::Struct.new(
      :alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute build_id
    #   <p>A unique identifier for the build to retrieve properties for. You can use either the build ID or ARN value. </p>
    #
    #   @return [String]
    #
    DescribeBuildInput = ::Struct.new(
      :build_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute build
    #   <p>Set of properties describing the requested build.</p>
    #
    #   @return [Build]
    #
    DescribeBuildOutput = ::Struct.new(
      :build,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute ec2_instance_type
    #   <p>Name of an Amazon EC2 instance type that is supported in GameLift. A fleet instance type
    #               determines the computing resources of each instance in the fleet, including CPU, memory,
    #               storage, and networking capacity. Do not specify a value for this parameter to retrieve
    #               limits for all instance types.</p>
    #
    #   Enum, one of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The name of a remote location to request instance limits for, in the form of an Amazon Web Services
    #               Region code such as <code>us-west-2</code>.</p>
    #
    #   @return [String]
    #
    DescribeEC2InstanceLimitsInput = ::Struct.new(
      :ec2_instance_type,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute ec2_instance_limits
    #   <p>The maximum number of instances for the specified instance
    #               type.</p>
    #
    #   @return [Array<EC2InstanceLimit>]
    #
    DescribeEC2InstanceLimitsOutput = ::Struct.new(
      :ec2_instance_limits,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_ids
    #   <p>A list of unique fleet identifiers to retrieve attributes for. You can use either the
    #               fleet ID or ARN value. To retrieve attributes for all current fleets, do not include
    #               this parameter. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #
    #   @return [String]
    #
    DescribeFleetAttributesInput = ::Struct.new(
      :fleet_ids,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute fleet_attributes
    #   <p>A collection of objects containing attribute metadata for each requested fleet ID.
    #               Attribute objects are returned only for fleets that currently exist.</p>
    #
    #   @return [Array<FleetAttributes>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    DescribeFleetAttributesOutput = ::Struct.new(
      :fleet_attributes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_ids
    #   <p>A unique identifier for the fleet(s) to retrieve capacity information for. You can use either the fleet ID or ARN
    #               value. Leave this parameter empty to retrieve capacity information for all
    #               fleets.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #
    #   @return [String]
    #
    DescribeFleetCapacityInput = ::Struct.new(
      :fleet_ids,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute fleet_capacity
    #   <p>A collection of objects that contains capacity information for each requested fleet
    #               ID. Capacity objects are returned only for fleets that currently exist.</p>
    #
    #   @return [Array<FleetCapacity>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    DescribeFleetCapacityOutput = ::Struct.new(
      :fleet_capacity,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to get event logs for.  You can use either the fleet ID or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The earliest date to retrieve event logs for. If no start time is specified, this call
    #               returns entries starting from when the fleet was created to the specified end time.
    #               Format is a number expressed in Unix time as milliseconds (ex: "1469498468.057").</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The most recent date to retrieve event logs for. If no end time is specified, this
    #               call returns entries from the specified start time up to the present. Format is a number
    #               expressed in Unix time as milliseconds (ex: "1469498468.057").</p>
    #
    #   @return [Time]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    DescribeFleetEventsInput = ::Struct.new(
      :fleet_id,
      :start_time,
      :end_time,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute events
    #   <p>A collection of objects containing event log entries for the specified
    #               fleet.</p>
    #
    #   @return [Array<Event>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    DescribeFleetEventsOutput = ::Struct.new(
      :events,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to retrieve remote locations for. You can use either the fleet ID or ARN
    #               value.</p>
    #
    #   @return [String]
    #
    # @!attribute locations
    #   <p>A list of fleet locations to retrieve information for. Specify locations in the form of an Amazon Web Services Region code, such as
    #                   <code>us-west-2</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This limit is not currently enforced. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    DescribeFleetLocationAttributesInput = ::Struct.new(
      :fleet_id,
      :locations,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation. </p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that location attributes were requested for.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute location_attributes
    #   <p> Location-specific information on the requested fleet's remote locations. </p>
    #
    #   @return [Array<LocationAttributes>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    DescribeFleetLocationAttributesOutput = ::Struct.new(
      :fleet_id,
      :fleet_arn,
      :location_attributes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to request location capacity for.
    #               You can use either the fleet ID or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The fleet location to retrieve capacity information for. Specify a location in the form of an Amazon Web Services Region code, such as
    #                   <code>us-west-2</code>.</p>
    #
    #   @return [String]
    #
    DescribeFleetLocationCapacityInput = ::Struct.new(
      :fleet_id,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute fleet_capacity
    #   <p>Resource capacity information for the requested fleet location. Capacity objects are
    #               returned only for fleets and locations that currently exist.</p>
    #
    #   @return [FleetCapacity]
    #
    DescribeFleetLocationCapacityOutput = ::Struct.new(
      :fleet_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to request location utilization for.
    #               You can use either the fleet ID or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The fleet location to retrieve utilization information for. Specify a location in the form of an Amazon Web Services Region code, such as
    #                   <code>us-west-2</code>.</p>
    #
    #   @return [String]
    #
    DescribeFleetLocationUtilizationInput = ::Struct.new(
      :fleet_id,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute fleet_utilization
    #   <p>Utilization information for the requested fleet location. Utilization objects are
    #               returned only for fleets and locations that currently exist.</p>
    #
    #   @return [FleetUtilization]
    #
    DescribeFleetLocationUtilizationOutput = ::Struct.new(
      :fleet_utilization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to retrieve port settings for. You can use either the fleet ID or ARN
    #               value.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>A remote location to check for status of port setting updates. Use the Amazon Web Services Region code
    #               format, such as <code>us-west-2</code>.</p>
    #
    #   @return [String]
    #
    DescribeFleetPortSettingsInput = ::Struct.new(
      :fleet_id,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that was requested. </p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute inbound_permissions
    #   <p>The port settings for the requested fleet ID.</p>
    #
    #   @return [Array<IpPermission>]
    #
    # @!attribute update_status
    #   <p>The current status of updates to the fleet's port settings in the requested fleet
    #               location. A status of <code>PENDING_UPDATE</code> indicates that an update was requested
    #               for the fleet but has not yet been completed for the location.</p>
    #
    #   Enum, one of: ["PENDING_UPDATE"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The requested fleet location, expressed as an Amazon Web Services Region code,
    #               such as <code>us-west-2</code>. </p>
    #
    #   @return [String]
    #
    DescribeFleetPortSettingsOutput = ::Struct.new(
      :fleet_id,
      :fleet_arn,
      :inbound_permissions,
      :update_status,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_ids
    #   <p>A unique identifier for the fleet(s) to retrieve utilization data for. You can use either the fleet ID or ARN
    #               value. To retrieve attributes for all current fleets, do not include this parameter. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #
    #   @return [String]
    #
    DescribeFleetUtilizationInput = ::Struct.new(
      :fleet_ids,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute fleet_utilization
    #   <p>A collection of objects containing utilization information for each requested fleet
    #               ID. Utilization objects are returned only for fleets that currently exist.</p>
    #
    #   @return [Array<FleetUtilization>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    DescribeFleetUtilizationOutput = ::Struct.new(
      :fleet_utilization,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    #   @return [String]
    #
    DescribeGameServerGroupInput = ::Struct.new(
      :game_server_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group
    #   <p>An object with the property settings for the requested game server group resource. </p>
    #
    #   @return [GameServerGroup]
    #
    DescribeGameServerGroupOutput = ::Struct.new(
      :game_server_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.
    #               Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute game_server_id
    #   <p>A custom string that uniquely identifies the game server information to be retrieved.</p>
    #
    #   @return [String]
    #
    DescribeGameServerInput = ::Struct.new(
      :game_server_group_name,
      :game_server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_ids
    #   <p>The Amazon EC2 instance IDs that you want to retrieve status on. Amazon EC2 instance IDs use a
    #               17-character format, for example: <code>i-1234567890abcdef0</code>. To retrieve all
    #               instances in the game server group, leave this parameter empty. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>
    #               The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.
    #           </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #               A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
    #           </p>
    #
    #   @return [String]
    #
    DescribeGameServerInstancesInput = ::Struct.new(
      :game_server_group_name,
      :instance_ids,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_instances
    #   <p>
    #               The collection of requested game server instances.
    #           </p>
    #
    #   @return [Array<GameServerInstance>]
    #
    # @!attribute next_token
    #   <p>
    #               A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
    #           </p>
    #
    #   @return [String]
    #
    DescribeGameServerInstancesOutput = ::Struct.new(
      :game_server_instances,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server
    #   <p>Object that describes the requested game server.</p>
    #
    #   @return [GameServer]
    #
    DescribeGameServerOutput = ::Struct.new(
      :game_server,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to retrieve all game sessions active on the fleet. You can use either the fleet
    #               ID or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute game_session_id
    #   <p>A unique identifier for the game session to retrieve. </p>
    #
    #   @return [String]
    #
    # @!attribute alias_id
    #   <p>A unique identifier for the alias associated with the fleet to retrieve all game sessions for. You can use either
    #               the alias ID or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>A fleet location to get game sessions for. You can specify a fleet's home Region or a
    #               remote location. Use the Amazon Web Services Region code format, such as <code>us-west-2</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute status_filter
    #   <p>Game session status to filter results on. Possible game session statuses include
    #                   <code>ACTIVE</code>, <code>TERMINATED</code>, <code>ACTIVATING</code> and
    #                   <code>TERMINATING</code> (the last two are transitory). </p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    DescribeGameSessionDetailsInput = ::Struct.new(
      :fleet_id,
      :game_session_id,
      :alias_id,
      :location,
      :status_filter,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute game_session_details
    #   <p>A collection of properties for each game session that matches the request.</p>
    #
    #   @return [Array<GameSessionDetail>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    DescribeGameSessionDetailsOutput = ::Struct.new(
      :game_session_details,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute placement_id
    #   <p>A unique identifier for a game session placement to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeGameSessionPlacementInput = ::Struct.new(
      :placement_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute game_session_placement
    #   <p>Object that describes the requested game session placement.</p>
    #
    #   @return [GameSessionPlacement]
    #
    DescribeGameSessionPlacementOutput = ::Struct.new(
      :game_session_placement,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute names
    #   <p>A list of queue names to retrieve information for. You can use either the queue ID or
    #               ARN value. To request settings for all queues, leave this parameter empty. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. You can request up to 50 results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    DescribeGameSessionQueuesInput = ::Struct.new(
      :names,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute game_session_queues
    #   <p>A collection of objects that describe the requested game session queues.</p>
    #
    #   @return [Array<GameSessionQueue>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    DescribeGameSessionQueuesOutput = ::Struct.new(
      :game_session_queues,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to retrieve game sessions for. You can use either the fleet ID or ARN value. </p>
    #
    #   @return [String]
    #
    # @!attribute game_session_id
    #   <p>A unique identifier for the game session to retrieve. </p>
    #
    #   @return [String]
    #
    # @!attribute alias_id
    #   <p>A unique identifier for the alias associated with the fleet to retrieve game sessions for. You can use either the
    #               alias ID or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>A fleet location to get game session details for. You can specify a fleet's home
    #               Region or a remote location. Use the Amazon Web Services Region code format, such as
    #                   <code>us-west-2</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute status_filter
    #   <p>Game session status to filter results on. You can filter on the following states:
    #                   <code>ACTIVE</code>, <code>TERMINATED</code>, <code>ACTIVATING</code>, and
    #                   <code>TERMINATING</code>. The last two are transitory and used for only very brief
    #               periods of time. </p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    DescribeGameSessionsInput = ::Struct.new(
      :fleet_id,
      :game_session_id,
      :alias_id,
      :location,
      :status_filter,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute game_sessions
    #   <p>A collection of properties for each game session that matches the request.</p>
    #
    #   @return [Array<GameSession>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    DescribeGameSessionsOutput = ::Struct.new(
      :game_sessions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to retrieve instance information for.  You can use either the fleet ID or ARN
    #               value.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>A unique identifier for an instance to retrieve. Specify an instance ID or leave
    #               blank to retrieve all instances in the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The name of a location to retrieve instance information for, in the form of an Amazon Web Services
    #               Region code such as <code>us-west-2</code>. </p>
    #
    #   @return [String]
    #
    DescribeInstancesInput = ::Struct.new(
      :fleet_id,
      :instance_id,
      :limit,
      :next_token,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute instances
    #   <p>A collection of objects containing properties for each instance returned.</p>
    #
    #   @return [Array<Instance>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    DescribeInstancesOutput = ::Struct.new(
      :instances,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute names
    #   <p>A unique identifier for the matchmaking configuration(s) to retrieve. You can use either the configuration name or ARN value. To
    #               request all existing configurations, leave this parameter empty.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute rule_set_name
    #   <p>A unique identifier for the matchmaking rule set. You can use either the rule set name or ARN value. Use this parameter to
    #               retrieve all matchmaking configurations that use this rule set.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is limited to 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    DescribeMatchmakingConfigurationsInput = ::Struct.new(
      :names,
      :rule_set_name,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute configurations
    #   <p>A collection of requested matchmaking configurations.</p>
    #
    #   @return [Array<MatchmakingConfiguration>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    DescribeMatchmakingConfigurationsOutput = ::Struct.new(
      :configurations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute ticket_ids
    #   <p>A unique identifier for a matchmaking ticket. You can include up to 10 ID values. </p>
    #
    #   @return [Array<String>]
    #
    DescribeMatchmakingInput = ::Struct.new(
      :ticket_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute ticket_list
    #   <p>A collection of existing matchmaking ticket objects matching the request.</p>
    #
    #   @return [Array<MatchmakingTicket>]
    #
    DescribeMatchmakingOutput = ::Struct.new(
      :ticket_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute names
    #   <p>A list of one or more matchmaking rule set names to retrieve details for. (Note: The
    #               rule set name is different from the optional "name" field in the rule set body.) You can
    #               use either the rule set name or ARN value. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    DescribeMatchmakingRuleSetsInput = ::Struct.new(
      :names,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute rule_sets
    #   <p>A collection of requested matchmaking rule set objects. </p>
    #
    #   @return [Array<MatchmakingRuleSet>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    DescribeMatchmakingRuleSetsOutput = ::Struct.new(
      :rule_sets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute game_session_id
    #   <p>A unique identifier for the game session to retrieve player sessions for.</p>
    #
    #   @return [String]
    #
    # @!attribute player_id
    #   <p>A unique identifier for a player to retrieve player sessions for.</p>
    #
    #   @return [String]
    #
    # @!attribute player_session_id
    #   <p>A unique identifier for a player session to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute player_session_status_filter
    #   <p>Player session status to filter results on.</p>
    #            <p>Possible player session statuses include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>RESERVED</b> -- The player session request has been
    #                   received, but the player has not yet connected to the server process and/or been
    #                   validated. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ACTIVE</b> -- The player has been validated by the
    #                   server process and is currently connected.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>COMPLETED</b> -- The player connection has been
    #                   dropped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TIMEDOUT</b> -- A player session request was
    #                   received, but the player did not connect and/or was not validated within the
    #                   timeout limit (60 seconds).</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. If a player session ID is specified, this parameter is ignored.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. If a player session ID is specified, this parameter is ignored.</p>
    #
    #   @return [String]
    #
    DescribePlayerSessionsInput = ::Struct.new(
      :game_session_id,
      :player_id,
      :player_session_id,
      :player_session_status_filter,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute player_sessions
    #   <p>A collection of objects containing properties for each player session that matches
    #           the request.</p>
    #
    #   @return [Array<PlayerSession>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    DescribePlayerSessionsOutput = ::Struct.new(
      :player_sessions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to get the runtime configuration for. You can use either the fleet ID or ARN
    #               value.</p>
    #
    #   @return [String]
    #
    DescribeRuntimeConfigurationInput = ::Struct.new(
      :fleet_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute runtime_configuration
    #   <p>Instructions that describe how server processes should be launched and maintained on
    #               each instance in the fleet.</p>
    #
    #   @return [RuntimeConfiguration]
    #
    DescribeRuntimeConfigurationOutput = ::Struct.new(
      :runtime_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet for which to retrieve scaling policies. You can use either the fleet ID or ARN
    #               value.</p>
    #
    #   @return [String]
    #
    # @!attribute status_filter
    #   <p>Scaling policy status to filter results on. A scaling policy is only in force when
    #               in an <code>ACTIVE</code> status.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>ACTIVE</b> -- The scaling policy is currently in
    #                       force.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>UPDATEREQUESTED</b> -- A request to update the
    #                       scaling policy has been received.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>UPDATING</b> -- A change is being made to the
    #                       scaling policy.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>DELETEREQUESTED</b> -- A request to delete the
    #                       scaling policy has been received.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>DELETING</b> -- The scaling policy is being
    #                       deleted.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>DELETED</b> -- The scaling policy has been
    #                       deleted.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>ERROR</b> -- An error occurred in creating the
    #                       policy. It should be removed and recreated.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ACTIVE", "UPDATE_REQUESTED", "UPDATING", "DELETE_REQUESTED", "DELETING", "DELETED", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>
    #               The fleet location. If you don't specify this value, the response contains the scaling policies of every location in the fleet.
    #           </p>
    #
    #   @return [String]
    #
    DescribeScalingPoliciesInput = ::Struct.new(
      :fleet_id,
      :status_filter,
      :limit,
      :next_token,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute scaling_policies
    #   <p>A collection of objects containing the scaling policies matching the
    #               request.</p>
    #
    #   @return [Array<ScalingPolicy>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    DescribeScalingPoliciesOutput = ::Struct.new(
      :scaling_policies,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute script_id
    #   <p>A unique identifier for the Realtime script to retrieve properties for. You can use either the script ID or ARN
    #               value.</p>
    #
    #   @return [String]
    #
    DescribeScriptInput = ::Struct.new(
      :script_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute script
    #   <p>A set of properties describing the requested script.</p>
    #
    #   @return [Script]
    #
    DescribeScriptOutput = ::Struct.new(
      :script,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeVpcPeeringAuthorizationsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vpc_peering_authorizations
    #   <p>A collection of objects that describe all valid VPC peering operations for the
    #               current Amazon Web Services account.</p>
    #
    #   @return [Array<VpcPeeringAuthorization>]
    #
    DescribeVpcPeeringAuthorizationsOutput = ::Struct.new(
      :vpc_peering_authorizations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet. You can use either the fleet ID or ARN value.</p>
    #
    #   @return [String]
    #
    DescribeVpcPeeringConnectionsInput = ::Struct.new(
      :fleet_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute vpc_peering_connections
    #   <p>A collection of VPC peering connection records that match the request.</p>
    #
    #   @return [Array<VpcPeeringConnection>]
    #
    DescribeVpcPeeringConnectionsOutput = ::Struct.new(
      :vpc_peering_connections,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Player information for use when creating player sessions using a game session
    #         placement request with <a>StartGameSessionPlacement</a>.</p>
    #
    # @!attribute player_id
    #   <p>A unique identifier for a player to associate with the player session.</p>
    #
    #   @return [String]
    #
    # @!attribute player_data
    #   <p>Developer-defined information related to a player. GameLift does not use this data, so it can be formatted as needed for use in the game.</p>
    #
    #   @return [String]
    #
    DesiredPlayerSession = ::Struct.new(
      :player_id,
      :player_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Resource capacity settings. Fleet capacity is measured in Amazon EC2 instances. Pending and
    #             terminating counts are non-zero when the fleet capacity is adjusting to a scaling event
    #             or if access to resources is temporarily affected.</p>
    #         <p>EC2 instance counts are part of <a>FleetCapacity</a>.</p>
    #
    # @!attribute desired
    #   <p>Ideal number of active instances. GameLift will always try to maintain the desired
    #               number of instances. Capacity is scaled up or down by changing the desired instances. </p>
    #
    #   @return [Integer]
    #
    # @!attribute minimum
    #   <p>The minimum instance count value allowed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum
    #   <p>The maximum instance count value allowed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pending
    #   <p>Number of instances that are starting but not yet active.</p>
    #
    #   @return [Integer]
    #
    # @!attribute active
    #   <p>Actual number of instances that are ready to host game sessions.</p>
    #
    #   @return [Integer]
    #
    # @!attribute idle
    #   <p>Number of active instances that are not currently hosting a game session.</p>
    #
    #   @return [Integer]
    #
    # @!attribute terminating
    #   <p>Number of instances that are no longer active but haven't yet been terminated.</p>
    #
    #   @return [Integer]
    #
    EC2InstanceCounts = ::Struct.new(
      :desired,
      :minimum,
      :maximum,
      :pending,
      :active,
      :idle,
      :terminating,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The GameLift service limits for an Amazon EC2 instance type and current utilization. GameLift
    #             allows Amazon Web Services accounts a maximum number of instances, per instance type, per Amazon Web Services Region or
    #             location, for use with GameLift. You can request an limit increase for your account by
    #             using the <b>Service limits</b> page in the GameLift
    #             console.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #         <p>
    #             <a>DescribeEC2InstanceLimits</a>
    #          </p>
    #
    # @!attribute ec2_instance_type
    #   <p>The name of an Amazon EC2 instance type. See <a href="http://aws.amazon.com/ec2/instance-types/">Amazon Elastic Compute Cloud Instance Types</a> for detailed
    #               descriptions. </p>
    #
    #   Enum, one of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"]
    #
    #   @return [String]
    #
    # @!attribute current_instances
    #   <p>The number of instances for the specified type and location that are currently being
    #               used by the Amazon Web Services account. </p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_limit
    #   <p>The number of instances that is allowed for the specified instance type and
    #               location.</p>
    #
    #   @return [Integer]
    #
    # @!attribute location
    #   <p>An Amazon Web Services Region code, such as <code>us-west-2</code>. </p>
    #
    #   @return [String]
    #
    EC2InstanceLimit = ::Struct.new(
      :ec2_instance_type,
      :current_instances,
      :instance_limit,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EC2InstanceType
    #
    module EC2InstanceType
      # No documentation available.
      #
      t2_micro = "t2.micro"

      # No documentation available.
      #
      t2_small = "t2.small"

      # No documentation available.
      #
      t2_medium = "t2.medium"

      # No documentation available.
      #
      t2_large = "t2.large"

      # No documentation available.
      #
      c3_large = "c3.large"

      # No documentation available.
      #
      c3_xlarge = "c3.xlarge"

      # No documentation available.
      #
      c3_2xlarge = "c3.2xlarge"

      # No documentation available.
      #
      c3_4xlarge = "c3.4xlarge"

      # No documentation available.
      #
      c3_8xlarge = "c3.8xlarge"

      # No documentation available.
      #
      c4_large = "c4.large"

      # No documentation available.
      #
      c4_xlarge = "c4.xlarge"

      # No documentation available.
      #
      c4_2xlarge = "c4.2xlarge"

      # No documentation available.
      #
      c4_4xlarge = "c4.4xlarge"

      # No documentation available.
      #
      c4_8xlarge = "c4.8xlarge"

      # No documentation available.
      #
      c5_large = "c5.large"

      # No documentation available.
      #
      c5_xlarge = "c5.xlarge"

      # No documentation available.
      #
      c5_2xlarge = "c5.2xlarge"

      # No documentation available.
      #
      c5_4xlarge = "c5.4xlarge"

      # No documentation available.
      #
      c5_9xlarge = "c5.9xlarge"

      # No documentation available.
      #
      c5_12xlarge = "c5.12xlarge"

      # No documentation available.
      #
      c5_18xlarge = "c5.18xlarge"

      # No documentation available.
      #
      c5_24xlarge = "c5.24xlarge"

      # No documentation available.
      #
      c5a_large = "c5a.large"

      # No documentation available.
      #
      c5a_xlarge = "c5a.xlarge"

      # No documentation available.
      #
      c5a_2xlarge = "c5a.2xlarge"

      # No documentation available.
      #
      c5a_4xlarge = "c5a.4xlarge"

      # No documentation available.
      #
      c5a_8xlarge = "c5a.8xlarge"

      # No documentation available.
      #
      c5a_12xlarge = "c5a.12xlarge"

      # No documentation available.
      #
      c5a_16xlarge = "c5a.16xlarge"

      # No documentation available.
      #
      c5a_24xlarge = "c5a.24xlarge"

      # No documentation available.
      #
      r3_large = "r3.large"

      # No documentation available.
      #
      r3_xlarge = "r3.xlarge"

      # No documentation available.
      #
      r3_2xlarge = "r3.2xlarge"

      # No documentation available.
      #
      r3_4xlarge = "r3.4xlarge"

      # No documentation available.
      #
      r3_8xlarge = "r3.8xlarge"

      # No documentation available.
      #
      r4_large = "r4.large"

      # No documentation available.
      #
      r4_xlarge = "r4.xlarge"

      # No documentation available.
      #
      r4_2xlarge = "r4.2xlarge"

      # No documentation available.
      #
      r4_4xlarge = "r4.4xlarge"

      # No documentation available.
      #
      r4_8xlarge = "r4.8xlarge"

      # No documentation available.
      #
      r4_16xlarge = "r4.16xlarge"

      # No documentation available.
      #
      r5_large = "r5.large"

      # No documentation available.
      #
      r5_xlarge = "r5.xlarge"

      # No documentation available.
      #
      r5_2xlarge = "r5.2xlarge"

      # No documentation available.
      #
      r5_4xlarge = "r5.4xlarge"

      # No documentation available.
      #
      r5_8xlarge = "r5.8xlarge"

      # No documentation available.
      #
      r5_12xlarge = "r5.12xlarge"

      # No documentation available.
      #
      r5_16xlarge = "r5.16xlarge"

      # No documentation available.
      #
      r5_24xlarge = "r5.24xlarge"

      # No documentation available.
      #
      r5a_large = "r5a.large"

      # No documentation available.
      #
      r5a_xlarge = "r5a.xlarge"

      # No documentation available.
      #
      r5a_2xlarge = "r5a.2xlarge"

      # No documentation available.
      #
      r5a_4xlarge = "r5a.4xlarge"

      # No documentation available.
      #
      r5a_8xlarge = "r5a.8xlarge"

      # No documentation available.
      #
      r5a_12xlarge = "r5a.12xlarge"

      # No documentation available.
      #
      r5a_16xlarge = "r5a.16xlarge"

      # No documentation available.
      #
      r5a_24xlarge = "r5a.24xlarge"

      # No documentation available.
      #
      m3_medium = "m3.medium"

      # No documentation available.
      #
      m3_large = "m3.large"

      # No documentation available.
      #
      m3_xlarge = "m3.xlarge"

      # No documentation available.
      #
      m3_2xlarge = "m3.2xlarge"

      # No documentation available.
      #
      m4_large = "m4.large"

      # No documentation available.
      #
      m4_xlarge = "m4.xlarge"

      # No documentation available.
      #
      m4_2xlarge = "m4.2xlarge"

      # No documentation available.
      #
      m4_4xlarge = "m4.4xlarge"

      # No documentation available.
      #
      m4_10xlarge = "m4.10xlarge"

      # No documentation available.
      #
      m5_large = "m5.large"

      # No documentation available.
      #
      m5_xlarge = "m5.xlarge"

      # No documentation available.
      #
      m5_2xlarge = "m5.2xlarge"

      # No documentation available.
      #
      m5_4xlarge = "m5.4xlarge"

      # No documentation available.
      #
      m5_8xlarge = "m5.8xlarge"

      # No documentation available.
      #
      m5_12xlarge = "m5.12xlarge"

      # No documentation available.
      #
      m5_16xlarge = "m5.16xlarge"

      # No documentation available.
      #
      m5_24xlarge = "m5.24xlarge"

      # No documentation available.
      #
      m5a_large = "m5a.large"

      # No documentation available.
      #
      m5a_xlarge = "m5a.xlarge"

      # No documentation available.
      #
      m5a_2xlarge = "m5a.2xlarge"

      # No documentation available.
      #
      m5a_4xlarge = "m5a.4xlarge"

      # No documentation available.
      #
      m5a_8xlarge = "m5a.8xlarge"

      # No documentation available.
      #
      m5a_12xlarge = "m5a.12xlarge"

      # No documentation available.
      #
      m5a_16xlarge = "m5a.16xlarge"

      # No documentation available.
      #
      m5a_24xlarge = "m5a.24xlarge"
    end

    # <p>Log entry describing an event that involves GameLift resources (such as a fleet). In
    #             addition to tracking activity, event codes and messages can provide additional
    #             information for troubleshooting and debugging problems.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #         <p>
    #             <a>DescribeFleetEvents</a>
    #          </p>
    #
    # @!attribute event_id
    #   <p>A unique identifier for a fleet event.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>A unique identifier for an event resource, such as a fleet ID.</p>
    #
    #   @return [String]
    #
    # @!attribute event_code
    #   <p>The type of event being logged. </p>
    #
    #
    #           <p>
    #               <b>Fleet state transition events:</b>
    #            </p>
    #           <ul>
    #               <li>
    #                  <p>FLEET_CREATED -- A fleet resource was successfully created with a status of <code>NEW</code>. Event messaging includes the fleet ID.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_STATE_DOWNLOADING -- Fleet status changed from <code>NEW</code> to <code>DOWNLOADING</code>. The compressed build has started downloading to a fleet instance for installation.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_STATE_VALIDATING -- Fleet status changed from <code>DOWNLOADING</code> to <code>VALIDATING</code>. GameLift has successfully downloaded the build and is now validating the build files.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_STATE_BUILDING -- Fleet status changed from <code>VALIDATING</code> to <code>BUILDING</code>. GameLift has successfully verified the build files and is now running the installation scripts.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_STATE_ACTIVATING -- Fleet status changed from <code>BUILDING</code> to <code>ACTIVATING</code>. GameLift is trying to launch an instance and test the connectivity between the build and the GameLift Service via the Server SDK.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_STATE_ACTIVE -- The fleet's status changed from <code>ACTIVATING</code> to <code>ACTIVE</code>. The fleet is now ready to host game sessions.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_STATE_ERROR -- The Fleet's status changed to <code>ERROR</code>.  Describe the fleet event message for more details.</p>
    #               </li>
    #            </ul>
    #
    #
    #           <p>
    #               <b>Fleet creation events (ordered by fleet creation activity):</b>
    #            </p>
    #           <ul>
    #               <li>
    #                  <p>FLEET_BINARY_DOWNLOAD_FAILED -- The build failed to download to the fleet instance.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_CREATION_EXTRACTING_BUILD -- The game server build was successfully downloaded to an instance, and the build files are now being extracted from the uploaded build and saved to an instance. Failure at this stage prevents a fleet from moving to ACTIVE status. Logs for this stage display a list of the files that are extracted and saved on the instance. Access the logs by using the URL in <i>PreSignedLogUrl</i>.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_CREATION_RUNNING_INSTALLER -- The game server build files were successfully extracted, and the GameLift is now running the build's install script (if one is included). Failure in this stage prevents a fleet from moving to ACTIVE status. Logs for this stage list the installation steps and whether or not the install completed successfully. Access the logs by using the URL in <i>PreSignedLogUrl</i>.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_CREATION_VALIDATING_RUNTIME_CONFIG -- The build process was successful, and the GameLift is now verifying that the game server launch paths, which are specified in the fleet's runtime configuration, exist. If any listed launch path exists, GameLift tries to launch a game server process and waits for the process to report ready. Failures in this stage prevent a fleet from moving to <code>ACTIVE</code> status. Logs for this stage list the launch paths in the runtime configuration and indicate whether each is found. Access the logs by using the URL in <i>PreSignedLogUrl</i>.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND -- Validation of the runtime configuration failed because the executable specified in a launch path does not exist on the instance.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE -- Validation of the runtime configuration failed because the executable specified in a launch path failed to run on the fleet instance.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_VALIDATION_TIMED_OUT -- Validation of the fleet at the end of creation timed out.  Try fleet creation again.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_ACTIVATION_FAILED -- The fleet failed to successfully complete one of the steps in the fleet activation process. This event code indicates that the game build was successfully downloaded to a fleet instance, built, and validated, but was not able to start a server process. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html fleets-creating-debug-creation">Debug Fleet Creation Issues</a>.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_ACTIVATION_FAILED_NO_INSTANCES -- Fleet creation was not able to obtain any instances based on the input fleet attributes.  Try again at a different time or choose a different combination of fleet attributes such as fleet type, instance type, etc.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_INITIALIZATION_FAILED -- A generic exception occurred during fleet creation.  Describe the fleet event message for more details.</p>
    #               </li>
    #            </ul>
    #
    #
    #           <p>
    #               <b>VPC peering events:</b>
    #            </p>
    #           <ul>
    #               <li>
    #                   <p>FLEET_VPC_PEERING_SUCCEEDED -- A VPC peering connection has been
    #                       established between the VPC for an GameLift fleet and a VPC in your Amazon Web Services
    #                       account.</p>
    #               </li>
    #               <li>
    #                   <p>FLEET_VPC_PEERING_FAILED -- A requested VPC peering connection has failed.
    #                       Event details and status information (see <a>DescribeVpcPeeringConnections</a>) provide additional detail. A
    #                       common reason for peering failure is that the two VPCs have overlapping CIDR
    #                       blocks of IPv4 addresses. To resolve this, change the CIDR block for the VPC in
    #                       your Amazon Web Services account. For more information on VPC peering failures, see <a href="https://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html">https://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html</a>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>FLEET_VPC_PEERING_DELETED -- A VPC peering connection has been successfully
    #                       deleted.</p>
    #               </li>
    #            </ul>
    #
    #
    #           <p>
    #               <b>Spot instance events:</b>
    #            </p>
    #           <ul>
    #               <li>
    #                   <p> INSTANCE_INTERRUPTED -- A spot instance was interrupted by EC2 with a
    #                       two-minute notification.</p>
    #               </li>
    #            </ul>
    #
    #
    #           <p>
    #               <b>Spot process events:</b>
    #            </p>
    #           <ul>
    #               <li>
    #                  <p>SERVER_PROCESS_INVALID_PATH -- The game server executable or script could not be found based on the Fleet runtime configuration.  Check that the launch path is correct based on the operating system of the Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT -- The server process did not call InitSDK() within the time expected.  Check your game session log to see why InitSDK() was not called in time.</p>
    #               </li>
    #               <li>
    #                  <p>SERVER_PROCESS_PROCESS_READY_TIMEOUT -- The server process did not call ProcessReady() within the time expected after calling InitSDK().  Check your game session log to see why ProcessReady() was not called in time.</p>
    #               </li>
    #               <li>
    #                  <p>SERVER_PROCESS_CRASHED -- The server process exited without calling ProcessEnding().  Check your game session log to see why ProcessEnding() was not called.</p>
    #               </li>
    #               <li>
    #                  <p>SERVER_PROCESS_TERMINATED_UNHEALTHY -- The server process did not report a valid health check for too long and was therefore terminated by GameLift.  Check your game session log to see if the thread became stuck processing a synchronous task for too long.</p>
    #               </li>
    #               <li>
    #                  <p>SERVER_PROCESS_FORCE_TERMINATED -- The server process did not exit cleanly after OnProcessTerminate() was sent within the time expected.  Check your game session log to see why termination took longer than expected.</p>
    #               </li>
    #               <li>
    #                  <p>SERVER_PROCESS_PROCESS_EXIT_TIMEOUT -- The server process did not exit cleanly within the time expected after calling ProcessEnding().  Check your game session log to see why termination took longer than expected.</p>
    #               </li>
    #            </ul>
    #
    #
    #           <p>
    #               <b>Game session events:</b>
    #            </p>
    #           <ul>
    #               <li>
    #                  <p>GAME_SESSION_ACTIVATION_TIMEOUT -- GameSession failed to activate within the expected time.  Check your game session log to see why ActivateGameSession() took longer to complete than expected.</p>
    #               </li>
    #            </ul>
    #
    #
    #           <p>
    #               <b>Other fleet events:</b>
    #            </p>
    #           <ul>
    #               <li>
    #                   <p>FLEET_SCALING_EVENT -- A change was made to the fleet's capacity settings
    #                       (desired instances, minimum/maximum scaling limits). Event messaging includes
    #                       the new capacity settings.</p>
    #               </li>
    #               <li>
    #                   <p>FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED -- A change was made to
    #                       the fleet's game session protection policy setting. Event messaging includes
    #                       both the old and new policy setting. </p>
    #               </li>
    #               <li>
    #                   <p>FLEET_DELETED -- A request to delete a fleet was initiated.</p>
    #               </li>
    #               <li>
    #                   <p> GENERIC_EVENT -- An unspecified event has occurred.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["GENERIC_EVENT", "FLEET_CREATED", "FLEET_DELETED", "FLEET_SCALING_EVENT", "FLEET_STATE_DOWNLOADING", "FLEET_STATE_VALIDATING", "FLEET_STATE_BUILDING", "FLEET_STATE_ACTIVATING", "FLEET_STATE_ACTIVE", "FLEET_STATE_ERROR", "FLEET_INITIALIZATION_FAILED", "FLEET_BINARY_DOWNLOAD_FAILED", "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND", "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE", "FLEET_VALIDATION_TIMED_OUT", "FLEET_ACTIVATION_FAILED", "FLEET_ACTIVATION_FAILED_NO_INSTANCES", "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED", "SERVER_PROCESS_INVALID_PATH", "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT", "SERVER_PROCESS_PROCESS_READY_TIMEOUT", "SERVER_PROCESS_CRASHED", "SERVER_PROCESS_TERMINATED_UNHEALTHY", "SERVER_PROCESS_FORCE_TERMINATED", "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT", "GAME_SESSION_ACTIVATION_TIMEOUT", "FLEET_CREATION_EXTRACTING_BUILD", "FLEET_CREATION_RUNNING_INSTALLER", "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG", "FLEET_VPC_PEERING_SUCCEEDED", "FLEET_VPC_PEERING_FAILED", "FLEET_VPC_PEERING_DELETED", "INSTANCE_INTERRUPTED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Additional information related to the event.</p>
    #
    #   @return [String]
    #
    # @!attribute event_time
    #   <p>Time stamp indicating when this event occurred. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute pre_signed_log_url
    #   <p>Location of stored logs with additional detail that is related to the event. This
    #               is useful for debugging issues. The URL is valid for 15 minutes. You can also access
    #               fleet creation logs through the GameLift console.</p>
    #
    #   @return [String]
    #
    Event = ::Struct.new(
      :event_id,
      :resource_id,
      :event_code,
      :message,
      :event_time,
      :pre_signed_log_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EventCode
    #
    module EventCode
      # No documentation available.
      #
      GENERIC_EVENT = "GENERIC_EVENT"

      # No documentation available.
      #
      FLEET_CREATED = "FLEET_CREATED"

      # No documentation available.
      #
      FLEET_DELETED = "FLEET_DELETED"

      # No documentation available.
      #
      FLEET_SCALING_EVENT = "FLEET_SCALING_EVENT"

      # No documentation available.
      #
      FLEET_STATE_DOWNLOADING = "FLEET_STATE_DOWNLOADING"

      # No documentation available.
      #
      FLEET_STATE_VALIDATING = "FLEET_STATE_VALIDATING"

      # No documentation available.
      #
      FLEET_STATE_BUILDING = "FLEET_STATE_BUILDING"

      # No documentation available.
      #
      FLEET_STATE_ACTIVATING = "FLEET_STATE_ACTIVATING"

      # No documentation available.
      #
      FLEET_STATE_ACTIVE = "FLEET_STATE_ACTIVE"

      # No documentation available.
      #
      FLEET_STATE_ERROR = "FLEET_STATE_ERROR"

      # No documentation available.
      #
      FLEET_INITIALIZATION_FAILED = "FLEET_INITIALIZATION_FAILED"

      # No documentation available.
      #
      FLEET_BINARY_DOWNLOAD_FAILED = "FLEET_BINARY_DOWNLOAD_FAILED"

      # No documentation available.
      #
      FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND = "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND"

      # No documentation available.
      #
      FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE = "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE"

      # No documentation available.
      #
      FLEET_VALIDATION_TIMED_OUT = "FLEET_VALIDATION_TIMED_OUT"

      # No documentation available.
      #
      FLEET_ACTIVATION_FAILED = "FLEET_ACTIVATION_FAILED"

      # No documentation available.
      #
      FLEET_ACTIVATION_FAILED_NO_INSTANCES = "FLEET_ACTIVATION_FAILED_NO_INSTANCES"

      # No documentation available.
      #
      FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED = "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED"

      # No documentation available.
      #
      SERVER_PROCESS_INVALID_PATH = "SERVER_PROCESS_INVALID_PATH"

      # No documentation available.
      #
      SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT = "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT"

      # No documentation available.
      #
      SERVER_PROCESS_PROCESS_READY_TIMEOUT = "SERVER_PROCESS_PROCESS_READY_TIMEOUT"

      # No documentation available.
      #
      SERVER_PROCESS_CRASHED = "SERVER_PROCESS_CRASHED"

      # No documentation available.
      #
      SERVER_PROCESS_TERMINATED_UNHEALTHY = "SERVER_PROCESS_TERMINATED_UNHEALTHY"

      # No documentation available.
      #
      SERVER_PROCESS_FORCE_TERMINATED = "SERVER_PROCESS_FORCE_TERMINATED"

      # No documentation available.
      #
      SERVER_PROCESS_PROCESS_EXIT_TIMEOUT = "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT"

      # No documentation available.
      #
      GAME_SESSION_ACTIVATION_TIMEOUT = "GAME_SESSION_ACTIVATION_TIMEOUT"

      # No documentation available.
      #
      FLEET_CREATION_EXTRACTING_BUILD = "FLEET_CREATION_EXTRACTING_BUILD"

      # No documentation available.
      #
      FLEET_CREATION_RUNNING_INSTALLER = "FLEET_CREATION_RUNNING_INSTALLER"

      # No documentation available.
      #
      FLEET_CREATION_VALIDATING_RUNTIME_CONFIG = "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG"

      # No documentation available.
      #
      FLEET_VPC_PEERING_SUCCEEDED = "FLEET_VPC_PEERING_SUCCEEDED"

      # No documentation available.
      #
      FLEET_VPC_PEERING_FAILED = "FLEET_VPC_PEERING_FAILED"

      # No documentation available.
      #
      FLEET_VPC_PEERING_DELETED = "FLEET_VPC_PEERING_DELETED"

      # No documentation available.
      #
      INSTANCE_INTERRUPTED = "INSTANCE_INTERRUPTED"
    end

    # <p>A list of fleet locations where a game session queue can place new game sessions. You
    #             can use a filter to temporarily turn off placements for specific locations. For queues
    #             that have multi-location fleets, you can use a filter configuration allow placement with
    #             some, but not all of these locations.</p>
    #         <p>Filter configurations are part of a <a>GameSessionQueue</a>.</p>
    #
    # @!attribute allowed_locations
    #   <p> A list of locations to allow game session placement in, in the form of Amazon Web Services Region
    #               codes such as <code>us-west-2</code>. </p>
    #
    #   @return [Array<String>]
    #
    FilterConfiguration = ::Struct.new(
      :allowed_locations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FleetAction
    #
    module FleetAction
      # No documentation available.
      #
      AutoScaling = "AUTO_SCALING"
    end

    # <p>Describes a GameLift fleet of game hosting resources.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #         <p>
    #             <a>CreateFleet</a> | <a>DescribeFleetAttributes</a>
    #          </p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. In a GameLift fleet ARN, the resource ID matches the <code>FleetId</code>
    #               value.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_type
    #   <p>The kind of instances, On-Demand or Spot, that this fleet uses.</p>
    #
    #   Enum, one of: ["ON_DEMAND", "SPOT"]
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The Amazon EC2 instance type that determines the computing resources of each instance in
    #               the fleet. Instance type defines the CPU, memory, storage, and networking capacity. See
    #                   <a href="http://aws.amazon.com/ec2/instance-types/">Amazon Elastic Compute Cloud Instance Types</a>
    #               for detailed descriptions.</p>
    #
    #   Enum, one of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A human-readable description of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute termination_time
    #   <p>A time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>Current status of the fleet. Possible fleet statuses include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>NEW</b> -- A new fleet has been defined and desired
    #                       instances is set to 1. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>DOWNLOADING/VALIDATING/BUILDING/ACTIVATING</b> --
    #                       GameLift is setting up the new fleet, creating new instances with the game build
    #                       or Realtime script and starting server processes.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>ACTIVE</b> -- Hosts can now accept game
    #                       sessions.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>ERROR</b> -- An error occurred when downloading,
    #                       validating, building, or activating the fleet.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>DELETING</b> -- Hosts are responding to a delete
    #                       fleet request.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>TERMINATED</b> -- The fleet no longer
    #                       exists.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"]
    #
    #   @return [String]
    #
    # @!attribute build_id
    #   <p>A unique identifier for the build resource that is deployed on instances in this fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute build_arn
    #   <p> The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the GameLift build resource that is deployed on instances in
    #               this fleet. In a GameLift build ARN, the resource ID matches the <code>BuildId</code>
    #               value.</p>
    #
    #   @return [String]
    #
    # @!attribute script_id
    #   <p>A unique identifier for the Realtime script resource that is deployed on instances in this fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute script_arn
    #   <p> The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the GameLift script resource that is deployed on instances
    #               in this fleet. In a GameLift script ARN, the resource ID matches the
    #                   <code>ScriptId</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute server_launch_path
    #   <p>
    #               <b>This parameter is no longer used.</b> Server launch paths
    #               are now defined  using the fleet's <a>RuntimeConfiguration</a> parameter.
    #               Requests that use this parameter instead continue to be valid.</p>
    #
    #   @return [String]
    #
    # @!attribute server_launch_parameters
    #   <p>
    #               <b>This parameter is no longer used.</b> Server launch
    #               parameters are now defined  using the fleet's <a>RuntimeConfiguration</a>
    #               parameter. Requests that use this parameter instead continue to be valid.</p>
    #
    #   @return [String]
    #
    # @!attribute log_paths
    #   <p>
    #               <b>This parameter is no longer used.</b> Game session log
    #               paths are now defined using the GameLift server API <code>ProcessReady()</code>
    #               <code>logParameters</code>. See more information in the <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html gamelift-sdk-server-api-ref-dataypes-process">Server API Reference</a>. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute new_game_session_protection_policy
    #   <p>The type of game session protection to set on all new instances that are started in
    #               the fleet.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>NoProtection</b> -- The game session can be
    #                       terminated during a scale-down event.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>FullProtection</b> -- If the game session is in an
    #                           <code>ACTIVE</code> status, it cannot be terminated during a scale-down
    #                       event.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NoProtection", "FullProtection"]
    #
    #   @return [String]
    #
    # @!attribute operating_system
    #   <p>The operating system of the fleet's computing resources. A fleet's operating system is
    #               determined by the OS of the build or script that is deployed on this fleet.</p>
    #
    #   Enum, one of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"]
    #
    #   @return [String]
    #
    # @!attribute resource_creation_limit_policy
    #   <p>The fleet policy that limits the number of game sessions an individual player can
    #               create over a span of time.</p>
    #
    #   @return [ResourceCreationLimitPolicy]
    #
    # @!attribute metric_groups
    #   <p>Name of a metric group that metrics for this fleet are added to. In Amazon CloudWatch,
    #               you can view aggregated metrics for fleets that are in a metric group. A fleet can be
    #               included in only one metric group at a time.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute stopped_actions
    #   <p>A list of fleet activity that has been suspended using <a>StopFleetActions</a>. This includes fleet auto-scaling.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute instance_role_arn
    #   <p>A unique identifier for an IAM role that manages access to your Amazon Web Services services.
    #           With an instance role ARN set, any application that runs on an instance in this fleet can assume the role,
    #           including install scripts, server processes, and daemons (background processes). Create a role or look up a role's
    #           ARN by using the <a href="https://console.aws.amazon.com/iam/">IAM dashboard</a> in the Amazon Web Services Management Console.
    #           Learn more about using on-box credentials for your game servers at
    #           <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html">
    #           Access external resources from a game server</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_configuration
    #   <p>Indicates whether a TLS/SSL certificate was generated for the fleet. </p>
    #
    #   @return [CertificateConfiguration]
    #
    FleetAttributes = ::Struct.new(
      :fleet_id,
      :fleet_arn,
      :fleet_type,
      :instance_type,
      :description,
      :name,
      :creation_time,
      :termination_time,
      :status,
      :build_id,
      :build_arn,
      :script_id,
      :script_arn,
      :server_launch_path,
      :server_launch_parameters,
      :log_paths,
      :new_game_session_protection_policy,
      :operating_system,
      :resource_creation_limit_policy,
      :metric_groups,
      :stopped_actions,
      :instance_role_arn,
      :certificate_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Current resource capacity settings in a specified fleet or location. The location
    #             value might refer to a fleet's remote location or its home Region. </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetCapacity.html">DescribeFleetCapacity</a>
    #             |
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html">DescribeFleetLocationCapacity</a>
    #             |
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetCapacity.html">UpdateFleetCapacity</a>
    #         </p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet associated with the location.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The Amazon EC2 instance type that is used for all instances in a fleet. The instance type
    #               determines the computing resources in use, including CPU, memory, storage, and
    #               networking capacity. See <a href="http://aws.amazon.com/ec2/instance-types/">Amazon Elastic Compute Cloud
    #                   Instance Types</a> for detailed descriptions.</p>
    #
    #   Enum, one of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"]
    #
    #   @return [String]
    #
    # @!attribute instance_counts
    #   <p>The current instance count and capacity settings for the fleet location. </p>
    #
    #   @return [EC2InstanceCounts]
    #
    # @!attribute location
    #   <p>The fleet location for the instance count information, expressed as an Amazon Web Services Region
    #               code, such as <code>us-west-2</code>. </p>
    #
    #   @return [String]
    #
    FleetCapacity = ::Struct.new(
      :fleet_id,
      :fleet_arn,
      :instance_type,
      :instance_counts,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified fleet has no available instances to fulfill a
    #                 <code>CreateGameSession</code> request. Clients can retry such requests immediately
    #             or after a waiting period.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FleetCapacityExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FleetStatus
    #
    module FleetStatus
      # No documentation available.
      #
      NEW = "NEW"

      # No documentation available.
      #
      DOWNLOADING = "DOWNLOADING"

      # No documentation available.
      #
      VALIDATING = "VALIDATING"

      # No documentation available.
      #
      BUILDING = "BUILDING"

      # No documentation available.
      #
      ACTIVATING = "ACTIVATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"
    end

    # Includes enum constants for FleetType
    #
    module FleetType
      # No documentation available.
      #
      OnDemand = "ON_DEMAND"

      # No documentation available.
      #
      Spot = "SPOT"
    end

    # <p>Current resource utilization statistics in a specified fleet or location. The location
    #             value might refer to a fleet's remote location or its home Region.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #         <p>
    #             <a>DescribeFleetUtilization</a> | <a>DescribeFleetLocationUtilization</a>
    #          </p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet associated with the location.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute active_server_process_count
    #   <p>The number of server processes in <code>ACTIVE</code> status that are currently
    #               running across all instances in the fleet location. </p>
    #
    #   @return [Integer]
    #
    # @!attribute active_game_session_count
    #   <p>The number of active game sessions that are currently being hosted across all
    #               instances in the fleet location.</p>
    #
    #   @return [Integer]
    #
    # @!attribute current_player_session_count
    #   <p>The number of active player sessions that are currently being hosted across all
    #               instances in the fleet location.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_player_session_count
    #   <p>The maximum number of players allowed across all game sessions that are currently
    #               being hosted across all instances in the fleet location.</p>
    #
    #   @return [Integer]
    #
    # @!attribute location
    #   <p>The fleet location for the fleet utilization information, expressed as an Amazon Web Services Region
    #               code, such as <code>us-west-2</code>. </p>
    #
    #   @return [String]
    #
    FleetUtilization = ::Struct.new(
      :fleet_id,
      :fleet_arn,
      :active_server_process_count,
      :active_game_session_count,
      :current_player_session_count,
      :maximum_player_session_count,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FlexMatchMode
    #
    module FlexMatchMode
      # No documentation available.
      #
      STANDALONE = "STANDALONE"

      # No documentation available.
      #
      WITH_QUEUE = "WITH_QUEUE"
    end

    # <p>Set of key-value pairs that contain information about a game session. When included in
    #             a game session request, these properties communicate details to be used when setting up
    #             the new game session. For example, a game property might specify a game mode, level, or
    #             map. Game properties are passed to the game server process when initiating a new game
    #             session. For more information, see the <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-create"> GameLift Developer Guide</a>.</p>
    #
    # @!attribute key
    #   <p>The game property identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The game property value.</p>
    #
    #   @return [String]
    #
    GameProperty = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <b>This data type is used with the GameLift FleetIQ and game server groups.</b>
    #          </p>
    #         <p>Properties describing a game server that is running on an instance in a <a>GameServerGroup</a>. </p>
    #          <p>A game server is created by a successful call to <code>RegisterGameServer</code> and
    #             deleted by calling <code>DeregisterGameServer</code>. A game server is claimed to host a
    #             game session by calling <code>ClaimGameServer</code>. </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>RegisterGameServer</a> |
    #                     <a>ListGameServers</a> |
    #                     <a>ClaimGameServer</a> |
    #                     <a>DescribeGameServer</a> |
    #                     <a>UpdateGameServer</a> |
    #                     <a>DeregisterGameServer</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.
    #               Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute game_server_group_arn
    #   <p>The ARN identifier for the game server group where the game server is located.</p>
    #
    #   @return [String]
    #
    # @!attribute game_server_id
    #   <p>A custom string that uniquely identifies the game server. Game server IDs are
    #               developer-defined and are unique across all game server groups in an Amazon Web Services
    #               account.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The unique identifier for the instance where the game server is running. This ID is
    #               available in the instance metadata. EC2 instance IDs
    #               use a 17-character format, for example: <code>i-1234567890abcdef0</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_info
    #   <p>The port and IP address that must be used to establish a client connection to the game server.</p>
    #
    #   @return [String]
    #
    # @!attribute game_server_data
    #   <p>A set of custom game server properties, formatted as a single string value. This data
    #               is passed to a game client or service when it requests information on game servers using
    #                   <a>ListGameServers</a> or <a>ClaimGameServer</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute claim_status
    #   <p>Indicates when an available game server has been reserved for gameplay but has not yet
    #               started hosting a game. Once it is claimed, the game server remains in
    #                   <code>CLAIMED</code> status for a maximum of one minute. During this time, game
    #               clients connect to the game server to start the game and trigger the game server to
    #               update its utilization status. After one minute, the game server claim status reverts to
    #               null.</p>
    #
    #   Enum, one of: ["CLAIMED"]
    #
    #   @return [String]
    #
    # @!attribute utilization_status
    #   <p>Indicates whether the game server is currently available for new games or is busy. Possible statuses include:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The game server is available to be claimed. A game server that has
    #                       been claimed remains in this status until it reports game hosting activity. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UTILIZED</code> - The game server is currently hosting a game session with players. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["AVAILABLE", "UTILIZED"]
    #
    #   @return [String]
    #
    # @!attribute registration_time
    #   <p>Timestamp that indicates when the game server was created with a <a>RegisterGameServer</a> request. The format is a number expressed in Unix
    #               time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute last_claim_time
    #   <p>Timestamp that indicates the last time the game server was claimed with a <a>ClaimGameServer</a> request. The format is a number expressed in Unix time
    #               as milliseconds (for example <code>"1469498468.057"</code>). This value is used to
    #               calculate when a claimed game server's status should revert to null.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_health_check_time
    #   <p>Timestamp that indicates the last time the game server was updated with health status
    #               using an <a>UpdateGameServer</a> request. The format is a number expressed in
    #               Unix time as milliseconds (for example <code>"1469498468.057"</code>). After game server
    #               registration, this property is only changed when a game server update specifies a health
    #               check value.</p>
    #
    #   @return [Time]
    #
    GameServer = ::Struct.new(
      :game_server_group_name,
      :game_server_group_arn,
      :game_server_id,
      :instance_id,
      :connection_info,
      :game_server_data,
      :claim_status,
      :utilization_status,
      :registration_time,
      :last_claim_time,
      :last_health_check_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GameServerClaimStatus
    #
    module GameServerClaimStatus
      # No documentation available.
      #
      CLAIMED = "CLAIMED"
    end

    # <p>
    #             <b>This data type is used with the GameLift FleetIQ and game server groups.</b>
    #          </p>
    #         <p>Properties that describe a game server group resource. A game server group manages
    #             certain properties related to a corresponding Amazon EC2 Auto Scaling group. </p>
    #         <p>A game server group is created by a successful call to
    #                 <code>CreateGameServerGroup</code> and deleted by calling
    #                 <code>DeleteGameServerGroup</code>. Game server group activity can be temporarily
    #             suspended and resumed by calling <code>SuspendGameServerGroup</code> and
    #                 <code>ResumeGameServerGroup</code>, respectively. </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameServerGroup</a> |
    #                     <a>ListGameServerGroups</a> |
    #                     <a>DescribeGameServerGroup</a> |
    #                     <a>UpdateGameServerGroup</a> |
    #                     <a>DeleteGameServerGroup</a> |
    #                     <a>ResumeGameServerGroup</a> |
    #                     <a>SuspendGameServerGroup</a> |
    #                     <a>DescribeGameServerInstances</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @!attribute game_server_group_name
    #   <p>A developer-defined identifier for the game server group. The name is unique for each
    #               Region in each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute game_server_group_arn
    #   <p>A generated unique ID for the game server group.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) for an IAM role that
    #               allows Amazon GameLift to access your Amazon EC2 Auto Scaling groups.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_definitions
    #   <p>The set of Amazon EC2 instance types that GameLift FleetIQ can use when balancing and automatically
    #               scaling instances in the corresponding Auto Scaling group. </p>
    #
    #   @return [Array<InstanceDefinition>]
    #
    # @!attribute balancing_strategy
    #   <p>Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances in the
    #               game server group. Method options include the following:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>SPOT_ONLY</code> - Only Spot Instances are used in the game server group. If Spot
    #                       Instances are unavailable or not viable for game hosting, the game server group
    #                       provides no hosting capacity until Spot Instances can again be used. Until then,
    #                       no new instances are started, and the existing nonviable Spot Instances are
    #                       terminated (after current gameplay ends) and are not replaced.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SPOT_PREFERRED</code> - (default value) Spot Instances are used whenever available in
    #                       the game server group. If Spot Instances are unavailable, the game server group
    #                       continues to provide hosting capacity by falling back to On-Demand Instances.
    #                       Existing nonviable Spot Instances are terminated (after current gameplay ends)
    #                       and are replaced with new On-Demand Instances.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ON_DEMAND_ONLY</code> - Only On-Demand Instances are used in the game
    #                       server group. No Spot Instances are used, even when available, while this
    #                       balancing strategy is in force.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"]
    #
    #   @return [String]
    #
    # @!attribute game_server_protection_policy
    #   <p>A flag that indicates whether instances in the game server group are protected
    #               from early termination. Unprotected instances that have active game servers running might
    #               be terminated during a scale-down event, causing players to be dropped from the game.
    #               Protected instances cannot be terminated while there are active game servers running except
    #               in the event of a forced game server group deletion (see ). An exception to this is with Spot
    #               Instances, which can be terminated by Amazon Web Services regardless of protection status. </p>
    #
    #   Enum, one of: ["NO_PROTECTION", "FULL_PROTECTION"]
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_arn
    #   <p>A generated unique ID for the Amazon EC2 Auto Scaling group that is associated with this
    #               game server group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the game server group. Possible statuses include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>NEW</code> - GameLift FleetIQ has validated the <code>CreateGameServerGroup()</code>
    #                       request. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ACTIVATING</code> - GameLift FleetIQ is setting up a game server group, which
    #                       includes creating an Auto Scaling group in your Amazon Web Services account. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ACTIVE</code> - The game server group has been successfully created. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DELETE_SCHEDULED</code> - A request to delete the game server group has
    #                       been received. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DELETING</code> - GameLift FleetIQ has received a valid
    #                           <code>DeleteGameServerGroup()</code> request and is processing it. GameLift FleetIQ
    #                       must first complete and release hosts before it deletes the Auto Scaling group
    #                       and the game server group. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DELETED</code> - The game server group has been successfully deleted. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - The asynchronous processes of activating or deleting a game server group
    #                       has failed, resulting in an error state.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>Additional information about the current game server group status. This information
    #               might provide additional insight on groups that are in <code>ERROR</code> status.</p>
    #
    #   @return [String]
    #
    # @!attribute suspended_actions
    #   <p>A list of activities that are currently suspended for this game server group.
    #           If this property is empty, all activities are occurring.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when this game server group was last updated.</p>
    #
    #   @return [Time]
    #
    GameServerGroup = ::Struct.new(
      :game_server_group_name,
      :game_server_group_arn,
      :role_arn,
      :instance_definitions,
      :balancing_strategy,
      :game_server_protection_policy,
      :auto_scaling_group_arn,
      :status,
      :status_reason,
      :suspended_actions,
      :creation_time,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GameServerGroupAction
    #
    module GameServerGroupAction
      # No documentation available.
      #
      REPLACE_INSTANCE_TYPES = "REPLACE_INSTANCE_TYPES"
    end

    # <p>
    #             <b>This data type is used with the GameLift FleetIQ and game server groups.</b>
    #          </p>
    #         <p>Configuration settings for intelligent automatic scaling that uses target tracking.
    #             These settings are used to add an Auto Scaling policy when creating the corresponding
    #             Auto Scaling group with <a>CreateGameServerGroup</a>. After the Auto Scaling
    #             group is created, all updates to Auto Scaling policies, including changing this policy
    #             and adding or removing other policies, is done directly on the Auto Scaling group. </p>
    #
    # @!attribute estimated_instance_warmup
    #   <p>Length of time, in seconds, it takes for a new instance to start new game server
    #               processes and register with GameLift FleetIQ. Specifying a warm-up time can be useful, particularly
    #               with game servers that take a long time to start up, because it avoids prematurely
    #               starting new instances. </p>
    #
    #   @return [Integer]
    #
    # @!attribute target_tracking_configuration
    #   <p>Settings for a target-based scaling policy applied to Auto Scaling group. These
    #               settings are used to create a target-based policy that tracks the GameLift FleetIQ metric
    #                   <code>"PercentUtilizedGameServers"</code> and specifies a target value for the
    #               metric. As player usage changes, the policy triggers to adjust the game server group
    #               capacity so that the metric returns to the target value. </p>
    #
    #   @return [TargetTrackingConfiguration]
    #
    GameServerGroupAutoScalingPolicy = ::Struct.new(
      :estimated_instance_warmup,
      :target_tracking_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GameServerGroupDeleteOption
    #
    module GameServerGroupDeleteOption
      # No documentation available.
      #
      SAFE_DELETE = "SAFE_DELETE"

      # No documentation available.
      #
      FORCE_DELETE = "FORCE_DELETE"

      # No documentation available.
      #
      RETAIN = "RETAIN"
    end

    # Includes enum constants for GameServerGroupInstanceType
    #
    module GameServerGroupInstanceType
      # No documentation available.
      #
      c4_large = "c4.large"

      # No documentation available.
      #
      c4_xlarge = "c4.xlarge"

      # No documentation available.
      #
      c4_2xlarge = "c4.2xlarge"

      # No documentation available.
      #
      c4_4xlarge = "c4.4xlarge"

      # No documentation available.
      #
      c4_8xlarge = "c4.8xlarge"

      # No documentation available.
      #
      c5_large = "c5.large"

      # No documentation available.
      #
      c5_xlarge = "c5.xlarge"

      # No documentation available.
      #
      c5_2xlarge = "c5.2xlarge"

      # No documentation available.
      #
      c5_4xlarge = "c5.4xlarge"

      # No documentation available.
      #
      c5_9xlarge = "c5.9xlarge"

      # No documentation available.
      #
      c5_12xlarge = "c5.12xlarge"

      # No documentation available.
      #
      c5_18xlarge = "c5.18xlarge"

      # No documentation available.
      #
      c5_24xlarge = "c5.24xlarge"

      # No documentation available.
      #
      c5a_large = "c5a.large"

      # No documentation available.
      #
      c5a_xlarge = "c5a.xlarge"

      # No documentation available.
      #
      c5a_2xlarge = "c5a.2xlarge"

      # No documentation available.
      #
      c5a_4xlarge = "c5a.4xlarge"

      # No documentation available.
      #
      c5a_8xlarge = "c5a.8xlarge"

      # No documentation available.
      #
      c5a_12xlarge = "c5a.12xlarge"

      # No documentation available.
      #
      c5a_16xlarge = "c5a.16xlarge"

      # No documentation available.
      #
      c5a_24xlarge = "c5a.24xlarge"

      # No documentation available.
      #
      c6g_medium = "c6g.medium"

      # No documentation available.
      #
      c6g_large = "c6g.large"

      # No documentation available.
      #
      c6g_xlarge = "c6g.xlarge"

      # No documentation available.
      #
      c6g_2xlarge = "c6g.2xlarge"

      # No documentation available.
      #
      c6g_4xlarge = "c6g.4xlarge"

      # No documentation available.
      #
      c6g_8xlarge = "c6g.8xlarge"

      # No documentation available.
      #
      c6g_12xlarge = "c6g.12xlarge"

      # No documentation available.
      #
      c6g_16xlarge = "c6g.16xlarge"

      # No documentation available.
      #
      r4_large = "r4.large"

      # No documentation available.
      #
      r4_xlarge = "r4.xlarge"

      # No documentation available.
      #
      r4_2xlarge = "r4.2xlarge"

      # No documentation available.
      #
      r4_4xlarge = "r4.4xlarge"

      # No documentation available.
      #
      r4_8xlarge = "r4.8xlarge"

      # No documentation available.
      #
      r4_16xlarge = "r4.16xlarge"

      # No documentation available.
      #
      r5_large = "r5.large"

      # No documentation available.
      #
      r5_xlarge = "r5.xlarge"

      # No documentation available.
      #
      r5_2xlarge = "r5.2xlarge"

      # No documentation available.
      #
      r5_4xlarge = "r5.4xlarge"

      # No documentation available.
      #
      r5_8xlarge = "r5.8xlarge"

      # No documentation available.
      #
      r5_12xlarge = "r5.12xlarge"

      # No documentation available.
      #
      r5_16xlarge = "r5.16xlarge"

      # No documentation available.
      #
      r5_24xlarge = "r5.24xlarge"

      # No documentation available.
      #
      r5a_large = "r5a.large"

      # No documentation available.
      #
      r5a_xlarge = "r5a.xlarge"

      # No documentation available.
      #
      r5a_2xlarge = "r5a.2xlarge"

      # No documentation available.
      #
      r5a_4xlarge = "r5a.4xlarge"

      # No documentation available.
      #
      r5a_8xlarge = "r5a.8xlarge"

      # No documentation available.
      #
      r5a_12xlarge = "r5a.12xlarge"

      # No documentation available.
      #
      r5a_16xlarge = "r5a.16xlarge"

      # No documentation available.
      #
      r5a_24xlarge = "r5a.24xlarge"

      # No documentation available.
      #
      r6g_medium = "r6g.medium"

      # No documentation available.
      #
      r6g_large = "r6g.large"

      # No documentation available.
      #
      r6g_xlarge = "r6g.xlarge"

      # No documentation available.
      #
      r6g_2xlarge = "r6g.2xlarge"

      # No documentation available.
      #
      r6g_4xlarge = "r6g.4xlarge"

      # No documentation available.
      #
      r6g_8xlarge = "r6g.8xlarge"

      # No documentation available.
      #
      r6g_12xlarge = "r6g.12xlarge"

      # No documentation available.
      #
      r6g_16xlarge = "r6g.16xlarge"

      # No documentation available.
      #
      m4_large = "m4.large"

      # No documentation available.
      #
      m4_xlarge = "m4.xlarge"

      # No documentation available.
      #
      m4_2xlarge = "m4.2xlarge"

      # No documentation available.
      #
      m4_4xlarge = "m4.4xlarge"

      # No documentation available.
      #
      m4_10xlarge = "m4.10xlarge"

      # No documentation available.
      #
      m5_large = "m5.large"

      # No documentation available.
      #
      m5_xlarge = "m5.xlarge"

      # No documentation available.
      #
      m5_2xlarge = "m5.2xlarge"

      # No documentation available.
      #
      m5_4xlarge = "m5.4xlarge"

      # No documentation available.
      #
      m5_8xlarge = "m5.8xlarge"

      # No documentation available.
      #
      m5_12xlarge = "m5.12xlarge"

      # No documentation available.
      #
      m5_16xlarge = "m5.16xlarge"

      # No documentation available.
      #
      m5_24xlarge = "m5.24xlarge"

      # No documentation available.
      #
      m5a_large = "m5a.large"

      # No documentation available.
      #
      m5a_xlarge = "m5a.xlarge"

      # No documentation available.
      #
      m5a_2xlarge = "m5a.2xlarge"

      # No documentation available.
      #
      m5a_4xlarge = "m5a.4xlarge"

      # No documentation available.
      #
      m5a_8xlarge = "m5a.8xlarge"

      # No documentation available.
      #
      m5a_12xlarge = "m5a.12xlarge"

      # No documentation available.
      #
      m5a_16xlarge = "m5a.16xlarge"

      # No documentation available.
      #
      m5a_24xlarge = "m5a.24xlarge"

      # No documentation available.
      #
      m6g_medium = "m6g.medium"

      # No documentation available.
      #
      m6g_large = "m6g.large"

      # No documentation available.
      #
      m6g_xlarge = "m6g.xlarge"

      # No documentation available.
      #
      m6g_2xlarge = "m6g.2xlarge"

      # No documentation available.
      #
      m6g_4xlarge = "m6g.4xlarge"

      # No documentation available.
      #
      m6g_8xlarge = "m6g.8xlarge"

      # No documentation available.
      #
      m6g_12xlarge = "m6g.12xlarge"

      # No documentation available.
      #
      m6g_16xlarge = "m6g.16xlarge"
    end

    # Includes enum constants for GameServerGroupStatus
    #
    module GameServerGroupStatus
      # No documentation available.
      #
      NEW = "NEW"

      # No documentation available.
      #
      ACTIVATING = "ACTIVATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETE_SCHEDULED = "DELETE_SCHEDULED"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # Includes enum constants for GameServerHealthCheck
    #
    module GameServerHealthCheck
      # No documentation available.
      #
      HEALTHY = "HEALTHY"
    end

    # <p>
    #             <b>This data type is used with the GameLift FleetIQ and game server groups.</b>
    #          </p>
    #             <p> Additional properties, including status, that describe an EC2 instance in a game
    #             server group. Instance configurations are set with game server group properties (see
    #                 <code>DescribeGameServerGroup</code> and with the EC2 launch template that was used
    #             when creating the game server group. </p>
    #             <p>Retrieve game server instances for a game server group by calling
    #                 <code>DescribeGameServerInstances</code>. </p>
    #             <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameServerGroup</a> |
    #                     <a>ListGameServerGroups</a> |
    #                     <a>DescribeGameServerGroup</a> |
    #                     <a>UpdateGameServerGroup</a> |
    #                     <a>DeleteGameServerGroup</a> |
    #                     <a>ResumeGameServerGroup</a> |
    #                     <a>SuspendGameServerGroup</a> |
    #                     <a>DescribeGameServerInstances</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @!attribute game_server_group_name
    #   <p>A developer-defined identifier for the game server group that includes the game
    #               server instance. The name is unique for each Region in each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute game_server_group_arn
    #   <p>A generated unique identifier for the game server group that includes the game
    #               server instance. </p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The unique identifier for the instance where the game server is running. This ID is
    #               available in the instance metadata. EC2 instance IDs
    #               use a 17-character format, for example: <code>i-1234567890abcdef0</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_status
    #   <p>
    #                   Current status of the game server instance.
    #               </p>
    #               <ul>
    #               <li>
    #                       <p>
    #                           <b>ACTIVE</b> -- The instance is viable for hosting
    #                           game servers. </p>
    #                   </li>
    #               <li>
    #                       <p>
    #                       <b>DRAINING</b> -- The instance is not viable for
    #                       hosting game servers. Existing game servers are in the process of ending, and
    #                       new game servers are not started on this instance unless no other resources are
    #                       available. When the instance is put in DRAINING, a new instance is started up to
    #                       replace it. Once the instance has no UTILIZED game servers, it will be terminated
    #                       in favor of the new instance.</p>
    #                   </li>
    #               <li>
    #                       <p>
    #                       <b>SPOT_TERMINATING</b> -- The instance is in the
    #                       process of shutting down due to a Spot instance interruption. No new game
    #                       servers are started on this instance.</p>
    #                   </li>
    #            </ul>
    #
    #   Enum, one of: ["ACTIVE", "DRAINING", "SPOT_TERMINATING"]
    #
    #   @return [String]
    #
    GameServerInstance = ::Struct.new(
      :game_server_group_name,
      :game_server_group_arn,
      :instance_id,
      :instance_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GameServerInstanceStatus
    #
    module GameServerInstanceStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DRAINING = "DRAINING"

      # No documentation available.
      #
      SPOT_TERMINATING = "SPOT_TERMINATING"
    end

    # Includes enum constants for GameServerProtectionPolicy
    #
    module GameServerProtectionPolicy
      # No documentation available.
      #
      NO_PROTECTION = "NO_PROTECTION"

      # No documentation available.
      #
      FULL_PROTECTION = "FULL_PROTECTION"
    end

    # Includes enum constants for GameServerUtilizationStatus
    #
    module GameServerUtilizationStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      UTILIZED = "UTILIZED"
    end

    # <p>Properties describing a game session.</p>
    #         <p>A game session in ACTIVE status can host players. When a game session ends, its
    #             status is set to <code>TERMINATED</code>. </p>
    #         <p>Once the session ends, the game session object is retained for 30 days. This means
    #             you can reuse idempotency token values after this time. Game session logs are retained
    #             for 14 days.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameSession</a> |
    #                     <a>DescribeGameSessions</a> |
    #                     <a>DescribeGameSessionDetails</a> |
    #                     <a>SearchGameSessions</a> |
    #                     <a>UpdateGameSession</a> |
    #                     <a>GetGameSessionLogUrl</a> |
    #                     <a>StartGameSessionPlacement</a> |
    #                     <a>DescribeGameSessionPlacement</a> |
    #                     <a>StopGameSessionPlacement</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @!attribute game_session_id
    #   <p>A unique identifier for the game session. A game session ARN has the following format:
    #       <code>arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string or idempotency token></code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that the game session is running on.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>
    #               The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the GameLift fleet that this game session is running on.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute termination_time
    #   <p>A time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute current_player_session_count
    #   <p>Number of players currently in the game session.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>Current status of the game session. A game session must have an <code>ACTIVE</code>
    #               status to have player sessions.</p>
    #
    #   Enum, one of: ["ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>Provides additional information about game session status. <code>INTERRUPTED</code>
    #               indicates that the game session was hosted on a spot instance that was reclaimed,
    #               causing the active game session to be terminated.</p>
    #
    #   Enum, one of: ["INTERRUPTED"]
    #
    #   @return [String]
    #
    # @!attribute game_properties
    #   <p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html gamelift-sdk-server-startsession">Start a Game Session</a>). You can search for active game sessions based on this custom data
    #               with <a>SearchGameSessions</a>.</p>
    #
    #   @return [Array<GameProperty>]
    #
    # @!attribute ip_address
    #   <p>The IP address of the game session. To connect to a GameLift game server, an app needs both the IP address and port number.</p>
    #
    #   @return [String]
    #
    # @!attribute dns_name
    #   <p>The DNS identifier assigned to the instance that is running the game session. Values have
    #               the following format:</p>
    #            <ul>
    #               <li>
    #                  <p>TLS-enabled fleets: <code><unique identifier>.<region identifier>.amazongamelift.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Non-TLS-enabled fleets: <code>ec2-<unique identifier>.compute.amazonaws.com</code>. (See
    #               <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html concepts-public-addresses">Amazon EC2 Instance IP Addressing</a>.)</p>
    #               </li>
    #            </ul>
    #               <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number for the game session. To connect to a GameLift game server, an app needs both the IP address and port number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute player_session_creation_policy
    #   <p>Indicates whether or not the game session is accepting new players.</p>
    #
    #   Enum, one of: ["ACCEPT_ALL", "DENY_ALL"]
    #
    #   @return [String]
    #
    # @!attribute creator_id
    #   <p>A unique identifier for a player. This ID is used to enforce a resource protection policy (if one
    #               exists), that limits the number of game sessions a player can create.</p>
    #
    #   @return [String]
    #
    # @!attribute game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html gamelift-sdk-server-startsession">Start a Game Session</a>).</p>
    #
    #   @return [String]
    #
    # @!attribute matchmaker_data
    #   <p>Information about the matchmaking process that was used to create the game session.
    #               It is in JSON syntax, formatted as a string. In addition the matchmaking configuration
    #               used, it contains data on all players assigned to the match, including player attributes
    #               and team assignments. For more details on matchmaker data, see <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html match-server-data">Match
    #                   Data</a>. Matchmaker data is useful when requesting match backfills, and is
    #               updated whenever new players are added during a successful backfill (see
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartMatchBackfill.html">StartMatchBackfill</a>). </p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The fleet location where the game session is running. This value might specify the
    #               fleet's home Region or a remote location. Location is expressed as an Amazon Web Services Region code
    #               such as <code>us-west-2</code>. </p>
    #
    #   @return [String]
    #
    GameSession = ::Struct.new(
      :game_session_id,
      :name,
      :fleet_id,
      :fleet_arn,
      :creation_time,
      :termination_time,
      :current_player_session_count,
      :maximum_player_session_count,
      :status,
      :status_reason,
      :game_properties,
      :ip_address,
      :dns_name,
      :port,
      :player_session_creation_policy,
      :creator_id,
      :game_session_data,
      :matchmaker_data,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Connection information for a new game session that is created in response to a <a>StartMatchmaking</a> request. Once a match is made, the FlexMatch engine
    #             creates a new game session for it. This information, including the game session endpoint
    #             and player sessions for each player in the original matchmaking request, is added to the
    #             <a>MatchmakingTicket</a>, which can be retrieved by calling <a>DescribeMatchmaking</a>.</p>
    #
    # @!attribute game_session_arn
    #   <p>A unique identifier for the game session. Use the game session ID.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>The IP address of the game session. To connect to a GameLift game server, an app needs both the IP address and port number.</p>
    #
    #   @return [String]
    #
    # @!attribute dns_name
    #   <p>The DNS identifier assigned to the instance that is running the game session. Values have
    #               the following format:</p>
    #            <ul>
    #               <li>
    #                  <p>TLS-enabled fleets: <code><unique identifier>.<region identifier>.amazongamelift.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Non-TLS-enabled fleets: <code>ec2-<unique identifier>.compute.amazonaws.com</code>. (See
    #               <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html concepts-public-addresses">Amazon EC2 Instance IP Addressing</a>.)</p>
    #               </li>
    #            </ul>
    #               <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number for the game session. To connect to a GameLift game server, an app needs both the IP address and port number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute matched_player_sessions
    #   <p>A collection of player session IDs, one for each player ID that was included in the
    #               original matchmaking request. </p>
    #
    #   @return [Array<MatchedPlayerSession>]
    #
    GameSessionConnectionInfo = ::Struct.new(
      :game_session_arn,
      :ip_address,
      :dns_name,
      :port,
      :matched_player_sessions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A game session's properties plus the protection policy currently in
    #             force.</p>
    #
    # @!attribute game_session
    #   <p>Object that describes a game session.</p>
    #
    #   @return [GameSession]
    #
    # @!attribute protection_policy
    #   <p>Current status of protection for the game session.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>NoProtection</b> -- The game session can be
    #                       terminated during a scale-down event.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>FullProtection</b> -- If the game session is in an
    #                       <code>ACTIVE</code> status, it cannot be terminated during a scale-down
    #                       event.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NoProtection", "FullProtection"]
    #
    #   @return [String]
    #
    GameSessionDetail = ::Struct.new(
      :game_session,
      :protection_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The game instance is currently full and cannot allow the requested player(s) to
    #             join. Clients can retry such requests immediately or after a waiting period.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    GameSessionFullException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object that describes a <a>StartGameSessionPlacement</a> request. This
    #         object includes the full details of the original request plus the current status and
    #         start/end time stamps.</p>
    #          <p>Game session placement-related operations include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>StartGameSessionPlacement</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeGameSessionPlacement</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>StopGameSessionPlacement</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @!attribute placement_id
    #   <p>A unique identifier for a game session placement.</p>
    #
    #   @return [String]
    #
    # @!attribute game_session_queue_name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Current status of the game session placement request.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>PENDING</b> -- The placement request is currently
    #                   in the queue waiting to be processed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FULFILLED</b> -- A new game session and player
    #                   sessions (if requested) have been successfully created. Values for
    #                   <i>GameSessionArn</i> and
    #                   <i>GameSessionRegion</i> are available. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>CANCELLED</b> -- The placement request was canceled
    #                   with a call to <a>StopGameSessionPlacement</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TIMED_OUT</b> -- A new game session was not
    #                   successfully created before the time limit expired. You can resubmit the
    #                   placement request as needed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FAILED</b> -- GameLift is not able to complete the
    #               process of placing the game session. Common reasons are the
    #               game session terminated before the placement process was completed, or an unexpected
    #               internal error.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute game_properties
    #   <p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html gamelift-sdk-server-startsession">Start a Game Session</a>).</p>
    #
    #   @return [Array<GameProperty>]
    #
    # @!attribute maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    #
    #   @return [Integer]
    #
    # @!attribute game_session_name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute game_session_id
    #   <p>A unique identifier for the game session. This value is set once the new game session is placed (placement status is
    #           <code>FULFILLED</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute game_session_arn
    #   <p>Identifier for the game session created by this placement request. This value is
    #           set once the new game session is placed (placement status is <code>FULFILLED</code>).
    #           This identifier is unique across all Regions. You can use this value as a
    #           <code>GameSessionId</code> value as needed.</p>
    #
    #   @return [String]
    #
    # @!attribute game_session_region
    #   <p>Name of the Region where the game session created by this placement request is
    #           running. This value is set once the new game session is placed (placement status is
    #           <code>FULFILLED</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute player_latencies
    #   <p>A set of values, expressed in milliseconds, that indicates the amount of latency that a player experiences when connected to @aws; Regions.</p>
    #
    #   @return [Array<PlayerLatency>]
    #
    # @!attribute start_time
    #   <p>Time stamp indicating when this request was placed in the queue. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>Time stamp indicating when this request was completed, canceled, or timed
    #           out.</p>
    #
    #   @return [Time]
    #
    # @!attribute ip_address
    #   <p>The IP address of the game session. To connect to a GameLift game server, an app needs both the IP address and port number. This value is set once the new game session is placed (placement status is
    #           <code>FULFILLED</code>). </p>
    #
    #   @return [String]
    #
    # @!attribute dns_name
    #   <p>The DNS identifier assigned to the instance that is running the game session. Values have
    #               the following format:</p>
    #            <ul>
    #               <li>
    #                  <p>TLS-enabled fleets: <code><unique identifier>.<region identifier>.amazongamelift.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Non-TLS-enabled fleets: <code>ec2-<unique identifier>.compute.amazonaws.com</code>. (See
    #               <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html concepts-public-addresses">Amazon EC2 Instance IP Addressing</a>.)</p>
    #               </li>
    #            </ul>
    #               <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number for the game session. To connect to a GameLift game server, an app needs both the IP address and port number. This value is set once the new game session is placed (placement status is
    #           <code>FULFILLED</code>).</p>
    #
    #   @return [Integer]
    #
    # @!attribute placed_player_sessions
    #   <p>A collection of information on player sessions created in response to the game
    #           session placement request. These player sessions are created only once a new game
    #           session is successfully placed (placement status is <code>FULFILLED</code>). This
    #           information includes the player ID (as provided in the placement request) and the
    #           corresponding player session ID. Retrieve full player sessions by calling <a>DescribePlayerSessions</a> with the player session ID.</p>
    #
    #   @return [Array<PlacedPlayerSession>]
    #
    # @!attribute game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html gamelift-sdk-server-startsession">Start a Game Session</a>).</p>
    #
    #   @return [String]
    #
    # @!attribute matchmaker_data
    #   <p>Information on the matchmaking process for this game. Data is in JSON syntax,
    #           formatted as a string. It identifies the matchmaking configuration used to create the
    #           match, and contains data on all players assigned to the match, including player
    #           attributes and team assignments. For more details on matchmaker data, see <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html match-server-data">Match
    #               Data</a>.</p>
    #
    #   @return [String]
    #
    GameSessionPlacement = ::Struct.new(
      :placement_id,
      :game_session_queue_name,
      :status,
      :game_properties,
      :maximum_player_session_count,
      :game_session_name,
      :game_session_id,
      :game_session_arn,
      :game_session_region,
      :player_latencies,
      :start_time,
      :end_time,
      :ip_address,
      :dns_name,
      :port,
      :placed_player_sessions,
      :game_session_data,
      :matchmaker_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GameSessionPlacementState
    #
    module GameSessionPlacementState
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      FULFILLED = "FULFILLED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      TIMED_OUT = "TIMED_OUT"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Configuration for a game session placement mechanism that processes requests for new
    #             game sessions. A queue can be used on its own or as part of a matchmaking
    #             solution.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateGameSessionQueue.html">CreateGameSessionQueue</a>
    #             |
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessionQueues.html">DescribeGameSessionQueues</a>
    #             |
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSessionQueue.html">UpdateGameSessionQueue</a>
    #         </p>
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region.</p>
    #
    #   @return [String]
    #
    # @!attribute game_session_queue_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>.   In a GameLift game session queue ARN, the resource ID matches the
    #                   <i>Name</i> value.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout_in_seconds
    #   <p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status.</p>
    #
    #   @return [Integer]
    #
    # @!attribute player_latency_policies
    #   <p>A set of policies that act as a sliding cap on player latency. FleetIQ works to
    #               deliver low latency for most players in a game session. These policies ensure that no
    #               individual player can be placed into a game with unreasonably high latency. Use multiple
    #               policies to gradually relax latency requirements a step at a time. Multiple policies are applied based on their
    #               maximum allowed latency, starting with the lowest value. </p>
    #
    #   @return [Array<PlayerLatencyPolicy>]
    #
    # @!attribute destinations
    #   <p>A list of fleets and/or fleet aliases that can be used to fulfill game session placement requests in the queue.
    #       Destinations are identified by either a fleet ARN or a fleet alias ARN, and are listed in order of placement preference.</p>
    #
    #   @return [Array<GameSessionQueueDestination>]
    #
    # @!attribute filter_configuration
    #   <p>A list of locations where a queue is allowed to place new game sessions. Locations
    #               are specified in the form of Amazon Web Services Region codes, such as <code>us-west-2</code>. If this parameter is
    #               not set, game sessions can be placed in any queue location. </p>
    #
    #   @return [FilterConfiguration]
    #
    # @!attribute priority_configuration
    #   <p>Custom settings to use when prioritizing destinations and locations for game session placements. This
    #               configuration replaces the FleetIQ default prioritization process. Priority types that are not explicitly
    #               named will be automatically applied at the end of the prioritization process. </p>
    #
    #   @return [PriorityConfiguration]
    #
    # @!attribute custom_event_data
    #   <p>
    #               Information that is added to all events that are related to this game session queue.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute notification_target
    #   <p>An SNS topic ARN that is set up to receive game session placement notifications. See <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html">
    #               Setting up notifications for game session placement</a>.</p>
    #
    #   @return [String]
    #
    GameSessionQueue = ::Struct.new(
      :name,
      :game_session_queue_arn,
      :timeout_in_seconds,
      :player_latency_policies,
      :destinations,
      :filter_configuration,
      :priority_configuration,
      :custom_event_data,
      :notification_target,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A fleet or alias designated in a game session queue. Queues fulfill requests for new
    #             game sessions by placing a new game session on any of the queue's destinations. </p>
    #         <p>Destinations are part of a <a>GameSessionQueue</a>.</p>
    #
    # @!attribute destination_arn
    #   <p>The Amazon Resource Name (ARN) that is assigned to fleet or fleet alias. ARNs, which
    #               include a fleet ID or alias ID and a Region name, provide a unique identifier across all
    #               Regions. </p>
    #
    #   @return [String]
    #
    GameSessionQueueDestination = ::Struct.new(
      :destination_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GameSessionStatus
    #
    module GameSessionStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      ACTIVATING = "ACTIVATING"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"

      # No documentation available.
      #
      TERMINATING = "TERMINATING"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # Includes enum constants for GameSessionStatusReason
    #
    module GameSessionStatusReason
      # No documentation available.
      #
      INTERRUPTED = "INTERRUPTED"
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute game_session_id
    #   <p>A unique identifier for the game session to get logs for. </p>
    #
    #   @return [String]
    #
    GetGameSessionLogUrlInput = ::Struct.new(
      :game_session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute pre_signed_url
    #   <p>Location of the requested game session logs, available for download. This URL is
    #               valid for 15 minutes, after which S3 will reject any download request using this URL.
    #               You can request a new URL any time within the 14-day period that the logs are
    #               retained.</p>
    #
    #   @return [String]
    #
    GetGameSessionLogUrlOutput = ::Struct.new(
      :pre_signed_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that contains the instance you want access to. You can use either the fleet ID
    #               or ARN value. The fleet can be in any of the following statuses:
    #               <code>ACTIVATING</code>, <code>ACTIVE</code>, or <code>ERROR</code>. Fleets with an
    #                   <code>ERROR</code> status may be accessible for a short time before they are
    #               deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>A unique identifier for the instance you want to get access to. You can access an instance in any
    #               status.</p>
    #
    #   @return [String]
    #
    GetInstanceAccessInput = ::Struct.new(
      :fleet_id,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute instance_access
    #   <p>The connection information for a fleet instance, including IP
    #               address and access credentials.</p>
    #
    #   @return [InstanceAccess]
    #
    GetInstanceAccessOutput = ::Struct.new(
      :instance_access,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A game session with this custom ID string already exists in this fleet. Resolve
    #             this conflict before retrying this request.</p>
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

    # <p>Represents an EC2 instance of virtual computing resources that hosts one or more game
    #             servers. In GameLift, a fleet can contain zero or more instances.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #         <p>
    #             <a>DescribeInstances</a>
    #          </p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that the instance is in.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>A unique identifier for the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>IP address that is assigned to the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute dns_name
    #   <p>The DNS identifier assigned to the instance that is running the game session. Values have
    #               the following format:</p>
    #            <ul>
    #               <li>
    #                  <p>TLS-enabled fleets: <code><unique identifier>.<region identifier>.amazongamelift.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Non-TLS-enabled fleets: <code>ec2-<unique identifier>.compute.amazonaws.com</code>. (See
    #               <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html concepts-public-addresses">Amazon EC2 Instance IP Addressing</a>.)</p>
    #               </li>
    #            </ul>
    #               <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute operating_system
    #   <p>Operating system that is running on this instance. </p>
    #
    #   Enum, one of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Amazon EC2 instance type that defines the computing resources of this instance.
    #       </p>
    #
    #   Enum, one of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Current status of the instance. Possible statuses include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>PENDING</b> -- The instance is in the process of
    #                   being created and launching server processes as defined in the fleet's run-time
    #                   configuration. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ACTIVE</b> -- The instance has been successfully
    #                   created and at least one server process has successfully launched and reported
    #                   back to GameLift that it is ready to host a game session. The instance is now
    #                   considered ready to host game sessions. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TERMINATING</b> -- The instance is in the process
    #                   of shutting down. This may happen to reduce capacity during a scaling down event
    #                   or to recycle resources in the event of a problem.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PENDING", "ACTIVE", "TERMINATING"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute location
    #   <p>The fleet location of the instance, expressed as an Amazon Web Services Region
    #               code, such as <code>us-west-2</code>. </p>
    #
    #   @return [String]
    #
    Instance = ::Struct.new(
      :fleet_id,
      :fleet_arn,
      :instance_id,
      :ip_address,
      :dns_name,
      :operating_system,
      :type,
      :status,
      :creation_time,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information required to remotely connect to a fleet instance. Access is requested
    #         by calling <a>GetInstanceAccess</a>. </p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet containing the instance being accessed.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>A unique identifier for the instance being accessed.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>IP address that is assigned to the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute operating_system
    #   <p>Operating system that is running on the instance.</p>
    #
    #   Enum, one of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"]
    #
    #   @return [String]
    #
    # @!attribute credentials
    #   <p>Credentials required to access the instance.</p>
    #
    #   @return [InstanceCredentials]
    #
    InstanceAccess = ::Struct.new(
      :fleet_id,
      :instance_id,
      :ip_address,
      :operating_system,
      :credentials,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::GameLift::Types::InstanceAccess "\
          "fleet_id=#{fleet_id || 'nil'}, "\
          "instance_id=#{instance_id || 'nil'}, "\
          "ip_address=#{ip_address || 'nil'}, "\
          "operating_system=#{operating_system || 'nil'}, "\
          "credentials=\"[SENSITIVE]\">"
      end
    end

    # <p>Set of credentials required to remotely access a fleet instance. Access credentials
    #         are requested by calling <a>GetInstanceAccess</a> and returned in an <a>InstanceAccess</a> object.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute user_name
    #   <p>User login string.</p>
    #
    #   @return [String]
    #
    # @!attribute secret
    #   <p>Secret string. For Windows instances, the secret is a password for use with Windows
    #           Remote Desktop. For Linux instances, it is a private key (which must be saved as a
    #           <code>.pem</code> file) for use with SSH.</p>
    #
    #   @return [String]
    #
    InstanceCredentials = ::Struct.new(
      :user_name,
      :secret,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::GameLift::Types::InstanceCredentials [SENSITIVE]>"
      end
    end

    # <p>
    #             <b>This data type is used with the GameLift FleetIQ and game server groups.</b>
    #          </p>
    #         <p>An allowed instance type for a <a>GameServerGroup</a>. All game server groups must have at least two
    #             instance types defined for it. GameLift FleetIQ periodically evaluates each defined instance type
    #             for viability. It then updates the Auto Scaling group with the list of viable instance
    #             types.</p>
    #
    # @!attribute instance_type
    #   <p>An Amazon EC2 instance type designation.</p>
    #
    #   Enum, one of: ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"]
    #
    #   @return [String]
    #
    # @!attribute weighted_capacity
    #   <p>Instance weighting that indicates how much this instance type contributes to the total
    #               capacity of a game server group. Instance weights are used by GameLift FleetIQ to calculate the
    #               instance type's cost per unit hour and better identify the most cost-effective options.
    #               For detailed information on weighting instance capacity, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html">Instance
    #                   Weighting</a> in the <i>Amazon Elastic Compute Cloud Auto Scaling User Guide</i>.
    #               Default value is "1".</p>
    #
    #   @return [String]
    #
    InstanceDefinition = ::Struct.new(
      :instance_type,
      :weighted_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceStatus
    #
    module InstanceStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      TERMINATING = "TERMINATING"
    end

    # <p>The service encountered an unrecoverable internal failure while processing the
    #             request. Clients can retry such requests immediately or after a waiting
    #             period.</p>
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

    # <p>The requested operation would cause a conflict with the current state of a resource
    #             associated with the request and/or the fleet. Resolve the conflict before
    #             retrying.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidFleetStatusException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested operation would cause a conflict with the current state of a resource
    #             associated with the request and/or the game instance. Resolve the conflict before
    #             retrying.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidGameSessionStatusException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more parameter values in the request are invalid. Correct the invalid
    #             parameter values before retrying.</p>
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

    # <p>A range of IP addresses and port settings that allow inbound traffic to connect to
    #             server processes on an instance in a fleet. New game sessions are assigned an IP
    #             address/port number combination, which must fall into the fleet's allowed ranges. Fleets
    #             with custom game builds must have permissions explicitly set. For Realtime Servers fleets, GameLift
    #             automatically opens two port ranges, one for TCP messaging and one for UDP.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #         <p>
    #             <a>DescribeFleetPortSettings</a>
    #          </p>
    #
    # @!attribute from_port
    #   <p>A starting value for a range of allowed port numbers.</p>
    #           <p>For fleets using Windows and Linux builds, only ports 1026-60000 are valid.</p>
    #
    #   @return [Integer]
    #
    # @!attribute to_port
    #   <p>An ending value for a range of allowed port numbers. Port numbers are end-inclusive.
    #               This value must be higher than <code>FromPort</code>.</p>
    #           <p>For fleets using Windows and Linux builds, only ports 1026-60000 are valid.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ip_range
    #   <p>A range of allowed IP addresses. This value must be expressed in CIDR notation.
    #               Example: "<code>000.000.000.000/[subnet mask]</code>" or optionally the shortened
    #               version "<code>0.0.0.0/[subnet mask]</code>".</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The network communication protocol used by the fleet.</p>
    #
    #   Enum, one of: ["TCP", "UDP"]
    #
    #   @return [String]
    #
    IpPermission = ::Struct.new(
      :from_port,
      :to_port,
      :ip_range,
      :protocol,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IpProtocol
    #
    module IpProtocol
      # No documentation available.
      #
      TCP = "TCP"

      # No documentation available.
      #
      UDP = "UDP"
    end

    # <p>
    #             <b>This data type is used with the GameLift FleetIQ and game server groups.</b>
    #          </p>
    #         <p>An Amazon Elastic Compute Cloud launch template that contains configuration settings and game server code to
    #             be deployed to all instances in a game server group. The launch template is specified
    #             when creating a new game server group with <a>CreateGameServerGroup</a>. </p>
    #
    # @!attribute launch_template_id
    #   <p>A unique identifier for an existing Amazon EC2 launch template.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_template_name
    #   <p>A readable identifier for an existing Amazon EC2 launch template. </p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the Amazon EC2 launch template to use. If no version is specified, the
    #               default version will be used. With Amazon EC2, you can specify a default version for a
    #               launch template. If none is set, the default is the first version created.</p>
    #
    #   @return [String]
    #
    LaunchTemplateSpecification = ::Struct.new(
      :launch_template_id,
      :launch_template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested operation would cause the resource to exceed the allowed service
    #             limit. Resolve the issue before retrying.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute routing_strategy_type
    #   <p>The routing type to filter results on. Use this parameter to retrieve only aliases
    #               with a certain routing type. To retrieve all aliases, leave this parameter empty.</p>
    #           <p>Possible routing types include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>SIMPLE</b> -- The alias resolves to one specific
    #                       fleet. Use this type when routing to active fleets.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>TERMINAL</b> -- The alias does not resolve to a
    #                       fleet but instead can be used to display a message to the user. A terminal alias
    #                       throws a TerminalRoutingStrategyException with the <a>RoutingStrategy</a> message embedded.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SIMPLE", "TERMINAL"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    ListAliasesInput = ::Struct.new(
      :routing_strategy_type,
      :name,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute aliases
    #   <p>A collection of alias resources that match the request parameters.</p>
    #
    #   @return [Array<Alias>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    ListAliasesOutput = ::Struct.new(
      :aliases,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute status
    #   <p>Build status to filter results by. To retrieve all builds, leave this parameter
    #               empty.</p>
    #           <p>Possible build statuses include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>INITIALIZED</b> -- A new build has been defined,
    #                       but no files have been uploaded. You cannot create fleets for builds that are in
    #                       this status. When a build is successfully created, the build status is set to
    #                       this value. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>READY</b> -- The game build has been successfully
    #                       uploaded. You can now create new fleets for this build.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>FAILED</b> -- The game build upload failed. You
    #                       cannot create new fleets for this build. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["INITIALIZED", "READY", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    ListBuildsInput = ::Struct.new(
      :status,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute builds
    #   <p>A collection of build resources that match the request.</p>
    #
    #   @return [Array<Build>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    ListBuildsOutput = ::Struct.new(
      :builds,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute build_id
    #   <p>A unique identifier for the build to request fleets for. Use this parameter to return only fleets using a
    #               specified build. Use either the build ID or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute script_id
    #   <p>A unique identifier for the Realtime script to request fleets for. Use this parameter to return only fleets using a
    #               specified script. Use either the script ID or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    ListFleetsInput = ::Struct.new(
      :build_id,
      :script_id,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute fleet_ids
    #   <p>A set of fleet IDs that match the list request.
    #               You can retrieve additional information about all
    #               returned fleets by passing this result set to a <a>DescribeFleetAttributes</a>, <a>DescribeFleetCapacity</a>, or
    #                   <a>DescribeFleetUtilization</a> call.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    ListFleetsOutput = ::Struct.new(
      :fleet_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    ListGameServerGroupsInput = ::Struct.new(
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_groups
    #   <p>A collection of game server group objects that match the request.</p>
    #
    #   @return [Array<GameServerGroup>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    ListGameServerGroupsOutput = ::Struct.new(
      :game_server_groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group_name
    #   <p>An identifier for the game server group to retrieve a list of game servers from.
    #               Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>Indicates how to sort the returned data based on game server registration timestamp.
    #               Use <code>ASCENDING</code> to retrieve oldest game servers first, or use
    #                   <code>DESCENDING</code> to retrieve newest game servers first. If this parameter is
    #               left empty, game servers are returned in no particular order.</p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    ListGameServersInput = ::Struct.new(
      :game_server_group_name,
      :sort_order,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_servers
    #   <p>A collection of game server objects that match the request.</p>
    #
    #   @return [Array<GameServer>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    ListGameServersOutput = ::Struct.new(
      :game_servers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    ListScriptsInput = ::Struct.new(
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scripts
    #   <p>A set of properties describing the requested script.</p>
    #
    #   @return [Array<Script>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    ListScriptsOutput = ::Struct.new(
      :scripts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #               The Amazon Resource Name
    #               (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>)
    #               that is assigned to and uniquely identifies the GameLift resource that you want to retrieve
    #               tags for. GameLift resource ARNs are included in the data object for the resource, which
    #               can be retrieved by calling a List or Describe operation for the resource type. </p>
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
    #   <p>
    #               The collection of tags that have been assigned to the specified resource.
    #           </p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a location in a multi-location fleet.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #         <p>
    #             <a>DescribeFleetLocationAttributes</a>
    #         </p>
    #
    # @!attribute location_state
    #   <p>A fleet location and its current life-cycle state.</p>
    #
    #   @return [LocationState]
    #
    # @!attribute stopped_actions
    #   <p>A list of fleet actions that have been suspended in the fleet location.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute update_status
    #   <p>The status of fleet activity updates to the location. The status
    #               <code>PENDING_UPDATE</code> indicates that <a>StopFleetActions</a> or <a>StartFleetActions</a>
    #               has been requested but the update has not yet been completed for the location.</p>
    #
    #   Enum, one of: ["PENDING_UPDATE"]
    #
    #   @return [String]
    #
    LocationAttributes = ::Struct.new(
      :location_state,
      :stopped_actions,
      :update_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A remote location where a multi-location fleet can deploy EC2 instances for game
    #             hosting. </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateFleet.html">CreateFleet</a>
    #             </p>
    #
    # @!attribute location
    #   <p>An Amazon Web Services Region code, such as <code>us-west-2</code>. </p>
    #
    #   @return [String]
    #
    LocationConfiguration = ::Struct.new(
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A fleet location and its life-cycle state. A location state object might
    #             be used to describe a fleet's remote location or home Region.
    #             Life-cycle state tracks the progress of launching the first instance in a new
    #             location and preparing it for game hosting, and then removing all instances and
    #             deleting the location from the fleet.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #         <p>
    #             <a>CreateFleet</a> |
    #             <a>CreateFleetLocations</a> |
    #             <a>DeleteFleetLocations</a>
    #         </p>
    #
    # @!attribute location
    #   <p>The fleet location, expressed as an Amazon Web Services Region code such as <code>us-west-2</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The life-cycle status of a fleet location. </p>
    #
    #   Enum, one of: ["NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"]
    #
    #   @return [String]
    #
    LocationState = ::Struct.new(
      :location,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LocationUpdateStatus
    #
    module LocationUpdateStatus
      # No documentation available.
      #
      PENDING_UPDATE = "PENDING_UPDATE"
    end

    # <p>Represents a new player session that is created as a result of a successful FlexMatch
    #             match. A successful match automatically creates new player sessions for every player ID
    #             in the original matchmaking request. </p>
    #         <p>When players connect to the match's game session, they must include both player ID
    #             and player session ID in order to claim their assigned player slot.</p>
    #
    # @!attribute player_id
    #   <p>A unique identifier for a player </p>
    #
    #   @return [String]
    #
    # @!attribute player_session_id
    #   <p>A unique identifier for a player session</p>
    #
    #   @return [String]
    #
    MatchedPlayerSession = ::Struct.new(
      :player_id,
      :player_session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Guidelines for use with FlexMatch to match players into games. All matchmaking
    #             requests must specify a matchmaking configuration.</p>
    #
    # @!attribute name
    #   <p>A unique identifier for the matchmaking configuration. This name is used to identify the configuration associated with a
    #               matchmaking request or ticket.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift matchmaking configuration resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::matchmakingconfiguration/<matchmaking configuration name></code>. In a GameLift configuration ARN, the resource ID matches the
    #                   <i>Name</i> value.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A descriptive label that is associated with matchmaking configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute game_session_queue_arns
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>. Queues can be located in any Region. Queues are used to start new
    #               GameLift-hosted game sessions for matches that are created with this matchmaking
    #               configuration. This property is not set when <code>FlexMatchMode</code> is set to
    #               <code>STANDALONE</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute request_timeout_seconds
    #   <p>The maximum duration, in seconds, that a matchmaking ticket can remain in process
    #               before timing out. Requests that fail due to timing out can be resubmitted as
    #               needed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute acceptance_timeout_seconds
    #   <p>The length of time (in seconds) to wait for players to accept a proposed match, if
    #               acceptance is required. If any player rejects the match or fails to accept before the
    #               timeout, the ticket continues to look for an acceptable match.</p>
    #
    #   @return [Integer]
    #
    # @!attribute acceptance_required
    #   <p>A flag that indicates whether a match that was created with this configuration must be
    #               accepted by the matched players. To require acceptance, set to TRUE. When this option is
    #               enabled, matchmaking tickets use the status <code>REQUIRES_ACCEPTANCE</code> to indicate
    #               when a completed potential match is waiting for player acceptance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute rule_set_name
    #   <p>A unique identifier for the matchmaking rule set to use with this configuration. A matchmaking configuration can only use
    #               rule sets that are defined in the same Region.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_set_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the GameLift matchmaking rule set resource that this configuration uses.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_target
    #   <p>An SNS topic ARN that is set up to receive matchmaking notifications.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_player_count
    #   <p>The number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies
    #               a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match. This parameter is not used when <code>FlexMatchMode</code> is set to
    #               <code>STANDALONE</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute custom_event_data
    #   <p>Information to attach to all events related to the matchmaking configuration. </p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute game_properties
    #   <p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html gamelift-sdk-server-startsession">Start a Game Session</a>). This information is added to the new <a>GameSession</a>
    #               object that is created for a successful match. This parameter is not used when
    #               <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #
    #   @return [Array<GameProperty>]
    #
    # @!attribute game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html gamelift-sdk-server-startsession">Start a Game Session</a>). This information is added to the new <a>GameSession</a> object
    #               that is created for a successful match. This parameter is not used when
    #               <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute backfill_mode
    #   <p>The method used to backfill game sessions created with this matchmaking configuration.
    #               MANUAL indicates that the game makes backfill requests or does not use the match
    #               backfill feature. AUTOMATIC indicates that GameLift creates <a>StartMatchBackfill</a> requests whenever a game session has one or more open
    #               slots. Learn more about manual and automatic backfill in <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html">Backfill existing games
    #                   with FlexMatch</a>. Automatic backfill is not available when
    #               <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #
    #   Enum, one of: ["AUTOMATIC", "MANUAL"]
    #
    #   @return [String]
    #
    # @!attribute flex_match_mode
    #   <p>Indicates whether this matchmaking configuration is being used with GameLift hosting or
    #               as a standalone matchmaking solution. </p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>STANDALONE</b> - FlexMatch forms matches and returns
    #                   match information, including players and team assignments, in a
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html match-events-matchmakingsucceeded">
    #                       MatchmakingSucceeded</a> event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>WITH_QUEUE</b> - FlexMatch forms matches and uses the specified GameLift queue to
    #                   start a game session for the match. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["STANDALONE", "WITH_QUEUE"]
    #
    #   @return [String]
    #
    MatchmakingConfiguration = ::Struct.new(
      :name,
      :configuration_arn,
      :description,
      :game_session_queue_arns,
      :request_timeout_seconds,
      :acceptance_timeout_seconds,
      :acceptance_required,
      :rule_set_name,
      :rule_set_arn,
      :notification_target,
      :additional_player_count,
      :custom_event_data,
      :creation_time,
      :game_properties,
      :game_session_data,
      :backfill_mode,
      :flex_match_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MatchmakingConfigurationStatus
    #
    module MatchmakingConfigurationStatus
      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      PLACING = "PLACING"

      # No documentation available.
      #
      QUEUED = "QUEUED"

      # No documentation available.
      #
      REQUIRES_ACCEPTANCE = "REQUIRES_ACCEPTANCE"

      # No documentation available.
      #
      SEARCHING = "SEARCHING"

      # No documentation available.
      #
      TIMED_OUT = "TIMED_OUT"
    end

    # <p>Set of rule statements, used with FlexMatch, that determine how to build your player
    #             matches. Each rule set describes a type of group to be created and defines the
    #             parameters for acceptable player matches. Rule sets are used in <a>MatchmakingConfiguration</a> objects.</p>
    #         <p>A rule set may define the following elements for a match. For detailed information
    #             and examples showing how to construct a rule set, see <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html">Build a FlexMatch rule
    #                 set</a>. </p>
    #         <ul>
    #             <li>
    #                 <p>Teams -- Required. A rule set must define one or multiple teams for the
    #                     match and set minimum and maximum team sizes. For example, a rule set might
    #                     describe a 4x4 match that requires all eight slots to be filled. </p>
    #             </li>
    #             <li>
    #                 <p>Player attributes -- Optional. These attributes specify a set of player
    #                     characteristics to evaluate when looking for a match. Matchmaking requests that
    #                     use a rule set with player attributes must provide the corresponding attribute
    #                     values. For example, an attribute might specify a player's skill or
    #                     level.</p>
    #             </li>
    #             <li>
    #                 <p>Rules -- Optional. Rules define how to evaluate potential players for a
    #                     match based on player attributes. A rule might specify minimum requirements for
    #                     individual players, teams, or entire matches. For example, a rule might require
    #                     each player to meet a certain skill level, each team to have at least one player
    #                     in a certain role, or the match to have a minimum average skill level. or may
    #                     describe an entire group--such as all teams must be evenly matched or have at
    #                     least one player in a certain role. </p>
    #             </li>
    #             <li>
    #                 <p>Expansions -- Optional. Expansions allow you to relax the rules after a
    #                     period of time when no acceptable matches are found. This feature lets you
    #                     balance getting players into games in a reasonable amount of time instead of
    #                     making them wait indefinitely for the best possible match. For example, you
    #                     might use an expansion to increase the maximum skill variance between players
    #                     after 30 seconds.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute rule_set_name
    #   <p>A unique identifier for the matchmaking rule set</p>
    #
    #   @return [String]
    #
    # @!attribute rule_set_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift matchmaking rule set resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::matchmakingruleset/<ruleset name></code>.  In a GameLift rule set ARN, the resource ID matches the
    #                   <i>RuleSetName</i> value.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_set_body
    #   <p>A collection of matchmaking rules, formatted as a JSON string. Comments are not
    #               allowed in JSON, but most elements support a description field.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    MatchmakingRuleSet = ::Struct.new(
      :rule_set_name,
      :rule_set_arn,
      :rule_set_body,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Ticket generated to track the progress of a matchmaking request. Each ticket is
    #             uniquely identified by a ticket ID, supplied by the requester, when creating a
    #             matchmaking request with <a>StartMatchmaking</a>. Tickets can be retrieved by
    #             calling <a>DescribeMatchmaking</a> with the ticket ID.</p>
    #
    # @!attribute ticket_id
    #   <p>A unique identifier for a matchmaking ticket.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_name
    #   <p>Name of the <a>MatchmakingConfiguration</a> that is used with this
    #               ticket. Matchmaking configurations determine how players are grouped into a match and
    #               how a new game session is created for the match.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the GameLift matchmaking configuration resource that is used with this ticket.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Current status of the matchmaking request.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>QUEUED</b> -- The matchmaking request has been
    #                       received and is currently waiting to be processed.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>SEARCHING</b> -- The matchmaking request is
    #                       currently being processed. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>REQUIRES_ACCEPTANCE</b> -- A match has been
    #                       proposed and the players must accept the match (see <a>AcceptMatch</a>). This status is used only with requests that use a matchmaking configuration
    #                       with a player acceptance requirement.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>PLACING</b> -- The FlexMatch engine has matched
    #                       players and is in the process of placing a new game session for the
    #                       match.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>COMPLETED</b> -- Players have been matched and a
    #                       game session is ready to host the players. A ticket in this state contains the
    #                       necessary connection information for players.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>FAILED</b> -- The matchmaking request was not
    #                       completed.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>CANCELLED</b> -- The matchmaking request was
    #                       canceled. This may be the result of a call to <a>StopMatchmaking</a>
    #                       or a proposed match that one or more players failed to accept.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>TIMED_OUT</b> -- The matchmaking request was not
    #                       successful within the duration specified in the matchmaking configuration.
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>Matchmaking requests that fail to successfully complete (statuses FAILED,
    #                   CANCELLED, TIMED_OUT) can be resubmitted as new requests with new ticket
    #                   IDs.</p>
    #           </note>
    #
    #   Enum, one of: ["CANCELLED", "COMPLETED", "FAILED", "PLACING", "QUEUED", "REQUIRES_ACCEPTANCE", "SEARCHING", "TIMED_OUT"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>Code to explain the current status. For example, a status reason may indicate when
    #               a ticket has returned to <code>SEARCHING</code> status after a proposed match fails to
    #               receive player acceptances.</p>
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>Additional information about the current status.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>Time stamp indicating when this matchmaking request was received. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>Time stamp indicating when this matchmaking request stopped being processed due to
    #               success, failure, or cancellation. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute players
    #   <p>A set of <code>Player</code> objects, each representing a player to find matches
    #               for. Players are identified by a unique player ID and may include latency data for use
    #               during matchmaking. If the ticket is in status <code>COMPLETED</code>, the
    #               <code>Player</code> objects include the team the players were assigned to in the
    #               resulting match.</p>
    #
    #   @return [Array<Player>]
    #
    # @!attribute game_session_connection_info
    #   <p>Identifier and connection information of the game session created for the match. This
    #               information is added to the ticket only after the matchmaking request has been
    #               successfully completed. This parameter is not set when FlexMatch is being used without
    #               GameLift hosting.</p>
    #
    #   @return [GameSessionConnectionInfo]
    #
    # @!attribute estimated_wait_time
    #   <p>Average amount of time (in seconds) that players are currently waiting for a match.
    #               If there is not enough recent data, this property may be empty.</p>
    #
    #   @return [Integer]
    #
    MatchmakingTicket = ::Struct.new(
      :ticket_id,
      :configuration_name,
      :configuration_arn,
      :status,
      :status_reason,
      :status_message,
      :start_time,
      :end_time,
      :players,
      :game_session_connection_info,
      :estimated_wait_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MetricName
    #
    module MetricName
      # No documentation available.
      #
      ActivatingGameSessions = "ActivatingGameSessions"

      # No documentation available.
      #
      ActiveGameSessions = "ActiveGameSessions"

      # No documentation available.
      #
      ActiveInstances = "ActiveInstances"

      # No documentation available.
      #
      AvailableGameSessions = "AvailableGameSessions"

      # No documentation available.
      #
      AvailablePlayerSessions = "AvailablePlayerSessions"

      # No documentation available.
      #
      CurrentPlayerSessions = "CurrentPlayerSessions"

      # No documentation available.
      #
      IdleInstances = "IdleInstances"

      # No documentation available.
      #
      PercentAvailableGameSessions = "PercentAvailableGameSessions"

      # No documentation available.
      #
      PercentIdleInstances = "PercentIdleInstances"

      # No documentation available.
      #
      QueueDepth = "QueueDepth"

      # No documentation available.
      #
      WaitTime = "WaitTime"
    end

    # <p>A service resource associated with the request could not be found. Clients should
    #             not retry such requests.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OperatingSystem
    #
    module OperatingSystem
      # No documentation available.
      #
      WINDOWS_2012 = "WINDOWS_2012"

      # No documentation available.
      #
      AMAZON_LINUX = "AMAZON_LINUX"

      # No documentation available.
      #
      AMAZON_LINUX_2 = "AMAZON_LINUX_2"
    end

    # <p>The specified game server group has no available game servers to fulfill a
    #             <code>ClaimGameServer</code> request. Clients can retry such requests immediately
    #             or after a waiting period.
    #
    #         </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OutOfCapacityException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a player session that was created as part of a <a>StartGameSessionPlacement</a> request. This object contains only the player
    #         ID and player session ID. To retrieve full details on a player session, call <a>DescribePlayerSessions</a> with the player session ID.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreatePlayerSession</a> |
    #                     <a>CreatePlayerSessions</a> |
    #                     <a>DescribePlayerSessions</a> |
    #                     <a>StartGameSessionPlacement</a> |
    #                     <a>DescribeGameSessionPlacement</a> |
    #                     <a>StopGameSessionPlacement</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @!attribute player_id
    #   <p>A unique identifier for a player that is associated with this player session.</p>
    #
    #   @return [String]
    #
    # @!attribute player_session_id
    #   <p>A unique identifier for a player session.</p>
    #
    #   @return [String]
    #
    PlacedPlayerSession = ::Struct.new(
      :player_id,
      :player_session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a player in matchmaking. When starting a matchmaking request, a player
    #             has a player ID, attributes, and may have latency data. Team information is added after
    #             a match has been successfully completed.</p>
    #
    # @!attribute player_id
    #   <p>A unique identifier for a player</p>
    #
    #   @return [String]
    #
    # @!attribute player_attributes
    #   <p>A collection of key:value pairs containing player information for use in matchmaking.
    #               Player attribute keys must match the <i>playerAttributes</i> used in a
    #               matchmaking rule set. Example: <code>"PlayerAttributes": {"skill": {"N": "23"},
    #                   "gameMode": {"S": "deathmatch"}}</code>.</p>
    #
    #   @return [Hash<String, AttributeValue>]
    #
    # @!attribute team
    #   <p>Name of the team that the player is assigned to in a match. Team names are defined
    #               in a matchmaking rule set.</p>
    #
    #   @return [String]
    #
    # @!attribute latency_in_ms
    #   <p>A set of values, expressed in milliseconds, that indicates the amount of latency that a player experiences when connected to @aws; Regions. If this property is present, FlexMatch considers placing the match only
    #               in Regions for which latency is reported. </p>
    #           <p>If a matchmaker has a rule that evaluates player latency, players must report
    #               latency in order to be matched. If no latency is reported in this scenario, FlexMatch
    #               assumes that no Regions are available to the player and the ticket is not matchable.
    #           </p>
    #
    #   @return [Hash<String, Integer>]
    #
    Player = ::Struct.new(
      :player_id,
      :player_attributes,
      :team,
      :latency_in_ms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Regional latency information for a player, used when requesting a new game session
    #         with <a>StartGameSessionPlacement</a>. This value indicates the amount of
    #         time lag that exists when the player is connected to a fleet in the specified Region.
    #         The relative difference between a player's latency values for multiple Regions are used
    #         to determine which fleets are best suited to place a new game session for the player.
    #     </p>
    #
    # @!attribute player_id
    #   <p>A unique identifier for a player associated with the latency data.</p>
    #
    #   @return [String]
    #
    # @!attribute region_identifier
    #   <p>Name of the Region that is associated with the latency value.</p>
    #
    #   @return [String]
    #
    # @!attribute latency_in_milliseconds
    #   <p>Amount of time that represents the time lag experienced by the player when
    #           connected to the specified Region.</p>
    #
    #   @return [Float]
    #
    PlayerLatency = ::Struct.new(
      :player_id,
      :region_identifier,
      :latency_in_milliseconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.latency_in_milliseconds ||= 0
      end
    end

    # <p>Sets a latency cap for individual players when placing a game session. With a latency
    #             policy in force, a game session cannot be placed in a fleet location where a player
    #             reports latency higher than the cap. Latency policies are used only with placement
    #             request that provide player latency information. Player latency policies can be stacked
    #             to gradually relax latency requirements over time. </p>
    #         <p>Latency policies are part of a <a>GameSessionQueue</a>.</p>
    #
    # @!attribute maximum_individual_player_latency_milliseconds
    #   <p>The maximum latency value that is allowed for any player, in milliseconds. All
    #               policies must have a value set for this property.</p>
    #
    #   @return [Integer]
    #
    # @!attribute policy_duration_seconds
    #   <p>The length of time, in seconds, that the policy is enforced while placing a new
    #               game session. A null value for this property means that the policy is enforced until the
    #               queue times out.</p>
    #
    #   @return [Integer]
    #
    PlayerLatencyPolicy = ::Struct.new(
      :maximum_individual_player_latency_milliseconds,
      :policy_duration_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a player session. Player sessions are created either for a specific game
    #             session, or as part of a game session placement or matchmaking request. A player session
    #             can represents a reserved player slot in a game session (when status is
    #                 <code>RESERVED</code>) or actual player activity in a game session (when status is
    #                 <code>ACTIVE</code>). A player session object, including player data, is
    #             automatically passed to a game session when the player connects to the game session and
    #             is validated. After the game session ends, player sessions information is retained for
    #             30 days and then removed.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreatePlayerSession</a> |
    #                     <a>CreatePlayerSessions</a> |
    #                     <a>DescribePlayerSessions</a> |
    #                     <a>StartGameSessionPlacement</a> |
    #                     <a>DescribeGameSessionPlacement</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @!attribute player_session_id
    #   <p>A unique identifier for a player session.</p>
    #
    #   @return [String]
    #
    # @!attribute player_id
    #   <p>A unique identifier for a player that is associated with this player session.</p>
    #
    #   @return [String]
    #
    # @!attribute game_session_id
    #   <p>A unique identifier for the game session that the player session is connected to.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that the player's game session is running on.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>
    #               The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the GameLift fleet that the player's game session is running on.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute termination_time
    #   <p>A time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>Current status of the player session.</p>
    #            <p>Possible player session statuses include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>RESERVED</b> -- The player session request has been
    #                   received, but the player has not yet connected to the server process and/or been
    #                   validated. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ACTIVE</b> -- The player has been validated by the
    #                   server process and is currently connected.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>COMPLETED</b> -- The player connection has been
    #                   dropped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TIMEDOUT</b> -- A player session request was
    #                   received, but the player did not connect and/or was not validated within the
    #                   timeout limit (60 seconds).</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"]
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>The IP address of the game session. To connect to a GameLift game server, an app needs both the IP address and port number.</p>
    #
    #   @return [String]
    #
    # @!attribute dns_name
    #   <p>The DNS identifier assigned to the instance that is running the game session. Values have
    #               the following format:</p>
    #            <ul>
    #               <li>
    #                  <p>TLS-enabled fleets: <code><unique identifier>.<region identifier>.amazongamelift.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Non-TLS-enabled fleets: <code>ec2-<unique identifier>.compute.amazonaws.com</code>. (See
    #               <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html concepts-public-addresses">Amazon EC2 Instance IP Addressing</a>.)</p>
    #               </li>
    #            </ul>
    #               <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Port number for the game session. To connect to a Amazon GameLift server process, an app
    #           needs both the IP address and port number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute player_data
    #   <p>Developer-defined information related to a player. GameLift does not use this data, so it can be formatted as needed for use in the game. </p>
    #
    #   @return [String]
    #
    PlayerSession = ::Struct.new(
      :player_session_id,
      :player_id,
      :game_session_id,
      :fleet_id,
      :fleet_arn,
      :creation_time,
      :termination_time,
      :status,
      :ip_address,
      :dns_name,
      :port,
      :player_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PlayerSessionCreationPolicy
    #
    module PlayerSessionCreationPolicy
      # No documentation available.
      #
      ACCEPT_ALL = "ACCEPT_ALL"

      # No documentation available.
      #
      DENY_ALL = "DENY_ALL"
    end

    # Includes enum constants for PlayerSessionStatus
    #
    module PlayerSessionStatus
      # No documentation available.
      #
      RESERVED = "RESERVED"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      TIMEDOUT = "TIMEDOUT"
    end

    # Includes enum constants for PolicyType
    #
    module PolicyType
      # No documentation available.
      #
      RuleBased = "RuleBased"

      # No documentation available.
      #
      TargetBased = "TargetBased"
    end

    # <p>Custom prioritization settings for use by a game session queue when placing new game
    #             sessions with available game servers. When defined, this configuration replaces the
    #             default FleetIQ prioritization process, which is as follows:</p>
    #         <ul>
    #             <li>
    #                 <p>If player latency data is included in a game session request, destinations and
    #                     locations are prioritized first based on lowest average latency (1), then on
    #                     lowest hosting cost (2), then on destination list order (3), and finally on
    #                     location (alphabetical) (4). This approach ensures that the queue's top priority
    #                     is to place game sessions where average player latency is lowest, and--if
    #                     latency is the same--where the hosting cost is less, etc.</p>
    #             </li>
    #             <li>
    #                 <p>If player latency data is not included, destinations and locations are
    #                     prioritized first on destination list order (1), and then on location
    #                     (alphabetical) (2). This approach ensures that the queue's top priority is to
    #                     place game sessions on the first destination fleet listed. If that fleet has
    #                     multiple locations, the game session is placed on the first location (when
    #                     listed alphabetically).</p>
    #             </li>
    #          </ul>
    #         <p>Changing the priority order will affect how game sessions are placed.</p>
    #         <p>Priority configurations are part of a <a>GameSessionQueue</a>.</p>
    #
    # @!attribute priority_order
    #   <p>The recommended sequence to use when prioritizing where to place new game sessions.
    #               Each type can only be listed once.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>LATENCY</code> -- FleetIQ prioritizes locations where the average player
    #                       latency (provided in each game session request) is lowest. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>COST</code> -- FleetIQ prioritizes destinations with the lowest current
    #                       hosting costs. Cost is evaluated based on the location, instance type, and fleet
    #                       type (Spot or On-Demand) for each destination in the queue.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DESTINATION</code> -- FleetIQ prioritizes based on the order that
    #                       destinations are listed in the queue configuration.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>LOCATION</code> -- FleetIQ prioritizes based on the provided order of
    #                       locations, as defined in <code>LocationOrder</code>. </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute location_order
    #   <p>The prioritization order to use for fleet locations, when the
    #                   <code>PriorityOrder</code> property includes <code>LOCATION</code>. Locations are
    #               identified by Amazon Web Services Region codes such as <code>us-west-2</code>. Each location can only be
    #               listed once. </p>
    #
    #   @return [Array<String>]
    #
    PriorityConfiguration = ::Struct.new(
      :priority_order,
      :location_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PriorityType
    #
    module PriorityType
      # No documentation available.
      #
      LATENCY = "LATENCY"

      # No documentation available.
      #
      COST = "COST"

      # No documentation available.
      #
      DESTINATION = "DESTINATION"

      # No documentation available.
      #
      LOCATION = "LOCATION"
    end

    # Includes enum constants for ProtectionPolicy
    #
    module ProtectionPolicy
      # No documentation available.
      #
      NoProtection = "NoProtection"

      # No documentation available.
      #
      FullProtection = "FullProtection"
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique. A fleet can have only one scaling policy with the same name.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to apply this policy to. You can use either the fleet ID or ARN value. The fleet
    #               cannot be in any of the following statuses: ERROR or DELETING.</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_adjustment
    #   <p>Amount of adjustment to make, based on the scaling adjustment type.</p>
    #
    #   @return [Integer]
    #
    # @!attribute scaling_adjustment_type
    #   <p>The type of adjustment to make to a fleet's instance count (see <a>FleetCapacity</a>):</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>ChangeInCapacity</b> -- add (or subtract) the
    #                       scaling adjustment value from the current instance count. Positive values scale
    #                       up while negative values scale down.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>ExactCapacity</b> -- set the instance count to the
    #                       scaling adjustment value.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>PercentChangeInCapacity</b> -- increase or reduce
    #                       the current instance count by the scaling adjustment, read as a percentage.
    #                       Positive values scale up while negative values scale down; for example, a value
    #                       of "-10" scales the fleet down by 10%.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ChangeInCapacity", "ExactCapacity", "PercentChangeInCapacity"]
    #
    #   @return [String]
    #
    # @!attribute threshold
    #   <p>Metric value used to trigger a scaling event.</p>
    #
    #   @return [Float]
    #
    # @!attribute comparison_operator
    #   <p>Comparison operator to use when measuring the metric against the threshold
    #               value.</p>
    #
    #   Enum, one of: ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"]
    #
    #   @return [String]
    #
    # @!attribute evaluation_periods
    #   <p>Length of time (in minutes) the metric must be at or beyond the threshold before a
    #               scaling event is triggered.</p>
    #
    #   @return [Integer]
    #
    # @!attribute metric_name
    #   <p>Name of the Amazon GameLift-defined metric that is used to trigger a scaling adjustment. For
    #               detailed descriptions of fleet metrics, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html">Monitor Amazon GameLift
    #                   with Amazon CloudWatch</a>. </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>ActivatingGameSessions</b> -- Game sessions in
    #                       the process of being created.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>ActiveGameSessions</b> -- Game sessions that
    #                       are currently running.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>ActiveInstances</b> -- Fleet instances that
    #                       are currently running at least one game session.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>AvailableGameSessions</b> -- Additional game
    #                       sessions that fleet could host simultaneously, given current capacity.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>AvailablePlayerSessions</b> -- Empty player
    #                       slots in currently active game sessions. This includes game sessions that are
    #                       not currently accepting players. Reserved player slots are not
    #                       included.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>CurrentPlayerSessions</b> -- Player slots in
    #                       active game sessions that are being used by a player or are reserved for a
    #                       player. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>IdleInstances</b> -- Active instances that are
    #                       currently hosting zero game sessions. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>PercentAvailableGameSessions</b> -- Unused
    #                       percentage of the total number of game sessions that a fleet could host
    #                       simultaneously, given current capacity. Use this metric for a target-based
    #                       scaling policy.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>PercentIdleInstances</b> -- Percentage of the
    #                       total number of active instances that are hosting zero game sessions.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>QueueDepth</b> -- Pending game session
    #                       placement requests, in any queue, where the current fleet is the top-priority
    #                       destination.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>WaitTime</b> -- Current wait time for pending
    #                       game session placement requests, in any queue, where the current fleet is the
    #                       top-priority destination. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ActivatingGameSessions", "ActiveGameSessions", "ActiveInstances", "AvailableGameSessions", "AvailablePlayerSessions", "CurrentPlayerSessions", "IdleInstances", "PercentAvailableGameSessions", "PercentIdleInstances", "QueueDepth", "WaitTime"]
    #
    #   @return [String]
    #
    # @!attribute policy_type
    #   <p>The type of scaling policy to create. For a target-based policy, set the parameter
    #                   <i>MetricName</i> to 'PercentAvailableGameSessions' and specify a
    #                   <i>TargetConfiguration</i>. For a rule-based policy set the following
    #               parameters: <i>MetricName</i>, <i>ComparisonOperator</i>,
    #                   <i>Threshold</i>, <i>EvaluationPeriods</i>,
    #                   <i>ScalingAdjustmentType</i>, and
    #                   <i>ScalingAdjustment</i>.</p>
    #
    #   Enum, one of: ["RuleBased", "TargetBased"]
    #
    #   @return [String]
    #
    # @!attribute target_configuration
    #   <p>An object that contains settings for a target-based scaling policy.</p>
    #
    #   @return [TargetConfiguration]
    #
    PutScalingPolicyInput = ::Struct.new(
      :name,
      :fleet_id,
      :scaling_adjustment,
      :scaling_adjustment_type,
      :threshold,
      :comparison_operator,
      :evaluation_periods,
      :metric_name,
      :policy_type,
      :target_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.scaling_adjustment ||= 0
        self.threshold ||= 0
      end
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique.</p>
    #
    #   @return [String]
    #
    PutScalingPolicyOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.
    #               Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute game_server_id
    #   <p>A custom string that uniquely identifies the game server to register.
    #               Game server IDs are developer-defined and must be unique across all game server groups in your Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The unique identifier for the instance where the game server is running. This ID is
    #               available in the instance metadata. EC2 instance IDs
    #               use a 17-character format, for example: <code>i-1234567890abcdef0</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_info
    #   <p>Information that is needed to make inbound client connections to the game server. This
    #               might include the IP address and port, DNS name, and other information.</p>
    #
    #   @return [String]
    #
    # @!attribute game_server_data
    #   <p>A set of custom game server properties, formatted as a single string value. This data
    #               is passed to a game client or service when it requests information on game servers using
    #                   <a>ListGameServers</a> or <a>ClaimGameServer</a>. </p>
    #
    #   @return [String]
    #
    RegisterGameServerInput = ::Struct.new(
      :game_server_group_name,
      :game_server_id,
      :instance_id,
      :connection_info,
      :game_server_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server
    #   <p>Object that describes the newly registered game server.</p>
    #
    #   @return [GameServer]
    #
    RegisterGameServerOutput = ::Struct.new(
      :game_server,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute build_id
    #   <p>A unique identifier for the build to get credentials for. You can use either the build ID or ARN value. </p>
    #
    #   @return [String]
    #
    RequestUploadCredentialsInput = ::Struct.new(
      :build_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute upload_credentials
    #   <p>Amazon Web Services credentials required when uploading a game build to the storage location.
    #               These credentials have a limited lifespan and are valid only for the build they were
    #               issued for.</p>
    #
    #   @return [AwsCredentials]
    #
    # @!attribute storage_location
    #   <p>Amazon S3 path and key, identifying where the game build files are
    #               stored.</p>
    #
    #   @return [S3Location]
    #
    RequestUploadCredentialsOutput = ::Struct.new(
      :upload_credentials,
      :storage_location,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::GameLift::Types::RequestUploadCredentialsOutput "\
          "upload_credentials=\"[SENSITIVE]\", "\
          "storage_location=#{storage_location || 'nil'}>"
      end
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute alias_id
    #   <p>The unique identifier of the alias that you want to retrieve a fleet ID for. You can
    #               use either the alias ID or ARN value.</p>
    #
    #   @return [String]
    #
    ResolveAliasInput = ::Struct.new(
      :alias_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>The fleet identifier that the alias is pointing to.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>
    #              The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the GameLift fleet resource that this alias points to.
    #           </p>
    #
    #   @return [String]
    #
    ResolveAliasOutput = ::Struct.new(
      :fleet_id,
      :fleet_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A policy that puts limits on the number of game sessions that a player can create
    #             within a specified span of time. With this policy, you can control players' ability to
    #             consume available resources.</p>
    #         <p>The policy is evaluated when a player tries to create a new game session. On receiving
    #             a <code>CreateGameSession</code> request, GameLift checks that the player (identified by
    #                 <code>CreatorId</code>) has created fewer than game session limit in the specified
    #             time period.</p>
    #         <p>The resource creation limit policy is included in <a>FleetAttributes</a>.</p>
    #
    # @!attribute new_game_sessions_per_creator
    #   <p>The maximum number of game sessions that an individual can create during the policy
    #               period. </p>
    #
    #   @return [Integer]
    #
    # @!attribute policy_period_in_minutes
    #   <p>The time span used in evaluating the resource creation limit policy. </p>
    #
    #   @return [Integer]
    #
    ResourceCreationLimitPolicy = ::Struct.new(
      :new_game_sessions_per_creator,
      :policy_period_in_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute resume_actions
    #   <p>The activity to resume for this game server group.</p>
    #
    #   @return [Array<String>]
    #
    ResumeGameServerGroupInput = ::Struct.new(
      :game_server_group_name,
      :resume_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group
    #   <p>An object that describes the game server group resource, with the
    #                   <code>SuspendedActions</code> property updated to reflect the resumed
    #               activity.</p>
    #
    #   @return [GameServerGroup]
    #
    ResumeGameServerGroupOutput = ::Struct.new(
      :game_server_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The routing configuration for a fleet alias.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateAlias</a> |
    #                     <a>ListAliases</a> |
    #                     <a>DescribeAlias</a> |
    #                     <a>UpdateAlias</a> |
    #                     <a>DeleteAlias</a> |
    #                     <a>ResolveAlias</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @!attribute type
    #   <p>The type of routing strategy for the alias.</p>
    #           <p>Possible routing types include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>SIMPLE</b> - The alias resolves to one specific
    #                       fleet. Use this type when routing to active fleets.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>TERMINAL</b> - The alias does not resolve to a
    #                       fleet but instead can be used to display a message to the user. A terminal alias
    #                       throws a TerminalRoutingStrategyException with the <a>RoutingStrategy</a> message embedded.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SIMPLE", "TERMINAL"]
    #
    #   @return [String]
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that the alias points to. This value is the fleet ID, not the fleet ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message text to be used with a terminal routing strategy.</p>
    #
    #   @return [String]
    #
    RoutingStrategy = ::Struct.new(
      :type,
      :fleet_id,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RoutingStrategyType
    #
    module RoutingStrategyType
      # No documentation available.
      #
      SIMPLE = "SIMPLE"

      # No documentation available.
      #
      TERMINAL = "TERMINAL"
    end

    # <p>A collection of server process configurations that describe the set of processes to
    #             run on each instance in a fleet. Server processes run either an executable in a custom
    #             game build or a Realtime Servers script. GameLift launches the configured processes, manages their
    #             life cycle, and replaces them as needed. Each instance checks regularly for an updated
    #             runtime configuration. </p>
    #         <p>A GameLift instance is limited to 50 processes running concurrently. To calculate the
    #             total number of processes in a runtime configuration, add the values of the
    #                 <code>ConcurrentExecutions</code> parameter for each <a>ServerProcess</a>. Learn more about <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html"> Running Multiple
    #                 Processes on a Fleet</a>.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #         <p>
    #             <a>DescribeRuntimeConfiguration</a> | <a>UpdateRuntimeConfiguration</a>
    #          </p>
    #
    # @!attribute server_processes
    #   <p>A collection of server process configurations that identify what server processes to
    #               run on each instance in a fleet.</p>
    #
    #   @return [Array<ServerProcess>]
    #
    # @!attribute max_concurrent_game_session_activations
    #   <p>The number of game sessions in status <code>ACTIVATING</code> to allow on an instance.
    #               This setting limits the instance resources that can be used for new game activations at
    #               any one time.</p>
    #
    #   @return [Integer]
    #
    # @!attribute game_session_activation_timeout_seconds
    #   <p>The maximum amount of time (in seconds) allowed to launch a new game session and have
    #               it report ready to host players. During this time, the game session is in status
    #                   <code>ACTIVATING</code>. If the game session does not become active before the
    #               timeout, it is ended and the game session status is changed to
    #               <code>TERMINATED</code>.</p>
    #
    #   @return [Integer]
    #
    RuntimeConfiguration = ::Struct.new(
      :server_processes,
      :max_concurrent_game_session_activations,
      :game_session_activation_timeout_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The location in Amazon S3 where build or script files are stored for access by Amazon GameLift. This
    #             location is specified in <a>CreateBuild</a>, <a>CreateScript</a>,
    #             and <a>UpdateScript</a> requests. </p>
    #
    # @!attribute bucket
    #   <p>An Amazon S3 bucket identifier. This is the name of the S3 bucket.</p>
    #           <note>
    #               <p>GameLift currently does not support uploading from Amazon S3 buckets with names that contain a dot (.).</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The name of the zip file that contains the build files or script files. </p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) for an IAM role that
    #               allows Amazon GameLift to access the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute object_version
    #   <p>The version of the file, if object versioning is turned on for the bucket. Amazon GameLift uses
    #               this information when retrieving files from an S3 bucket that you own. Use this
    #               parameter to specify a specific version of the file. If not set, the latest version of
    #               the file is retrieved. </p>
    #
    #   @return [String]
    #
    S3Location = ::Struct.new(
      :bucket,
      :key,
      :role_arn,
      :object_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScalingAdjustmentType
    #
    module ScalingAdjustmentType
      # No documentation available.
      #
      ChangeInCapacity = "ChangeInCapacity"

      # No documentation available.
      #
      ExactCapacity = "ExactCapacity"

      # No documentation available.
      #
      PercentChangeInCapacity = "PercentChangeInCapacity"
    end

    # <p>Rule that controls how a fleet is scaled. Scaling policies are uniquely identified
    #         by the combination of name and fleet ID.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>DescribeFleetCapacity</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>PutScalingPolicy</a> |
    #                     <a>DescribeScalingPolicies</a> |
    #                     <a>DeleteScalingPolicy</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>StartFleetActions</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that is associated with this scaling policy.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Current status of the scaling policy. The scaling policy can be in force only when
    #           in an <code>ACTIVE</code> status. Scaling policies can be suspended for individual
    #           fleets (see <a>StopFleetActions</a>; if suspended for a fleet, the policy
    #           status does not change. View a fleet's stopped actions by calling <a>DescribeFleetCapacity</a>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>ACTIVE</b> -- The scaling policy can be used for
    #                   auto-scaling a fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>UPDATE_REQUESTED</b> -- A request to update the
    #                   scaling policy has been received.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>UPDATING</b> -- A change is being made to the
    #                   scaling policy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DELETE_REQUESTED</b> -- A request to delete the
    #                   scaling policy has been received.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DELETING</b> -- The scaling policy is being
    #                   deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DELETED</b> -- The scaling policy has been
    #                   deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ERROR</b> -- An error occurred in creating the
    #                   policy. It should be removed and recreated.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ACTIVE", "UPDATE_REQUESTED", "UPDATING", "DELETE_REQUESTED", "DELETING", "DELETED", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute scaling_adjustment
    #   <p>Amount of adjustment to make, based on the scaling adjustment type.</p>
    #
    #   @return [Integer]
    #
    # @!attribute scaling_adjustment_type
    #   <p>The type of adjustment to make to a fleet's instance count (see <a>FleetCapacity</a>):</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>ChangeInCapacity</b> -- add (or subtract) the
    #                   scaling adjustment value from the current instance count. Positive values scale
    #                   up while negative values scale down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ExactCapacity</b> -- set the instance count to the
    #                   scaling adjustment value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PercentChangeInCapacity</b> -- increase or reduce
    #                   the current instance count by the scaling adjustment, read as a percentage.
    #                   Positive values scale up while negative values scale down.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ChangeInCapacity", "ExactCapacity", "PercentChangeInCapacity"]
    #
    #   @return [String]
    #
    # @!attribute comparison_operator
    #   <p>Comparison operator to use when measuring a metric against the threshold
    #           value.</p>
    #
    #   Enum, one of: ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"]
    #
    #   @return [String]
    #
    # @!attribute threshold
    #   <p>Metric value used to trigger a scaling event.</p>
    #
    #   @return [Float]
    #
    # @!attribute evaluation_periods
    #   <p>Length of time (in minutes) the metric must be at or beyond the threshold before a
    #           scaling event is triggered.</p>
    #
    #   @return [Integer]
    #
    # @!attribute metric_name
    #   <p>Name of the Amazon GameLift-defined metric that is used to trigger a scaling adjustment. For
    #               detailed descriptions of fleet metrics, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html">Monitor Amazon GameLift
    #                   with Amazon CloudWatch</a>. </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>ActivatingGameSessions</b> -- Game sessions in
    #                       the process of being created.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>ActiveGameSessions</b> -- Game sessions that
    #                       are currently running.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>ActiveInstances</b> -- Fleet instances that
    #                       are currently running at least one game session.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>AvailableGameSessions</b> -- Additional game
    #                       sessions that fleet could host simultaneously, given current capacity.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>AvailablePlayerSessions</b> -- Empty player
    #                       slots in currently active game sessions. This includes game sessions that are
    #                       not currently accepting players. Reserved player slots are not
    #                       included.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>CurrentPlayerSessions</b> -- Player slots in
    #                       active game sessions that are being used by a player or are reserved for a
    #                       player. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>IdleInstances</b> -- Active instances that are
    #                       currently hosting zero game sessions. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>PercentAvailableGameSessions</b> -- Unused
    #                       percentage of the total number of game sessions that a fleet could host
    #                       simultaneously, given current capacity. Use this metric for a target-based
    #                       scaling policy.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>PercentIdleInstances</b> -- Percentage of the
    #                       total number of active instances that are hosting zero game sessions.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>QueueDepth</b> -- Pending game session
    #                       placement requests, in any queue, where the current fleet is the top-priority
    #                       destination.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>WaitTime</b> -- Current wait time for pending
    #                       game session placement requests, in any queue, where the current fleet is the
    #                       top-priority destination. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ActivatingGameSessions", "ActiveGameSessions", "ActiveInstances", "AvailableGameSessions", "AvailablePlayerSessions", "CurrentPlayerSessions", "IdleInstances", "PercentAvailableGameSessions", "PercentIdleInstances", "QueueDepth", "WaitTime"]
    #
    #   @return [String]
    #
    # @!attribute policy_type
    #   <p>The type of scaling policy to create. For a target-based policy, set the parameter
    #                   <i>MetricName</i> to 'PercentAvailableGameSessions' and specify a
    #                   <i>TargetConfiguration</i>. For a rule-based policy set the following
    #               parameters: <i>MetricName</i>, <i>ComparisonOperator</i>,
    #                   <i>Threshold</i>, <i>EvaluationPeriods</i>,
    #                   <i>ScalingAdjustmentType</i>, and
    #                   <i>ScalingAdjustment</i>.</p>
    #
    #   Enum, one of: ["RuleBased", "TargetBased"]
    #
    #   @return [String]
    #
    # @!attribute target_configuration
    #   <p>An object that contains settings for a target-based scaling policy.</p>
    #
    #   @return [TargetConfiguration]
    #
    # @!attribute update_status
    #   <p>The current status of the fleet's scaling policies in a requested fleet location. The
    #                   status <code>PENDING_UPDATE</code> indicates that an update was requested for the fleet
    #                   but has not yet been completed for the location.</p>
    #
    #   Enum, one of: ["PENDING_UPDATE"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>
    #               The fleet location.
    #           </p>
    #
    #   @return [String]
    #
    ScalingPolicy = ::Struct.new(
      :fleet_id,
      :fleet_arn,
      :name,
      :status,
      :scaling_adjustment,
      :scaling_adjustment_type,
      :comparison_operator,
      :threshold,
      :evaluation_periods,
      :metric_name,
      :policy_type,
      :target_configuration,
      :update_status,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.scaling_adjustment ||= 0
        self.threshold ||= 0
      end
    end

    # Includes enum constants for ScalingStatusType
    #
    module ScalingStatusType
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      UPDATE_REQUESTED = "UPDATE_REQUESTED"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DELETE_REQUESTED = "DELETE_REQUESTED"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # <p>Properties describing a Realtime script.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateScript</a> |
    #                     <a>ListScripts</a> |
    #                     <a>DescribeScript</a> |
    #                     <a>UpdateScript</a> |
    #                     <a>DeleteScript</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @!attribute script_id
    #   <p>A unique identifier for the Realtime script</p>
    #
    #   @return [String]
    #
    # @!attribute script_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift script resource and uniquely identifies it. ARNs are unique across all Regions.  In a GameLift script ARN, the resource ID matches the
    #                   <i>ScriptId</i> value.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with a script. Script names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute size_on_disk
    #   <p>The file size of the uploaded Realtime script, expressed in bytes. When files are
    #               uploaded from an S3 location, this value remains at "0".</p>
    #
    #   @return [Integer]
    #
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute storage_location
    #   <p>The location in Amazon S3 where build or script files are stored for access by Amazon GameLift. This
    #               location is specified in <a>CreateBuild</a>, <a>CreateScript</a>,
    #               and <a>UpdateScript</a> requests. </p>
    #
    #   @return [S3Location]
    #
    Script = ::Struct.new(
      :script_id,
      :script_arn,
      :name,
      :version,
      :size_on_disk,
      :creation_time,
      :storage_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to search for active game sessions. You can use either the fleet ID or ARN
    #               value. Each request must reference either a fleet ID or alias ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute alias_id
    #   <p>A unique identifier for the alias associated with the fleet to search for active game sessions. You can use either
    #               the alias ID or ARN value. Each request must reference either a fleet ID or alias ID,
    #               but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>A fleet location to search for game sessions. You can specify a fleet's home Region or
    #               a remote location. Use the Amazon Web Services Region code format, such as <code>us-west-2</code>. </p>
    #           <p> </p>
    #
    #   @return [String]
    #
    # @!attribute filter_expression
    #   <p>String containing the search criteria for the session search. If no filter
    #               expression is included, the request returns results for all game sessions in the fleet
    #               that are in <code>ACTIVE</code> status.</p>
    #           <p>A filter expression can contain one or multiple conditions. Each condition consists
    #               of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>Operand</b> -- Name of a game session
    #                       attribute. Valid values are <code>gameSessionName</code>,
    #                           <code>gameSessionId</code>, <code>gameSessionProperties</code>,
    #                           <code>maximumSessions</code>, <code>creationTimeMillis</code>,
    #                           <code>playerSessionCount</code>,
    #                       <code>hasAvailablePlayerSessions</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>Comparator</b> -- Valid comparators are:
    #                           <code>=</code>, <code><></code>, <code><</code>, <code>></code>,
    #                           <code><=</code>, <code>>=</code>. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>Value</b> -- Value to be searched for. Values
    #                       may be numbers, boolean values (true/false) or strings depending on the operand.
    #                       String values are case sensitive and must be enclosed in single quotes. Special
    #                       characters must be escaped. Boolean and string values can only be used with the
    #                       comparators <code>=</code> and <code><></code>. For example, the following
    #                       filter expression searches on <code>gameSessionName</code>:
    #                           "<code>FilterExpression": "gameSessionName = 'Matt\\'s Awesome Game
    #                           1'"</code>. </p>
    #               </li>
    #            </ul>
    #           <p>To chain multiple conditions in a single expression, use the logical keywords
    #                   <code>AND</code>, <code>OR</code>, and <code>NOT</code> and parentheses as needed.
    #               For example: <code>x AND y AND NOT z</code>, <code>NOT (x OR y)</code>.</p>
    #           <p>Session search evaluates conditions from left to right using the following
    #               precedence rules:</p>
    #           <ol>
    #               <li>
    #                   <p>
    #                       <code>=</code>, <code><></code>, <code><</code>, <code>></code>,
    #                           <code><=</code>, <code>>=</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>Parentheses</p>
    #               </li>
    #               <li>
    #                   <p>NOT</p>
    #               </li>
    #               <li>
    #                   <p>AND</p>
    #               </li>
    #               <li>
    #                   <p>OR</p>
    #               </li>
    #            </ol>
    #           <p>For example, this filter expression retrieves game sessions hosting at least ten
    #               players that have an open player slot: <code>"maximumSessions>=10 AND
    #                   hasAvailablePlayerSessions=true"</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute sort_expression
    #   <p>Instructions on how to sort the search results. If no sort expression is included,
    #               the request returns results in random order. A sort expression consists of the following
    #               elements:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>Operand</b> -- Name of a game session attribute.
    #                       Valid values are <code>gameSessionName</code>, <code>gameSessionId</code>,
    #                           <code>gameSessionProperties</code>, <code>maximumSessions</code>,
    #                           <code>creationTimeMillis</code>, <code>playerSessionCount</code>,
    #                           <code>hasAvailablePlayerSessions</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>Order</b> -- Valid sort orders are <code>ASC</code>
    #                       (ascending) and <code>DESC</code> (descending).</p>
    #               </li>
    #            </ul>
    #           <p>For example, this sort expression returns the oldest active sessions first:
    #                   <code>"SortExpression": "creationTimeMillis ASC"</code>. Results with a null value
    #               for the sort operand are returned at the end of the list.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. The maximum number of results returned is 20, even if this value is not set
    #               or is set higher than 20. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    #   @return [String]
    #
    SearchGameSessionsInput = ::Struct.new(
      :fleet_id,
      :alias_id,
      :location,
      :filter_expression,
      :sort_expression,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute game_sessions
    #   <p>A collection of objects containing game session properties for each session that
    #               matches the request.</p>
    #
    #   @return [Array<GameSession>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #
    #   @return [String]
    #
    SearchGameSessionsOutput = ::Struct.new(
      :game_sessions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of instructions for launching server processes on each instance in a fleet.
    #             Server processes run either an executable in a custom game build or a Realtime Servers script.
    #             Server process configurations are part of a fleet's <a>RuntimeConfiguration</a>.</p>
    #
    # @!attribute launch_path
    #   <p>The location of a game build executable or the Realtime script file that contains the
    #                   <code>Init()</code> function. Game builds and Realtime scripts are installed on
    #               instances at the root: </p>
    #           <ul>
    #               <li>
    #                  <p>Windows (custom game builds only): <code>C:\game</code>. Example:
    #                           "<code>C:\game\MyGame\server.exe</code>" </p>
    #               </li>
    #               <li>
    #                  <p>Linux: <code>/local/game</code>. Examples: "<code>/local/game/MyGame/server.exe</code>" or
    #                           "<code>/local/game/MyRealtimeScript.js</code>"</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>An optional list of parameters to pass to the server executable or Realtime script on
    #               launch.</p>
    #
    #   @return [String]
    #
    # @!attribute concurrent_executions
    #   <p>The number of server processes using this configuration that run concurrently on each
    #               instance.</p>
    #
    #   @return [Integer]
    #
    ServerProcess = ::Struct.new(
      :launch_path,
      :parameters,
      :concurrent_executions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SortOrder
    #
    module SortOrder
      # No documentation available.
      #
      ASCENDING = "ASCENDING"

      # No documentation available.
      #
      DESCENDING = "DESCENDING"
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to restart actions on.  You can use either the fleet ID or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute actions
    #   <p>List of actions to restart on the fleet.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute location
    #   <p>The fleet location to restart fleet actions for. Specify a location in the form of
    #               an Amazon Web Services Region code, such as <code>us-west-2</code>.</p>
    #
    #   @return [String]
    #
    StartFleetActionsInput = ::Struct.new(
      :fleet_id,
      :actions,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to restart actions on.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #
    #   @return [String]
    #
    StartFleetActionsOutput = ::Struct.new(
      :fleet_id,
      :fleet_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute placement_id
    #   <p>A unique identifier to assign to the new game session placement. This value is
    #           developer-defined. The value must be unique across all Regions and cannot be reused
    #           unless you are resubmitting a canceled or timed-out placement request.</p>
    #
    #   @return [String]
    #
    # @!attribute game_session_queue_name
    #   <p>Name of the queue to use to place the new game session. You can use either the queue name
    #               or ARN value. </p>
    #
    #   @return [String]
    #
    # @!attribute game_properties
    #   <p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html gamelift-sdk-server-startsession">Start a Game Session</a>).</p>
    #
    #   @return [Array<GameProperty>]
    #
    # @!attribute maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    #
    #   @return [Integer]
    #
    # @!attribute game_session_name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute player_latencies
    #   <p>A set of values, expressed in milliseconds, that indicates the amount of latency that a player experiences when connected to @aws; Regions. This information is used to try to place the new game session where
    #           it can offer the best possible gameplay experience for the players. </p>
    #
    #   @return [Array<PlayerLatency>]
    #
    # @!attribute desired_player_sessions
    #   <p>Set of information on each player to create a player session for.</p>
    #
    #   @return [Array<DesiredPlayerSession>]
    #
    # @!attribute game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html gamelift-sdk-server-startsession">Start a Game Session</a>).</p>
    #
    #   @return [String]
    #
    StartGameSessionPlacementInput = ::Struct.new(
      :placement_id,
      :game_session_queue_name,
      :game_properties,
      :maximum_player_session_count,
      :game_session_name,
      :player_latencies,
      :desired_player_sessions,
      :game_session_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute game_session_placement
    #   <p>Object that describes the newly created game session placement. This object
    #           includes all the information provided in the request, as well as start/end time stamps
    #           and placement status. </p>
    #
    #   @return [GameSessionPlacement]
    #
    StartGameSessionPlacementOutput = ::Struct.new(
      :game_session_placement,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute ticket_id
    #   <p>A unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift will generate one in the form of
    #               a UUID. Use this identifier to track the match backfill ticket status and retrieve match
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_name
    #   <p>Name of the matchmaker to use for this request. You can use either the configuration
    #               name or ARN value. The ARN of the matchmaker that was used with the original game
    #               session is listed in the <a>GameSession</a> object,
    #                   <code>MatchmakerData</code> property.</p>
    #
    #   @return [String]
    #
    # @!attribute game_session_arn
    #   <p>A unique identifier for the game session. Use the game session ID. When using FlexMatch as a standalone matchmaking
    #               solution, this parameter is not needed. </p>
    #
    #   @return [String]
    #
    # @!attribute players
    #   <p>Match information on all players that are currently assigned to the game session.
    #               This information is used by the matchmaker to find new players and add them to the
    #               existing game.</p>
    #           <ul>
    #               <li>
    #                   <p>PlayerID, PlayerAttributes, Team -- This information is maintained in the
    #                       <a>GameSession</a> object, <code>MatchmakerData</code> property,
    #                       for all players who are currently assigned to the game session. The matchmaker
    #                       data is in JSON syntax, formatted as a string. For more details, see <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html match-server-data">
    #                           Match Data</a>. </p>
    #                   <p>The backfill request must specify the team membership for every player.
    #                   Do not specify team if you are not using backfill.</p>
    #               </li>
    #               <li>
    #                   <p>LatencyInMs -- If the matchmaker uses player latency, include a latency
    #                       value, in milliseconds, for the Region that the game session is currently in. Do
    #                       not include latency values for any other Region.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Player>]
    #
    StartMatchBackfillInput = ::Struct.new(
      :ticket_id,
      :configuration_name,
      :game_session_arn,
      :players,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute matchmaking_ticket
    #   <p>Ticket representing the backfill matchmaking request. This object includes the
    #               information in the request, ticket status, and match results as generated during the
    #               matchmaking process.</p>
    #
    #   @return [MatchmakingTicket]
    #
    StartMatchBackfillOutput = ::Struct.new(
      :matchmaking_ticket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute ticket_id
    #   <p>A unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift will generate one in the form of
    #               a UUID. Use this identifier to track the matchmaking ticket status and retrieve match
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_name
    #   <p>Name of the matchmaking configuration to use for this request. Matchmaking
    #               configurations must exist in the same Region as this request. You can use either the
    #               configuration name or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute players
    #   <p>Information on each player to be matched. This information must include a player
    #               ID, and may contain player attributes and latency data to be used in the matchmaking
    #               process. After a successful match, <code>Player</code> objects contain the name of the
    #               team the player is assigned to.</p>
    #
    #   @return [Array<Player>]
    #
    StartMatchmakingInput = ::Struct.new(
      :ticket_id,
      :configuration_name,
      :players,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute matchmaking_ticket
    #   <p>Ticket representing the matchmaking request. This object include the information
    #               included in the request, ticket status, and match results as generated during the
    #               matchmaking process.</p>
    #
    #   @return [MatchmakingTicket]
    #
    StartMatchmakingOutput = ::Struct.new(
      :matchmaking_ticket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to stop actions on.  You can use either the fleet ID or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute actions
    #   <p>List of actions to suspend on the fleet. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute location
    #   <p>The fleet location to stop fleet actions for. Specify a location in the form of an Amazon Web Services Region code, such as
    #               <code>us-west-2</code>.</p>
    #
    #   @return [String]
    #
    StopFleetActionsInput = ::Struct.new(
      :fleet_id,
      :actions,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to stop actions on.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #
    #   @return [String]
    #
    StopFleetActionsOutput = ::Struct.new(
      :fleet_id,
      :fleet_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute placement_id
    #   <p>A unique identifier for a game session placement to cancel.</p>
    #
    #   @return [String]
    #
    StopGameSessionPlacementInput = ::Struct.new(
      :placement_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute game_session_placement
    #   <p>Object that describes the canceled game session placement, with
    #           <code>CANCELLED</code> status and an end time stamp. </p>
    #
    #   @return [GameSessionPlacement]
    #
    StopGameSessionPlacementOutput = ::Struct.new(
      :game_session_placement,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute ticket_id
    #   <p>A unique identifier for a matchmaking ticket.</p>
    #
    #   @return [String]
    #
    StopMatchmakingInput = ::Struct.new(
      :ticket_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopMatchmakingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute suspend_actions
    #   <p>The activity to suspend for this game server group.</p>
    #
    #   @return [Array<String>]
    #
    SuspendGameServerGroupInput = ::Struct.new(
      :game_server_group_name,
      :suspend_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group
    #   <p>An object that describes the game server group resource, with the
    #                   <code>SuspendedActions</code> property updated to reflect the suspended
    #               activity.</p>
    #
    #   @return [GameServerGroup]
    #
    SuspendGameServerGroupOutput = ::Struct.new(
      :game_server_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             A label that can be assigned to a GameLift resource.
    #         </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> in the
    #             <i>Amazon Web Services General Reference</i>
    #          </p>
    #         <p>
    #             <a href="http://aws.amazon.com/answers/account-management/aws-tagging-strategies/">
    #             Amazon Web Services Tagging Strategies</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>TagResource</a> |
    #                     <a>UntagResource</a> |
    #                     <a>ListTagsForResource</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @!attribute key
    #   <p>
    #               The key for a developer-defined key:value pair for tagging an Amazon Web Services resource.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>
    #               The value for a developer-defined key:value pair for tagging an Amazon Web Services resource.
    #           </p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #               The Amazon Resource Name
    #               (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>)
    #               that is assigned to and uniquely identifies the GameLift resource that you want to assign
    #               tags to. GameLift resource ARNs are included in the data object for the resource, which
    #               can be retrieved by calling a List or Describe operation for the resource type. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of one or more tags to assign to the specified GameLift resource.
    #               Tags are developer-defined and structured as key-value pairs.
    #               The maximum tag limit may be lower than stated. See <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a>
    #               for actual tagging limits.</p>
    #
    #   @return [Array<Tag>]
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

    # <p>
    #             The requested tagging operation did not succeed. This may be due to invalid tag format
    #             or the maximum tag limit may have been exceeded. Resolve the issue before retrying.
    #         </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TaggingFailedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings for a target-based scaling policy (see <a>ScalingPolicy</a>. A
    #         target-based policy tracks a particular fleet metric specifies a target value for the
    #         metric. As player usage changes, the policy triggers Amazon GameLift to adjust capacity so
    #         that the metric returns to the target value. The target configuration specifies settings
    #         as needed for the target based policy, including the target value. </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>DescribeFleetCapacity</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>PutScalingPolicy</a> |
    #                     <a>DescribeScalingPolicies</a> |
    #                     <a>DeleteScalingPolicy</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>StartFleetActions</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @!attribute target_value
    #   <p>Desired value to use with a target-based scaling policy. The value must be relevant
    #           for whatever metric the scaling policy is using. For example, in a policy using the
    #           metric PercentAvailableGameSessions, the target value should be the preferred size of
    #           the fleet's buffer (the percent of capacity that should be idle and ready for new game
    #           sessions).</p>
    #
    #   @return [Float]
    #
    TargetConfiguration = ::Struct.new(
      :target_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.target_value ||= 0
      end
    end

    # <p>
    #             <b>This data type is used with the GameLift FleetIQ and game server groups.</b>
    #          </p>
    #         <p>Settings for a target-based scaling policy as part of a <a>GameServerGroupAutoScalingPolicy</a>.
    #             These settings are used to
    #             create a target-based policy that tracks the GameLift FleetIQ metric
    #                 <code>"PercentUtilizedGameServers"</code> and specifies a target value for the
    #             metric. As player usage changes, the policy triggers to adjust the game server group
    #             capacity so that the metric returns to the target value. </p>
    #
    # @!attribute target_value
    #   <p>Desired value to use with a game server group target-based scaling policy.  </p>
    #
    #   @return [Float]
    #
    TargetTrackingConfiguration = ::Struct.new(
      :target_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service is unable to resolve the routing for a particular alias because it has
    #             a terminal <a>RoutingStrategy</a> associated with it. The message returned in
    #             this exception is the message defined in the routing strategy itself. Such requests
    #             should only be retried if the routing strategy for the specified alias is modified.
    #         </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TerminalRoutingStrategyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client failed authentication. Clients should not retry such requests.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnauthorizedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested operation is not supported in the Region specified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedRegionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to and
    #               uniquely identifies the GameLift resource that you want to remove tags from. GameLift
    #               resource ARNs are included in the data object for the resource, which can be retrieved
    #               by calling a List or Describe operation for the resource type. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of one or more tag keys to remove from the specified GameLift resource. An
    #               Amazon Web Services resource can have only one tag with a specific tag key, so specifying the tag key
    #               identifies which tag to remove. </p>
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

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute alias_id
    #   <p>A unique identifier for the alias that you want to update. You can use either the
    #               alias ID or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A human-readable description of the alias.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_strategy
    #   <p>The routing configuration, including routing type and fleet target, for the
    #               alias.</p>
    #
    #   @return [RoutingStrategy]
    #
    UpdateAliasInput = ::Struct.new(
      :alias_id,
      :name,
      :description,
      :routing_strategy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute alias
    #   <p>The updated alias resource.</p>
    #
    #   @return [Alias]
    #
    UpdateAliasOutput = ::Struct.new(
      :alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute build_id
    #   <p>A unique identifier for the build to update. You can use either the build ID or ARN value.  </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with a build. Build names do not need to be unique. </p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>
    #
    #   @return [String]
    #
    UpdateBuildInput = ::Struct.new(
      :build_id,
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute build
    #   <p>The updated build resource.</p>
    #
    #   @return [Build]
    #
    UpdateBuildOutput = ::Struct.new(
      :build,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to update attribute metadata for. You can use either the fleet ID or ARN
    #               value.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A human-readable description of a fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute new_game_session_protection_policy
    #   <p>The game session protection policy to apply to all new instances created in this
    #               fleet. Instances that already exist are not affected. You can set protection for
    #               individual instances using <a>UpdateGameSession</a>.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>NoProtection</b> -- The game session can be
    #                       terminated during a scale-down event.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>FullProtection</b> -- If the game session is in an
    #                       <code>ACTIVE</code> status, it cannot be terminated during a scale-down
    #                       event.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NoProtection", "FullProtection"]
    #
    #   @return [String]
    #
    # @!attribute resource_creation_limit_policy
    #   <p>Policy settings that limit the number of game sessions an individual player can create
    #               over a span of time. </p>
    #
    #   @return [ResourceCreationLimitPolicy]
    #
    # @!attribute metric_groups
    #   <p>The name of a metric group to add this fleet to. Use a metric group in Amazon
    #               CloudWatch to aggregate the metrics from multiple fleets. Provide an existing metric
    #               group name, or create a new metric group by providing a new name. A fleet can only be in
    #               one metric group at a time.</p>
    #
    #   @return [Array<String>]
    #
    UpdateFleetAttributesInput = ::Struct.new(
      :fleet_id,
      :name,
      :description,
      :new_game_session_protection_policy,
      :resource_creation_limit_policy,
      :metric_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that was updated.</p>
    #
    #   @return [String]
    #
    UpdateFleetAttributesOutput = ::Struct.new(
      :fleet_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to update capacity settings for. You can use either the fleet ID or ARN
    #               value.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_instances
    #   <p>The number of Amazon EC2 instances you want to maintain in the specified fleet location.
    #               This value must fall between the minimum and maximum size limits.</p>
    #
    #   @return [Integer]
    #
    # @!attribute min_size
    #   <p>The minimum number of instances that are allowed in the specified fleet location. If
    #               this parameter is not set, the default is 0.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_size
    #   <p>The maximum number of instances that are allowed in the specified fleet location. If
    #               this parameter is not set, the default is 1.</p>
    #
    #   @return [Integer]
    #
    # @!attribute location
    #   <p>The name of a remote location to update fleet capacity settings for, in the form of an
    #               Amazon Web Services Region code such as <code>us-west-2</code>.</p>
    #
    #   @return [String]
    #
    UpdateFleetCapacityInput = ::Struct.new(
      :fleet_id,
      :desired_instances,
      :min_size,
      :max_size,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The remote location being updated, expressed as an Amazon Web Services Region code,
    #               such as <code>us-west-2</code>.</p>
    #
    #   @return [String]
    #
    UpdateFleetCapacityOutput = ::Struct.new(
      :fleet_id,
      :fleet_arn,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to update port settings for. You can use either the fleet ID or ARN
    #               value.</p>
    #
    #   @return [String]
    #
    # @!attribute inbound_permission_authorizations
    #   <p>A collection of port settings to be added to the fleet resource.</p>
    #
    #   @return [Array<IpPermission>]
    #
    # @!attribute inbound_permission_revocations
    #   <p>A collection of port settings to be removed from the fleet resource.</p>
    #
    #   @return [Array<IpPermission>]
    #
    UpdateFleetPortSettingsInput = ::Struct.new(
      :fleet_id,
      :inbound_permission_authorizations,
      :inbound_permission_revocations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that was updated.</p>
    #
    #   @return [String]
    #
    UpdateFleetPortSettingsOutput = ::Struct.new(
      :fleet_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) for an IAM role that
    #               allows Amazon GameLift to access your Amazon EC2 Auto Scaling groups.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_definitions
    #   <p>An updated list of Amazon EC2 instance types to use in the Auto Scaling group. The instance
    #               definitions must specify at least two different instance types that are supported by
    #               GameLift FleetIQ. This updated list replaces the entire current list of instance definitions for
    #               the game server group. For more information on instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">EC2 Instance
    #                   Types</a> in the <i>Amazon EC2 User Guide</i>. You can optionally
    #               specify capacity weighting for each instance type. If no weight value is specified for
    #               an instance type, it is set to the default value "1". For more information about
    #               capacity weighting, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html"> Instance Weighting for
    #                   Amazon EC2 Auto Scaling</a> in the Amazon EC2 Auto Scaling User Guide.</p>
    #
    #   @return [Array<InstanceDefinition>]
    #
    # @!attribute game_server_protection_policy
    #   <p>A flag that indicates whether instances in the game server group are protected
    #               from early termination. Unprotected instances that have active game servers running might
    #               be terminated during a scale-down event, causing players to be dropped from the game.
    #               Protected instances cannot be terminated while there are active game servers running except
    #               in the event of a forced game server group deletion (see ). An exception to this is with Spot
    #               Instances, which can be terminated by Amazon Web Services regardless of protection status. This property is set to <code>NO_PROTECTION</code> by default.</p>
    #
    #   Enum, one of: ["NO_PROTECTION", "FULL_PROTECTION"]
    #
    #   @return [String]
    #
    # @!attribute balancing_strategy
    #   <p>Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances in the
    #               game server group. Method options include the following:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>SPOT_ONLY</code> - Only Spot Instances are used in the game server group. If Spot
    #                       Instances are unavailable or not viable for game hosting, the game server group
    #                       provides no hosting capacity until Spot Instances can again be used. Until then,
    #                       no new instances are started, and the existing nonviable Spot Instances are
    #                       terminated (after current gameplay ends) and are not replaced.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SPOT_PREFERRED</code> - (default value) Spot Instances are used whenever available in
    #                       the game server group. If Spot Instances are unavailable, the game server group
    #                       continues to provide hosting capacity by falling back to On-Demand Instances.
    #                       Existing nonviable Spot Instances are terminated (after current gameplay ends)
    #                       and are replaced with new On-Demand Instances.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ON_DEMAND_ONLY</code> - Only On-Demand Instances are used in the game
    #                       server group. No Spot Instances are used, even when available, while this
    #                       balancing strategy is in force.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"]
    #
    #   @return [String]
    #
    UpdateGameServerGroupInput = ::Struct.new(
      :game_server_group_name,
      :role_arn,
      :instance_definitions,
      :game_server_protection_policy,
      :balancing_strategy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group
    #   <p>An object that describes the game server group resource with updated properties. </p>
    #
    #   @return [GameServerGroup]
    #
    UpdateGameServerGroupOutput = ::Struct.new(
      :game_server_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.
    #               Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute game_server_id
    #   <p>A custom string that uniquely identifies the game server to update.</p>
    #
    #   @return [String]
    #
    # @!attribute game_server_data
    #   <p>A set of custom game server properties, formatted as a single string value. This data
    #               is passed to a game client or service when it requests information on game servers using
    #                   <a>ListGameServers</a> or <a>ClaimGameServer</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute utilization_status
    #   <p>Indicates whether the game server is available or is currently hosting
    #               gameplay.</p>
    #
    #   Enum, one of: ["AVAILABLE", "UTILIZED"]
    #
    #   @return [String]
    #
    # @!attribute health_check
    #   <p>Indicates health status of the game server. A request that includes this parameter
    #               updates the game server's <i>LastHealthCheckTime</i> timestamp. </p>
    #
    #   Enum, one of: ["HEALTHY"]
    #
    #   @return [String]
    #
    UpdateGameServerInput = ::Struct.new(
      :game_server_group_name,
      :game_server_id,
      :game_server_data,
      :utilization_status,
      :health_check,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_server
    #   <p>Object that describes the newly updated game server.</p>
    #
    #   @return [GameServer]
    #
    UpdateGameServerOutput = ::Struct.new(
      :game_server,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute game_session_id
    #   <p>A unique identifier for the game session to update. </p>
    #
    #   @return [String]
    #
    # @!attribute maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute player_session_creation_policy
    #   <p>A policy that determines whether the game session is accepting new players.</p>
    #
    #   Enum, one of: ["ACCEPT_ALL", "DENY_ALL"]
    #
    #   @return [String]
    #
    # @!attribute protection_policy
    #   <p>Game session protection policy to apply to this game session only.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>NoProtection</b> -- The game session can be
    #                       terminated during a scale-down event.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>FullProtection</b> -- If the game session is in an
    #                       <code>ACTIVE</code> status, it cannot be terminated during a scale-down
    #                       event.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NoProtection", "FullProtection"]
    #
    #   @return [String]
    #
    UpdateGameSessionInput = ::Struct.new(
      :game_session_id,
      :maximum_player_session_count,
      :name,
      :player_session_creation_policy,
      :protection_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute game_session
    #   <p>The updated game session properties.</p>
    #
    #   @return [GameSession]
    #
    UpdateGameSessionOutput = ::Struct.new(
      :game_session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. </p>
    #
    #   @return [String]
    #
    # @!attribute timeout_in_seconds
    #   <p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status.</p>
    #
    #   @return [Integer]
    #
    # @!attribute player_latency_policies
    #   <p>A set of policies that act as a sliding cap on player latency. FleetIQ works to
    #               deliver low latency for most players in a game session. These policies ensure that no
    #               individual player can be placed into a game with unreasonably high latency. Use multiple
    #               policies to gradually relax latency requirements a step at a time. Multiple policies are applied based on their
    #               maximum allowed latency, starting with the lowest value. When updating policies, provide a complete collection of
    #               policies.</p>
    #
    #   @return [Array<PlayerLatencyPolicy>]
    #
    # @!attribute destinations
    #   <p>A list of fleets and/or fleet aliases that can be used to fulfill game session placement requests in the queue.
    #       Destinations are identified by either a fleet ARN or a fleet alias ARN, and are listed in order of placement preference. When updating this list, provide a complete list of destinations.</p>
    #
    #   @return [Array<GameSessionQueueDestination>]
    #
    # @!attribute filter_configuration
    #   <p>A list of locations where a queue is allowed to place new game sessions. Locations
    #               are specified in the form of Amazon Web Services Region codes, such as <code>us-west-2</code>. If this parameter is
    #               not set, game sessions can be placed in any queue location. To remove an existing filter configuration, pass in an empty set.</p>
    #
    #   @return [FilterConfiguration]
    #
    # @!attribute priority_configuration
    #   <p>Custom settings to use when prioritizing destinations and locations for game session placements. This
    #               configuration replaces the FleetIQ default prioritization process. Priority types that are not explicitly
    #               named will be automatically applied at the end of the prioritization process. To remove an existing priority configuration, pass in an empty set.</p>
    #
    #   @return [PriorityConfiguration]
    #
    # @!attribute custom_event_data
    #   <p>
    #               Information to be added to all events that are related to this game session queue.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute notification_target
    #   <p>An SNS topic ARN that is set up to receive game session placement notifications. See <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html">
    #               Setting up notifications for game session placement</a>.</p>
    #
    #   @return [String]
    #
    UpdateGameSessionQueueInput = ::Struct.new(
      :name,
      :timeout_in_seconds,
      :player_latency_policies,
      :destinations,
      :filter_configuration,
      :priority_configuration,
      :custom_event_data,
      :notification_target,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute game_session_queue
    #   <p>An object that describes the newly updated game session queue.</p>
    #
    #   @return [GameSessionQueue]
    #
    UpdateGameSessionQueueOutput = ::Struct.new(
      :game_session_queue,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute name
    #   <p>A unique identifier for the matchmaking configuration to update. You can use either the configuration name or ARN value. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A descriptive label that is associated with matchmaking configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute game_session_queue_arns
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>. Queues can be located in any Region. Queues are used to start new
    #               GameLift-hosted game sessions for matches that are created with this matchmaking
    #               configuration. If <code>FlexMatchMode</code> is set to <code>STANDALONE</code>, do not
    #               set this parameter.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute request_timeout_seconds
    #   <p>The maximum duration, in seconds, that a matchmaking ticket can remain in process
    #               before timing out. Requests that fail due to timing out can be resubmitted as
    #               needed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute acceptance_timeout_seconds
    #   <p>The length of time (in seconds) to wait for players to accept a proposed match, if
    #               acceptance is required.</p>
    #
    #   @return [Integer]
    #
    # @!attribute acceptance_required
    #   <p>A flag that indicates whether a match that was created with this configuration must be
    #               accepted by the matched players. To require acceptance, set to TRUE. With this option
    #               enabled, matchmaking tickets use the status <code>REQUIRES_ACCEPTANCE</code> to indicate
    #               when a completed potential match is waiting for player acceptance. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute rule_set_name
    #   <p>A unique identifier for the matchmaking rule set to use with this configuration. You can use either the rule set name or ARN
    #               value. A matchmaking configuration can only use rule sets that are defined in the same
    #               Region.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_target
    #   <p>An SNS topic ARN that is set up to receive matchmaking notifications. See <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html">
    #                   Setting up notifications for matchmaking</a> for more information.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_player_count
    #   <p>The number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies
    #               a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match. This parameter is not used if <code>FlexMatchMode</code> is set to
    #               <code>STANDALONE</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute custom_event_data
    #   <p>Information to add to all events related to the matchmaking configuration. </p>
    #
    #   @return [String]
    #
    # @!attribute game_properties
    #   <p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html gamelift-sdk-server-startsession">Start a Game Session</a>). This information is added to the new <a>GameSession</a>
    #               object that is created for a successful match.  This parameter is not used if
    #               <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #
    #   @return [Array<GameProperty>]
    #
    # @!attribute game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html gamelift-sdk-server-startsession">Start a Game Session</a>). This information is added to the new <a>GameSession</a> object
    #               that is created for a successful match.  This parameter is not used if
    #               <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute backfill_mode
    #   <p>The method that is used to backfill game sessions created with this matchmaking
    #               configuration. Specify MANUAL when your game manages backfill requests manually or does
    #               not use the match backfill feature. Specify AUTOMATIC to have GameLift create a <a>StartMatchBackfill</a> request whenever a game session has one or more open
    #               slots. Learn more about manual and automatic backfill in <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html">Backfill Existing Games
    #                   with FlexMatch</a>. Automatic backfill is not available when
    #               <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #
    #   Enum, one of: ["AUTOMATIC", "MANUAL"]
    #
    #   @return [String]
    #
    # @!attribute flex_match_mode
    #   <p>Indicates whether this matchmaking configuration is being used with GameLift hosting or
    #               as a standalone matchmaking solution. </p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>STANDALONE</b> - FlexMatch forms matches and returns
    #                   match information, including players and team assignments, in a
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html match-events-matchmakingsucceeded">
    #                       MatchmakingSucceeded</a> event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>WITH_QUEUE</b> - FlexMatch forms matches and uses the specified GameLift queue to
    #                   start a game session for the match. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["STANDALONE", "WITH_QUEUE"]
    #
    #   @return [String]
    #
    UpdateMatchmakingConfigurationInput = ::Struct.new(
      :name,
      :description,
      :game_session_queue_arns,
      :request_timeout_seconds,
      :acceptance_timeout_seconds,
      :acceptance_required,
      :rule_set_name,
      :notification_target,
      :additional_player_count,
      :custom_event_data,
      :game_properties,
      :game_session_data,
      :backfill_mode,
      :flex_match_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute configuration
    #   <p>The updated matchmaking configuration.</p>
    #
    #   @return [MatchmakingConfiguration]
    #
    UpdateMatchmakingConfigurationOutput = ::Struct.new(
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to update runtime configuration for. You can use either the fleet ID or ARN
    #               value.</p>
    #
    #   @return [String]
    #
    # @!attribute runtime_configuration
    #   <p>Instructions for launching server processes on each instance in the fleet. Server
    #               processes run either a custom game build executable or a Realtime Servers script. The runtime
    #               configuration lists the types of server processes to run on an instance, how to launch
    #               them, and the number of processes to run concurrently.</p>
    #
    #   @return [RuntimeConfiguration]
    #
    UpdateRuntimeConfigurationInput = ::Struct.new(
      :fleet_id,
      :runtime_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute runtime_configuration
    #   <p>The runtime configuration currently in use by all instances in the fleet. If the
    #               update was successful, all property changes are shown. </p>
    #
    #   @return [RuntimeConfiguration]
    #
    UpdateRuntimeConfigurationOutput = ::Struct.new(
      :runtime_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute script_id
    #   <p>A unique identifier for the Realtime script to update. You can use either the script ID or ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive label that is associated with a script. Script names do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_location
    #   <p>The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is
    #               stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the
    #               "key"), and a role ARN that allows Amazon GameLift to access the Amazon S3 storage location. The S3
    #               bucket must be in the same Region where you want to create a new script. By default,
    #               Amazon GameLift uploads the latest version of the zip file; if you have S3 object versioning
    #               turned on, you can use the <code>ObjectVersion</code> parameter to specify an earlier
    #               version. </p>
    #
    #   @return [S3Location]
    #
    # @!attribute zip_file
    #   <p>A data object containing your Realtime scripts and dependencies as a zip file. The zip
    #               file can have one or multiple files. Maximum size of a zip file is 5 MB.</p>
    #           <p>When using the Amazon Web Services CLI tool to create a script, this parameter is set to the zip file
    #               name. It must be prepended with the string "fileb://" to indicate that the file data is
    #               a binary object. For example: <code>--zip-file
    #               fileb://myRealtimeScript.zip</code>.</p>
    #
    #   @return [String]
    #
    UpdateScriptInput = ::Struct.new(
      :script_id,
      :name,
      :version,
      :storage_location,
      :zip_file,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute script
    #   <p>The newly created script record with a unique script ID. The new script's storage
    #               location reflects an Amazon S3 location: (1) If the script was uploaded from an S3 bucket
    #               under your account, the storage location reflects the information that was provided in
    #               the <i>CreateScript</i> request; (2) If the script file was uploaded from
    #               a local zip file, the storage location reflects an S3 location controls by the Amazon GameLift
    #               service.</p>
    #
    #   @return [Script]
    #
    UpdateScriptOutput = ::Struct.new(
      :script,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input for a request operation.</p>
    #
    # @!attribute rule_set_body
    #   <p>A collection of matchmaking rules to validate, formatted as a JSON string.</p>
    #
    #   @return [String]
    #
    ValidateMatchmakingRuleSetInput = ::Struct.new(
      :rule_set_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the returned data in response to a request operation.</p>
    #
    # @!attribute valid
    #   <p>A response indicating whether the rule set is valid.</p>
    #
    #   @return [Boolean]
    #
    ValidateMatchmakingRuleSetOutput = ::Struct.new(
      :valid,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents an authorization for a VPC peering connection between the VPC for an
    #             Amazon GameLift fleet and another VPC on an account you have access to. This authorization
    #             must exist and be valid for the peering connection to be established. Authorizations are
    #             valid for 24 hours after they are issued.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateVpcPeeringAuthorization</a> |
    #                     <a>DescribeVpcPeeringAuthorizations</a> |
    #                     <a>DeleteVpcPeeringAuthorization</a> |
    #                     <a>CreateVpcPeeringConnection</a> |
    #                     <a>DescribeVpcPeeringConnections</a> |
    #                     <a>DeleteVpcPeeringConnection</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @!attribute game_lift_aws_account_id
    #   <p>A unique identifier for the Amazon Web Services account that you use to manage your GameLift fleet.
    #               You can find your Account ID in the Amazon Web Services Management Console under account settings.</p>
    #
    #   @return [String]
    #
    # @!attribute peer_vpc_aws_account_id
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with GameLift Fleets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>Time stamp indicating when this authorization was issued. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    # @!attribute expiration_time
    #   <p>Time stamp indicating when this authorization expires (24 hours after issuance).
    #               Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #
    #   @return [Time]
    #
    VpcPeeringAuthorization = ::Struct.new(
      :game_lift_aws_account_id,
      :peer_vpc_aws_account_id,
      :peer_vpc_id,
      :creation_time,
      :expiration_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a peering connection between a VPC on one of your Amazon Web Services accounts and the
    #             VPC for your Amazon GameLift fleets. This record may be for an active peering connection or a
    #             pending connection that has not yet been established.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateVpcPeeringAuthorization</a> |
    #                     <a>DescribeVpcPeeringAuthorizations</a> |
    #                     <a>DeleteVpcPeeringAuthorization</a> |
    #                     <a>CreateVpcPeeringConnection</a> |
    #                     <a>DescribeVpcPeeringConnections</a> |
    #                     <a>DeleteVpcPeeringConnection</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet. This ID determines the ID of the Amazon GameLift VPC for your fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>
    #               The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the GameLift fleet resource for this connection.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute ip_v4_cidr_block
    #   <p>CIDR block of IPv4 addresses assigned to the VPC peering connection for the
    #               GameLift VPC. The peered VPC also has an IPv4 CIDR block associated with it; these
    #               blocks cannot overlap or the peering connection cannot be created. </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_peering_connection_id
    #   <p>A unique identifier that is automatically assigned to the connection record. This ID
    #               is referenced in VPC peering connection events, and is used when deleting a connection
    #               with <a>DeleteVpcPeeringConnection</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status information about the connection. Status indicates if a
    #               connection is pending, successful, or failed.</p>
    #
    #   @return [VpcPeeringConnectionStatus]
    #
    # @!attribute peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with GameLift Fleets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute game_lift_vpc_id
    #   <p>A unique identifier for the VPC that contains the Amazon GameLift fleet for this
    #               connection. This VPC is managed by Amazon GameLift and does not appear in your Amazon Web Services account.
    #           </p>
    #
    #   @return [String]
    #
    VpcPeeringConnection = ::Struct.new(
      :fleet_id,
      :fleet_arn,
      :ip_v4_cidr_block,
      :vpc_peering_connection_id,
      :status,
      :peer_vpc_id,
      :game_lift_vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents status information for a VPC peering connection. Status is associated
    #             with a <a>VpcPeeringConnection</a> object. Status codes and messages are
    #             provided from EC2 (see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpcPeeringConnectionStateReason.html">VpcPeeringConnectionStateReason</a>). Connection status information is also
    #             communicated as a fleet <a>Event</a>.</p>
    #
    # @!attribute code
    #   <p>Code indicating the status of a VPC peering connection.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Additional messaging associated with the connection status. </p>
    #
    #   @return [String]
    #
    VpcPeeringConnectionStatus = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
