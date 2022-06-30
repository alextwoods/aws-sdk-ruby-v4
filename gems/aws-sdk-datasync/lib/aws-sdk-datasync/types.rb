# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataSync
  module Types

    # <p>Represents a single entry in a list of agents. <code>AgentListEntry</code> returns an
    #       array that contains a list of agents when the <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_ListAgents.html">ListAgents</a>
    #       operation is
    #       called.</p>
    #
    # @!attribute agent_arn
    #   <p>The Amazon Resource Name (ARN) of the agent.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the agent.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the agent.</p>
    #
    #   Enum, one of: ["ONLINE", "OFFLINE"]
    #
    #   @return [String]
    #
    AgentListEntry = ::Struct.new(
      :agent_arn,
      :name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AgentStatus
    #
    module AgentStatus
      # No documentation available.
      #
      ONLINE = "ONLINE"

      # No documentation available.
      #
      OFFLINE = "OFFLINE"
    end

    # Includes enum constants for Atime
    #
    module Atime
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      BEST_EFFORT = "BEST_EFFORT"
    end

    # <p>CancelTaskExecutionRequest</p>
    #
    # @!attribute task_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the task execution to cancel.</p>
    #
    #   @return [String]
    #
    CancelTaskExecutionInput = ::Struct.new(
      :task_execution_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelTaskExecutionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>CreateAgentRequest</p>
    #
    # @!attribute activation_key
    #   <p>Your agent activation key. You can get the activation key either by sending an HTTP GET
    #         request with redirects that enable you to get the agent IP address (port 80). Alternatively,
    #         you can get it from the DataSync console.</p>
    #            <p>The redirect URL returned in the response provides you the activation key for your
    #         agent in the query string parameter <code>activationKey</code>. It might also include other
    #         activation-related parameters; however, these are merely defaults. The arguments you pass to
    #         this API call determine the actual configuration of your agent.</p>
    #
    #
    #            <p>For more information, see Activating an Agent in the <i>DataSync
    #           User Guide.</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute agent_name
    #   <p>The name you configured for your agent. This value is a text reference that is used to
    #         identify the agent in the console.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value pair that represents the tag that you want to associate with the agent.
    #         The value can be an empty string. This value helps you manage, filter, and search for your
    #         agents.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #           UTF-8 format, and the following special characters: + - = . _ : / @. </p>
    #            </note>
    #
    #   @return [Array<TagListEntry>]
    #
    # @!attribute vpc_endpoint_id
    #   <p>The ID of the VPC (virtual private cloud) endpoint that the agent has access to. This is
    #         the client-side VPC endpoint, also called a PrivateLink. If you don't have a PrivateLink VPC
    #         endpoint, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html create-endpoint-service">Creating a VPC Endpoint Service Configuration</a> in the Amazon VPC User Guide.</p>
    #            <p>VPC endpoint ID looks like this: <code>vpce-01234d5aff67890e1</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_arns
    #   <p>The Amazon Resource Names (ARNs) of the subnets in which DataSync will create elastic
    #         network interfaces for each data transfer task. The agent that runs a task must be private.
    #         When you start a task that is associated with an agent created in a VPC, or one that has
    #         access to an IP address in a VPC, then the task is also private. In this case, DataSync
    #         creates four network interfaces for each task in your subnet. For a data transfer to work, the
    #         agent must be able to route to all these four network interfaces.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_arns
    #   <p>The ARNs of the security groups used to protect your data transfer task subnets. See <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_Ec2Config.html DataSync-Type-Ec2Config-SecurityGroupArns">SecurityGroupArns</a>.</p>
    #
    #   @return [Array<String>]
    #
    CreateAgentInput = ::Struct.new(
      :activation_key,
      :agent_name,
      :tags,
      :vpc_endpoint_id,
      :subnet_arns,
      :security_group_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>CreateAgentResponse</p>
    #
    # @!attribute agent_arn
    #   <p>The Amazon Resource Name (ARN) of the agent. Use the <code>ListAgents</code> operation
    #         to return a list of agents for your account and Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    CreateAgentOutput = ::Struct.new(
      :agent_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>CreateLocationEfsRequest</p>
    #
    # @!attribute subdirectory
    #   <p>Specifies a mount path for your Amazon EFS file system. This is where DataSync reads or writes data (depending on if this is a source or destination location). By default, DataSync uses the root directory, but you can also include subdirectories.</p>
    #            <note>
    #               <p>You must specify a value with forward slashes (for example,
    #             <code>/path/to/folder</code>).</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute efs_filesystem_arn
    #   <p>Specifies the ARN for the Amazon EFS file system.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_config
    #   <p>Specifies the subnet and security groups DataSync uses to access your Amazon EFS file system.</p>
    #
    #   @return [Ec2Config]
    #
    # @!attribute tags
    #   <p>Specifies the key-value pair that represents a tag that you want to add to the
    #         resource. The value can be an empty string. This value helps you manage, filter, and search
    #         for your resources. We recommend that you create a name tag for your location.</p>
    #
    #   @return [Array<TagListEntry>]
    #
    # @!attribute access_point_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the access point that DataSync uses to access the Amazon EFS file system.</p>
    #
    #   @return [String]
    #
    # @!attribute file_system_access_role_arn
    #   <p>Specifies an Identity and Access Management (IAM) role that DataSync
    #         assumes when mounting the Amazon EFS file system.</p>
    #
    #   @return [String]
    #
    # @!attribute in_transit_encryption
    #   <p>Specifies whether you want DataSync to use TLS encryption when transferring data to or from your Amazon EFS file system.</p>
    #            <p>If you specify an access point using <code>AccessPointArn</code> or an IAM
    #         role using <code>FileSystemAccessRoleArn</code>, you must set this parameter to
    #           <code>TLS1_2</code>.</p>
    #
    #   Enum, one of: ["NONE", "TLS1_2"]
    #
    #   @return [String]
    #
    CreateLocationEfsInput = ::Struct.new(
      :subdirectory,
      :efs_filesystem_arn,
      :ec2_config,
      :tags,
      :access_point_arn,
      :file_system_access_role_arn,
      :in_transit_encryption,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>CreateLocationEfs</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon EFS file system location that you
    #         create.</p>
    #
    #   @return [String]
    #
    CreateLocationEfsOutput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fsx_filesystem_arn
    #   <p>The Amazon Resource Name (ARN) for the FSx for Lustre file system.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_arns
    #   <p>The Amazon Resource Names (ARNs) of the security groups that are used to configure the FSx for Lustre file system.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subdirectory
    #   <p>A subdirectory in the location's path. This subdirectory in the FSx for Lustre file system is used to read data from the FSx for Lustre source location or write data to the FSx for Lustre  destination.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value pair that represents a tag that you want to add to the resource. The value can be an empty string. This value helps you manage, filter, and search for your resources. We recommend that you create a name tag for your location.</p>
    #
    #   @return [Array<TagListEntry>]
    #
    CreateLocationFsxLustreInput = ::Struct.new(
      :fsx_filesystem_arn,
      :security_group_arns,
      :subdirectory,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the FSx for Lustre file system location that's
    #         created. </p>
    #
    #   @return [String]
    #
    CreateLocationFsxLustreOutput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fsx_filesystem_arn
    #   <p>The Amazon Resource Name (ARN) of the FSx for OpenZFS file system.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The type of protocol that DataSync uses to
    #         access your file system.</p>
    #
    #   @return [FsxProtocol]
    #
    # @!attribute security_group_arns
    #   <p>The ARNs of the security groups that are used to configure the
    #         FSx for OpenZFS file system.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subdirectory
    #   <p>A subdirectory in the location's path that must begin with <code>/fsx</code>. DataSync uses this subdirectory to read
    #         or write data (depending on whether the file system is a source or destination
    #         location).</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value pair that represents a tag that you want to add to the resource. The value can be an empty string. This value helps you manage, filter, and search for your resources. We recommend that you create a name tag for your location.</p>
    #
    #   @return [Array<TagListEntry>]
    #
    CreateLocationFsxOpenZfsInput = ::Struct.new(
      :fsx_filesystem_arn,
      :protocol,
      :security_group_arns,
      :subdirectory,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_arn
    #   <p>The ARN of the FSx for OpenZFS file system location that you created.</p>
    #
    #   @return [String]
    #
    CreateLocationFsxOpenZfsOutput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subdirectory
    #   <p>A subdirectory in the location's path. This subdirectory in the Amazon FSx for Windows
    #         File Server file system is used to read data from the Amazon FSx for Windows File Server
    #         source location or write data to the FSx for Windows File Server destination.</p>
    #
    #   @return [String]
    #
    # @!attribute fsx_filesystem_arn
    #   <p>The Amazon Resource Name (ARN) for the FSx for Windows File Server file system.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_arns
    #   <p>The ARNs of the security groups that are used to configure the
    #         FSx for Windows File Server file system.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The key-value pair that represents a tag that you want to add to the resource. The
    #         value can be an empty string. This value helps you manage, filter, and search for your
    #         resources. We recommend that you create a name tag for your location.</p>
    #
    #   @return [Array<TagListEntry>]
    #
    # @!attribute user
    #   <p>The user who has the permissions to access files and folders in the FSx for Windows File
    #         Server file system.</p>
    #            <p>For information about choosing a user name that ensures sufficient permissions to files,
    #         folders, and metadata, see <a href="create-fsx-location.html FSxWuser">user</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The name of the Windows domain that the FSx for Windows File Server belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password of the user who has the permissions to access files and folders in the FSx
    #         for Windows File Server file system.</p>
    #
    #   @return [String]
    #
    CreateLocationFsxWindowsInput = ::Struct.new(
      :subdirectory,
      :fsx_filesystem_arn,
      :security_group_arns,
      :tags,
      :user,
      :domain,
      :password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DataSync::Types::CreateLocationFsxWindowsInput "\
          "subdirectory=#{subdirectory || 'nil'}, "\
          "fsx_filesystem_arn=#{fsx_filesystem_arn || 'nil'}, "\
          "security_group_arns=#{security_group_arns || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "user=#{user || 'nil'}, "\
          "domain=#{domain || 'nil'}, "\
          "password=\"[SENSITIVE]\">"
      end
    end

    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the FSx for Windows File Server file system location
    #         you created.</p>
    #
    #   @return [String]
    #
    CreateLocationFsxWindowsOutput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subdirectory
    #   <p>A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write
    #         data to the HDFS cluster. If the subdirectory isn't specified, it will default to
    #           <code>/</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name_nodes
    #   <p>The NameNode that manages the HDFS namespace. The NameNode performs operations such as
    #         opening, closing, and renaming files and directories. The NameNode contains the information to
    #         map blocks of data to the DataNodes. You can use only one NameNode.</p>
    #
    #   @return [Array<HdfsNameNode>]
    #
    # @!attribute block_size
    #   <p>The size of data blocks to write into the HDFS cluster. The block size must be a multiple
    #         of 512 bytes. The default block size is 128 mebibytes (MiB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute replication_factor
    #   <p>The number of DataNodes to replicate the data to when writing to the HDFS cluster. By
    #         default, data is replicated to three DataNodes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute kms_key_provider_uri
    #   <p>The URI of the HDFS cluster's Key Management Server (KMS). </p>
    #
    #   @return [String]
    #
    # @!attribute qop_configuration
    #   <p>The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC)
    #         and data transfer protection settings configured on the Hadoop Distributed File System (HDFS)
    #         cluster. If <code>QopConfiguration</code> isn't specified, <code>RpcProtection</code> and
    #           <code>DataTransferProtection</code> default to <code>PRIVACY</code>. If you set
    #           <code>RpcProtection</code> or <code>DataTransferProtection</code>, the other parameter
    #         assumes the same value. </p>
    #
    #   @return [QopConfiguration]
    #
    # @!attribute authentication_type
    #   <p>The type of authentication used to determine the identity of the user. </p>
    #
    #   Enum, one of: ["SIMPLE", "KERBEROS"]
    #
    #   @return [String]
    #
    # @!attribute simple_user
    #   <p>The user name used to identify the client on the host operating system. </p>
    #            <note>
    #               <p>If <code>SIMPLE</code> is specified for <code>AuthenticationType</code>, this parameter
    #           is required. </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute kerberos_principal
    #   <p>The Kerberos principal with access to the files and folders on the HDFS cluster. </p>
    #            <note>
    #               <p>If <code>KERBEROS</code> is specified for <code>AuthenticationType</code>, this
    #           parameter is required.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute kerberos_keytab
    #   <p>The Kerberos key table (keytab) that contains mappings between the defined Kerberos
    #         principal and the encrypted keys. You can load the keytab from a file by providing the file's
    #         address. If you're using the CLI, it performs base64 encoding for you.
    #         Otherwise, provide the base64-encoded text. </p>
    #            <note>
    #               <p>If <code>KERBEROS</code> is specified for <code>AuthenticationType</code>, this
    #           parameter is required. </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute kerberos_krb5_conf
    #   <p>The <code>krb5.conf</code> file that contains the Kerberos configuration information. You
    #         can load the <code>krb5.conf</code> file by providing the file's address. If you're using the
    #           CLI, it performs the base64 encoding for you. Otherwise, provide the
    #         base64-encoded text. </p>
    #            <note>
    #               <p>If <code>KERBEROS</code> is specified for <code>AuthenticationType</code>, this
    #           parameter is required.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute agent_arns
    #   <p>The Amazon Resource Names (ARNs) of the agents that are used to connect to the HDFS
    #         cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The key-value pair that represents the tag that you want to add to the location. The value
    #         can be an empty string. We recommend using tags to name your resources. </p>
    #
    #   @return [Array<TagListEntry>]
    #
    CreateLocationHdfsInput = ::Struct.new(
      :subdirectory,
      :name_nodes,
      :block_size,
      :replication_factor,
      :kms_key_provider_uri,
      :qop_configuration,
      :authentication_type,
      :simple_user,
      :kerberos_principal,
      :kerberos_keytab,
      :kerberos_krb5_conf,
      :agent_arns,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_arn
    #   <p>The ARN of the source HDFS cluster location that's created. </p>
    #
    #   @return [String]
    #
    CreateLocationHdfsOutput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>CreateLocationNfsRequest</p>
    #
    # @!attribute subdirectory
    #   <p>The subdirectory in the NFS file system that is used to read data from the NFS source
    #         location or write data to the NFS destination. The NFS path should be a path that's
    #         exported by the NFS server, or a subdirectory of that path. The path should be such that it
    #         can be mounted by other NFS clients in your network. </p>
    #            <p>To see all the paths exported by your NFS server, run "<code>showmount -e
    #           nfs-server-name</code>" from an NFS client that has access to your server. You can specify
    #         any directory that appears in the results, and any subdirectory of that directory. Ensure that
    #         the NFS export is accessible without Kerberos authentication. </p>
    #            <p>To transfer all the data in the folder you specified, DataSync needs to have
    #         permissions to read all the data. To ensure this, either configure the NFS export with
    #           <code>no_root_squash,</code> or ensure that the permissions for all of the files that you
    #         want DataSync allow read access for all users. Doing either enables the agent to read the
    #         files. For the agent to access directories, you must additionally enable all execute
    #         access.</p>
    #            <p>If you are copying data to or from your Snowcone device, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html nfs-on-snowcone">NFS Server on Snowcone</a> for more information.</p>
    #
    #            <p>For information about NFS export configuration, see 18.7. The /etc/exports
    #         Configuration File in the Red Hat Enterprise Linux documentation.</p>
    #
    #   @return [String]
    #
    # @!attribute server_hostname
    #   <p>The name of the NFS server. This value is the IP address or Domain Name Service (DNS)
    #         name of the NFS server. An agent that is installed on-premises uses this hostname to mount the
    #         NFS server in a network. </p>
    #            <p>If you are copying data to or from your Snowcone device, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html nfs-on-snowcone">NFS Server on Snowcone</a> for more information.</p>
    #            <note>
    #               <p>This name must either be DNS-compliant or must be an IP version 4 (IPv4)
    #           address.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute on_prem_config
    #   <p>Contains a list of Amazon Resource Names (ARNs) of agents that are used to connect to
    #         an NFS server. </p>
    #            <p>If you are copying data to or from your Snowcone device, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html nfs-on-snowcone">NFS Server on Snowcone</a> for more information.</p>
    #
    #   @return [OnPremConfig]
    #
    # @!attribute mount_options
    #   <p>The NFS mount options that DataSync can use to mount your NFS share.</p>
    #
    #   @return [NfsMountOptions]
    #
    # @!attribute tags
    #   <p>The key-value pair that represents the tag that you want to add to the location. The
    #         value can be an empty string. We recommend using tags to name your resources.</p>
    #
    #   @return [Array<TagListEntry>]
    #
    CreateLocationNfsInput = ::Struct.new(
      :subdirectory,
      :server_hostname,
      :on_prem_config,
      :mount_options,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>CreateLocationNfsResponse</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the source NFS file system location that is
    #         created.</p>
    #
    #   @return [String]
    #
    CreateLocationNfsOutput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>CreateLocationObjectStorageRequest</p>
    #
    # @!attribute server_hostname
    #   <p>The name of the self-managed object storage server. This value is the IP address or Domain
    #         Name Service (DNS) name of the object storage server. An agent uses this hostname to mount the
    #         object storage server in a network. </p>
    #
    #   @return [String]
    #
    # @!attribute server_port
    #   <p>The port that your self-managed object storage server accepts inbound network traffic on.
    #         The server port is set by default to TCP 80 (HTTP) or TCP 443 (HTTPS). You can
    #         specify a custom port if your self-managed object storage server requires one.</p>
    #
    #   @return [Integer]
    #
    # @!attribute server_protocol
    #   <p>The protocol that the object storage server uses to communicate.
    #         Valid values are HTTP or HTTPS.</p>
    #
    #   Enum, one of: ["HTTPS", "HTTP"]
    #
    #   @return [String]
    #
    # @!attribute subdirectory
    #   <p>The subdirectory in the self-managed object storage server that is used
    #         to read data from.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_name
    #   <p>The bucket on the self-managed object storage server that is used
    #         to read data from.</p>
    #
    #   @return [String]
    #
    # @!attribute access_key
    #   <p>Optional. The access key is used if credentials are required to access the self-managed
    #         object storage server. If your object storage requires a user name and password to
    #         authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name
    #         and password, respectively.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_key
    #   <p>Optional. The secret key is used if credentials are required to access the self-managed
    #         object storage server. If your object storage requires a user name and password to
    #         authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name
    #         and password, respectively.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_arns
    #   <p>The Amazon Resource Name (ARN) of the agents associated with the
    #         self-managed object storage server location.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The key-value pair that represents the tag that you want to add to the location. The
    #         value can be an empty string. We recommend using tags to name your resources.</p>
    #
    #   @return [Array<TagListEntry>]
    #
    CreateLocationObjectStorageInput = ::Struct.new(
      :server_hostname,
      :server_port,
      :server_protocol,
      :subdirectory,
      :bucket_name,
      :access_key,
      :secret_key,
      :agent_arns,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DataSync::Types::CreateLocationObjectStorageInput "\
          "server_hostname=#{server_hostname || 'nil'}, "\
          "server_port=#{server_port || 'nil'}, "\
          "server_protocol=#{server_protocol || 'nil'}, "\
          "subdirectory=#{subdirectory || 'nil'}, "\
          "bucket_name=#{bucket_name || 'nil'}, "\
          "access_key=#{access_key || 'nil'}, "\
          "secret_key=\"[SENSITIVE]\", "\
          "agent_arns=#{agent_arns || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # <p>CreateLocationObjectStorageResponse</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the agents associated with the
    #         self-managed object storage server location.</p>
    #
    #   @return [String]
    #
    CreateLocationObjectStorageOutput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>CreateLocationS3Request</p>
    #
    # @!attribute subdirectory
    #   <p>A subdirectory in the Amazon S3 bucket. This subdirectory in Amazon S3 is used to read
    #         data from the S3 source location or write data to the S3 destination.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_arn
    #   <p>The ARN of the Amazon S3 bucket. If the bucket is on an Amazon Web Services Outpost, this must be an
    #         access point ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_storage_class
    #   <p>The Amazon S3 storage class that you want to store your files in when this location is
    #         used as a task destination. For buckets in Amazon Web Services Regions, the storage class defaults to Standard.
    #         For buckets on Outposts, the storage class defaults to Amazon Web Services S3 Outposts.</p>
    #
    #            <p>For more information about S3 storage classes, see <a href="http://aws.amazon.com/s3/storage-classes/">Amazon S3 Storage Classes</a>. Some storage classes have behaviors that
    #         can affect your S3 storage cost. For detailed information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html using-storage-classes">Considerations when working with S3 storage classes in DataSync</a>.</p>
    #
    #   Enum, one of: ["STANDARD", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS"]
    #
    #   @return [String]
    #
    # @!attribute s3_config
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role used to access
    #         an Amazon S3 bucket.</p>
    #
    #            <p>For detailed information about using such a role, see Creating a Location for
    #         Amazon S3 in the <i>DataSync User Guide</i>.</p>
    #
    #   @return [S3Config]
    #
    # @!attribute agent_arns
    #   <p>If you're using DataSync on an Amazon Web Services Outpost, specify the Amazon Resource
    #         Names (ARNs) of the DataSync agents deployed on your Outpost. For more information about
    #         launching a DataSync agent on an Amazon Web Services Outpost, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/deploy-agents.html outposts-agent">Deploy your DataSync agent
    #           on Outposts</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The key-value pair that represents the tag that you want to add to the location. The
    #         value can be an empty string. We recommend using tags to name your resources.</p>
    #
    #   @return [Array<TagListEntry>]
    #
    CreateLocationS3Input = ::Struct.new(
      :subdirectory,
      :s3_bucket_arn,
      :s3_storage_class,
      :s3_config,
      :agent_arns,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>CreateLocationS3Response</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the source Amazon S3 bucket location that is
    #         created.</p>
    #
    #   @return [String]
    #
    CreateLocationS3Output = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>CreateLocationSmbRequest</p>
    #
    # @!attribute subdirectory
    #   <p>The subdirectory in the SMB file system that is used to read data from the SMB source
    #         location or write data to the SMB destination. The SMB path should be a path that's
    #         exported by the SMB server, or a subdirectory of that path. The path should be such that it
    #         can be mounted by other SMB clients in your network.</p>
    #            <note>
    #               <p>
    #                  <code>Subdirectory</code> must be specified with forward slashes. For example,
    #             <code>/path/to/folder</code>.</p>
    #            </note>
    #
    #            <p>To transfer all the data in the folder you specified, DataSync needs to have permissions
    #         to mount the SMB share, as well as to access all the data in that share. To ensure this,
    #         either ensure that the user/password specified belongs to the user who can mount the share,
    #         and who has the appropriate permissions for all of the files and directories that you want
    #         DataSync to access, or use credentials of a member of the Backup Operators group to mount
    #         the share. Doing either enables the agent to access the data. For the agent to access
    #         directories, you must additionally enable all execute access.</p>
    #
    #   @return [String]
    #
    # @!attribute server_hostname
    #   <p>The name of the SMB server. This value is the IP address or Domain Name Service (DNS) name
    #         of the SMB server. An agent that is installed on-premises uses this hostname to mount the SMB
    #         server in a network.</p>
    #            <note>
    #               <p>This name must either be DNS-compliant or must be an IP version 4 (IPv4) address.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute user
    #   <p>The user who can mount the share, has the permissions to access files and folders in the
    #         SMB share.</p>
    #
    #            <p>For information about choosing a user name that ensures sufficient permissions to files,
    #         folders, and metadata, see <a href="create-smb-location.html SMBuser">user</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The name of the Windows domain that the SMB server belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password of the user who can mount the share, has the permissions to access files and
    #         folders in the SMB share.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_arns
    #   <p>The Amazon Resource Names (ARNs) of agents to use for a Simple Message Block (SMB)
    #         location. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute mount_options
    #   <p>The mount options used by DataSync to access the SMB server.</p>
    #
    #   @return [SmbMountOptions]
    #
    # @!attribute tags
    #   <p>The key-value pair that represents the tag that you want to add to the location. The value
    #         can be an empty string. We recommend using tags to name your resources.</p>
    #
    #   @return [Array<TagListEntry>]
    #
    CreateLocationSmbInput = ::Struct.new(
      :subdirectory,
      :server_hostname,
      :user,
      :domain,
      :password,
      :agent_arns,
      :mount_options,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DataSync::Types::CreateLocationSmbInput "\
          "subdirectory=#{subdirectory || 'nil'}, "\
          "server_hostname=#{server_hostname || 'nil'}, "\
          "user=#{user || 'nil'}, "\
          "domain=#{domain || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "agent_arns=#{agent_arns || 'nil'}, "\
          "mount_options=#{mount_options || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # <p>CreateLocationSmbResponse</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the source SMB file system location that is
    #         created.</p>
    #
    #   @return [String]
    #
    CreateLocationSmbOutput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>CreateTaskRequest</p>
    #
    # @!attribute source_location_arn
    #   <p>The Amazon Resource Name (ARN) of the source location for the task.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_location_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services storage resource's location. </p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that is used to
    #         monitor and log events in the task. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of a task. This value is a text reference that is used to identify the task in
    #         the console. </p>
    #
    #   @return [String]
    #
    # @!attribute options
    #   <p>The set of configuration options that control the behavior of a single execution of the
    #         task that occurs when you call <code>StartTaskExecution</code>. You can configure these
    #         options to preserve metadata such as user ID (UID) and group ID (GID), file permissions, data
    #         integrity verification, and so on.</p>
    #            <p>For each individual task execution, you can override these options by specifying the
    #           <code>OverrideOptions</code> before starting the task execution. For more information, see
    #         the <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a> operation. </p>
    #
    #   @return [Options]
    #
    # @!attribute excludes
    #   <p>A list of filter rules that determines which files to exclude from a task. The list should
    #         contain a single filter string that consists of the patterns to exclude. The patterns are
    #         delimited by "|" (that is, a pipe), for example, <code>"/folder1|/folder2"</code>. </p>
    #            <p>
    #       </p>
    #
    #   @return [Array<FilterRule>]
    #
    # @!attribute schedule
    #   <p>Specifies a schedule used to periodically transfer files from a source to a destination
    #         location. The schedule should be specified in UTC time. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html">Scheduling your task</a>.</p>
    #
    #   @return [TaskSchedule]
    #
    # @!attribute tags
    #   <p>The key-value pair that represents the tag that you want to add to the resource. The
    #         value can be an empty string. </p>
    #
    #   @return [Array<TagListEntry>]
    #
    # @!attribute includes
    #   <p>A list of filter rules that determines which files to include when running a task. The
    #         pattern contains a single filter string that consists of the patterns to include. The patterns
    #         are delimited by "|" (that is, a pipe), for example, <code>"/folder1|/folder2"</code>.</p>
    #
    #   @return [Array<FilterRule>]
    #
    CreateTaskInput = ::Struct.new(
      :source_location_arn,
      :destination_location_arn,
      :cloud_watch_log_group_arn,
      :name,
      :options,
      :excludes,
      :schedule,
      :tags,
      :includes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>CreateTaskResponse</p>
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task.</p>
    #
    #   @return [String]
    #
    CreateTaskOutput = ::Struct.new(
      :task_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DeleteAgentRequest</p>
    #
    # @!attribute agent_arn
    #   <p>The Amazon Resource Name (ARN) of the agent to delete. Use the <code>ListAgents</code>
    #         operation to return a list of agents for your account and Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    DeleteAgentInput = ::Struct.new(
      :agent_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAgentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DeleteLocation</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the location to delete.</p>
    #
    #   @return [String]
    #
    DeleteLocationInput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLocationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DeleteTask</p>
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task to delete.</p>
    #
    #   @return [String]
    #
    DeleteTaskInput = ::Struct.new(
      :task_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTaskOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DescribeAgent</p>
    #
    # @!attribute agent_arn
    #   <p>The Amazon Resource Name (ARN) of the agent to describe.</p>
    #
    #   @return [String]
    #
    DescribeAgentInput = ::Struct.new(
      :agent_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DescribeAgentResponse</p>
    #
    # @!attribute agent_arn
    #   <p>The Amazon Resource Name (ARN) of the agent.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the agent.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the agent. If the status is ONLINE, then the agent is configured properly
    #         and is available to use. The Running status is the normal running status for an agent. If the
    #         status is OFFLINE, the agent's VM is turned off or the agent is in an unhealthy state. When
    #         the issue that caused the unhealthy state is resolved, the agent returns to ONLINE
    #         status.</p>
    #
    #   Enum, one of: ["ONLINE", "OFFLINE"]
    #
    #   @return [String]
    #
    # @!attribute last_connection_time
    #   <p>The time that the agent last connected to DataSync.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_time
    #   <p>The time that the agent was activated (that is, created in your account).</p>
    #
    #   @return [Time]
    #
    # @!attribute endpoint_type
    #   <p>The type of endpoint that your agent is connected to. If the endpoint is a VPC endpoint,
    #         the agent is not accessible over the public internet. </p>
    #
    #   Enum, one of: ["PUBLIC", "PRIVATE_LINK", "FIPS"]
    #
    #   @return [String]
    #
    # @!attribute private_link_config
    #   <p>The subnet and the security group that DataSync used to access a VPC endpoint.</p>
    #
    #   @return [PrivateLinkConfig]
    #
    DescribeAgentOutput = ::Struct.new(
      :agent_arn,
      :name,
      :status,
      :last_connection_time,
      :creation_time,
      :endpoint_type,
      :private_link_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DescribeLocationEfsRequest</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon EFS file system location that you want information about.</p>
    #
    #   @return [String]
    #
    DescribeLocationEfsInput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DescribeLocationEfsResponse</p>
    #
    # @!attribute location_arn
    #   <p>The ARN of the Amazon EFS file system location.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>The URL of the Amazon EFS file system location.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_config
    #   <p>The subnet and security groups that DataSync uses to access your Amazon EFS file system.</p>
    #
    #   @return [Ec2Config]
    #
    # @!attribute creation_time
    #   <p>The time that the location was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute access_point_arn
    #   <p>The ARN of the access point that DataSync uses to access the Amazon EFS file system.</p>
    #
    #   @return [String]
    #
    # @!attribute file_system_access_role_arn
    #   <p>The Identity and Access Management (IAM) role that DataSync assumes when mounting the Amazon EFS file system.</p>
    #
    #   @return [String]
    #
    # @!attribute in_transit_encryption
    #   <p>Whether DataSync uses TLS encryption when transferring data to or from your Amazon EFS file system.</p>
    #
    #   Enum, one of: ["NONE", "TLS1_2"]
    #
    #   @return [String]
    #
    DescribeLocationEfsOutput = ::Struct.new(
      :location_arn,
      :location_uri,
      :ec2_config,
      :creation_time,
      :access_point_arn,
      :file_system_access_role_arn,
      :in_transit_encryption,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the FSx for Lustre location to describe. </p>
    #
    #   @return [String]
    #
    DescribeLocationFsxLustreInput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the FSx for Lustre location that was described.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>The URI of the FSx for Lustre location that was described.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_arns
    #   <p>The Amazon Resource Names (ARNs) of the security groups that are configured for the FSx for Lustre file system.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute creation_time
    #   <p>The time that the FSx for Lustre location was created.</p>
    #
    #   @return [Time]
    #
    DescribeLocationFsxLustreOutput = ::Struct.new(
      :location_arn,
      :location_uri,
      :security_group_arns,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the FSx for OpenZFS location to describe.</p>
    #
    #   @return [String]
    #
    DescribeLocationFsxOpenZfsInput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_arn
    #   <p>The ARN of the FSx for OpenZFS location that was described.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>The uniform resource identifier (URI) of the FSx for OpenZFS location that was
    #         described.</p>
    #            <p>Example: <code>fsxz://us-west-2.fs-1234567890abcdef02/fsx/folderA/folder</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute security_group_arns
    #   <p>The ARNs of the security groups that are configured for the FSx for OpenZFS file
    #         system.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute protocol
    #   <p>The type of protocol that DataSync uses to
    #         access your file system.</p>
    #
    #   @return [FsxProtocol]
    #
    # @!attribute creation_time
    #   <p>The time that the FSx for OpenZFS location was created.</p>
    #
    #   @return [Time]
    #
    DescribeLocationFsxOpenZfsOutput = ::Struct.new(
      :location_arn,
      :location_uri,
      :security_group_arns,
      :protocol,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the FSx for Windows File Server location to
    #         describe.</p>
    #
    #   @return [String]
    #
    DescribeLocationFsxWindowsInput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the FSx for Windows File Server location that was
    #         described.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>The URL of the FSx for Windows File Server location that was described.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_arns
    #   <p>The Amazon Resource Names (ARNs) of the security groups that are configured for the FSx
    #         for Windows File Server file system.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute creation_time
    #   <p>The time that the FSx for Windows File Server location was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute user
    #   <p>The user who has the permissions to access files and folders in the FSx for Windows File
    #         Server file system.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The name of the Windows domain that the FSx for Windows File Server belongs to.</p>
    #
    #   @return [String]
    #
    DescribeLocationFsxWindowsOutput = ::Struct.new(
      :location_arn,
      :location_uri,
      :security_group_arns,
      :creation_time,
      :user,
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the HDFS cluster location to describe.</p>
    #
    #   @return [String]
    #
    DescribeLocationHdfsInput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_arn
    #   <p>The ARN of the HDFS cluster location.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>The URI of the HDFS cluster location.</p>
    #
    #   @return [String]
    #
    # @!attribute name_nodes
    #   <p>The NameNode that manage the HDFS namespace. </p>
    #
    #   @return [Array<HdfsNameNode>]
    #
    # @!attribute block_size
    #   <p>The size of the data blocks to write into the HDFS cluster. </p>
    #
    #   @return [Integer]
    #
    # @!attribute replication_factor
    #   <p>The number of DataNodes to replicate the data to when writing to the HDFS cluster. </p>
    #
    #   @return [Integer]
    #
    # @!attribute kms_key_provider_uri
    #   <p> The URI of the HDFS cluster's Key Management Server (KMS). </p>
    #
    #   @return [String]
    #
    # @!attribute qop_configuration
    #   <p>The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC)
    #         and data transfer protection settings configured on the Hadoop Distributed File System (HDFS)
    #         cluster. </p>
    #
    #   @return [QopConfiguration]
    #
    # @!attribute authentication_type
    #   <p>The type of authentication used to determine the identity of the user. </p>
    #
    #   Enum, one of: ["SIMPLE", "KERBEROS"]
    #
    #   @return [String]
    #
    # @!attribute simple_user
    #   <p>The user name used to identify the client on the host operating system. This parameter is
    #         used if the <code>AuthenticationType</code> is defined as <code>SIMPLE</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute kerberos_principal
    #   <p>The Kerberos principal with access to the files and folders on the HDFS cluster. This
    #         parameter is used if the <code>AuthenticationType</code> is defined as
    #         <code>KERBEROS</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_arns
    #   <p>The ARNs of the agents that are used to connect to the HDFS cluster. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute creation_time
    #   <p>The time that the HDFS location was created.</p>
    #
    #   @return [Time]
    #
    DescribeLocationHdfsOutput = ::Struct.new(
      :location_arn,
      :location_uri,
      :name_nodes,
      :block_size,
      :replication_factor,
      :kms_key_provider_uri,
      :qop_configuration,
      :authentication_type,
      :simple_user,
      :kerberos_principal,
      :agent_arns,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DescribeLocationNfsRequest</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the NFS location to describe.</p>
    #
    #   @return [String]
    #
    DescribeLocationNfsInput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DescribeLocationNfsResponse</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the NFS location that was described.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>The URL of the source NFS location that was described.</p>
    #
    #   @return [String]
    #
    # @!attribute on_prem_config
    #   <p>A list of Amazon Resource Names (ARNs) of agents to use for a Network File System (NFS)
    #         location.</p>
    #
    #   @return [OnPremConfig]
    #
    # @!attribute mount_options
    #   <p>The NFS mount options that DataSync used to mount your NFS share.</p>
    #
    #   @return [NfsMountOptions]
    #
    # @!attribute creation_time
    #   <p>The time that the NFS location was created.</p>
    #
    #   @return [Time]
    #
    DescribeLocationNfsOutput = ::Struct.new(
      :location_arn,
      :location_uri,
      :on_prem_config,
      :mount_options,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DescribeLocationObjectStorageRequest</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the self-managed object storage server location that was described.</p>
    #
    #   @return [String]
    #
    DescribeLocationObjectStorageInput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DescribeLocationObjectStorageResponse</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the self-managed object storage server location to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>The URL of the source self-managed object storage server location that was described.</p>
    #
    #   @return [String]
    #
    # @!attribute access_key
    #   <p>Optional. The access key is used if credentials are required to access the self-managed
    #         object storage server. If your object storage requires a user name and password to
    #         authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name
    #         and password, respectively.</p>
    #
    #   @return [String]
    #
    # @!attribute server_port
    #   <p>The port that your self-managed object storage server accepts inbound network traffic on.
    #         The server port is set by default to TCP 80 (HTTP) or TCP 443 (HTTPS).</p>
    #
    #   @return [Integer]
    #
    # @!attribute server_protocol
    #   <p>The protocol that the object storage server uses to communicate.
    #         Valid values are HTTP or HTTPS.</p>
    #
    #   Enum, one of: ["HTTPS", "HTTP"]
    #
    #   @return [String]
    #
    # @!attribute agent_arns
    #   <p>The Amazon Resource Name (ARN) of the agents associated with the
    #         self-managed object storage server location.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute creation_time
    #   <p>The time that the self-managed object storage server agent was created.</p>
    #
    #   @return [Time]
    #
    DescribeLocationObjectStorageOutput = ::Struct.new(
      :location_arn,
      :location_uri,
      :access_key,
      :server_port,
      :server_protocol,
      :agent_arns,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DescribeLocationS3Request</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket location to describe.</p>
    #
    #   @return [String]
    #
    DescribeLocationS3Input = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DescribeLocationS3Response</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket or access point.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>The URL of the Amazon S3 location that was described.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_storage_class
    #   <p>The Amazon S3 storage class that you chose to store your files in when this location is
    #         used as a task destination. For more information about S3 storage classes, see <a href="http://aws.amazon.com/s3/storage-classes/">Amazon S3 Storage Classes</a>. Some storage
    #         classes have behaviors that can affect your S3 storage cost. For detailed information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html using-storage-classes">Considerations when
    #           working with S3 storage classes in DataSync</a>.</p>
    #
    #   Enum, one of: ["STANDARD", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS"]
    #
    #   @return [String]
    #
    # @!attribute s3_config
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role used to access
    #         an Amazon S3 bucket.</p>
    #
    #            <p>For detailed information about using such a role, see Creating a Location for
    #         Amazon S3 in the <i>DataSync User Guide</i>.</p>
    #
    #   @return [S3Config]
    #
    # @!attribute agent_arns
    #   <p>If you are using DataSync on an Amazon Web Services Outpost, the Amazon Resource Name (ARNs) of the EC2
    #         agents deployed on your Outpost. For more information about launching a DataSync agent on an
    #         Amazon Web Services Outpost, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/deploy-agents.html outposts-agent">Deploy your DataSync agent on Outposts</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute creation_time
    #   <p>The time that the Amazon S3 bucket location was created.</p>
    #
    #   @return [Time]
    #
    DescribeLocationS3Output = ::Struct.new(
      :location_arn,
      :location_uri,
      :s3_storage_class,
      :s3_config,
      :agent_arns,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DescribeLocationSmbRequest</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the SMB location to describe.</p>
    #
    #   @return [String]
    #
    DescribeLocationSmbInput = ::Struct.new(
      :location_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DescribeLocationSmbResponse</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the SMB location that was described.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>The URL of the source SMB location that was described.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_arns
    #   <p>The Amazon Resource Name (ARN) of the source SMB file system location that is
    #         created.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute user
    #   <p>The user who can mount the share, has the permissions to access files and folders in the
    #         SMB share.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The name of the Windows domain that the SMB server belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute mount_options
    #   <p>The mount options that are available for DataSync to use to access an SMB location.</p>
    #
    #   @return [SmbMountOptions]
    #
    # @!attribute creation_time
    #   <p>The time that the SMB location was created.</p>
    #
    #   @return [Time]
    #
    DescribeLocationSmbOutput = ::Struct.new(
      :location_arn,
      :location_uri,
      :agent_arns,
      :user,
      :domain,
      :mount_options,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DescribeTaskExecutionRequest</p>
    #
    # @!attribute task_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the task that is being executed.</p>
    #
    #   @return [String]
    #
    DescribeTaskExecutionInput = ::Struct.new(
      :task_execution_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DescribeTaskExecutionResponse</p>
    #
    # @!attribute task_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the task execution that was described.
    #           <code>TaskExecutionArn</code> is hierarchical and includes <code>TaskArn</code> for the task
    #         that was executed. </p>
    #            <p>For example, a <code>TaskExecution</code> value with the ARN
    #           <code>arn:aws:datasync:us-east-1:111222333444:task/task-0208075f79cedf4a2/execution/exec-08ef1e88ec491019b</code>
    #         executed the task with the ARN
    #           <code>arn:aws:datasync:us-east-1:111222333444:task/task-0208075f79cedf4a2</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the task execution. </p>
    #
    #
    #            <p>For detailed information about task execution statuses, see Understanding
    #         Task Statuses in the <i>DataSync User Guide.</i>
    #            </p>
    #
    #   Enum, one of: ["QUEUED", "LAUNCHING", "PREPARING", "TRANSFERRING", "VERIFYING", "SUCCESS", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute options
    #   <p>Represents the options that are available to control the behavior of a
    #         <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>
    #         operation. Behavior includes preserving metadata such as user
    #         ID (UID), group ID (GID), and file permissions, and also overwriting files in the destination,
    #         data integrity verification, and so on.</p>
    #            <p>A task has a set of default options associated with it. If you don't specify an option
    #         in <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>,
    #         the default value is used. You can override the
    #         defaults options on each task execution by specifying an overriding <code>Options</code> value
    #         to <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>.</p>
    #
    #   @return [Options]
    #
    # @!attribute excludes
    #   <p>A list of filter rules that determines which files to exclude from a task. The list should
    #         contain a single filter string that consists of the patterns to exclude. The patterns are
    #         delimited by "|" (that is, a pipe), for example: <code>"/folder1|/folder2"</code>
    #            </p>
    #            <p>
    #       </p>
    #
    #   @return [Array<FilterRule>]
    #
    # @!attribute includes
    #   <p>A list of filter rules that determines which files to include when running a task. The
    #         list should contain a single filter string that consists of the patterns to include. The
    #         patterns are delimited by "|" (that is, a pipe), for example: <code>"/folder1|/folder2"</code>
    #            </p>
    #            <p>
    #       </p>
    #
    #   @return [Array<FilterRule>]
    #
    # @!attribute start_time
    #   <p>The time that the task execution was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute estimated_files_to_transfer
    #   <p>The expected number of files that is to be transferred over the network. This value is
    #         calculated during the PREPARING phase, before the TRANSFERRING phase. This value is the
    #         expected number of files to be transferred. It's calculated based on comparing the
    #         content of the source and destination locations and finding the delta that needs to be
    #         transferred. </p>
    #
    #   @return [Integer]
    #
    # @!attribute estimated_bytes_to_transfer
    #   <p>The estimated physical number of bytes that is to be transferred over the
    #         network.</p>
    #
    #   @return [Integer]
    #
    # @!attribute files_transferred
    #   <p>The actual number of files that was transferred over the network. This value is
    #         calculated and updated on an ongoing basis during the TRANSFERRING phase. It's updated
    #         periodically when each file is read from the source and sent over the network. </p>
    #            <p>If failures occur during a transfer, this value can be less than
    #           <code>EstimatedFilesToTransfer</code>. This value can also be greater than
    #           <code>EstimatedFilesTransferred</code> in some cases. This element is
    #         implementation-specific for some location types, so don't use it as an indicator for a correct
    #         file number or to monitor your task execution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bytes_written
    #   <p>The number of logical bytes written to the destination Amazon Web Services storage resource.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bytes_transferred
    #   <p>The physical number of bytes transferred over the network.</p>
    #
    #   @return [Integer]
    #
    # @!attribute result
    #   <p>The result of the task execution.</p>
    #
    #   @return [TaskExecutionResultDetail]
    #
    DescribeTaskExecutionOutput = ::Struct.new(
      :task_execution_arn,
      :status,
      :options,
      :excludes,
      :includes,
      :start_time,
      :estimated_files_to_transfer,
      :estimated_bytes_to_transfer,
      :files_transferred,
      :bytes_written,
      :bytes_transferred,
      :result,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.estimated_files_to_transfer ||= 0
        self.estimated_bytes_to_transfer ||= 0
        self.files_transferred ||= 0
        self.bytes_written ||= 0
        self.bytes_transferred ||= 0
      end

    end

    # <p>DescribeTaskRequest</p>
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task to describe.</p>
    #
    #   @return [String]
    #
    DescribeTaskInput = ::Struct.new(
      :task_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DescribeTaskResponse</p>
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task that was described.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the task that was described.</p>
    #
    #
    #            <p>For detailed information about task execution statuses, see Understanding
    #         Task Statuses in the <i>DataSync User Guide</i>.</p>
    #
    #   Enum, one of: ["AVAILABLE", "CREATING", "QUEUED", "RUNNING", "UNAVAILABLE"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the task that was described.</p>
    #
    #   @return [String]
    #
    # @!attribute current_task_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the task execution that is syncing files.</p>
    #
    #   @return [String]
    #
    # @!attribute source_location_arn
    #   <p>The Amazon Resource Name (ARN) of the source file system's location.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_location_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services storage resource's location.</p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that was used to
    #         monitor and log events in the task.</p>
    #
    #
    #            <p>For more information on these groups, see Working with Log Groups and Log
    #         Streams in the <i>Amazon CloudWatch User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute source_network_interface_arns
    #   <p>The Amazon Resource Names (ARNs) of the source elastic network interfaces (ENIs) that were
    #         created for your subnet.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute destination_network_interface_arns
    #   <p>The Amazon Resource Names (ARNs) of the destination elastic network interfaces (ENIs) that
    #         were created for your subnet.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute options
    #   <p>The set of configuration options that control the behavior of a single execution of the
    #         task that occurs when you call <code>StartTaskExecution</code>. You can configure these
    #         options to preserve metadata such as user ID (UID) and group (GID), file permissions, data
    #         integrity verification, and so on.</p>
    #            <p>For each individual task execution, you can override these options by specifying the
    #         overriding <code>OverrideOptions</code> value to <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a> operation. </p>
    #
    #   @return [Options]
    #
    # @!attribute excludes
    #   <p>A list of filter rules that determines which files to exclude from a task. The list should
    #         contain a single filter string that consists of the patterns to exclude. The patterns are
    #         delimited by "|" (that is, a pipe), for example, <code>"/folder1|/folder2"</code>. </p>
    #            <p>
    #       </p>
    #
    #   @return [Array<FilterRule>]
    #
    # @!attribute schedule
    #   <p>The schedule used to periodically transfer files from a source to a destination location.</p>
    #
    #   @return [TaskSchedule]
    #
    # @!attribute error_code
    #   <p>Errors that DataSync encountered during execution of the task. You can use this
    #         error code to help troubleshoot issues.</p>
    #
    #   @return [String]
    #
    # @!attribute error_detail
    #   <p>Detailed description of an error that was encountered during the task execution. You
    #         can use this information to help troubleshoot issues. </p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time that the task was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute includes
    #   <p>A list of filter rules that determines which files to include when running a task. The
    #         pattern contains a single filter string that consists of the patterns to include. The patterns
    #         are delimited by "|" (that is, a pipe), for example, <code>"/folder1|/folder2</code>".</p>
    #
    #   @return [Array<FilterRule>]
    #
    DescribeTaskOutput = ::Struct.new(
      :task_arn,
      :status,
      :name,
      :current_task_execution_arn,
      :source_location_arn,
      :destination_location_arn,
      :cloud_watch_log_group_arn,
      :source_network_interface_arns,
      :destination_network_interface_arns,
      :options,
      :excludes,
      :schedule,
      :error_code,
      :error_detail,
      :creation_time,
      :includes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The subnet and security groups that DataSync uses to access your Amazon EFS file system.</p>
    #
    # @!attribute subnet_arn
    #   <p>Specifies the ARN of a subnet where DataSync creates the <a href="https://docs.aws.amazon.com/datasync/latest/userguide/datasync-network.html required-network-interfaces">network interfaces</a> for managing traffic during your transfer.</p>
    #            <p>The subnet must be located:</p>
    #            <ul>
    #               <li>
    #                  <p>In the same virtual private cloud (VPC) as the Amazon EFS file system.</p>
    #               </li>
    #               <li>
    #                  <p>In the same Availability Zone as at least one mount target for the Amazon EFS file
    #             system.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>You don't need to specify a subnet that includes a file system mount target.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute security_group_arns
    #   <p>Specifies the Amazon Resource Names (ARNs) of the security groups associated with an
    #           Amazon EFS file system's mount target.</p>
    #
    #   @return [Array<String>]
    #
    Ec2Config = ::Struct.new(
      :subnet_arn,
      :security_group_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EfsInTransitEncryption
    #
    module EfsInTransitEncryption
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      TLS1_2 = "TLS1_2"
    end

    # Includes enum constants for EndpointType
    #
    module EndpointType
      # No documentation available.
      #
      PUBLIC = "PUBLIC"

      # No documentation available.
      #
      PRIVATE_LINK = "PRIVATE_LINK"

      # No documentation available.
      #
      FIPS = "FIPS"
    end

    # <p>Specifies which files, folders, and objects to include or exclude when transferring files
    #       from source to destination.</p>
    #
    # @!attribute filter_type
    #   <p>The type of filter rule to apply. DataSync only supports the SIMPLE_PATTERN rule
    #         type.</p>
    #
    #   Enum, one of: ["SIMPLE_PATTERN"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A single filter string that consists of the patterns to include or exclude. The patterns
    #         are delimited by "|" (that is, a pipe), for example: <code>/folder1|/folder2</code>
    #            </p>
    #            <p>
    #       </p>
    #
    #   @return [String]
    #
    FilterRule = ::Struct.new(
      :filter_type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FilterType
    #
    module FilterType
      # No documentation available.
      #
      SIMPLE_PATTERN = "SIMPLE_PATTERN"
    end

    # <p>Represents the protocol that DataSync uses to access your Amazon FSx for OpenZFS file system.</p>
    #
    # @!attribute nfs
    #   <p>Represents the Network File System (NFS) protocol that DataSync uses to access your FSx for OpenZFS file system.</p>
    #
    #   @return [FsxProtocolNfs]
    #
    FsxProtocol = ::Struct.new(
      :nfs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the Network File System (NFS) protocol that DataSync uses to access your Amazon FSx for OpenZFS file system.</p>
    #
    # @!attribute mount_options
    #   <p>Represents the mount options that are available for DataSync to access an NFS
    #         location.</p>
    #
    #   @return [NfsMountOptions]
    #
    FsxProtocolNfs = ::Struct.new(
      :mount_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Gid
    #
    module Gid
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      INT_VALUE = "INT_VALUE"

      # No documentation available.
      #
      NAME = "NAME"

      # No documentation available.
      #
      BOTH = "BOTH"
    end

    # Includes enum constants for HdfsAuthenticationType
    #
    module HdfsAuthenticationType
      # No documentation available.
      #
      SIMPLE = "SIMPLE"

      # No documentation available.
      #
      KERBEROS = "KERBEROS"
    end

    # Includes enum constants for HdfsDataTransferProtection
    #
    module HdfsDataTransferProtection
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      AUTHENTICATION = "AUTHENTICATION"

      # No documentation available.
      #
      INTEGRITY = "INTEGRITY"

      # No documentation available.
      #
      PRIVACY = "PRIVACY"
    end

    # <p>The NameNode of the Hadoop Distributed File System (HDFS). The NameNode manages the file
    #       system's namespace. The NameNode performs operations such as opening, closing, and renaming
    #       files and directories. The NameNode contains the information to map blocks of data to the
    #       DataNodes.</p>
    #
    # @!attribute hostname
    #   <p>The hostname of the NameNode in the HDFS cluster. This value is the IP address or Domain
    #         Name Service (DNS) name of the NameNode. An agent that's installed on-premises uses this
    #         hostname to communicate with the NameNode in the network.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port that the NameNode uses to listen to client requests.</p>
    #
    #   @return [Integer]
    #
    HdfsNameNode = ::Struct.new(
      :hostname,
      :port,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HdfsRpcProtection
    #
    module HdfsRpcProtection
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      AUTHENTICATION = "AUTHENTICATION"

      # No documentation available.
      #
      INTEGRITY = "INTEGRITY"

      # No documentation available.
      #
      PRIVACY = "PRIVACY"
    end

    # <p>This exception is thrown when an error occurs in the DataSync service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute error_code
    #
    #   @return [String]
    #
    InternalException = ::Struct.new(
      :message,
      :error_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the client submits a malformed request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute error_code
    #
    #   @return [String]
    #
    # @!attribute datasync_error_code
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      :error_code,
      :datasync_error_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>ListAgentsRequest</p>
    #
    # @!attribute max_results
    #   <p>The maximum number of agents to list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An opaque string that indicates the position at which to begin the next list of
    #         agents.</p>
    #
    #   @return [String]
    #
    ListAgentsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>ListAgentsResponse</p>
    #
    # @!attribute agents
    #   <p>A list of agents in your account.</p>
    #
    #   @return [Array<AgentListEntry>]
    #
    # @!attribute next_token
    #   <p>An opaque string that indicates the position at which to begin returning the next list
    #         of agents.</p>
    #
    #   @return [String]
    #
    ListAgentsOutput = ::Struct.new(
      :agents,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>ListLocationsRequest</p>
    #
    # @!attribute max_results
    #   <p>The maximum number of locations to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An opaque string that indicates the position at which to begin the next list of
    #         locations.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>You can use API filters to narrow down the list of resources returned by <code>ListLocations</code>.
    #         For example, to retrieve all tasks on a specific source location, you can use <code>ListLocations</code>
    #         with filter name <code>LocationType S3</code> and <code>Operator Equals</code>.</p>
    #
    #   @return [Array<LocationFilter>]
    #
    ListLocationsInput = ::Struct.new(
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>ListLocationsResponse</p>
    #
    # @!attribute locations
    #   <p>An array that contains a list of locations.</p>
    #
    #   @return [Array<LocationListEntry>]
    #
    # @!attribute next_token
    #   <p>An opaque string that indicates the position at which to begin returning the next list
    #         of locations.</p>
    #
    #   @return [String]
    #
    ListLocationsOutput = ::Struct.new(
      :locations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>ListTagsForResourceRequest</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags to list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of locations to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An opaque string that indicates the position at which to begin the next list of
    #         locations.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>ListTagsForResourceResponse</p>
    #
    # @!attribute tags
    #   <p>Array of resource tags.</p>
    #
    #   @return [Array<TagListEntry>]
    #
    # @!attribute next_token
    #   <p>An opaque string that indicates the position at which to begin returning the next list
    #         of resource tags.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>ListTaskExecutions</p>
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task whose tasks you want to list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of executed tasks to list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An opaque string that indicates the position at which to begin the next list of the
    #         executed tasks.</p>
    #
    #   @return [String]
    #
    ListTaskExecutionsInput = ::Struct.new(
      :task_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>ListTaskExecutionsResponse</p>
    #
    # @!attribute task_executions
    #   <p>A list of executed tasks.</p>
    #
    #   @return [Array<TaskExecutionListEntry>]
    #
    # @!attribute next_token
    #   <p>An opaque string that indicates the position at which to begin returning the next list
    #         of executed tasks.</p>
    #
    #   @return [String]
    #
    ListTaskExecutionsOutput = ::Struct.new(
      :task_executions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>ListTasksRequest</p>
    #
    # @!attribute max_results
    #   <p>The maximum number of tasks to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An opaque string that indicates the position at which to begin the next list of
    #         tasks.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>You can use API filters to narrow down the list of resources returned by <code>ListTasks</code>.
    #         For example, to retrieve all tasks on a specific source location, you can use <code>ListTasks</code>
    #         with filter name <code>LocationId</code> and <code>Operator Equals</code> with the ARN for the
    #         location.</p>
    #
    #   @return [Array<TaskFilter>]
    #
    ListTasksInput = ::Struct.new(
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>ListTasksResponse</p>
    #
    # @!attribute tasks
    #   <p>A list of all the tasks that are returned.</p>
    #
    #   @return [Array<TaskListEntry>]
    #
    # @!attribute next_token
    #   <p>An opaque string that indicates the position at which to begin returning the next list
    #         of tasks.</p>
    #
    #   @return [String]
    #
    ListTasksOutput = ::Struct.new(
      :tasks,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can use API filters to narrow down the list of resources returned by <code>ListLocations</code>.
    #       For example, to retrieve all your Amazon S3 locations, you can use <code>ListLocations</code> with
    #       filter name <code>LocationType S3</code> and <code>Operator Equals</code>.</p>
    #
    # @!attribute name
    #   <p>The name of the filter being used. Each API call supports a list of filters that are available
    #         for it (for example, <code>LocationType</code> for <code>ListLocations</code>).</p>
    #
    #   Enum, one of: ["LocationUri", "LocationType", "CreationTime"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values that you want to filter for. For example, you might want to display only Amazon S3
    #         locations.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>The operator that is used to compare filter values (for example, <code>Equals</code> or
    #         <code>Contains</code>). For more about API filtering operators, see
    #         <a href="https://docs.aws.amazon.com/datasync/latest/userguide/query-resources.html">API filters for ListTasks and ListLocations</a>.</p>
    #
    #   Enum, one of: ["Equals", "NotEquals", "In", "LessThanOrEqual", "LessThan", "GreaterThanOrEqual", "GreaterThan", "Contains", "NotContains", "BeginsWith"]
    #
    #   @return [String]
    #
    LocationFilter = ::Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LocationFilterName
    #
    module LocationFilterName
      # No documentation available.
      #
      LocationUri = "LocationUri"

      # No documentation available.
      #
      LocationType = "LocationType"

      # No documentation available.
      #
      CreationTime = "CreationTime"
    end

    # <p>Represents a single entry in a list of locations. <code>LocationListEntry</code>
    #       returns an array that contains a list of locations when the
    #       <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_ListLocations.html">ListLocations</a>
    #       operation is called.</p>
    #
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the location. For Network File System (NFS) or Amazon
    #         EFS, the location is the export path. For Amazon S3, the location is the prefix path that you
    #         want to mount and use as the root of the location.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>Represents a list of URIs of a location. <code>LocationUri</code> returns an array that
    #         contains a list of locations when the <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_ListLocations.html">ListLocations</a> operation is
    #         called.</p>
    #            <p>Format: <code>TYPE://GLOBAL_ID/SUBDIR</code>.</p>
    #            <p>TYPE designates the type of location (for example, <code>nfs</code> or
    #         <code>s3</code>).</p>
    #            <p>GLOBAL_ID is the globally unique identifier of the resource that backs the location. An
    #         example for EFS is <code>us-east-2.fs-abcd1234</code>. An example for Amazon S3 is the bucket
    #         name, such as <code>myBucket</code>. An example for NFS is a valid IPv4 address or a hostname
    #         that is compliant with Domain Name Service (DNS).</p>
    #            <p>SUBDIR is a valid file system path, delimited by forward slashes as is the *nix
    #         convention. For NFS and Amazon EFS, it's the export path to mount the location. For
    #         Amazon S3, it's the prefix path that you mount to and treat as the root of the
    #         location.</p>
    #            <p></p>
    #
    #   @return [String]
    #
    LocationListEntry = ::Struct.new(
      :location_arn,
      :location_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LogLevel
    #
    module LogLevel
      # No documentation available.
      #
      OFF = "OFF"

      # No documentation available.
      #
      BASIC = "BASIC"

      # No documentation available.
      #
      TRANSFER = "TRANSFER"
    end

    # Includes enum constants for Mtime
    #
    module Mtime
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      PRESERVE = "PRESERVE"
    end

    # <p>Represents the mount options that are available for DataSync to access an NFS
    #       location.</p>
    #
    # @!attribute version
    #   <p>The specific NFS version that you want DataSync to use to mount your NFS share. If the
    #         server refuses to use the version specified, the sync will fail. If you don't specify a
    #         version, DataSync defaults to <code>AUTOMATIC</code>. That is, DataSync automatically
    #         selects a version based on negotiation with the NFS server.</p>
    #
    #            <p>You can specify the following NFS versions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <a href="https://tools.ietf.org/html/rfc1813">NFSv3</a>
    #                     </b> - stateless protocol version that allows for asynchronous
    #             writes on the server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <a href="https://tools.ietf.org/html/rfc3530">NFSv4.0</a>
    #                     </b> - stateful, firewall-friendly protocol version that supports
    #             delegations and pseudo file systems.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <a href="https://tools.ietf.org/html/rfc5661">NFSv4.1</a>
    #                     </b> - stateful protocol version that supports sessions,
    #             directory delegations, and parallel data processing. Version 4.1 also includes all
    #             features available in version 4.0.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"]
    #
    #   @return [String]
    #
    NfsMountOptions = ::Struct.new(
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NfsVersion
    #
    module NfsVersion
      # No documentation available.
      #
      AUTOMATIC = "AUTOMATIC"

      # No documentation available.
      #
      NFS3 = "NFS3"

      # No documentation available.
      #
      NFS4_0 = "NFS4_0"

      # No documentation available.
      #
      NFS4_1 = "NFS4_1"
    end

    # Includes enum constants for ObjectStorageServerProtocol
    #
    module ObjectStorageServerProtocol
      # No documentation available.
      #
      HTTPS = "HTTPS"

      # No documentation available.
      #
      HTTP = "HTTP"
    end

    # Includes enum constants for ObjectTags
    #
    module ObjectTags
      # No documentation available.
      #
      PRESERVE = "PRESERVE"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>A list of Amazon Resource Names (ARNs) of agents to use for a Network File System (NFS)
    #       location.</p>
    #
    # @!attribute agent_arns
    #   <p>ARNs of the agents to use for an NFS location.</p>
    #
    #   @return [Array<String>]
    #
    OnPremConfig = ::Struct.new(
      :agent_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Operator
    #
    module Operator
      # No documentation available.
      #
      EQ = "Equals"

      # No documentation available.
      #
      NE = "NotEquals"

      # No documentation available.
      #
      IN = "In"

      # No documentation available.
      #
      LE = "LessThanOrEqual"

      # No documentation available.
      #
      LT = "LessThan"

      # No documentation available.
      #
      GE = "GreaterThanOrEqual"

      # No documentation available.
      #
      GT = "GreaterThan"

      # No documentation available.
      #
      CONTAINS = "Contains"

      # No documentation available.
      #
      NOT_CONTAINS = "NotContains"

      # No documentation available.
      #
      BEGINS_WITH = "BeginsWith"
    end

    # <p>Represents the options that are available to control the behavior of a
    #       <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>
    #       operation. Behavior includes preserving metadata such as user
    #       ID (UID), group ID (GID), and file permissions, and also overwriting files in the destination,
    #       data integrity verification, and so on.</p>
    #          <p>A task has a set of default options associated with it. If you don't specify an option
    #       in <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>,
    #       the default value is used. You can override the
    #       defaults options on each task execution by specifying an overriding <code>Options</code> value
    #       to <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>.</p>
    #
    # @!attribute verify_mode
    #   <p>A value that determines whether a data integrity verification should be performed at
    #         the end of a task execution after all data and metadata have been transferred.
    #         For more information, see
    #         <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-task.html">Configure task settings</a>.
    #       </p>
    #            <p>Default value: POINT_IN_TIME_CONSISTENT.</p>
    #            <p>ONLY_FILES_TRANSFERRED (recommended): Perform verification only on files that were transferred.
    #       </p>
    #
    #            <p>POINT_IN_TIME_CONSISTENT: Scan the entire source and entire destination
    #         at the end of the transfer
    #         to verify that source and destination are fully
    #         synchronized. This option isn't supported when transferring to S3 Glacier Flexible Retrieval or S3 Glacier Deep Archive storage classes.</p>
    #            <p>NONE: No additional verification is done at the end of the
    #         transfer, but all data transmissions are integrity-checked with
    #         checksum verification during the transfer.</p>
    #
    #   Enum, one of: ["POINT_IN_TIME_CONSISTENT", "ONLY_FILES_TRANSFERRED", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute overwrite_mode
    #   <p>A value that determines whether files at the destination should be overwritten or
    #         preserved when copying files. If set to <code>NEVER</code> a destination file will not be
    #         replaced by a source file, even if the destination file differs from the source file. If you modify files in the destination and you sync the files, you can use this value to
    #         protect against overwriting those changes. </p>
    #            <p>Some storage classes have specific behaviors that can affect your S3 storage cost. For detailed information, see
    #         <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html using-storage-classes">Considerations when working with Amazon S3 storage classes in DataSync </a>
    #         in the <i>DataSync
    #           User Guide</i>.</p>
    #
    #   Enum, one of: ["ALWAYS", "NEVER"]
    #
    #   @return [String]
    #
    # @!attribute atime
    #   <p>A file metadata value that shows the last time a file was accessed (that is, when the
    #         file was read or written to). If you set <code>Atime</code> to BEST_EFFORT, DataSync
    #         attempts to preserve the original <code>Atime</code> attribute on all source files (that is,
    #         the version before the PREPARING phase). However, <code>Atime</code>'s behavior is not
    #         fully standard across platforms, so DataSync can only do this on a best-effort basis. </p>
    #            <p>Default value: BEST_EFFORT.</p>
    #            <p>BEST_EFFORT: Attempt to preserve the per-file <code>Atime</code> value
    #         (recommended).</p>
    #            <p>NONE: Ignore <code>Atime</code>.</p>
    #            <note>
    #               <p>If <code>Atime</code> is set to BEST_EFFORT, <code>Mtime</code> must be set to PRESERVE. </p>
    #               <p>If <code>Atime</code> is set to NONE, <code>Mtime</code> must also be NONE. </p>
    #            </note>
    #
    #   Enum, one of: ["NONE", "BEST_EFFORT"]
    #
    #   @return [String]
    #
    # @!attribute mtime
    #   <p>A value that indicates the last time that a file was modified (that is, a file was
    #         written to) before the PREPARING phase. This option is required for cases when you need to run
    #         the same task more than one time. </p>
    #            <p>Default Value: <code>PRESERVE</code>
    #            </p>
    #            <p>PRESERVE: Preserve original <code>Mtime</code> (recommended)</p>
    #            <p> NONE: Ignore <code>Mtime</code>. </p>
    #            <note>
    #               <p>If <code>Mtime</code> is set to PRESERVE, <code>Atime</code> must be set to
    #           BEST_EFFORT.</p>
    #               <p>If <code>Mtime</code> is set to NONE, <code>Atime</code> must also be set to NONE.
    #         </p>
    #            </note>
    #
    #   Enum, one of: ["NONE", "PRESERVE"]
    #
    #   @return [String]
    #
    # @!attribute uid
    #   <p>The POSIX user ID (UID) of the file's owner. This option should only be set for NFS,
    #         EFS, and S3 locations. To learn more about what metadata is copied by DataSync, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/special-files.html metadata-copied">Metadata Copied by DataSync</a>.</p>
    #            <p>Default value: INT_VALUE. This preserves the integer value of the ID.</p>
    #            <p>INT_VALUE: Preserve the integer value of UID and group ID (GID)
    #         (recommended).</p>
    #            <p>NONE: Ignore UID and GID. </p>
    #
    #   Enum, one of: ["NONE", "INT_VALUE", "NAME", "BOTH"]
    #
    #   @return [String]
    #
    # @!attribute gid
    #   <p>The POSIX group ID (GID) of the file's owners. This option should only be set for
    #         NFS, EFS, and S3 locations. For more information about what metadata is copied by DataSync,
    #         see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/special-files.html metadata-copied">Metadata Copied by DataSync</a>. </p>
    #            <p>Default value: INT_VALUE. This preserves the integer value of the ID.</p>
    #            <p>INT_VALUE: Preserve the integer value of user ID (UID) and GID (recommended).</p>
    #            <p>NONE: Ignore UID and GID. </p>
    #
    #   Enum, one of: ["NONE", "INT_VALUE", "NAME", "BOTH"]
    #
    #   @return [String]
    #
    # @!attribute preserve_deleted_files
    #   <p>A value that specifies whether files in the destination that don't exist in the source
    #         file system should be preserved. This option can affect your storage cost.
    #         If your task deletes objects, you might incur minimum storage duration charges for certain storage classes. For detailed
    #         information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html using-storage-classes">Considerations when working with Amazon S3 storage classes in DataSync </a> in the <i>DataSync User
    #           Guide</i>.</p>
    #            <p>Default value: PRESERVE.</p>
    #            <p>PRESERVE: Ignore such destination files (recommended). </p>
    #            <p>REMOVE: Delete destination files that aren’t present in the source.</p>
    #
    #   Enum, one of: ["PRESERVE", "REMOVE"]
    #
    #   @return [String]
    #
    # @!attribute preserve_devices
    #   <p>A value that determines whether DataSync should preserve the metadata of block
    #         and character devices in the source file system, and re-create the files with that device name
    #         and metadata on the destination. DataSync does not copy the contents of such devices, only the
    #         name and metadata. </p>
    #            <note>
    #               <p>DataSync can't sync the actual contents of such devices, because they are
    #           nonterminal and don't return an end-of-file (EOF) marker.</p>
    #            </note>
    #            <p>Default value: NONE.</p>
    #            <p>NONE: Ignore special devices (recommended). </p>
    #            <p>PRESERVE: Preserve character and block device metadata. This option isn't currently
    #         supported for Amazon EFS. </p>
    #
    #   Enum, one of: ["NONE", "PRESERVE"]
    #
    #   @return [String]
    #
    # @!attribute posix_permissions
    #   <p>A value that determines which users or groups can access a file for a specific purpose
    #         such as reading, writing, or execution of the file. This option should only be set for NFS,
    #         EFS, and S3 locations. For more information about what metadata is copied by DataSync, see
    #           <a href="https://docs.aws.amazon.com/datasync/latest/userguide/special-files.html metadata-copied">Metadata Copied by DataSync</a>. </p>
    #            <p>Default value: PRESERVE.</p>
    #            <p>PRESERVE: Preserve POSIX-style permissions (recommended).</p>
    #            <p>NONE: Ignore permissions. </p>
    #            <note>
    #               <p>DataSync can preserve extant permissions of a source location.</p>
    #            </note>
    #
    #   Enum, one of: ["NONE", "PRESERVE"]
    #
    #   @return [String]
    #
    # @!attribute bytes_per_second
    #   <p>A value that limits the bandwidth used by DataSync. For example, if you want
    #         DataSync to use a maximum of 1 MB, set this value to <code>1048576</code>
    #           (<code>=1024*1024</code>).</p>
    #
    #   @return [Integer]
    #
    # @!attribute task_queueing
    #   <p>A value that determines whether tasks should be queued before executing the tasks. If set
    #         to <code>ENABLED</code>, the tasks will be queued. The default is <code>ENABLED</code>.</p>
    #            <p>If you use the same agent to run multiple tasks, you can enable the tasks to run in
    #         series. For more information, see
    #         <a href="https://docs.aws.amazon.com/datasync/latest/userguide/run-task.html queue-task-execution">Queueing task executions</a>.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute log_level
    #   <p>A value that determines the type of logs that DataSync publishes to a log stream in the
    #         Amazon CloudWatch log group that you provide. For more information about providing a log group
    #         for DataSync, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_CreateTask.html DataSync-CreateTask-request-CloudWatchLogGroupArn">CloudWatchLogGroupArn</a>. If set to <code>OFF</code>, no logs are published.
    #           <code>BASIC</code> publishes logs on errors for individual files transferred, and
    #           <code>TRANSFER</code> publishes logs for every file or object that is transferred and
    #         integrity checked.</p>
    #
    #   Enum, one of: ["OFF", "BASIC", "TRANSFER"]
    #
    #   @return [String]
    #
    # @!attribute transfer_mode
    #   <p>A value that determines whether DataSync transfers only the data and metadata that differ between the source
    #         and the destination location, or whether DataSync transfers all the content from the source, without comparing to
    #         the destination location. </p>
    #            <p>CHANGED: DataSync copies only data or metadata that is new or different content from the source location to the
    #         destination location.</p>
    #            <p>ALL: DataSync copies all source location content to the destination, without comparing to existing content on
    #         the destination.</p>
    #
    #   Enum, one of: ["CHANGED", "ALL"]
    #
    #   @return [String]
    #
    # @!attribute security_descriptor_copy_flags
    #   <p>A value that determines which components of the SMB security descriptor are copied from source
    #         to destination objects.
    #         </p>
    #            <p>This value is only used for transfers
    #         between SMB and Amazon FSx for Windows File Server locations, or between two Amazon FSx for Windows File
    #         Server locations. For more information about how
    #         DataSync handles metadata, see
    #         <a href="https://docs.aws.amazon.com/datasync/latest/userguide/special-files.html">How DataSync Handles Metadata and Special Files</a>.
    #       </p>
    #            <p>Default value: OWNER_DACL.</p>
    #
    #            <p>
    #               <b>OWNER_DACL</b>: For each copied object, DataSync copies the following metadata:</p>
    #            <ul>
    #               <li>
    #                  <p>Object owner.</p>
    #               </li>
    #               <li>
    #                  <p>NTFS discretionary access control lists (DACLs), which determine whether to
    #           grant access to an object.</p>
    #               </li>
    #            </ul>
    #            <p>When choosing this option, DataSync does NOT copy the NTFS system access control lists
    #         (SACLs), which are used by administrators to log attempts to access a secured object.</p>
    #
    #            <p>
    #               <b>OWNER_DACL_SACL</b>: For each copied object, DataSync copies the following metadata:</p>
    #            <ul>
    #               <li>
    #                  <p>Object owner.</p>
    #               </li>
    #               <li>
    #                  <p>NTFS discretionary access control lists (DACLs), which determine whether to
    #             grant access to an object.</p>
    #               </li>
    #               <li>
    #                  <p>NTFS system access control lists (SACLs), which are used by administrators
    #             to log attempts to access a secured object.</p>
    #               </li>
    #            </ul>
    #            <p>Copying SACLs requires granting additional permissions to the Windows user that DataSync
    #         uses to access your SMB location. For information about choosing a user that ensures
    #         sufficient permissions to files, folders, and metadata, see <a href="create-smb-location.html SMBuser">user</a>.</p>
    #
    #            <p>
    #               <b>NONE</b>: None of the SMB security descriptor components
    #         are copied. Destination objects are owned by the user that was provided for accessing the
    #         destination location. DACLs and SACLs are set based on the destination server’s configuration.
    #       </p>
    #
    #   Enum, one of: ["NONE", "OWNER_DACL", "OWNER_DACL_SACL"]
    #
    #   @return [String]
    #
    # @!attribute object_tags
    #   <p>Specifies whether object tags are maintained when transferring between object storage systems. If you want your DataSync task to ignore object tags, specify the <code>NONE</code> value.</p>
    #            <p>Default Value: <code>PRESERVE</code>
    #            </p>
    #
    #   Enum, one of: ["PRESERVE", "NONE"]
    #
    #   @return [String]
    #
    Options = ::Struct.new(
      :verify_mode,
      :overwrite_mode,
      :atime,
      :mtime,
      :uid,
      :gid,
      :preserve_deleted_files,
      :preserve_devices,
      :posix_permissions,
      :bytes_per_second,
      :task_queueing,
      :log_level,
      :transfer_mode,
      :security_descriptor_copy_flags,
      :object_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OverwriteMode
    #
    module OverwriteMode
      # No documentation available.
      #
      ALWAYS = "ALWAYS"

      # No documentation available.
      #
      NEVER = "NEVER"
    end

    # Includes enum constants for PhaseStatus
    #
    module PhaseStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # Includes enum constants for PosixPermissions
    #
    module PosixPermissions
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      PRESERVE = "PRESERVE"
    end

    # Includes enum constants for PreserveDeletedFiles
    #
    module PreserveDeletedFiles
      # No documentation available.
      #
      PRESERVE = "PRESERVE"

      # No documentation available.
      #
      REMOVE = "REMOVE"
    end

    # Includes enum constants for PreserveDevices
    #
    module PreserveDevices
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      PRESERVE = "PRESERVE"
    end

    # <p>The VPC endpoint, subnet, and security group that an agent uses to access IP addresses in
    #       a VPC (Virtual Private Cloud).</p>
    #
    # @!attribute vpc_endpoint_id
    #   <p>The ID of the VPC endpoint that is configured for an agent. An agent that is configured
    #         with a VPC endpoint will not be accessible over the public internet.</p>
    #
    #   @return [String]
    #
    # @!attribute private_link_endpoint
    #   <p>The private endpoint that is configured for an agent that has access to IP addresses in a
    #           <a href="https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html">PrivateLink</a>. An agent that is configured with this endpoint will not be accessible
    #         over the public internet.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_arns
    #   <p>The Amazon Resource Names (ARNs) of the subnets that are configured for an agent activated
    #         in a VPC or an agent that has access to a VPC endpoint.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_arns
    #   <p>The Amazon Resource Names (ARNs) of the security groups that are configured for the EC2
    #         resource that hosts an agent activated in a VPC or an agent that has access to a VPC
    #         endpoint.</p>
    #
    #   @return [Array<String>]
    #
    PrivateLinkConfig = ::Struct.new(
      :vpc_endpoint_id,
      :private_link_endpoint,
      :subnet_arns,
      :security_group_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC)
    #       and data transfer privacy settings configured on the Hadoop Distributed File System (HDFS)
    #       cluster.</p>
    #
    # @!attribute rpc_protection
    #   <p>The RPC protection setting configured on the HDFS cluster. This setting corresponds to
    #         your <code>hadoop.rpc.protection</code> setting in your <code>core-site.xml</code> file on
    #         your Hadoop cluster.</p>
    #
    #   Enum, one of: ["DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"]
    #
    #   @return [String]
    #
    # @!attribute data_transfer_protection
    #   <p>The data transfer protection setting configured on the HDFS cluster. This setting
    #         corresponds to your <code>dfs.data.transfer.protection</code> setting in the
    #           <code>hdfs-site.xml</code> file on your Hadoop cluster.</p>
    #
    #   Enum, one of: ["DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"]
    #
    #   @return [String]
    #
    QopConfiguration = ::Struct.new(
      :rpc_protection,
      :data_transfer_protection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role used to access
    #       an Amazon S3 bucket.</p>
    #
    #          <p>For detailed information about using such a role, see Creating a Location for
    #       Amazon S3 in the <i>DataSync User Guide</i>.</p>
    #
    # @!attribute bucket_access_role_arn
    #   <p>The ARN of the IAM role for accessing the S3 bucket. </p>
    #
    #   @return [String]
    #
    S3Config = ::Struct.new(
      :bucket_access_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3StorageClass
    #
    module S3StorageClass
      # No documentation available.
      #
      STANDARD = "STANDARD"

      # No documentation available.
      #
      STANDARD_IA = "STANDARD_IA"

      # No documentation available.
      #
      ONEZONE_IA = "ONEZONE_IA"

      # No documentation available.
      #
      INTELLIGENT_TIERING = "INTELLIGENT_TIERING"

      # No documentation available.
      #
      GLACIER = "GLACIER"

      # No documentation available.
      #
      DEEP_ARCHIVE = "DEEP_ARCHIVE"

      # No documentation available.
      #
      OUTPOSTS = "OUTPOSTS"
    end

    # <p>Represents the mount options that are available for DataSync to access an SMB
    #       location.</p>
    #
    # @!attribute version
    #   <p>The specific SMB version that you want DataSync to use to mount your SMB share. If you
    #         don't specify a version, DataSync defaults to <code>AUTOMATIC</code>. That is, DataSync
    #         automatically selects a version based on negotiation with the SMB server.</p>
    #
    #   Enum, one of: ["AUTOMATIC", "SMB2", "SMB3"]
    #
    #   @return [String]
    #
    SmbMountOptions = ::Struct.new(
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SmbSecurityDescriptorCopyFlags
    #
    module SmbSecurityDescriptorCopyFlags
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      OWNER_DACL = "OWNER_DACL"

      # No documentation available.
      #
      OWNER_DACL_SACL = "OWNER_DACL_SACL"
    end

    # Includes enum constants for SmbVersion
    #
    module SmbVersion
      # No documentation available.
      #
      AUTOMATIC = "AUTOMATIC"

      # No documentation available.
      #
      SMB2 = "SMB2"

      # No documentation available.
      #
      SMB3 = "SMB3"
    end

    # <p>StartTaskExecutionRequest</p>
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task to start.</p>
    #
    #   @return [String]
    #
    # @!attribute override_options
    #   <p>Represents the options that are available to control the behavior of a
    #         <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>
    #         operation. Behavior includes preserving metadata such as user
    #         ID (UID), group ID (GID), and file permissions, and also overwriting files in the destination,
    #         data integrity verification, and so on.</p>
    #            <p>A task has a set of default options associated with it. If you don't specify an option
    #         in <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>,
    #         the default value is used. You can override the
    #         defaults options on each task execution by specifying an overriding <code>Options</code> value
    #         to <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>.</p>
    #
    #   @return [Options]
    #
    # @!attribute includes
    #   <p>A list of filter rules that determines which files to include when running a task. The
    #         pattern should contain a single filter string that consists of the patterns to include. The
    #         patterns are delimited by "|" (that is, a pipe), for example,
    #         <code>"/folder1|/folder2"</code>. </p>
    #
    #            <p>
    #       </p>
    #
    #   @return [Array<FilterRule>]
    #
    # @!attribute excludes
    #   <p>A list of filter rules that determines which files to exclude from a task. The list
    #         contains a single filter string that consists of the patterns to exclude. The patterns are
    #         delimited by "|" (that is, a pipe), for example, <code>"/folder1|/folder2"</code>. </p>
    #
    #   @return [Array<FilterRule>]
    #
    StartTaskExecutionInput = ::Struct.new(
      :task_arn,
      :override_options,
      :includes,
      :excludes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>StartTaskExecutionResponse</p>
    #
    # @!attribute task_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the specific task execution that was
    #         started.</p>
    #
    #   @return [String]
    #
    StartTaskExecutionOutput = ::Struct.new(
      :task_execution_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a single entry in a list of Amazon Web Services resource tags. <code>TagListEntry</code>
    #       returns an array that contains a list of tasks when the
    #       <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_ListTagsForResource.html">ListTagsForResource</a>
    #       operation is called.</p>
    #
    # @!attribute key
    #   <p>The key for an Amazon Web Services resource tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for an Amazon Web Services resource tag.</p>
    #
    #   @return [String]
    #
    TagListEntry = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>TagResourceRequest</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to apply the tag to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to apply.</p>
    #
    #   @return [Array<TagListEntry>]
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

    # <p>Represents a single entry in a list of task executions.
    #         <code>TaskExecutionListEntry</code> returns an array that contains a list of specific
    #       invocations of a task when the
    #       <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_ListTaskExecutions.html">ListTaskExecutions</a>
    #       operation is called.</p>
    #
    # @!attribute task_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the task that was executed.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of a task execution.</p>
    #
    #   Enum, one of: ["QUEUED", "LAUNCHING", "PREPARING", "TRANSFERRING", "VERIFYING", "SUCCESS", "ERROR"]
    #
    #   @return [String]
    #
    TaskExecutionListEntry = ::Struct.new(
      :task_execution_arn,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the detailed result of a <code>TaskExecution</code> operation. This result
    #       includes the time in milliseconds spent in each phase, the status of the task execution, and
    #       the errors encountered.</p>
    #
    # @!attribute prepare_duration
    #   <p>The total time in milliseconds that DataSync spent in the PREPARING phase.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute prepare_status
    #   <p>The status of the PREPARING phase.</p>
    #
    #   Enum, one of: ["PENDING", "SUCCESS", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute total_duration
    #   <p>The total time in milliseconds that DataSync took to transfer the file from the source to the destination location.</p>
    #
    #   @return [Integer]
    #
    # @!attribute transfer_duration
    #   <p>The total time in milliseconds that DataSync spent in the TRANSFERRING
    #         phase.</p>
    #
    #   @return [Integer]
    #
    # @!attribute transfer_status
    #   <p>The status of the TRANSFERRING phase.</p>
    #
    #   Enum, one of: ["PENDING", "SUCCESS", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute verify_duration
    #   <p>The total time in milliseconds that DataSync spent in the VERIFYING
    #         phase.</p>
    #
    #   @return [Integer]
    #
    # @!attribute verify_status
    #   <p>The status of the VERIFYING phase.</p>
    #
    #   Enum, one of: ["PENDING", "SUCCESS", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>Errors that DataSync encountered during execution of the task. You can use this
    #         error code to help troubleshoot issues.</p>
    #
    #   @return [String]
    #
    # @!attribute error_detail
    #   <p>Detailed description of an error that was encountered during the task execution. You
    #         can use this information to help troubleshoot issues. </p>
    #
    #   @return [String]
    #
    TaskExecutionResultDetail = ::Struct.new(
      :prepare_duration,
      :prepare_status,
      :total_duration,
      :transfer_duration,
      :transfer_status,
      :verify_duration,
      :verify_status,
      :error_code,
      :error_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TaskExecutionStatus
    #
    module TaskExecutionStatus
      # No documentation available.
      #
      QUEUED = "QUEUED"

      # No documentation available.
      #
      LAUNCHING = "LAUNCHING"

      # No documentation available.
      #
      PREPARING = "PREPARING"

      # No documentation available.
      #
      TRANSFERRING = "TRANSFERRING"

      # No documentation available.
      #
      VERIFYING = "VERIFYING"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # <p>You can use API filters to narrow down the list of resources returned by <code>ListTasks</code>.
    #       For example, to retrieve all tasks on a source location, you can use <code>ListTasks</code>
    #       with filter name <code>LocationId</code> and <code>Operator Equals</code> with the ARN for the
    #       location.</p>
    #
    # @!attribute name
    #   <p>The name of the filter being used. Each API call supports a list of filters that are available
    #         for it. For example, <code>LocationId</code> for <code>ListTasks</code>.</p>
    #
    #   Enum, one of: ["LocationId", "CreationTime"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values that you want to filter for. For example, you might want to display only tasks
    #         for a specific destination location.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>The operator that is used to compare filter values (for example, <code>Equals</code> or
    #         <code>Contains</code>). For more about API filtering operators, see
    #         <a href="https://docs.aws.amazon.com/datasync/latest/userguide/query-resources.html">API filters for ListTasks and ListLocations</a>.</p>
    #
    #   Enum, one of: ["Equals", "NotEquals", "In", "LessThanOrEqual", "LessThan", "GreaterThanOrEqual", "GreaterThan", "Contains", "NotContains", "BeginsWith"]
    #
    #   @return [String]
    #
    TaskFilter = ::Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TaskFilterName
    #
    module TaskFilterName
      # No documentation available.
      #
      LocationId = "LocationId"

      # No documentation available.
      #
      CreationTime = "CreationTime"
    end

    # <p>Represents a single entry in a list of tasks. <code>TaskListEntry</code> returns an
    #       array that contains a list of tasks when the <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_ListTasks.html">ListTasks</a> operation is called.
    #       A task includes the source and destination file systems to sync and the options to use for the
    #       tasks.</p>
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the task.</p>
    #
    #   Enum, one of: ["AVAILABLE", "CREATING", "QUEUED", "RUNNING", "UNAVAILABLE"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the task.</p>
    #
    #   @return [String]
    #
    TaskListEntry = ::Struct.new(
      :task_arn,
      :status,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TaskQueueing
    #
    module TaskQueueing
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Specifies the schedule you want your task to use for repeated executions. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html">Schedule Expressions for Rules</a>.</p>
    #
    # @!attribute schedule_expression
    #   <p>A cron expression that specifies when DataSync initiates a scheduled transfer from a
    #         source to a destination location. </p>
    #
    #   @return [String]
    #
    TaskSchedule = ::Struct.new(
      :schedule_expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TaskStatus
    #
    module TaskStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      QUEUED = "QUEUED"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      UNAVAILABLE = "UNAVAILABLE"
    end

    # Includes enum constants for TransferMode
    #
    module TransferMode
      # No documentation available.
      #
      CHANGED = "CHANGED"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # Includes enum constants for Uid
    #
    module Uid
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      INT_VALUE = "INT_VALUE"

      # No documentation available.
      #
      NAME = "NAME"

      # No documentation available.
      #
      BOTH = "BOTH"
    end

    # <p>UntagResourceRequest</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove the tag from.</p>
    #
    #   @return [String]
    #
    # @!attribute keys
    #   <p>The keys in the key-value pair in the tag to remove.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :keys,
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

    # <p>UpdateAgentRequest</p>
    #
    # @!attribute agent_arn
    #   <p>The Amazon Resource Name (ARN) of the agent to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name that you want to use to configure the agent.</p>
    #
    #   @return [String]
    #
    UpdateAgentInput = ::Struct.new(
      :agent_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateAgentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the source HDFS cluster location.</p>
    #
    #   @return [String]
    #
    # @!attribute subdirectory
    #   <p>A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write
    #         data to the HDFS cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute name_nodes
    #   <p>The NameNode that manages the HDFS namespace. The NameNode performs operations such as
    #         opening, closing, and renaming files and directories. The NameNode contains the information to
    #         map blocks of data to the DataNodes. You can use only one NameNode.</p>
    #
    #   @return [Array<HdfsNameNode>]
    #
    # @!attribute block_size
    #   <p>The size of the data blocks to write into the HDFS cluster. </p>
    #
    #   @return [Integer]
    #
    # @!attribute replication_factor
    #   <p>The number of DataNodes to replicate the data to when writing to the HDFS cluster. </p>
    #
    #   @return [Integer]
    #
    # @!attribute kms_key_provider_uri
    #   <p>The URI of the HDFS cluster's Key Management Server (KMS). </p>
    #
    #   @return [String]
    #
    # @!attribute qop_configuration
    #   <p>The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC)
    #         and data transfer privacy settings configured on the Hadoop Distributed File System (HDFS)
    #         cluster. </p>
    #
    #   @return [QopConfiguration]
    #
    # @!attribute authentication_type
    #   <p>The type of authentication used to determine the identity of the user. </p>
    #
    #   Enum, one of: ["SIMPLE", "KERBEROS"]
    #
    #   @return [String]
    #
    # @!attribute simple_user
    #   <p>The user name used to identify the client on the host operating system.</p>
    #
    #   @return [String]
    #
    # @!attribute kerberos_principal
    #   <p>The Kerberos principal with access to the files and folders on the HDFS cluster. </p>
    #
    #   @return [String]
    #
    # @!attribute kerberos_keytab
    #   <p>The Kerberos key table (keytab) that contains mappings between the defined Kerberos
    #         principal and the encrypted keys. You can load the keytab from a file by providing the file's
    #         address. If you use the CLI, it performs base64 encoding for you. Otherwise,
    #         provide the base64-encoded text.</p>
    #
    #   @return [String]
    #
    # @!attribute kerberos_krb5_conf
    #   <p>The <code>krb5.conf</code> file that contains the Kerberos configuration information. You
    #         can load the <code>krb5.conf</code> file by providing the file's address. If you're using the
    #           CLI, it performs the base64 encoding for you. Otherwise, provide the
    #         base64-encoded text.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_arns
    #   <p>The ARNs of the agents that are used to connect to the HDFS cluster. </p>
    #
    #   @return [Array<String>]
    #
    UpdateLocationHdfsInput = ::Struct.new(
      :location_arn,
      :subdirectory,
      :name_nodes,
      :block_size,
      :replication_factor,
      :kms_key_provider_uri,
      :qop_configuration,
      :authentication_type,
      :simple_user,
      :kerberos_principal,
      :kerberos_keytab,
      :kerberos_krb5_conf,
      :agent_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateLocationHdfsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the NFS location to update.</p>
    #
    #   @return [String]
    #
    # @!attribute subdirectory
    #   <p>The subdirectory in the NFS file system that is used to read data from the NFS source
    #         location or write data to the NFS destination. The NFS path should be a path that's
    #         exported by the NFS server, or a subdirectory of that path. The path should be such that it
    #         can be mounted by other NFS clients in your network.</p>
    #
    #            <p>To see all the paths exported by your NFS server, run "<code>showmount -e
    #           nfs-server-name</code>" from an NFS client that has access to your server. You can specify
    #           any directory that appears in the results, and any subdirectory of that directory. Ensure that
    #           the NFS export is accessible without Kerberos authentication. </p>
    #            <p>To transfer all the data in the folder that you specified, DataSync must have
    #         permissions to read all the data. To ensure this, either configure the NFS export with
    #           <code>no_root_squash</code>, or ensure that the files you want DataSync to
    #         access have permissions that allow read access for all users. Doing either option enables the
    #         agent to read the files. For the agent to access directories, you must additionally enable all
    #         execute access.</p>
    #            <p>If you are copying data to or from your Snowcone device, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html nfs-on-snowcone">NFS Server on Snowcone</a> for more information.</p>
    #
    #            <p>For information about NFS export configuration, see 18.7. The /etc/exports
    #         Configuration File in the Red Hat Enterprise Linux documentation.</p>
    #
    #   @return [String]
    #
    # @!attribute on_prem_config
    #   <p>A list of Amazon Resource Names (ARNs) of agents to use for a Network File System (NFS)
    #         location.</p>
    #
    #   @return [OnPremConfig]
    #
    # @!attribute mount_options
    #   <p>Represents the mount options that are available for DataSync to access an NFS
    #         location.</p>
    #
    #   @return [NfsMountOptions]
    #
    UpdateLocationNfsInput = ::Struct.new(
      :location_arn,
      :subdirectory,
      :on_prem_config,
      :mount_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateLocationNfsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the self-managed object storage server location to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute server_port
    #   <p>The port that your self-managed object storage server accepts inbound network traffic on.
    #         The server port is set by default to TCP 80 (HTTP) or TCP 443 (HTTPS). You can
    #         specify a custom port if your self-managed object storage server requires one.</p>
    #
    #   @return [Integer]
    #
    # @!attribute server_protocol
    #   <p>The protocol that the object storage server uses to communicate. Valid values are
    #           <code>HTTP</code> or <code>HTTPS</code>.</p>
    #
    #   Enum, one of: ["HTTPS", "HTTP"]
    #
    #   @return [String]
    #
    # @!attribute subdirectory
    #   <p>The subdirectory in the self-managed object storage server that is used
    #         to read data from.</p>
    #
    #   @return [String]
    #
    # @!attribute access_key
    #   <p>Optional. The access key is used if credentials are required to access the self-managed
    #         object storage server. If your object storage requires a user name and password to
    #         authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name
    #         and password, respectively.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_key
    #   <p>Optional. The secret key is used if credentials are required to access the self-managed
    #         object storage server. If your object storage requires a user name and password to
    #         authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name
    #         and password, respectively.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_arns
    #   <p>The Amazon Resource Name (ARN) of the agents associated with the
    #         self-managed object storage server location.</p>
    #
    #   @return [Array<String>]
    #
    UpdateLocationObjectStorageInput = ::Struct.new(
      :location_arn,
      :server_port,
      :server_protocol,
      :subdirectory,
      :access_key,
      :secret_key,
      :agent_arns,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DataSync::Types::UpdateLocationObjectStorageInput "\
          "location_arn=#{location_arn || 'nil'}, "\
          "server_port=#{server_port || 'nil'}, "\
          "server_protocol=#{server_protocol || 'nil'}, "\
          "subdirectory=#{subdirectory || 'nil'}, "\
          "access_key=#{access_key || 'nil'}, "\
          "secret_key=\"[SENSITIVE]\", "\
          "agent_arns=#{agent_arns || 'nil'}>"
      end
    end

    UpdateLocationObjectStorageOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the SMB location to update.</p>
    #
    #   @return [String]
    #
    # @!attribute subdirectory
    #   <p>The subdirectory in the SMB file system that is used to read data from the SMB source
    #         location or write data to the SMB destination. The SMB path should be a path that's
    #         exported by the SMB server, or a subdirectory of that path. The path should be such that it
    #         can be mounted by other SMB clients in your network.</p>
    #            <note>
    #               <p>
    #                  <code>Subdirectory</code> must be specified with forward slashes. For example,
    #         <code>/path/to/folder</code>.</p>
    #            </note>
    #
    #            <p>To transfer all the data in the folder that you specified, DataSync must have
    #         permissions to mount the SMB share and to access all the data in that share. To ensure this,
    #         do either of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Ensure that the user/password specified belongs to the user who can mount the share
    #             and who has the appropriate permissions for all of the files and directories that you want
    #             DataSync to access.</p>
    #               </li>
    #               <li>
    #                  <p>Use credentials of a member of the Backup Operators group to mount the share. </p>
    #               </li>
    #            </ul>
    #            <p>Doing either of these options enables the agent to access the data. For the agent to
    #         access directories, you must also enable all execute access.</p>
    #
    #   @return [String]
    #
    # @!attribute user
    #   <p>The user who can mount the share has the permissions to access files and folders in the
    #         SMB share.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The name of the Windows domain that the SMB server belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password of the user who can mount the share has the permissions to access files and
    #         folders in the SMB share.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_arns
    #   <p>The Amazon Resource Names (ARNs) of agents to use for a Simple Message Block (SMB)
    #         location.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute mount_options
    #   <p>Represents the mount options that are available for DataSync to access an SMB
    #         location.</p>
    #
    #   @return [SmbMountOptions]
    #
    UpdateLocationSmbInput = ::Struct.new(
      :location_arn,
      :subdirectory,
      :user,
      :domain,
      :password,
      :agent_arns,
      :mount_options,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DataSync::Types::UpdateLocationSmbInput "\
          "location_arn=#{location_arn || 'nil'}, "\
          "subdirectory=#{subdirectory || 'nil'}, "\
          "user=#{user || 'nil'}, "\
          "domain=#{domain || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "agent_arns=#{agent_arns || 'nil'}, "\
          "mount_options=#{mount_options || 'nil'}>"
      end
    end

    UpdateLocationSmbOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the specific task execution that is being updated. </p>
    #
    #   @return [String]
    #
    # @!attribute options
    #   <p>Represents the options that are available to control the behavior of a
    #         <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>
    #         operation. Behavior includes preserving metadata such as user
    #         ID (UID), group ID (GID), and file permissions, and also overwriting files in the destination,
    #         data integrity verification, and so on.</p>
    #            <p>A task has a set of default options associated with it. If you don't specify an option
    #         in <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>,
    #         the default value is used. You can override the
    #         defaults options on each task execution by specifying an overriding <code>Options</code> value
    #         to <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>.</p>
    #
    #   @return [Options]
    #
    UpdateTaskExecutionInput = ::Struct.new(
      :task_execution_arn,
      :options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateTaskExecutionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>UpdateTaskResponse</p>
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the resource name of the task to update.</p>
    #
    #   @return [String]
    #
    # @!attribute options
    #   <p>Represents the options that are available to control the behavior of a
    #         <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>
    #         operation. Behavior includes preserving metadata such as user
    #         ID (UID), group ID (GID), and file permissions, and also overwriting files in the destination,
    #         data integrity verification, and so on.</p>
    #            <p>A task has a set of default options associated with it. If you don't specify an option
    #         in <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>,
    #         the default value is used. You can override the
    #         defaults options on each task execution by specifying an overriding <code>Options</code> value
    #         to <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>.</p>
    #
    #   @return [Options]
    #
    # @!attribute excludes
    #   <p>A list of filter rules that determines which files to exclude from a task. The list should
    #         contain a single filter string that consists of the patterns to exclude. The patterns are
    #         delimited by "|" (that is, a pipe), for example, <code>"/folder1|/folder2"</code>.</p>
    #            <p>
    #       </p>
    #
    #   @return [Array<FilterRule>]
    #
    # @!attribute schedule
    #   <p>Specifies a schedule used to periodically transfer files from a source to a destination
    #         location. You can configure your task to execute hourly, daily, weekly or on specific days of
    #         the week. You control when in the day or hour you want the task to execute. The time you
    #         specify is UTC time. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html">Scheduling your task</a>.</p>
    #
    #   @return [TaskSchedule]
    #
    # @!attribute name
    #   <p>The name of the task to update.</p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the resource name of the Amazon CloudWatch log
    #         group.</p>
    #
    #   @return [String]
    #
    # @!attribute includes
    #   <p>A list of filter rules that determines which files to include when running a task. The
    #         pattern contains a single filter string that consists of the patterns to include. The patterns
    #         are delimited by "|" (that is, a pipe), for example, <code>"/folder1|/folder2"</code>.</p>
    #
    #   @return [Array<FilterRule>]
    #
    UpdateTaskInput = ::Struct.new(
      :task_arn,
      :options,
      :excludes,
      :schedule,
      :name,
      :cloud_watch_log_group_arn,
      :includes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateTaskOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VerifyMode
    #
    module VerifyMode
      # No documentation available.
      #
      POINT_IN_TIME_CONSISTENT = "POINT_IN_TIME_CONSISTENT"

      # No documentation available.
      #
      ONLY_FILES_TRANSFERRED = "ONLY_FILES_TRANSFERRED"

      # No documentation available.
      #
      NONE = "NONE"
    end

  end
end
