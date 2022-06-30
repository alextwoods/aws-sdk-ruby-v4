# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Transfer
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

    # <p>This exception is thrown when the <code>UpdateServer</code> is called for a file transfer
    #       protocol-enabled server that has VPC as the endpoint type and the server's
    #         <code>VpcEndpointID</code> is not in the available state.</p>
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

    # <p>Each step type has its own <code>StepDetails</code> structure.</p>
    #
    # @!attribute name
    #   <p>The name of the step, used as an identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_file_location
    #   <p>Specifies the location for the file being copied. Only applicable for Copy type workflow
    #         steps. Use <code>${Transfer:username}</code> in this field to parametrize the destination
    #         prefix by username.</p>
    #
    #   @return [InputFileLocation]
    #
    # @!attribute overwrite_existing
    #   <p>A flag that indicates whether or not to overwrite an existing file of the same name.
    #         The default is <code>FALSE</code>.</p>
    #
    #   Enum, one of: ["TRUE", "FALSE"]
    #
    #   @return [String]
    #
    # @!attribute source_file_location
    #   <p>Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file
    #       for the workflow.</p>
    #            <ul>
    #               <li>
    #                  <p>Enter <code>${previous.file}</code> to use the previous file as the input.
    #             In this case, this workflow step uses the output file from the previous workflow step as input.
    #             This is the default value.</p>
    #               </li>
    #               <li>
    #                  <p>Enter <code>${original.file}</code> to use the originally-uploaded file location as input for this step.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    CopyStepDetails = ::Struct.new(
      :name,
      :destination_file_location,
      :overwrite_existing,
      :source_file_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p>
    #            <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    #       If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    #       If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    #       S3 or EFS paths visible to your users.</p>
    #
    #   Enum, one of: ["PATH", "LOGICAL"]
    #
    #   @return [String]
    #
    # @!attribute home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should
    #         be visible to your user and how you want to make them visible. You must specify the
    #           <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path
    #         is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you
    #         only specify a target, it is displayed as is. You also must ensure that your Amazon Web Services Identity
    #         and Access Management (IAM) role provides access to paths in <code>Target</code>. This value
    #         can only be set when <code>HomeDirectoryType</code> is set to
    #         <i>LOGICAL</i>.</p>
    #            <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p>
    #            <p>
    #               <code>[ { "Entry": "/directory1", "Target": "/bucket_name/home/mydirectory" } ]</code>
    #            </p>
    #            <p>In most cases, you can use this value instead of the session policy to lock down your
    #         user to the designated home directory ("<code>chroot</code>"). To do this, you can set
    #           <code>Entry</code> to <code>/</code> and set <code>Target</code> to the
    #           <code>HomeDirectory</code> parameter value.</p>
    #            <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p>
    #            <p>
    #               <code>[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]</code>
    #            </p>
    #
    #   @return [Array<HomeDirectoryMapEntry>]
    #
    # @!attribute policy
    #   <p>A session policy for your user so that you can use the same IAM role across multiple users. This policy scopes down user
    #        access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>,
    #        <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>
    #
    #            <note>
    #               <p>This only applies when the domain of <code>ServerId</code> is S3. EFS does not use session policies.</p>
    #               <p>For session policies, Amazon Web Services Transfer Family stores the policy as a JSON blob, instead
    #           of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass
    #           it in the <code>Policy</code> argument.</p>
    #               <p>For an example of a session policy, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html">Example
    #             session policy</a>.</p>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html">AssumeRole</a> in the <i>Amazon Web Services Security Token Service API
    #             Reference</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute posix_profile
    #   <p>The full POSIX identity, including user ID (<code>Uid</code>), group ID
    #         (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
    #         your users' access to your Amazon EFS file systems. The POSIX permissions that are set on
    #         files and directories in your file system determine the level of access your users get when
    #         transferring files into and out of your Amazon EFS file systems.</p>
    #
    #   @return [PosixProfile]
    #
    # @!attribute role
    #   <p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
    #         file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
    #         files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
    #         server to access your resources when servicing your users' transfer requests.</p>
    #
    #   @return [String]
    #
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server that you added your user to.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory.
    #       The users of the group that you associate have access to your Amazon S3 or Amazon EFS
    #       resources over the enabled protocols using Amazon Web Services Transfer Family. If you know the group name,
    #       you can view the SID values by running the following command using Windows PowerShell.</p>
    #
    #            <p>
    #               <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code>
    #            </p>
    #
    #            <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p>
    #
    #            <p>The regex used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces.
    #       You can also include underscores or any of the following characters: =,.@:/-</p>
    #
    #   @return [String]
    #
    CreateAccessInput = ::Struct.new(
      :home_directory,
      :home_directory_type,
      :home_directory_mappings,
      :policy,
      :posix_profile,
      :role,
      :server_id,
      :external_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p>The ID of the server that the user is attached to.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>The external ID of the group whose users have access to your Amazon S3 or Amazon EFS
    #         resources over the enabled protocols using Amazon Web Services Transfer Family.</p>
    #
    #   @return [String]
    #
    CreateAccessOutput = ::Struct.new(
      :server_id,
      :external_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Certificate Manager (ACM) certificate. Required
    #         when <code>Protocols</code> is set to <code>FTPS</code>.</p>
    #
    #            <p>To request a new public certificate, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html">Request a public certificate</a>
    #         in the <i> Amazon Web Services Certificate Manager User Guide</i>.</p>
    #
    #            <p>To import an existing certificate into ACM, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing certificates into ACM</a>
    #         in the <i> Amazon Web Services Certificate Manager User Guide</i>.</p>
    #
    #            <p>To request a private certificate to use FTPS through private IP addresses, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html">Request a
    #           private certificate</a> in the <i> Amazon Web Services Certificate Manager User
    #         Guide</i>.</p>
    #
    #            <p>Certificates with the following cryptographic algorithms and key sizes are
    #         supported:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>2048-bit RSA (RSA_2048)</p>
    #               </li>
    #               <li>
    #                  <p>4096-bit RSA (RSA_4096)</p>
    #               </li>
    #               <li>
    #                  <p>Elliptic Prime Curve 256 bit (EC_prime256v1)</p>
    #               </li>
    #               <li>
    #                  <p>Elliptic Prime Curve 384 bit (EC_secp384r1)</p>
    #               </li>
    #               <li>
    #                  <p>Elliptic Prime Curve 521 bit (EC_secp521r1)</p>
    #               </li>
    #            </ul>
    #
    #            <note>
    #               <p>The certificate must be a valid SSL/TLS X.509 version 3 certificate with FQDN or IP
    #           address specified and information about the issuer.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The domain of the storage system that is used for file transfers. There are two domains
    #         available: Amazon Simple Storage Service (Amazon S3) and Amazon Elastic File System (Amazon EFS). The
    #         default value is S3.</p>
    #
    #            <note>
    #               <p>After the server is created, the domain cannot be changed.</p>
    #            </note>
    #
    #   Enum, one of: ["S3", "EFS"]
    #
    #   @return [String]
    #
    # @!attribute endpoint_details
    #   <p>The virtual private cloud (VPC) endpoint settings that are configured for your server.
    #         When you host your endpoint within your VPC, you can make it accessible only to resources
    #         within your VPC, or you can attach Elastic IP addresses and make it accessible to clients over
    #         the internet. Your VPC's default security groups are automatically assigned to your
    #         endpoint.</p>
    #
    #   @return [EndpointDetails]
    #
    # @!attribute endpoint_type
    #   <p>The type of endpoint that you want your server to use. You can choose to make your server's endpoint publicly accessible (PUBLIC)
    #         or host it inside your VPC. With an endpoint that is hosted in a VPC, you can restrict access to your server and
    #         resources only within your VPC or choose to make it internet facing by attaching Elastic IP addresses directly to it.</p>
    #            <note>
    #               <p> After May 19, 2021, you won't be able to create a server using
    #             <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Services account if your account hasn't already
    #         done so before May 19, 2021. If you have already created servers with
    #         <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Services account on or before May 19, 2021,
    #           you will not be affected. After this date, use
    #           <code>EndpointType</code>=<code>VPC</code>.</p>
    #
    #               <p>For more information, see
    #           https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html deprecate-vpc-endpoint.</p>
    #               <p>It is recommended that you use <code>VPC</code> as the <code>EndpointType</code>. With
    #           this endpoint type, you have the option to directly associate up to three Elastic IPv4
    #           addresses (BYO IP included) with your server's endpoint and use VPC security groups to
    #           restrict traffic by the client's public IP address. This is not possible with
    #             <code>EndpointType</code> set to <code>VPC_ENDPOINT</code>.</p>
    #            </note>
    #
    #   Enum, one of: ["PUBLIC", "VPC", "VPC_ENDPOINT"]
    #
    #   @return [String]
    #
    # @!attribute host_key
    #   <p>The RSA private key as generated by the <code>ssh-keygen -N "" -m PEM -f
    #           my-new-server-key</code> command.</p>
    #
    #            <important>
    #               <p>If you aren't planning to migrate existing users from an existing SFTP-enabled
    #           server to a new server, don't update the host key. Accidentally changing a
    #           server's host key can be disruptive.</p>
    #            </important>
    #
    #
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html configuring-servers-change-host-key">Change the host key for your SFTP-enabled server</a> in the <i>Amazon Web Services Transfer
    #           Family User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_details
    #   <p>Required when <code>IdentityProviderType</code> is set to
    #           <code>AWS_DIRECTORY_SERVICE</code> or <code>API_GATEWAY</code>. Accepts an array containing
    #         all of the information required to use a directory in <code>AWS_DIRECTORY_SERVICE</code> or
    #         invoke a customer-supplied authentication API, including the API Gateway URL. Not required
    #         when <code>IdentityProviderType</code> is set to <code>SERVICE_MANAGED</code>.</p>
    #
    #   @return [IdentityProviderDetails]
    #
    # @!attribute identity_provider_type
    #   <p>Specifies the mode of authentication for a server. The default value is
    #           <code>SERVICE_MANAGED</code>, which allows you to store and access user credentials within
    #         the Amazon Web Services Transfer Family service.</p>
    #            <p>Use <code>AWS_DIRECTORY_SERVICE</code> to provide access to
    #         Active Directory groups in Amazon Web Services Managed Active Directory or Microsoft Active Directory in your
    #         on-premises environment or in Amazon Web Services using AD Connectors. This option also requires you to
    #         provide a Directory ID using the <code>IdentityProviderDetails</code> parameter.</p>
    #            <p>Use the <code>API_GATEWAY</code> value to integrate with an identity provider of your choosing. The
    #         <code>API_GATEWAY</code> setting requires you to provide an API Gateway endpoint URL to call
    #         for authentication using the <code>IdentityProviderDetails</code> parameter.</p>
    #            <p>Use the <code>AWS_LAMBDA</code> value to directly use a Lambda function as your identity provider. If you choose this value,
    #         you must specify the ARN for the lambda function in the <code>Function</code> parameter for the <code>IdentityProviderDetails</code> data type.</p>
    #
    #   Enum, one of: ["SERVICE_MANAGED", "API_GATEWAY", "AWS_DIRECTORY_SERVICE", "AWS_LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute logging_role
    #   <p>Specifies the Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that allows a server to turn
    #         on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, user activity can be viewed in
    #         your CloudWatch logs.</p>
    #
    #   @return [String]
    #
    # @!attribute post_authentication_login_banner
    #   <p>Specify a string to display when users connect to a server. This string is displayed after the user authenticates.</p>
    #            <note>
    #               <p>The SFTP protocol does not support post-authentication display banners.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute pre_authentication_login_banner
    #   <p>Specify a string to display when users connect to a server. This string is displayed before the user authenticates.
    #       For example, the following banner displays details about using the system.</p>
    #            <p>
    #               <code>This system is for the use of authorized users only. Individuals using this computer system without authority,
    #       or in excess of their authority, are subject to having all of their activities on this system monitored and recorded by
    #       system personnel.</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute protocols
    #   <p>Specifies the file transfer protocol or protocols over which your file transfer protocol
    #         client can connect to your server's endpoint. The available protocols are:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SFTP</code> (Secure Shell (SSH) File Transfer Protocol): File transfer over
    #             SSH</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FTPS</code> (File Transfer Protocol Secure): File transfer with TLS
    #             encryption</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FTP</code> (File Transfer Protocol): Unencrypted file transfer</p>
    #               </li>
    #            </ul>
    #
    #            <note>
    #               <p>If you select <code>FTPS</code>, you must choose a certificate stored in Amazon Web Services Certificate
    #           Manager (ACM) which is used to identify your server when clients connect to it over
    #           FTPS.</p>
    #
    #               <p>If <code>Protocol</code> includes either <code>FTP</code> or <code>FTPS</code>, then the
    #             <code>EndpointType</code> must be <code>VPC</code> and the
    #             <code>IdentityProviderType</code> must be <code>AWS_DIRECTORY_SERVICE</code> or <code>API_GATEWAY</code>.</p>
    #
    #               <p>If <code>Protocol</code> includes <code>FTP</code>, then
    #             <code>AddressAllocationIds</code> cannot be associated.</p>
    #
    #               <p>If <code>Protocol</code> is set only to <code>SFTP</code>, the <code>EndpointType</code>
    #           can be set to <code>PUBLIC</code> and the <code>IdentityProviderType</code> can be set to
    #             <code>SERVICE_MANAGED</code>.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute protocol_details
    #   <p>The protocol settings that are configured for your server.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             Use the <code>PassiveIp</code> parameter to indicate passive mode (for FTP and FTPS protocols).
    #             Enter a single dotted-quad IPv4 address, such as the external IP address of a firewall, router, or load balancer.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>Use the <code>SetStatOption</code> to ignore the error that is generated when the client attempts to use SETSTAT on a file you are uploading to an S3 bucket.
    #           Set the value to <code>ENABLE_NO_OP</code> to have the Transfer Family server ignore the SETSTAT command, and upload files without needing to make any changes to your SFTP client.
    #           Note that with <code>SetStatOption</code> set to <code>ENABLE_NO_OP</code>, Transfer generates a log entry to CloudWatch Logs, so you can determine when the client
    #           is making a SETSTAT call.</p>
    #               </li>
    #               <li>
    #                  <p>Use the <code>TlsSessionResumptionMode</code> parameter to determine whether or not your Transfer server
    #             resumes recent, negotiated sessions through a unique session ID.</p>
    #               </li>
    #            </ul>
    #
    #   @return [ProtocolDetails]
    #
    # @!attribute security_policy_name
    #   <p>Specifies the name of the security policy that is attached to the server.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for servers.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute workflow_details
    #   <p>Specifies the workflow ID for the workflow to assign and the execution role used for executing the workflow.</p>
    #
    #   @return [WorkflowDetails]
    #
    CreateServerInput = ::Struct.new(
      :certificate,
      :domain,
      :endpoint_details,
      :endpoint_type,
      :host_key,
      :identity_provider_details,
      :identity_provider_type,
      :logging_role,
      :post_authentication_login_banner,
      :pre_authentication_login_banner,
      :protocols,
      :protocol_details,
      :security_policy_name,
      :tags,
      :workflow_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Transfer::Types::CreateServerInput "\
          "certificate=#{certificate || 'nil'}, "\
          "domain=#{domain || 'nil'}, "\
          "endpoint_details=#{endpoint_details || 'nil'}, "\
          "endpoint_type=#{endpoint_type || 'nil'}, "\
          "host_key=\"[SENSITIVE]\", "\
          "identity_provider_details=#{identity_provider_details || 'nil'}, "\
          "identity_provider_type=#{identity_provider_type || 'nil'}, "\
          "logging_role=#{logging_role || 'nil'}, "\
          "post_authentication_login_banner=#{post_authentication_login_banner || 'nil'}, "\
          "pre_authentication_login_banner=#{pre_authentication_login_banner || 'nil'}, "\
          "protocols=#{protocols || 'nil'}, "\
          "protocol_details=#{protocol_details || 'nil'}, "\
          "security_policy_name=#{security_policy_name || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "workflow_details=#{workflow_details || 'nil'}>"
      end
    end

    # @!attribute server_id
    #   <p>The service-assigned ID of the server that is created.</p>
    #
    #   @return [String]
    #
    CreateServerOutput = ::Struct.new(
      :server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p>
    #            <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    #       If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    #       If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    #       S3 or EFS paths visible to your users.</p>
    #
    #   Enum, one of: ["PATH", "LOGICAL"]
    #
    #   @return [String]
    #
    # @!attribute home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should
    #         be visible to your user and how you want to make them visible. You must specify the
    #           <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path
    #         is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you
    #         only specify a target, it is displayed as is. You also must ensure that your Amazon Web Services Identity
    #         and Access Management (IAM) role provides access to paths in <code>Target</code>. This value
    #         can only be set when <code>HomeDirectoryType</code> is set to
    #         <i>LOGICAL</i>.</p>
    #
    #            <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p>
    #
    #            <p>
    #               <code>[ { "Entry": "/directory1", "Target":
    #           "/bucket_name/home/mydirectory" } ]</code>
    #            </p>
    #
    #            <p>In most cases, you can use this value instead of the session policy to lock your user
    #         down to the designated home directory ("<code>chroot</code>"). To do this, you can set
    #           <code>Entry</code> to <code>/</code> and set <code>Target</code> to the HomeDirectory
    #         parameter value.</p>
    #            <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p>
    #            <p>
    #               <code>[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]</code>
    #            </p>
    #
    #   @return [Array<HomeDirectoryMapEntry>]
    #
    # @!attribute policy
    #   <p>A session policy for your user so that you can use the same IAM role across multiple users. This policy scopes down user
    #        access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>,
    #        <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>
    #
    #            <note>
    #               <p>This only applies when the domain of <code>ServerId</code> is S3. EFS does not use session policies.</p>
    #               <p>For session policies, Amazon Web Services Transfer Family stores the policy as a JSON blob, instead
    #           of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass
    #           it in the <code>Policy</code> argument.</p>
    #
    #
    #
    #               <p>For an example of a session policy, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html">Example session
    #           policy</a>.</p>
    #
    #
    #
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html">AssumeRole</a> in the <i>Amazon Web Services
    #             Security Token Service API Reference</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute posix_profile
    #   <p>Specifies the full POSIX identity, including user ID (<code>Uid</code>), group ID
    #           (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
    #         your users' access to your Amazon EFS file systems. The POSIX permissions that are set on
    #         files and directories in Amazon EFS determine the level of access your users get when
    #         transferring files into and out of your Amazon EFS file systems.</p>
    #
    #   @return [PosixProfile]
    #
    # @!attribute role
    #   <p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
    #         file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
    #         files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
    #         server to access your resources when servicing your users' transfer requests.</p>
    #
    #   @return [String]
    #
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server
    #         that you added your user to.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_public_key_body
    #   <p>The public portion of the Secure Shell (SSH) key used to authenticate the user to the
    #         server.</p>
    #            <note>
    #               <p>
    #           Currently, Transfer Family does not accept elliptical curve keys (keys beginning with <code>ecdsa</code>).
    #         </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for users. Tags are metadata attached
    #         to users for any purpose.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute user_name
    #   <p>A unique string that identifies a user and is associated with a <code>ServerId</code>. This user name must be a minimum of 3 and a maximum of 100 characters
    #         long. The following are valid characters: a-z, A-Z, 0-9, underscore '_', hyphen
    #         '-', period '.', and at sign '@'. The user name can't start
    #         with a hyphen, period, or at sign.</p>
    #
    #   @return [String]
    #
    CreateUserInput = ::Struct.new(
      :home_directory,
      :home_directory_type,
      :home_directory_mappings,
      :policy,
      :posix_profile,
      :role,
      :server_id,
      :ssh_public_key_body,
      :tags,
      :user_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p>The ID of the server that the user is attached to.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>A unique string that identifies a user account associated with a server.</p>
    #
    #   @return [String]
    #
    CreateUserOutput = ::Struct.new(
      :server_id,
      :user_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>A textual description for the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute steps
    #   <p>Specifies the details for the steps that are in the specified workflow.</p>
    #            <p>
    #         The <code>TYPE</code> specifies which of the following actions is being taken for this step.
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>COPY</i>: copy the file to another location</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>CUSTOM</i>: custom step with a lambda target</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>DELETE</i>: delete the file</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>TAG</i>: add a tag to the file</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #           Currently, copying and tagging are supported only on S3.
    #         </p>
    #            </note>
    #            <p>
    #         For file location, you specify either the S3 bucket and key, or the EFS filesystem ID and path.
    #       </p>
    #
    #   @return [Array<WorkflowStep>]
    #
    # @!attribute on_exception_steps
    #   <p>Specifies the steps (actions) to take if errors are encountered during execution of the workflow.</p>
    #            <note>
    #               <p>For custom steps, the lambda function needs to send <code>FAILURE</code> to the call
    #           back API to kick off the exception steps. Additionally, if the lambda does not send
    #             <code>SUCCESS</code> before it times out, the exception steps are executed.</p>
    #            </note>
    #
    #   @return [Array<WorkflowStep>]
    #
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for workflows. Tags are metadata attached
    #         to workflows for any purpose.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateWorkflowInput = ::Struct.new(
      :description,
      :steps,
      :on_exception_steps,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    CreateWorkflowOutput = ::Struct.new(
      :workflow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Each step type has its own <code>StepDetails</code> structure.</p>
    #
    # @!attribute name
    #   <p>The name of the step, used as an identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute target
    #   <p>The ARN for the lambda function that is being called.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout_seconds
    #   <p>Timeout, in seconds, for the step.</p>
    #
    #   @return [Integer]
    #
    # @!attribute source_file_location
    #   <p>Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file
    #       for the workflow.</p>
    #            <ul>
    #               <li>
    #                  <p>Enter <code>${previous.file}</code> to use the previous file as the input.
    #             In this case, this workflow step uses the output file from the previous workflow step as input.
    #             This is the default value.</p>
    #               </li>
    #               <li>
    #                  <p>Enter <code>${original.file}</code> to use the originally-uploaded file location as input for this step.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    CustomStepDetails = ::Struct.new(
      :name,
      :target,
      :timeout_seconds,
      :source_file_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CustomStepStatus
    #
    module CustomStepStatus
      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      FAILURE = "FAILURE"
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has this user assigned.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory.
    #       The users of the group that you associate have access to your Amazon S3 or Amazon EFS
    #       resources over the enabled protocols using Amazon Web Services Transfer Family. If you know the group name,
    #       you can view the SID values by running the following command using Windows PowerShell.</p>
    #
    #            <p>
    #               <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code>
    #            </p>
    #
    #            <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p>
    #
    #            <p>The regex used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces.
    #       You can also include underscores or any of the following characters: =,.@:/-</p>
    #
    #   @return [String]
    #
    DeleteAccessInput = ::Struct.new(
      :server_id,
      :external_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAccessOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p>A unique system-assigned identifier for a server instance.</p>
    #
    #   @return [String]
    #
    DeleteServerInput = ::Struct.new(
      :server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteServerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a file transfer protocol-enabled server instance
    #         that has the user assigned to it.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_public_key_id
    #   <p>A unique identifier used to reference your user's specific SSH key.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>A unique string that identifies a user whose public key is being deleted.</p>
    #
    #   @return [String]
    #
    DeleteSshPublicKeyInput = ::Struct.new(
      :server_id,
      :ssh_public_key_id,
      :user_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSshPublicKeyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The name of the step, used to identify the delete step.</p>
    #
    # @!attribute name
    #   <p>The name of the step, used as an identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute source_file_location
    #   <p>Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file
    #       for the workflow.</p>
    #            <ul>
    #               <li>
    #                  <p>Enter <code>${previous.file}</code> to use the previous file as the input.
    #             In this case, this workflow step uses the output file from the previous workflow step as input.
    #             This is the default value.</p>
    #               </li>
    #               <li>
    #                  <p>Enter <code>${original.file}</code> to use the originally-uploaded file location as input for this step.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DeleteStepDetails = ::Struct.new(
      :name,
      :source_file_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server instance that has the user assigned to
    #         it.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>A unique string that identifies a user that is being deleted from a server.</p>
    #
    #   @return [String]
    #
    DeleteUserInput = ::Struct.new(
      :server_id,
      :user_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    DeleteWorkflowInput = ::Struct.new(
      :workflow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWorkflowOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has this access assigned.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory.
    #       The users of the group that you associate have access to your Amazon S3 or Amazon EFS
    #       resources over the enabled protocols using Amazon Web Services Transfer Family. If you know the group name,
    #       you can view the SID values by running the following command using Windows PowerShell.</p>
    #
    #            <p>
    #               <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code>
    #            </p>
    #
    #            <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p>
    #
    #            <p>The regex used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces.
    #       You can also include underscores or any of the following characters: =,.@:/-</p>
    #
    #   @return [String]
    #
    DescribeAccessInput = ::Struct.new(
      :server_id,
      :external_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has this access assigned.</p>
    #
    #   @return [String]
    #
    # @!attribute access
    #   <p>The external ID of the server that the access is attached to.</p>
    #
    #   @return [DescribedAccess]
    #
    DescribeAccessOutput = ::Struct.new(
      :server_id,
      :access,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute execution_id
    #   <p>A unique identifier for the execution of a workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    DescribeExecutionInput = ::Struct.new(
      :execution_id,
      :workflow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute execution
    #   <p>The structure that contains the details of the workflow' execution.</p>
    #
    #   @return [DescribedExecution]
    #
    DescribeExecutionOutput = ::Struct.new(
      :workflow_id,
      :execution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute security_policy_name
    #   <p>Specifies the name of the security policy that is attached to the server.</p>
    #
    #   @return [String]
    #
    DescribeSecurityPolicyInput = ::Struct.new(
      :security_policy_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute security_policy
    #   <p>An array containing the properties of the security policy.</p>
    #
    #   @return [DescribedSecurityPolicy]
    #
    DescribeSecurityPolicyOutput = ::Struct.new(
      :security_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server.</p>
    #
    #   @return [String]
    #
    DescribeServerInput = ::Struct.new(
      :server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server
    #   <p>An array containing the properties of a server with the <code>ServerID</code> you
    #         specified.</p>
    #
    #   @return [DescribedServer]
    #
    DescribeServerOutput = ::Struct.new(
      :server,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has this user assigned.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The name of the user assigned to one or more servers. User names are part of the sign-in
    #         credentials to use the Amazon Web Services Transfer Family service and perform file transfer tasks.</p>
    #
    #   @return [String]
    #
    DescribeUserInput = ::Struct.new(
      :server_id,
      :user_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has this user assigned.</p>
    #
    #   @return [String]
    #
    # @!attribute user
    #   <p>An array containing the properties of the user account for the <code>ServerID</code> value
    #         that you specified.</p>
    #
    #   @return [DescribedUser]
    #
    DescribeUserOutput = ::Struct.new(
      :server_id,
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    DescribeWorkflowInput = ::Struct.new(
      :workflow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workflow
    #   <p>The structure that contains the details of the workflow.</p>
    #
    #   @return [DescribedWorkflow]
    #
    DescribeWorkflowOutput = ::Struct.new(
      :workflow,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the properties of the access that was specified.</p>
    #
    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p>
    #            <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should
    #         be visible to your user and how you want to make them visible. You must specify the
    #           <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path
    #         is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you
    #         only specify a target, it is displayed as is. You also must ensure that your Amazon Web Services Identity
    #         and Access Management (IAM) role provides access to paths in <code>Target</code>. This value
    #         can only be set when <code>HomeDirectoryType</code> is set to
    #         <i>LOGICAL</i>.</p>
    #
    #            <p>In most cases, you can use this value instead of the session policy to lock down the
    #         associated access to the designated home directory ("<code>chroot</code>"). To do this, you
    #         can set <code>Entry</code> to '/' and set <code>Target</code> to the
    #           <code>HomeDirectory</code> parameter value.</p>
    #
    #   @return [Array<HomeDirectoryMapEntry>]
    #
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    #       If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    #       If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    #       S3 or EFS paths visible to your users.</p>
    #
    #   Enum, one of: ["PATH", "LOGICAL"]
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>A session policy for your user so that you can use the same IAM role across multiple users. This policy scopes down user
    #        access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>,
    #        <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute posix_profile
    #   <p>The full POSIX identity, including user ID (<code>Uid</code>), group ID
    #         (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
    #         your users' access to your Amazon EFS file systems. The POSIX permissions that are set on
    #         files and directories in your file system determine the level of access your users get when
    #         transferring files into and out of your Amazon EFS file systems.</p>
    #
    #   @return [PosixProfile]
    #
    # @!attribute role
    #   <p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
    #         file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
    #         files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
    #         server to access your resources when servicing your users' transfer requests.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory.
    #       The users of the group that you associate have access to your Amazon S3 or Amazon EFS
    #       resources over the enabled protocols using Amazon Web Services Transfer Family. If you know the group name,
    #       you can view the SID values by running the following command using Windows PowerShell.</p>
    #
    #            <p>
    #               <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code>
    #            </p>
    #
    #            <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p>
    #
    #            <p>The regex used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces.
    #       You can also include underscores or any of the following characters: =,.@:/-</p>
    #
    #   @return [String]
    #
    DescribedAccess = ::Struct.new(
      :home_directory,
      :home_directory_mappings,
      :home_directory_type,
      :policy,
      :posix_profile,
      :role,
      :external_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details for an execution object.</p>
    #
    # @!attribute execution_id
    #   <p>A unique identifier for the execution of a workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute initial_file_location
    #   <p>A structure that describes the Amazon S3 or EFS file location.
    #         This is the file location when the execution begins: if the file is being copied,
    #       this is the initial (as opposed to destination) file location.</p>
    #
    #   @return [FileLocation]
    #
    # @!attribute service_metadata
    #   <p>A container object for the session details associated with a workflow.</p>
    #
    #   @return [ServiceMetadata]
    #
    # @!attribute execution_role
    #   <p>The IAM role associated with the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute logging_configuration
    #   <p>The IAM logging role associated with the execution.</p>
    #
    #   @return [LoggingConfiguration]
    #
    # @!attribute posix_profile
    #   <p>The full POSIX identity, including user ID (<code>Uid</code>), group ID
    #         (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
    #         your users' access to your Amazon EFS file systems. The POSIX permissions that are set on
    #         files and directories in your file system determine the level of access your users get when
    #         transferring files into and out of your Amazon EFS file systems.</p>
    #
    #   @return [PosixProfile]
    #
    # @!attribute status
    #   <p>The status is one of the execution. Can be in progress, completed, exception encountered, or handling the exception.
    #         </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETED", "EXCEPTION", "HANDLING_EXCEPTION"]
    #
    #   @return [String]
    #
    # @!attribute results
    #   <p>A structure that describes the execution results. This includes a list of the steps along with the details of each step,
    #       error type and message (if any), and the <code>OnExceptionSteps</code> structure.</p>
    #
    #   @return [ExecutionResults]
    #
    DescribedExecution = ::Struct.new(
      :execution_id,
      :initial_file_location,
      :service_metadata,
      :execution_role,
      :logging_configuration,
      :posix_profile,
      :status,
      :results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the properties of a security policy that was specified. For more information
    #       about security policies, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html">Working with security
    #         policies</a>.</p>
    #
    # @!attribute fips
    #   <p>Specifies whether this policy enables Federal Information Processing Standards
    #         (FIPS).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute security_policy_name
    #   <p>Specifies the name of the security policy that is attached to the server.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_ciphers
    #   <p>Specifies the enabled Secure Shell (SSH) cipher encryption algorithms in the security
    #         policy that is attached to the server.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ssh_kexs
    #   <p>Specifies the enabled SSH key exchange (KEX) encryption algorithms in the security policy
    #         that is attached to the server.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ssh_macs
    #   <p>Specifies the enabled SSH message authentication code (MAC) encryption algorithms in the
    #         security policy that is attached to the server.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tls_ciphers
    #   <p>Specifies the enabled Transport Layer Security (TLS) cipher encryption algorithms in the
    #         security policy that is attached to the server.</p>
    #
    #   @return [Array<String>]
    #
    DescribedSecurityPolicy = ::Struct.new(
      :fips,
      :security_policy_name,
      :ssh_ciphers,
      :ssh_kexs,
      :ssh_macs,
      :tls_ciphers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the properties of a file transfer protocol-enabled server that was
    #       specified.</p>
    #
    # @!attribute arn
    #   <p>Specifies the unique Amazon Resource Name (ARN) of the server.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate
    #   <p>Specifies the ARN of the Amazon Web ServicesCertificate Manager (ACM) certificate. Required when
    #           <code>Protocols</code> is set to <code>FTPS</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol_details
    #   <p>
    #         The protocol settings that are configured for your server.
    #       </p>
    #            <p>
    #         Use the <code>PassiveIp</code> parameter to indicate passive mode.
    #         Enter a single dotted-quad IPv4 address, such as the external IP address of a firewall, router, or load balancer.
    #       </p>
    #
    #   @return [ProtocolDetails]
    #
    # @!attribute domain
    #   <p>Specifies the domain of the storage system that is used for file transfers.</p>
    #
    #   Enum, one of: ["S3", "EFS"]
    #
    #   @return [String]
    #
    # @!attribute endpoint_details
    #   <p>The virtual private cloud (VPC) endpoint settings that are configured for your server.
    #         When you host your endpoint within your VPC, you can make it accessible only to resources
    #         within your VPC, or you can attach Elastic IP addresses and make it accessible to clients over
    #         the internet. Your VPC's default security groups are automatically assigned to your
    #         endpoint.</p>
    #
    #   @return [EndpointDetails]
    #
    # @!attribute endpoint_type
    #   <p>Defines the type of endpoint that your server is connected to. If your server is connected
    #         to a VPC endpoint, your server isn't accessible over the public internet.</p>
    #
    #   Enum, one of: ["PUBLIC", "VPC", "VPC_ENDPOINT"]
    #
    #   @return [String]
    #
    # @!attribute host_key_fingerprint
    #   <p>Specifies the Base64-encoded SHA256 fingerprint of the server's host key. This value
    #         is equivalent to the output of the <code>ssh-keygen -l -f my-new-server-key</code>
    #         command.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_details
    #   <p>Specifies information to call a customer-supplied authentication API. This field is not
    #         populated when the <code>IdentityProviderType</code> of a server is
    #         <code>AWS_DIRECTORY_SERVICE</code> or <code>SERVICE_MANAGED</code>.</p>
    #
    #   @return [IdentityProviderDetails]
    #
    # @!attribute identity_provider_type
    #   <p>Specifies the mode of authentication for a server. The default value is
    #           <code>SERVICE_MANAGED</code>, which allows you to store and access user credentials within
    #         the Amazon Web Services Transfer Family service.</p>
    #            <p>Use <code>AWS_DIRECTORY_SERVICE</code> to provide access to
    #         Active Directory groups in Amazon Web Services Managed Active Directory or Microsoft Active Directory in your
    #         on-premises environment or in Amazon Web Services using AD Connectors. This option also requires you to
    #         provide a Directory ID using the <code>IdentityProviderDetails</code> parameter.</p>
    #            <p>Use the <code>API_GATEWAY</code> value to integrate with an identity provider of your choosing. The
    #         <code>API_GATEWAY</code> setting requires you to provide an API Gateway endpoint URL to call
    #         for authentication using the <code>IdentityProviderDetails</code> parameter.</p>
    #            <p>Use the <code>AWS_LAMBDA</code> value to directly use a Lambda function as your identity provider. If you choose this value,
    #         you must specify the ARN for the lambda function in the <code>Function</code> parameter for the <code>IdentityProviderDetails</code> data type.</p>
    #
    #   Enum, one of: ["SERVICE_MANAGED", "API_GATEWAY", "AWS_DIRECTORY_SERVICE", "AWS_LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute logging_role
    #   <p>Specifies the Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that allows a server to turn
    #         on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, user activity can be viewed in
    #         your CloudWatch logs.</p>
    #
    #   @return [String]
    #
    # @!attribute post_authentication_login_banner
    #   <p>Specify a string to display when users connect to a server. This string is displayed after the user authenticates.</p>
    #            <note>
    #               <p>The SFTP protocol does not support post-authentication display banners.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute pre_authentication_login_banner
    #   <p>Specify a string to display when users connect to a server. This string is displayed before the user authenticates.
    #       For example, the following banner displays details about using the system.</p>
    #            <p>
    #               <code>This system is for the use of authorized users only. Individuals using this computer system without authority,
    #       or in excess of their authority, are subject to having all of their activities on this system monitored and recorded by
    #       system personnel.</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute protocols
    #   <p>Specifies the file transfer protocol or protocols over which your file transfer protocol
    #         client can connect to your server's endpoint. The available protocols are:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SFTP</code> (Secure Shell (SSH) File Transfer Protocol): File transfer over
    #             SSH</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FTPS</code> (File Transfer Protocol Secure): File transfer with TLS
    #             encryption</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FTP</code> (File Transfer Protocol): Unencrypted file transfer</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_policy_name
    #   <p>Specifies the name of the security policy that is attached to the server.</p>
    #
    #   @return [String]
    #
    # @!attribute server_id
    #   <p>Specifies the unique system-assigned identifier for a server that you instantiate.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>Specifies the condition of a server for the server that was described. A value of
    #           <code>ONLINE</code> indicates that the server can accept jobs and transfer files. A
    #           <code>State</code> value of <code>OFFLINE</code> means that the server cannot perform file
    #         transfer operations.</p>
    #
    #            <p>The states of <code>STARTING</code> and <code>STOPPING</code> indicate that the server is
    #         in an intermediate state, either not fully able to respond, or not fully offline. The values
    #         of <code>START_FAILED</code> or <code>STOP_FAILED</code> can indicate an error
    #         condition.</p>
    #
    #   Enum, one of: ["OFFLINE", "ONLINE", "STARTING", "STOPPING", "START_FAILED", "STOP_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Specifies the key-value pairs that you can use to search for and group servers that were
    #         assigned to the server that was described.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute user_count
    #   <p>Specifies the number of users that are assigned to a server you specified with the
    #           <code>ServerId</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute workflow_details
    #   <p>Specifies the workflow ID for the workflow to assign and the execution role used for executing the workflow.</p>
    #
    #   @return [WorkflowDetails]
    #
    DescribedServer = ::Struct.new(
      :arn,
      :certificate,
      :protocol_details,
      :domain,
      :endpoint_details,
      :endpoint_type,
      :host_key_fingerprint,
      :identity_provider_details,
      :identity_provider_type,
      :logging_role,
      :post_authentication_login_banner,
      :pre_authentication_login_banner,
      :protocols,
      :security_policy_name,
      :server_id,
      :state,
      :tags,
      :user_count,
      :workflow_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the properties of a user that was specified.</p>
    #
    # @!attribute arn
    #   <p>Specifies the unique Amazon Resource Name (ARN) for the user that was requested to be
    #         described.</p>
    #
    #   @return [String]
    #
    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p>
    #            <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should
    #         be visible to your user and how you want to make them visible. You must specify the
    #           <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path
    #         is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you
    #         only specify a target, it is displayed as is. You also must ensure that your Amazon Web Services Identity
    #         and Access Management (IAM) role provides access to paths in <code>Target</code>. This value
    #         can only be set when <code>HomeDirectoryType</code> is set to
    #         <i>LOGICAL</i>.</p>
    #
    #            <p>In most cases, you can use this value instead of the session policy to lock your user
    #         down to the designated home directory ("<code>chroot</code>"). To do this, you can set
    #           <code>Entry</code> to '/' and set <code>Target</code> to the HomeDirectory
    #         parameter value.</p>
    #
    #   @return [Array<HomeDirectoryMapEntry>]
    #
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    #       If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    #       If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    #       S3 or EFS paths visible to your users.</p>
    #
    #   Enum, one of: ["PATH", "LOGICAL"]
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>A session policy for your user so that you can use the same IAM role across multiple users. This policy scopes down user
    #        access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>,
    #        <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute posix_profile
    #   <p>Specifies the full POSIX identity, including user ID (<code>Uid</code>), group ID
    #           (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
    #         your users' access to your Amazon Elastic File System (Amazon EFS) file systems. The POSIX
    #         permissions that are set on files and directories in your file system determine the level of
    #         access your users get when transferring files into and out of your Amazon EFS file
    #         systems.</p>
    #
    #   @return [PosixProfile]
    #
    # @!attribute role
    #   <p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
    #         file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
    #         files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
    #         server to access your resources when servicing your users' transfer requests.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_public_keys
    #   <p>Specifies the public key portion of the Secure Shell (SSH) keys stored for the described
    #         user.</p>
    #
    #   @return [Array<SshPublicKey>]
    #
    # @!attribute tags
    #   <p>Specifies the key-value pairs for the user requested. Tag can be used to search for and
    #         group users for a variety of purposes.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute user_name
    #   <p>Specifies the name of the user that was requested to be described. User names are used for
    #         authentication purposes. This is the string that will be used by your user when they log in to
    #         your server.</p>
    #
    #   @return [String]
    #
    DescribedUser = ::Struct.new(
      :arn,
      :home_directory,
      :home_directory_mappings,
      :home_directory_type,
      :policy,
      :posix_profile,
      :role,
      :ssh_public_keys,
      :tags,
      :user_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the properties of the specified workflow</p>
    #
    # @!attribute arn
    #   <p>Specifies the unique Amazon Resource Name (ARN) for the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Specifies the text description for the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute steps
    #   <p>Specifies the details for the steps that are in the specified workflow.</p>
    #
    #   @return [Array<WorkflowStep>]
    #
    # @!attribute on_exception_steps
    #   <p>Specifies the steps (actions) to take if errors are encountered during execution of the workflow.</p>
    #
    #   @return [Array<WorkflowStep>]
    #
    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for workflows. Tags are metadata attached to workflows for any purpose.</p>
    #
    #   @return [Array<Tag>]
    #
    DescribedWorkflow = ::Struct.new(
      :arn,
      :description,
      :steps,
      :on_exception_steps,
      :workflow_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Domain
    #
    module Domain
      # No documentation available.
      #
      S3 = "S3"

      # No documentation available.
      #
      EFS = "EFS"
    end

    # <p>Reserved for future use.</p>
    #          <p>
    #
    #     </p>
    #
    # @!attribute file_system_id
    #   <p>The ID of the file system, assigned by Amazon EFS.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>The pathname for the folder being used by a workflow.</p>
    #
    #   @return [String]
    #
    EfsFileLocation = ::Struct.new(
      :file_system_id,
      :path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The virtual private cloud (VPC) endpoint settings that are configured for your file
    #       transfer protocol-enabled server. With a VPC endpoint, you can restrict access to your server
    #       and resources only within your VPC. To control incoming internet traffic, invoke the
    #         <code>UpdateServer</code> API and attach an Elastic IP address to your server's
    #       endpoint.</p>
    #          <note>
    #             <p> After May 19, 2021, you won't be able to create a server using
    #           <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Servicesaccount if your account hasn't already
    #       done so before May 19, 2021. If you have already created servers with
    #       <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Servicesaccount on or before May 19, 2021,
    #         you will not be affected. After this date, use
    #         <code>EndpointType</code>=<code>VPC</code>.</p>
    #
    #             <p>For more information, see
    #         https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.</p>
    #          </note>
    #
    # @!attribute address_allocation_ids
    #   <p>A list of address allocation IDs that are required to attach an Elastic IP address to your
    #         server's endpoint.</p>
    #
    #            <note>
    #
    #               <p>This property can only be set when <code>EndpointType</code> is set to <code>VPC</code>
    #           and it is only valid in the <code>UpdateServer</code> API.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs that are required to host your server endpoint in your VPC.</p>
    #
    #            <note>
    #               <p>This property can only be set when <code>EndpointType</code> is set to
    #           <code>VPC</code>.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_endpoint_id
    #   <p>The ID of the VPC endpoint.</p>
    #
    #            <note>
    #               <p>This property can only be set when <code>EndpointType</code> is set to
    #             <code>VPC_ENDPOINT</code>.</p>
    #
    #               <p>For more information, see
    #           https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html deprecate-vpc-endpoint.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC ID of the VPC in which a server's endpoint will be hosted.</p>
    #
    #            <note>
    #               <p>This property can only be set when <code>EndpointType</code> is set to
    #           <code>VPC</code>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute security_group_ids
    #   <p>A list of security groups IDs that are available to attach to your server's
    #         endpoint.</p>
    #
    #            <note>
    #               <p>This property can only be set when <code>EndpointType</code> is set to
    #           <code>VPC</code>.</p>
    #
    #               <p>You can edit the <code>SecurityGroupIds</code> property in the <a href="https://docs.aws.amazon.com/transfer/latest/userguide/API_UpdateServer.html">UpdateServer</a> API only if you are changing the <code>EndpointType</code> from
    #             <code>PUBLIC</code> or <code>VPC_ENDPOINT</code> to <code>VPC</code>. To change security
    #           groups associated with your server's VPC endpoint after creation, use the Amazon EC2
    #             <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyVpcEndpoint.html">ModifyVpcEndpoint</a> API.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    EndpointDetails = ::Struct.new(
      :address_allocation_ids,
      :subnet_ids,
      :vpc_endpoint_id,
      :vpc_id,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EndpointType
    #
    module EndpointType
      # No documentation available.
      #
      PUBLIC = "PUBLIC"

      # No documentation available.
      #
      VPC = "VPC"

      # No documentation available.
      #
      VPC_ENDPOINT = "VPC_ENDPOINT"
    end

    # <p>Specifies the error message and type, for an error that occurs during the execution of the workflow.</p>
    #
    # @!attribute type
    #   <p>Specifies the error type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALREADY_EXISTS</code>: occurs for a copy step, if the overwrite option is not selected and a file with the same name already exists in the target location.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BAD_REQUEST</code>: a general bad request: for example, a step that attempts to
    #             tag an EFS file returns <code>BAD_REQUEST</code>, as only S3 files can be tagged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_STEP_FAILED</code>: occurs when the custom step provided a callback that indicates failure.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INTERNAL_SERVER_ERROR</code>: a catch-all error that can occur for a variety of
    #             reasons.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_FOUND</code>: occurs when a requested entity, for example a source file for
    #             a copy step, does not exist.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PERMISSION_DENIED</code>: occurs if your policy does not contain the correct
    #             permissions to complete one or more of the steps in the workflow.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TIMEOUT</code>: occurs when the execution times out.</p>
    #                  <note>
    #                     <p> You can set the <code>TimeoutSeconds</code> for a custom step, anywhere from 1 second to 1800 seconds (30 minutes). </p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>THROTTLED</code>: occurs if you exceed the new execution refill rate of one
    #             workflow per second.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PERMISSION_DENIED", "CUSTOM_STEP_FAILED", "THROTTLED", "ALREADY_EXISTS", "NOT_FOUND", "BAD_REQUEST", "TIMEOUT", "INTERNAL_SERVER_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Specifies the descriptive message that corresponds to the <code>ErrorType</code>.</p>
    #
    #   @return [String]
    #
    ExecutionError = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExecutionErrorType
    #
    module ExecutionErrorType
      # No documentation available.
      #
      PERMISSION_DENIED = "PERMISSION_DENIED"

      # No documentation available.
      #
      CUSTOM_STEP_FAILED = "CUSTOM_STEP_FAILED"

      # No documentation available.
      #
      THROTTLED = "THROTTLED"

      # No documentation available.
      #
      ALREADY_EXISTS = "ALREADY_EXISTS"

      # No documentation available.
      #
      NOT_FOUND = "NOT_FOUND"

      # No documentation available.
      #
      BAD_REQUEST = "BAD_REQUEST"

      # No documentation available.
      #
      TIMEOUT = "TIMEOUT"

      # No documentation available.
      #
      INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR"
    end

    # <p>Specifies the steps in the workflow, as well as the steps to execute in case of any errors during workflow execution.</p>
    #
    # @!attribute steps
    #   <p>Specifies the details for the steps that are in the specified workflow.</p>
    #
    #   @return [Array<ExecutionStepResult>]
    #
    # @!attribute on_exception_steps
    #   <p>Specifies the steps (actions) to take if errors are encountered during execution of the workflow.</p>
    #
    #   @return [Array<ExecutionStepResult>]
    #
    ExecutionResults = ::Struct.new(
      :steps,
      :on_exception_steps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExecutionStatus
    #
    module ExecutionStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      EXCEPTION = "EXCEPTION"

      # No documentation available.
      #
      HANDLING_EXCEPTION = "HANDLING_EXCEPTION"
    end

    # <p>Specifies the following details for the step: error (if any), outputs (if any), and the step type.</p>
    #
    # @!attribute step_type
    #   <p>One of the available step types.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>COPY</i>: copy the file to another location</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>CUSTOM</i>: custom step with a lambda target</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>DELETE</i>: delete the file</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>TAG</i>: add a tag to the file</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["COPY", "CUSTOM", "TAG", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute outputs
    #   <p>The values for the key/value pair applied as a tag to the file. Only applicable if the step type is <code>TAG</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>Specifies the details for an error, if it occurred during execution of the specified workfow step.</p>
    #
    #   @return [ExecutionError]
    #
    ExecutionStepResult = ::Struct.new(
      :step_type,
      :outputs,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the Amazon S3 or EFS file details to be used in the step.</p>
    #
    # @!attribute s3_file_location
    #   <p>Specifies the S3 details for the file being used, such as bucket, Etag, and so forth.</p>
    #
    #   @return [S3FileLocation]
    #
    # @!attribute efs_file_location
    #   <p>Specifies the Amazon EFS ID and the path for the file being used.</p>
    #
    #   @return [EfsFileLocation]
    #
    FileLocation = ::Struct.new(
      :s3_file_location,
      :efs_file_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents an object that contains entries and targets for
    #         <code>HomeDirectoryMappings</code>.</p>
    #          <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p>
    #          <p>
    #             <code>[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]</code>
    #          </p>
    #
    # @!attribute entry
    #   <p>Represents an entry for <code>HomeDirectoryMappings</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute target
    #   <p>Represents the map target that is used in a <code>HomeDirectorymapEntry</code>.</p>
    #
    #   @return [String]
    #
    HomeDirectoryMapEntry = ::Struct.new(
      :entry,
      :target,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HomeDirectoryType
    #
    module HomeDirectoryType
      # No documentation available.
      #
      PATH = "PATH"

      # No documentation available.
      #
      LOGICAL = "LOGICAL"
    end

    # <p>Returns information related to the type of user authentication that is in use for a file
    #       transfer protocol-enabled server's users. A server can have only one method of
    #       authentication.</p>
    #
    # @!attribute url
    #   <p>Provides the location of the service endpoint used to authenticate users.</p>
    #
    #   @return [String]
    #
    # @!attribute invocation_role
    #   <p>Provides the type of <code>InvocationRole</code> used to authenticate the user
    #         account.</p>
    #
    #   @return [String]
    #
    # @!attribute directory_id
    #   <p>The identifier of the Amazon Web Services Directory Service directory that you want to stop sharing.</p>
    #
    #   @return [String]
    #
    # @!attribute function
    #   <p>The ARN for a lambda function to use for the Identity provider.</p>
    #
    #   @return [String]
    #
    IdentityProviderDetails = ::Struct.new(
      :url,
      :invocation_role,
      :directory_id,
      :function,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IdentityProviderType
    #
    module IdentityProviderType
      # No documentation available.
      #
      SERVICE_MANAGED = "SERVICE_MANAGED"

      # No documentation available.
      #
      API_GATEWAY = "API_GATEWAY"

      # No documentation available.
      #
      AWS_DIRECTORY_SERVICE = "AWS_DIRECTORY_SERVICE"

      # No documentation available.
      #
      AWS_LAMBDA = "AWS_LAMBDA"
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_public_key_body
    #   <p>The public key portion of an SSH key pair.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The name of the user account that is assigned to one or more servers.</p>
    #
    #   @return [String]
    #
    ImportSshPublicKeyInput = ::Struct.new(
      :server_id,
      :ssh_public_key_body,
      :user_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies the user, the server they belong to, and the identifier of the SSH public key
    #       associated with that user. A user can have more than one key on each server that they are
    #       associated with.</p>
    #
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_public_key_id
    #   <p>The name given to a public key by the system that was imported.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>A user name assigned to the <code>ServerID</code> value that you specified.</p>
    #
    #   @return [String]
    #
    ImportSshPublicKeyOutput = ::Struct.new(
      :server_id,
      :ssh_public_key_id,
      :user_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the location for the file being copied. Only applicable for the Copy type of workflow steps.</p>
    #
    # @!attribute s3_file_location
    #   <p>Specifies the details for the S3 file being copied.</p>
    #
    #   @return [S3InputFileLocation]
    #
    # @!attribute efs_file_location
    #   <p>Reserved for future use.</p>
    #
    #   @return [EfsFileLocation]
    #
    InputFileLocation = ::Struct.new(
      :s3_file_location,
      :efs_file_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when an error occurs in the Amazon Web ServicesTransfer Family service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServiceError = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>NextToken</code> parameter that was passed is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
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
    InvalidRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Specifies the maximum number of access SIDs to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListAccesses</code> call, a
    #           <code>NextToken</code> parameter is returned in the output. You can then pass in a
    #         subsequent command to the <code>NextToken</code> parameter to continue listing additional
    #         accesses.</p>
    #
    #   @return [String]
    #
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has users assigned to it.</p>
    #
    #   @return [String]
    #
    ListAccessesInput = ::Struct.new(
      :max_results,
      :next_token,
      :server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListAccesses</code> call, a
    #           <code>NextToken</code> parameter is returned in the output. You can then pass in a
    #         subsequent command to the <code>NextToken</code> parameter to continue listing additional
    #         accesses.</p>
    #
    #   @return [String]
    #
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has users assigned to it.</p>
    #
    #   @return [String]
    #
    # @!attribute accesses
    #   <p>Returns the accesses and their properties for the <code>ServerId</code> value that you
    #         specify.</p>
    #
    #   @return [Array<ListedAccess>]
    #
    ListAccessesOutput = ::Struct.new(
      :next_token,
      :server_id,
      :accesses,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Specifies the aximum number of executions to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #               <code>ListExecutions</code> returns the <code>NextToken</code> parameter in the output.
    #         You can then pass the <code>NextToken</code> parameter in a subsequent command to
    #         continue listing additional executions.</p>
    #            <p>
    #         This is useful for pagination, for instance.
    #         If you have 100 executions for a workflow, you might only want to list first 10. If so, callthe API by specifing the <code>max-results</code>:
    #       </p>
    #            <p>
    #               <code>aws transfer list-executions --max-results 10</code>
    #            </p>
    #            <p>
    #         This returns details for the first 10 executions, as well as the pointer (<code>NextToken</code>) to the eleventh execution.
    #         You can now call the API again, suppling the <code>NextToken</code> value you received:
    #       </p>
    #            <p>
    #               <code>aws transfer list-executions --max-results 10 --next-token $somePointerReturnedFromPreviousListResult</code>
    #            </p>
    #            <p>
    #         This call returns the next 10 executions, the 11th through the 20th. You can then repeat the call until the details
    #         for all 100 executions have been returned.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    ListExecutionsInput = ::Struct.new(
      :max_results,
      :next_token,
      :workflow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>
    #               <code>ListExecutions</code> returns the <code>NextToken</code> parameter in the output.
    #         You can then pass the <code>NextToken</code> parameter in a subsequent command to
    #         continue listing additional executions.</p>
    #
    #   @return [String]
    #
    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute executions
    #   <p>Returns the details for each execution.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>NextToken</b>: returned from a call to several APIs,
    #         you can use pass it to a subsequent command to continue listing additional executions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>StartTime</b>: timestamp indicating when the execution began.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Executions</b>: details of the execution, including the execution ID, initial file location,
    #         and Service metadata.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Status</b>: one of the following values:
    #           <code>IN_PROGRESS</code>, <code>COMPLETED</code>, <code>EXCEPTION</code>, <code>HANDLING_EXEPTION</code>.
    #         </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<ListedExecution>]
    #
    ListExecutionsOutput = ::Struct.new(
      :next_token,
      :workflow_id,
      :executions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Specifies the number of security policies to return as a response to the
    #           <code>ListSecurityPolicies</code> query.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>When additional results are obtained from the <code>ListSecurityPolicies</code> command, a
    #           <code>NextToken</code> parameter is returned in the output. You can then pass the
    #           <code>NextToken</code> parameter in a subsequent command to continue listing additional
    #         security policies.</p>
    #
    #   @return [String]
    #
    ListSecurityPoliciesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListSecurityPolicies</code> operation,
    #         a <code>NextToken</code> parameter is returned in the output. In a following command, you can
    #         pass in the <code>NextToken</code> parameter to continue listing security policies.</p>
    #
    #   @return [String]
    #
    # @!attribute security_policy_names
    #   <p>An array of security policies that were listed.</p>
    #
    #   @return [Array<String>]
    #
    ListSecurityPoliciesOutput = ::Struct.new(
      :next_token,
      :security_policy_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Specifies the number of servers to return as a response to the <code>ListServers</code>
    #         query.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>When additional results are obtained from the <code>ListServers</code> command, a
    #           <code>NextToken</code> parameter is returned in the output. You can then pass the
    #           <code>NextToken</code> parameter in a subsequent command to continue listing additional
    #         servers.</p>
    #
    #   @return [String]
    #
    ListServersInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListServers</code> operation, a
    #           <code>NextToken</code> parameter is returned in the output. In a following command, you can
    #         pass in the <code>NextToken</code> parameter to continue listing additional servers.</p>
    #
    #   @return [String]
    #
    # @!attribute servers
    #   <p>An array of servers that were listed.</p>
    #
    #   @return [Array<ListedServer>]
    #
    ListServersOutput = ::Struct.new(
      :next_token,
      :servers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>Requests the tags associated with a particular Amazon Resource Name (ARN). An ARN is an
    #         identifier for a specific Amazon Web Services resource, such as a server, user, or role.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specifies the number of tags to return as a response to the
    #           <code>ListTagsForResource</code> request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>When you request additional results from the <code>ListTagsForResource</code> operation, a
    #           <code>NextToken</code> parameter is returned in the input. You can then pass in a subsequent
    #         command to the <code>NextToken</code> parameter to continue listing additional tags.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN you specified to list the tags of.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListTagsForResource</code> call, a
    #           <code>NextToken</code> parameter is returned in the output. You can then pass in a
    #         subsequent command to the <code>NextToken</code> parameter to continue listing additional
    #         tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Key-value pairs that are assigned to a resource, usually for the purpose of grouping and
    #         searching for items. Tags are metadata that you define.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :arn,
      :next_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Specifies the number of users to return as a response to the <code>ListUsers</code>
    #         request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListUsers</code> call, a
    #           <code>NextToken</code> parameter is returned in the output. You can then pass in a
    #         subsequent command to the <code>NextToken</code> parameter to continue listing additional
    #         users.</p>
    #
    #   @return [String]
    #
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has users assigned to it.</p>
    #
    #   @return [String]
    #
    ListUsersInput = ::Struct.new(
      :max_results,
      :next_token,
      :server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListUsers</code> call, a
    #           <code>NextToken</code> parameter is returned in the output. You can then pass in a
    #         subsequent command to the <code>NextToken</code> parameter to continue listing additional
    #         users.</p>
    #
    #   @return [String]
    #
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that the users are assigned to.</p>
    #
    #   @return [String]
    #
    # @!attribute users
    #   <p>Returns the user accounts and their properties for the <code>ServerId</code> value that
    #         you specify.</p>
    #
    #   @return [Array<ListedUser>]
    #
    ListUsersOutput = ::Struct.new(
      :next_token,
      :server_id,
      :users,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Specifies the maximum number of workflows to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #               <code>ListWorkflows</code> returns the <code>NextToken</code> parameter in the output.
    #         You can then pass the <code>NextToken</code> parameter in a subsequent command to
    #         continue listing additional workflows.</p>
    #
    #   @return [String]
    #
    ListWorkflowsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>
    #               <code>ListWorkflows</code> returns the <code>NextToken</code> parameter in the output.
    #         You can then pass the <code>NextToken</code> parameter in a subsequent command to
    #         continue listing additional workflows.</p>
    #
    #   @return [String]
    #
    # @!attribute workflows
    #   <p>Returns the <code>Arn</code>, <code>WorkflowId</code>, and <code>Description</code> for each workflow.</p>
    #
    #   @return [Array<ListedWorkflow>]
    #
    ListWorkflowsOutput = ::Struct.new(
      :next_token,
      :workflows,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lists the properties for one or more specified associated accesses.</p>
    #
    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p>
    #            <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    #       If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    #       If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    #       S3 or EFS paths visible to your users.</p>
    #
    #   Enum, one of: ["PATH", "LOGICAL"]
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
    #         file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
    #         files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
    #         server to access your resources when servicing your users' transfer requests.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory.
    #       The users of the group that you associate have access to your Amazon S3 or Amazon EFS
    #       resources over the enabled protocols using Amazon Web Services Transfer Family. If you know the group name,
    #       you can view the SID values by running the following command using Windows PowerShell.</p>
    #
    #            <p>
    #               <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code>
    #            </p>
    #
    #            <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p>
    #
    #            <p>The regex used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces.
    #       You can also include underscores or any of the following characters: =,.@:/-</p>
    #
    #   @return [String]
    #
    ListedAccess = ::Struct.new(
      :home_directory,
      :home_directory_type,
      :role,
      :external_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns properties of the execution that is specified.</p>
    #
    # @!attribute execution_id
    #   <p>A unique identifier for the execution of a workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute initial_file_location
    #   <p>A structure that describes the Amazon S3 or EFS file location.
    #         This is the file location when the execution begins: if the file is being copied,
    #         this is the initial (as opposed to destination) file location.</p>
    #
    #   @return [FileLocation]
    #
    # @!attribute service_metadata
    #   <p>A container object for the session details associated with a workflow.</p>
    #
    #   @return [ServiceMetadata]
    #
    # @!attribute status
    #   <p>The status is one of the execution. Can be in progress, completed, exception encountered, or handling the exception.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETED", "EXCEPTION", "HANDLING_EXCEPTION"]
    #
    #   @return [String]
    #
    ListedExecution = ::Struct.new(
      :execution_id,
      :initial_file_location,
      :service_metadata,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns properties of a file transfer protocol-enabled server that was specified.</p>
    #
    # @!attribute arn
    #   <p>Specifies the unique Amazon Resource Name (ARN) for a server to be listed.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>Specifies the domain of the storage system that is used for file transfers.</p>
    #
    #   Enum, one of: ["S3", "EFS"]
    #
    #   @return [String]
    #
    # @!attribute identity_provider_type
    #   <p>Specifies the mode of authentication for a server. The default value is
    #           <code>SERVICE_MANAGED</code>, which allows you to store and access user credentials within
    #         the Amazon Web Services Transfer Family service.</p>
    #            <p>Use <code>AWS_DIRECTORY_SERVICE</code> to provide access to
    #         Active Directory groups in Amazon Web Services Managed Active Directory or Microsoft Active Directory in your
    #         on-premises environment or in Amazon Web Services using AD Connectors. This option also requires you to
    #         provide a Directory ID using the <code>IdentityProviderDetails</code> parameter.</p>
    #            <p>Use the <code>API_GATEWAY</code> value to integrate with an identity provider of your choosing. The
    #         <code>API_GATEWAY</code> setting requires you to provide an API Gateway endpoint URL to call
    #         for authentication using the <code>IdentityProviderDetails</code> parameter.</p>
    #            <p>Use the <code>AWS_LAMBDA</code> value to directly use a Lambda function as your identity provider. If you choose this value,
    #         you must specify the ARN for the lambda function in the <code>Function</code> parameter for the <code>IdentityProviderDetails</code> data type.</p>
    #
    #   Enum, one of: ["SERVICE_MANAGED", "API_GATEWAY", "AWS_DIRECTORY_SERVICE", "AWS_LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>Specifies the type of VPC endpoint that your server is connected to. If your server is
    #         connected to a VPC endpoint, your server isn't accessible over the public internet.</p>
    #
    #   Enum, one of: ["PUBLIC", "VPC", "VPC_ENDPOINT"]
    #
    #   @return [String]
    #
    # @!attribute logging_role
    #   <p>Specifies the Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that allows a server to turn
    #         on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, user activity can be viewed in
    #         your CloudWatch logs.</p>
    #
    #   @return [String]
    #
    # @!attribute server_id
    #   <p>Specifies the unique system assigned identifier for the servers that were listed.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>Specifies the condition of a server for the server that was described. A value of
    #           <code>ONLINE</code> indicates that the server can accept jobs and transfer files. A
    #           <code>State</code> value of <code>OFFLINE</code> means that the server cannot perform file
    #         transfer operations.</p>
    #
    #            <p>The states of <code>STARTING</code> and <code>STOPPING</code> indicate that the server is
    #         in an intermediate state, either not fully able to respond, or not fully offline. The values
    #         of <code>START_FAILED</code> or <code>STOP_FAILED</code> can indicate an error
    #         condition.</p>
    #
    #   Enum, one of: ["OFFLINE", "ONLINE", "STARTING", "STOPPING", "START_FAILED", "STOP_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute user_count
    #   <p>Specifies the number of users that are assigned to a server you specified with the
    #           <code>ServerId</code>.</p>
    #
    #   @return [Integer]
    #
    ListedServer = ::Struct.new(
      :arn,
      :domain,
      :identity_provider_type,
      :endpoint_type,
      :logging_role,
      :server_id,
      :state,
      :user_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns properties of the user that you specify.</p>
    #
    # @!attribute arn
    #   <p>Provides the unique Amazon Resource Name (ARN) for the user that you want to learn
    #         about.</p>
    #
    #   @return [String]
    #
    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p>
    #            <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    #       If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    #       If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    #       S3 or EFS paths visible to your users.</p>
    #
    #   Enum, one of: ["PATH", "LOGICAL"]
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
    #         file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
    #         files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
    #         server to access your resources when servicing your users' transfer requests.</p>
    #            <note>
    #
    #               <p>The IAM role that controls your users' access to your Amazon S3 bucket for servers with <code>Domain=S3</code>, or your EFS file system for servers with <code>Domain=EFS</code>.
    #           </p>
    #               <p>The policies attached to this role determine the level of access you want to provide your users when
    #           transferring files into and out of your S3 buckets or EFS file systems.</p>
    #
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute ssh_public_key_count
    #   <p>Specifies the number of SSH public keys stored for the user you specified.</p>
    #
    #   @return [Integer]
    #
    # @!attribute user_name
    #   <p>Specifies the name of the user whose ARN was specified. User names are used for
    #         authentication purposes.</p>
    #
    #   @return [String]
    #
    ListedUser = ::Struct.new(
      :arn,
      :home_directory,
      :home_directory_type,
      :role,
      :ssh_public_key_count,
      :user_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the ID, text description, and Amazon Resource Name (ARN) for the workflow.</p>
    #
    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Specifies the text description for the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>Specifies the unique Amazon Resource Name (ARN) for the workflow.</p>
    #
    #   @return [String]
    #
    ListedWorkflow = ::Struct.new(
      :workflow_id,
      :description,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Consists of the logging role and the log group name.</p>
    #
    # @!attribute logging_role
    #   <p>Specifies the Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that allows a server to turn
    #         on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, user activity can be viewed in
    #         your CloudWatch logs.</p>
    #
    #   @return [String]
    #
    # @!attribute log_group_name
    #   <p>The name of the CloudWatch logging group for the Amazon Web Services Transfer server to which this workflow belongs.</p>
    #
    #   @return [String]
    #
    LoggingConfiguration = ::Struct.new(
      :logging_role,
      :log_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OverwriteExisting
    #
    module OverwriteExisting
      # No documentation available.
      #
      TRUE = "TRUE"

      # No documentation available.
      #
      FALSE = "FALSE"
    end

    # <p>The full POSIX identity, including user ID (<code>Uid</code>), group ID
    #       (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
    #       your users' access to your Amazon EFS file systems. The POSIX permissions that are set on
    #       files and directories in your file system determine the level of access your users get when
    #       transferring files into and out of your Amazon EFS file systems.</p>
    #
    # @!attribute uid
    #   <p>The POSIX user ID used for all EFS operations by this user.</p>
    #
    #   @return [Integer]
    #
    # @!attribute gid
    #   <p>The POSIX group ID used for all EFS operations by this user.</p>
    #
    #   @return [Integer]
    #
    # @!attribute secondary_gids
    #   <p>The secondary POSIX group IDs used for all EFS operations by this user.</p>
    #
    #   @return [Array<Integer>]
    #
    PosixProfile = ::Struct.new(
      :uid,
      :gid,
      :secondary_gids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Protocol
    #
    module Protocol
      # No documentation available.
      #
      SFTP = "SFTP"

      # No documentation available.
      #
      FTP = "FTP"

      # No documentation available.
      #
      FTPS = "FTPS"
    end

    # <p>
    #       The protocol settings that are configured for your server.
    #     </p>
    #
    # @!attribute passive_ip
    #   <p>
    #         Indicates passive mode, for FTP and FTPS protocols.
    #         Enter a single dotted-quad IPv4 address, such as the external IP address of a firewall, router, or load balancer.
    #         For example:
    #       </p>
    #            <p>
    #               <code>
    #           aws transfer update-server --protocol-details PassiveIp=<i>0.0.0.0</i>
    #               </code>
    #            </p>
    #            <p>Replace <code>
    #                  <i>0.0.0.0</i>
    #               </code> in the example above with the actual IP address you want to use.</p>
    #            <note>
    #               <p>
    #           If you change the <code>PassiveIp</code> value, you must stop and then restart your Transfer server for the change to take effect. For details on using Passive IP (PASV) in a NAT environment, see <a href="http://aws.amazon.com/blogs/storage/configuring-your-ftps-server-behind-a-firewall-or-nat-with-aws-transfer-family/">Configuring your FTPS server behind a firewall or NAT with Amazon Web Services Transfer Family</a>.
    #         </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute tls_session_resumption_mode
    #   <p>A property used with Transfer servers that use the FTPS protocol. TLS Session Resumption provides a mechanism to resume or share a negotiated secret
    #         key between the control and data connection for an FTPS session. <code>TlsSessionResumptionMode</code> determines whether or not the server resumes recent,
    #         negotiated sessions through a unique session ID. This property is available during <code>CreateServer</code> and <code>UpdateServer</code> calls.
    #         If a <code>TlsSessionResumptionMode</code> value is not specified during CreateServer, it is set to <code>ENFORCED</code> by default.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code>: the server does not process TLS session resumption client requests and creates a new TLS session for each request. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code>: the server processes and accepts clients that are performing TLS session resumption.
    #               The server doesn't reject client data connections that do not perform the TLS session resumption client processing.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENFORCED</code>: the server processes and accepts clients that are performing TLS session resumption.
    #               The server rejects client data connections that do not perform the TLS session resumption client processing.
    #               Before you set the value to <code>ENFORCED</code>, test your clients.</p>
    #                  <note>
    #                     <p>Not all FTPS clients perform TLS session resumption. So, if you choose to enforce
    #                 TLS session resumption, you prevent any connections from FTPS clients that don't perform
    #                 the protocol negotiation. To determine whether or not you can use the
    #                 <code>ENFORCED</code> value, you need to test your clients.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DISABLED", "ENABLED", "ENFORCED"]
    #
    #   @return [String]
    #
    # @!attribute set_stat_option
    #   <p>Use the <code>SetStatOption</code> to ignore the error that is generated when the client attempts to use SETSTAT on a file you are uploading to an S3 bucket.</p>
    #            <p>Some SFTP file transfer clients can attempt to change the attributes of remote files, including timestamp and permissions, using commands, such as SETSTAT when uploading the file.
    #           However, these commands are not compatible with object storage systems, such as Amazon S3. Due to this incompatibility, file uploads from these clients can result in errors even when
    #           the file is otherwise successfully uploaded.</p>
    #            <p>Set the value to <code>ENABLE_NO_OP</code> to have the Transfer Family server ignore the SETSTAT command, and upload files without needing to make any changes to your SFTP client.
    #           While the <code>SetStatOption</code>
    #               <code>ENABLE_NO_OP</code> setting ignores the error, it does generate a log entry in CloudWatch Logs, so you can determine when the client is making a SETSTAT call.</p>
    #            <note>
    #               <p>If you want to preserve the original timestamp for your file, and modify other file attributes using SETSTAT, you can use Amazon EFS as backend storage with Transfer Family.</p>
    #            </note>
    #
    #   Enum, one of: ["DEFAULT", "ENABLE_NO_OP"]
    #
    #   @return [String]
    #
    ProtocolDetails = ::Struct.new(
      :passive_ip,
      :tls_session_resumption_mode,
      :set_stat_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested resource does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #
    #   @return [String]
    #
    ResourceExistsException = ::Struct.new(
      :message,
      :resource,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when a resource is not found by the Amazon Web ServicesTransfer Family
    #       service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the details for the file location for the file being used in the workflow. Only applicable if you are using S3 storage.</p>
    #
    # @!attribute bucket
    #   <p>Specifies the S3 bucket that contains the file being used.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The name assigned to the file when it was created in S3. You use the object key to retrieve the object.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>Specifies the file version.</p>
    #
    #   @return [String]
    #
    # @!attribute etag
    #   <p>The entity tag is a hash of the object. The ETag reflects changes only to the contents of an object, not its metadata.</p>
    #
    #   @return [String]
    #
    S3FileLocation = ::Struct.new(
      :bucket,
      :key,
      :version_id,
      :etag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the customer input S3 file location. If it is used inside <code>copyStepDetails.DestinationFileLocation</code>, it should be the S3 copy destination.</p>
    #          <p>
    #       You need to provide the bucket and key.
    #       The key can represent either a path or a file.
    #       This is determined by whether or not you end the key value with the forward slash (/) character.
    #       If the final character is "/", then your file is copied to the folder, and its name does not change.
    #       If, rather, the final character is alphanumeric, your uploaded file is renamed to the path value. In this case, if a file with that name already exists, it is overwritten.
    #     </p>
    #          <p>For example, if your path is <code>shared-files/bob/</code>, your uploaded files are copied to the <code>shared-files/bob/</code>, folder.
    #       If your path is <code>shared-files/today</code>, each uploaded file is copied to the <code>shared-files</code> folder and named <code>today</code>:
    #       each upload overwrites the previous version of the <i>bob</i> file.</p>
    #
    # @!attribute bucket
    #   <p>Specifies the S3 bucket for the customer input file.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The name assigned to the file when it was created in S3. You use the object key to retrieve the object.</p>
    #
    #   @return [String]
    #
    S3InputFileLocation = ::Struct.new(
      :bucket,
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the key-value pair that are assigned to a file during the execution of a Tagging step.</p>
    #
    # @!attribute key
    #   <p>The name assigned to the tag that you create.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value that corresponds to the key.</p>
    #
    #   @return [String]
    #
    S3Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_id
    #   <p>A unique identifier for the execution of a workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>Used to distinguish between multiple callbacks for multiple Lambda steps within the same execution.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates whether the specified step succeeded or failed.</p>
    #
    #   Enum, one of: ["SUCCESS", "FAILURE"]
    #
    #   @return [String]
    #
    SendWorkflowStepStateInput = ::Struct.new(
      :workflow_id,
      :execution_id,
      :token,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SendWorkflowStepStateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container object for the session details associated with a workflow.</p>
    #
    # @!attribute user_details
    #   <p>The Server ID (<code>ServerId</code>), Session ID (<code>SessionId</code>) and user (<code>UserName</code>) make up the <code>UserDetails</code>.</p>
    #
    #   @return [UserDetails]
    #
    ServiceMetadata = ::Struct.new(
      :user_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request has failed because the Amazon Web ServicesTransfer Family service is not available.</p>
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

    # Includes enum constants for SetStatOption
    #
    module SetStatOption
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      ENABLE_NO_OP = "ENABLE_NO_OP"
    end

    # <p>Provides information about the public Secure Shell (SSH) key that is associated with a
    #       user account for the specific file transfer protocol-enabled server (as identified by
    #         <code>ServerId</code>). The information returned includes the date the key was imported, the
    #       public key contents, and the public key ID. A user can store more than one SSH public key
    #       associated with their user name on a specific server.</p>
    #
    # @!attribute date_imported
    #   <p>Specifies the date that the public key was added to the user account.</p>
    #
    #   @return [Time]
    #
    # @!attribute ssh_public_key_body
    #   <p>Specifies the content of the SSH public key as specified by the
    #         <code>PublicKeyId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_public_key_id
    #   <p>Specifies the <code>SshPublicKeyId</code> parameter contains the identifier of the public
    #         key.</p>
    #
    #   @return [String]
    #
    SshPublicKey = ::Struct.new(
      :date_imported,
      :ssh_public_key_body,
      :ssh_public_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that you start.</p>
    #
    #   @return [String]
    #
    StartServerInput = ::Struct.new(
      :server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartServerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for State
    #
    module State
      # No documentation available.
      #
      OFFLINE = "OFFLINE"

      # No documentation available.
      #
      ONLINE = "ONLINE"

      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      START_FAILED = "START_FAILED"

      # No documentation available.
      #
      STOP_FAILED = "STOP_FAILED"
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that you stopped.</p>
    #
    #   @return [String]
    #
    StopServerInput = ::Struct.new(
      :server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopServerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Creates a key-value pair for a specific resource. Tags are metadata that you can use to
    #       search for and group a resource for various purposes. You can apply tags to servers, users,
    #       and roles. A tag key can take more than one value. For example, to group servers for
    #       accounting purposes, you might create a tag called <code>Group</code> and assign the values
    #         <code>Research</code> and <code>Accounting</code> to that group.</p>
    #
    # @!attribute key
    #   <p>The name assigned to the tag that you create.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Contains one or more values that you assigned to the key name you create.</p>
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

    # @!attribute arn
    #   <p>An Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a server, user, or
    #         role.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Key-value pairs assigned to ARNs that you can use to group and search for resources by
    #         type. You can attach this metadata to user accounts for any purpose.</p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :arn,
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

    # <p>Each step type has its own <code>StepDetails</code> structure.</p>
    #          <p>The key/value pairs used to tag a file during the execution of a workflow step.</p>
    #
    # @!attribute name
    #   <p>The name of the step, used as an identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Array that contains from 1 to 10 key/value pairs.</p>
    #
    #   @return [Array<S3Tag>]
    #
    # @!attribute source_file_location
    #   <p>Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file
    #       for the workflow.</p>
    #            <ul>
    #               <li>
    #                  <p>Enter <code>${previous.file}</code> to use the previous file as the input.
    #             In this case, this workflow step uses the output file from the previous workflow step as input.
    #             This is the default value.</p>
    #               </li>
    #               <li>
    #                  <p>Enter <code>${original.file}</code> to use the originally-uploaded file location as input for this step.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    TagStepDetails = ::Struct.new(
      :name,
      :tags,
      :source_file_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned identifier for a specific server. That server's user authentication
    #         method is tested with a user name and password.</p>
    #
    #   @return [String]
    #
    # @!attribute server_protocol
    #   <p>The type of file transfer protocol to be tested.</p>
    #
    #            <p>The available protocols are:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>Secure Shell (SSH) File Transfer Protocol (SFTP)</p>
    #               </li>
    #               <li>
    #                  <p>File Transfer Protocol Secure (FTPS)</p>
    #               </li>
    #               <li>
    #                  <p>File Transfer Protocol (FTP)</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SFTP", "FTP", "FTPS"]
    #
    #   @return [String]
    #
    # @!attribute source_ip
    #   <p>The source IP address of the user account to be tested.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The name of the user account to be tested.</p>
    #
    #   @return [String]
    #
    # @!attribute user_password
    #   <p>The password of the user account to be tested.</p>
    #
    #   @return [String]
    #
    TestIdentityProviderInput = ::Struct.new(
      :server_id,
      :server_protocol,
      :source_ip,
      :user_name,
      :user_password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Transfer::Types::TestIdentityProviderInput "\
          "server_id=#{server_id || 'nil'}, "\
          "server_protocol=#{server_protocol || 'nil'}, "\
          "source_ip=#{source_ip || 'nil'}, "\
          "user_name=#{user_name || 'nil'}, "\
          "user_password=\"[SENSITIVE]\">"
      end
    end

    # @!attribute response
    #   <p>The response that is returned from your API Gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The HTTP status code that is the response from your API Gateway.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message
    #   <p>A message that indicates whether the test was successful or not.</p>
    #            <note>
    #               <p>If an empty string is returned, the most likely cause is that the authentication failed due to an incorrect username or password.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The endpoint of the service used to authenticate a user.</p>
    #
    #   @return [String]
    #
    TestIdentityProviderOutput = ::Struct.new(
      :response,
      :status_code,
      :message,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.status_code ||= 0
      end

    end

    # <p>The request was denied due to request throttling.</p>
    #
    #          <p> HTTP Status Code: 400</p>
    #
    # @!attribute retry_after_seconds
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TlsSessionResumptionMode
    #
    module TlsSessionResumptionMode
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      ENFORCED = "ENFORCED"
    end

    # @!attribute arn
    #   <p>The value of the resource that will have the tag removed. An Amazon Resource Name (ARN) is
    #         an identifier for a specific Amazon Web Services resource, such as a server, user, or role.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>TagKeys are key-value pairs assigned to ARNs that can be used to group and search for
    #         resources by type. This metadata can be attached to resources for any purpose.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :arn,
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

    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p>
    #            <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    #       If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    #       If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    #       S3 or EFS paths visible to your users.</p>
    #
    #   Enum, one of: ["PATH", "LOGICAL"]
    #
    #   @return [String]
    #
    # @!attribute home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should
    #         be visible to your user and how you want to make them visible. You must specify the
    #           <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path
    #         is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you
    #         only specify a target, it is displayed as is. You also must ensure that your Amazon Web Services Identity
    #         and Access Management (IAM) role provides access to paths in <code>Target</code>. This value
    #         can only be set when <code>HomeDirectoryType</code> is set to
    #         <i>LOGICAL</i>.</p>
    #            <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p>
    #            <p>
    #               <code>[ { "Entry": "/directory1", "Target": "/bucket_name/home/mydirectory" } ]</code>
    #            </p>
    #            <p>In most cases, you can use this value instead of the session policy to lock down your
    #           user to the designated home directory ("<code>chroot</code>"). To do this, you can set
    #           <code>Entry</code> to <code>/</code> and set <code>Target</code> to the
    #           <code>HomeDirectory</code> parameter value.</p>
    #            <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p>
    #            <p>
    #               <code>[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]</code>
    #            </p>
    #
    #   @return [Array<HomeDirectoryMapEntry>]
    #
    # @!attribute policy
    #   <p>A session policy for your user so that you can use the same IAM role across multiple users. This policy scopes down user
    #        access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>,
    #        <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>
    #
    #
    #            <note>
    #               <p>This only applies when the domain of <code>ServerId</code> is S3. EFS does not use session policies.</p>
    #               <p>For session policies, Amazon Web Services Transfer Family stores the policy as a JSON blob, instead
    #           of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass
    #           it in the <code>Policy</code> argument.</p>
    #               <p>For an example of a session policy, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html">Example
    #           session policy</a>.</p>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html">AssumeRole</a> in the <i>Amazon Web ServicesSecurity Token Service API
    #             Reference</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute posix_profile
    #   <p>The full POSIX identity, including user ID (<code>Uid</code>), group ID
    #         (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
    #         your users' access to your Amazon EFS file systems. The POSIX permissions that are set on
    #         files and directories in your file system determine the level of access your users get when
    #         transferring files into and out of your Amazon EFS file systems.</p>
    #
    #   @return [PosixProfile]
    #
    # @!attribute role
    #   <p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
    #         file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
    #         files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
    #         server to access your resources when servicing your users' transfer requests.</p>
    #
    #   @return [String]
    #
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server that you added your user to.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory.
    #       The users of the group that you associate have access to your Amazon S3 or Amazon EFS
    #       resources over the enabled protocols using Amazon Web Services Transfer Family. If you know the group name,
    #       you can view the SID values by running the following command using Windows PowerShell.</p>
    #
    #            <p>
    #               <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code>
    #            </p>
    #
    #            <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p>
    #
    #            <p>The regex used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces.
    #       You can also include underscores or any of the following characters: =,.@:/-</p>
    #
    #   @return [String]
    #
    UpdateAccessInput = ::Struct.new(
      :home_directory,
      :home_directory_type,
      :home_directory_mappings,
      :policy,
      :posix_profile,
      :role,
      :server_id,
      :external_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p>The ID of the server that the user is attached to.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>The external ID of the group whose users have access to your Amazon S3 or Amazon EFS
    #         resources over the enabled protocols using Amazon Web ServicesTransfer Family.</p>
    #
    #   @return [String]
    #
    UpdateAccessOutput = ::Struct.new(
      :server_id,
      :external_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web ServicesCertificate Manager (ACM) certificate. Required
    #         when <code>Protocols</code> is set to <code>FTPS</code>.</p>
    #
    #            <p>To request a new public certificate, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html">Request a public certificate</a>
    #         in the <i> Amazon Web ServicesCertificate Manager User Guide</i>.</p>
    #
    #            <p>To import an existing certificate into ACM, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing certificates into ACM</a>
    #         in the <i> Amazon Web ServicesCertificate Manager User Guide</i>.</p>
    #
    #            <p>To request a private certificate to use FTPS through private IP addresses, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html">Request a
    #           private certificate</a> in the <i> Amazon Web ServicesCertificate Manager User
    #         Guide</i>.</p>
    #
    #            <p>Certificates with the following cryptographic algorithms and key sizes are
    #         supported:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>2048-bit RSA (RSA_2048)</p>
    #               </li>
    #               <li>
    #                  <p>4096-bit RSA (RSA_4096)</p>
    #               </li>
    #               <li>
    #                  <p>Elliptic Prime Curve 256 bit (EC_prime256v1)</p>
    #               </li>
    #               <li>
    #                  <p>Elliptic Prime Curve 384 bit (EC_secp384r1)</p>
    #               </li>
    #               <li>
    #                  <p>Elliptic Prime Curve 521 bit (EC_secp521r1)</p>
    #               </li>
    #            </ul>
    #
    #            <note>
    #               <p>The certificate must be a valid SSL/TLS X.509 version 3 certificate with FQDN or IP
    #           address specified and information about the issuer.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute protocol_details
    #   <p>The protocol settings that are configured for your server.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             Use the <code>PassiveIp</code> parameter to indicate passive mode (for FTP and FTPS protocols).
    #             Enter a single dotted-quad IPv4 address, such as the external IP address of a firewall, router, or load balancer.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>Use the <code>SetStatOption</code> to ignore the error that is generated when the client attempts to use SETSTAT on a file you are uploading to an S3 bucket.
    #           Set the value to <code>ENABLE_NO_OP</code> to have the Transfer Family server ignore the SETSTAT command, and upload files without needing to make any changes to your SFTP client.
    #           Note that with <code>SetStatOption</code> set to <code>ENABLE_NO_OP</code>, Transfer generates a log entry to CloudWatch Logs, so you can determine when the client
    #           is making a SETSTAT call.</p>
    #               </li>
    #               <li>
    #                  <p>Use the <code>TlsSessionResumptionMode</code> parameter to determine whether or not your Transfer server
    #             resumes recent, negotiated sessions through a unique session ID.</p>
    #               </li>
    #            </ul>
    #
    #   @return [ProtocolDetails]
    #
    # @!attribute endpoint_details
    #   <p>The virtual private cloud (VPC) endpoint settings that are configured for your server.
    #         When you host your endpoint within your VPC, you can make it accessible only to resources
    #         within your VPC, or you can attach Elastic IP addresses and make it accessible to clients over
    #         the internet. Your VPC's default security groups are automatically assigned to your
    #         endpoint.</p>
    #
    #   @return [EndpointDetails]
    #
    # @!attribute endpoint_type
    #   <p>The type of endpoint that you want your server to use. You can choose to make your server's endpoint publicly accessible (PUBLIC)
    #         or host it inside your VPC. With an endpoint that is hosted in a VPC, you can restrict access to your server and
    #         resources only within your VPC or choose to make it internet facing by attaching Elastic IP addresses directly to it.</p>
    #            <note>
    #               <p> After May 19, 2021, you won't be able to create a server using
    #             <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Servicesaccount if your account hasn't already
    #         done so before May 19, 2021. If you have already created servers with
    #         <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Servicesaccount on or before May 19, 2021,
    #           you will not be affected. After this date, use
    #           <code>EndpointType</code>=<code>VPC</code>.</p>
    #
    #               <p>For more information, see
    #           https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html deprecate-vpc-endpoint.</p>
    #               <p>It is recommended that you use <code>VPC</code> as the <code>EndpointType</code>. With
    #           this endpoint type, you have the option to directly associate up to three Elastic IPv4
    #           addresses (BYO IP included) with your server's endpoint and use VPC security groups to
    #           restrict traffic by the client's public IP address. This is not possible with
    #             <code>EndpointType</code> set to <code>VPC_ENDPOINT</code>.</p>
    #            </note>
    #
    #   Enum, one of: ["PUBLIC", "VPC", "VPC_ENDPOINT"]
    #
    #   @return [String]
    #
    # @!attribute host_key
    #   <p>The RSA private key as generated by <code>ssh-keygen -N "" -m PEM -f
    #           my-new-server-key</code>.</p>
    #
    #            <important>
    #               <p>If you aren't planning to migrate existing users from an existing server to a new
    #           server, don't update the host key. Accidentally changing a server's host key can
    #           be disruptive.</p>
    #            </important>
    #
    #
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html configuring-servers-change-host-key">Change the host key for your SFTP-enabled server</a> in the <i>Amazon Web ServicesTransfer
    #           Family User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_details
    #   <p>An array containing all of the information required to call a customer's
    #         authentication API method.</p>
    #
    #   @return [IdentityProviderDetails]
    #
    # @!attribute logging_role
    #   <p>Specifies the Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that allows a server to turn
    #         on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, user activity can be viewed in
    #         your CloudWatch logs.</p>
    #
    #   @return [String]
    #
    # @!attribute post_authentication_login_banner
    #   <p>Specify a string to display when users connect to a server. This string is displayed after the user authenticates.</p>
    #            <note>
    #               <p>The SFTP protocol does not support post-authentication display banners.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute pre_authentication_login_banner
    #   <p>Specify a string to display when users connect to a server. This string is displayed before the user authenticates.
    #       For example, the following banner displays details about using the system.</p>
    #            <p>
    #               <code>This system is for the use of authorized users only. Individuals using this computer system without authority,
    #       or in excess of their authority, are subject to having all of their activities on this system monitored and recorded by
    #       system personnel.</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute protocols
    #   <p>Specifies the file transfer protocol or protocols over which your file transfer protocol
    #         client can connect to your server's endpoint. The available protocols are:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>Secure Shell (SSH) File Transfer Protocol (SFTP): File transfer over SSH</p>
    #               </li>
    #               <li>
    #                  <p>File Transfer Protocol Secure (FTPS): File transfer with TLS encryption</p>
    #               </li>
    #               <li>
    #                  <p>File Transfer Protocol (FTP): Unencrypted file transfer</p>
    #               </li>
    #            </ul>
    #
    #            <note>
    #               <p>If you select <code>FTPS</code>, you must choose a certificate stored in Amazon Web ServicesCertificate
    #           Manager (ACM) which will be used to identify your server when clients connect to it over
    #           FTPS.</p>
    #
    #
    #               <p>If <code>Protocol</code> includes either <code>FTP</code> or <code>FTPS</code>, then the
    #           <code>EndpointType</code> must be <code>VPC</code> and the
    #           <code>IdentityProviderType</code> must be <code>AWS_DIRECTORY_SERVICE</code> or <code>API_GATEWAY</code>.</p>
    #
    #               <p>If <code>Protocol</code> includes <code>FTP</code>, then
    #             <code>AddressAllocationIds</code> cannot be associated.</p>
    #
    #               <p>If <code>Protocol</code> is set only to <code>SFTP</code>, the <code>EndpointType</code>
    #           can be set to <code>PUBLIC</code> and the <code>IdentityProviderType</code> can be set to
    #             <code>SERVICE_MANAGED</code>.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_policy_name
    #   <p>Specifies the name of the security policy that is attached to the server.</p>
    #
    #   @return [String]
    #
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server instance that the user account is
    #         assigned to.</p>
    #
    #   @return [String]
    #
    # @!attribute workflow_details
    #   <p>Specifies the workflow ID for the workflow to assign and the execution role used for executing the workflow.</p>
    #            <p>To remove an associated workflow from a server, you can provide an empty <code>OnUpload</code> object, as in the following example.</p>
    #            <p>
    #               <code>aws transfer update-server --server-id s-01234567890abcdef --workflow-details '{"OnUpload":[]}'</code>
    #            </p>
    #
    #   @return [WorkflowDetails]
    #
    UpdateServerInput = ::Struct.new(
      :certificate,
      :protocol_details,
      :endpoint_details,
      :endpoint_type,
      :host_key,
      :identity_provider_details,
      :logging_role,
      :post_authentication_login_banner,
      :pre_authentication_login_banner,
      :protocols,
      :security_policy_name,
      :server_id,
      :workflow_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Transfer::Types::UpdateServerInput "\
          "certificate=#{certificate || 'nil'}, "\
          "protocol_details=#{protocol_details || 'nil'}, "\
          "endpoint_details=#{endpoint_details || 'nil'}, "\
          "endpoint_type=#{endpoint_type || 'nil'}, "\
          "host_key=\"[SENSITIVE]\", "\
          "identity_provider_details=#{identity_provider_details || 'nil'}, "\
          "logging_role=#{logging_role || 'nil'}, "\
          "post_authentication_login_banner=#{post_authentication_login_banner || 'nil'}, "\
          "pre_authentication_login_banner=#{pre_authentication_login_banner || 'nil'}, "\
          "protocols=#{protocols || 'nil'}, "\
          "security_policy_name=#{security_policy_name || 'nil'}, "\
          "server_id=#{server_id || 'nil'}, "\
          "workflow_details=#{workflow_details || 'nil'}>"
      end
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that the user account is assigned
    #         to.</p>
    #
    #   @return [String]
    #
    UpdateServerOutput = ::Struct.new(
      :server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p>
    #            <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    #       If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    #       If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    #       S3 or EFS paths visible to your users.</p>
    #
    #   Enum, one of: ["PATH", "LOGICAL"]
    #
    #   @return [String]
    #
    # @!attribute home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should
    #         be visible to your user and how you want to make them visible. You must specify the
    #           <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path
    #         is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you
    #         only specify a target, it is displayed as is. You also must ensure that your Amazon Web Services Identity
    #         and Access Management (IAM) role provides access to paths in <code>Target</code>. This value
    #         can only be set when <code>HomeDirectoryType</code> is set to
    #         <i>LOGICAL</i>.</p>
    #
    #            <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p>
    #            <p>
    #               <code>[ { "Entry": "/directory1", "Target": "/bucket_name/home/mydirectory" } ]</code>
    #            </p>
    #
    #            <p>In most cases, you can use this value instead of the session policy to lock down your
    #         user to the designated home directory ("<code>chroot</code>"). To do this, you can set
    #           <code>Entry</code> to '/' and set <code>Target</code> to the HomeDirectory
    #         parameter value.</p>
    #
    #            <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p>
    #            <p>
    #               <code>[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]</code>
    #            </p>
    #
    #   @return [Array<HomeDirectoryMapEntry>]
    #
    # @!attribute policy
    #   <p>A session policy for your user so that you can use the same IAM role across multiple users. This policy scopes down user
    #        access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>,
    #        <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>
    #
    #            <note>
    #               <p>This only applies when the domain of <code>ServerId</code> is S3. EFS does not use session policies.</p>
    #               <p>For session policies, Amazon Web Services Transfer Family stores the policy as a JSON blob, instead
    #           of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass
    #           it in the <code>Policy</code> argument.</p>
    #
    #
    #
    #               <p>For an example of a session policy, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/session-policy">Creating a session
    #             policy</a>.</p>
    #
    #
    #
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html">AssumeRole</a> in the <i>Amazon Web Services
    #             Security Token Service API Reference</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute posix_profile
    #   <p>Specifies the full POSIX identity, including user ID (<code>Uid</code>), group ID
    #           (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
    #         your users' access to your Amazon Elastic File Systems (Amazon EFS). The POSIX permissions
    #         that are set on files and directories in your file system determines the level of access your
    #         users get when transferring files into and out of your Amazon EFS file systems.</p>
    #
    #   @return [PosixProfile]
    #
    # @!attribute role
    #   <p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
    #         file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
    #         files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
    #         server to access your resources when servicing your users' transfer requests.</p>
    #
    #   @return [String]
    #
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server instance that the user account is
    #         assigned to.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>A unique string that identifies a user and is associated with a server as specified by the
    #           <code>ServerId</code>. This user name must be a minimum of 3 and a maximum of 100 characters
    #         long. The following are valid characters: a-z, A-Z, 0-9, underscore '_', hyphen
    #         '-', period '.', and at sign '@'. The user name can't start
    #         with a hyphen, period, or at sign.</p>
    #
    #   @return [String]
    #
    UpdateUserInput = ::Struct.new(
      :home_directory,
      :home_directory_type,
      :home_directory_mappings,
      :policy,
      :posix_profile,
      :role,
      :server_id,
      :user_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <code>UpdateUserResponse</code> returns the user name and identifier for the request to
    #       update a user's properties.</p>
    #
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server instance that the user account is
    #         assigned to.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The unique identifier for a user that is assigned to a server instance that was specified
    #         in the request.</p>
    #
    #   @return [String]
    #
    UpdateUserOutput = ::Struct.new(
      :server_id,
      :user_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the user name, server ID, and session ID for a workflow.</p>
    #
    # @!attribute user_name
    #   <p>A unique string that identifies a user account associated with a server.</p>
    #
    #   @return [String]
    #
    # @!attribute server_id
    #   <p>The system-assigned unique identifier for a Transfer server instance. </p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The system-assigned unique identifier for a session that corresponds to the workflow.</p>
    #
    #   @return [String]
    #
    UserDetails = ::Struct.new(
      :user_name,
      :server_id,
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the workflow ID for the workflow to assign and the execution role used for executing the workflow.</p>
    #
    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role
    #   <p>Includes the necessary permissions for S3, EFS, and Lambda operations that Transfer can
    #         assume, so that all workflow steps can operate on the required resources</p>
    #
    #   @return [String]
    #
    WorkflowDetail = ::Struct.new(
      :workflow_id,
      :execution_role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the <code>WorkflowDetail</code> data type.
    #       It is used by actions that trigger a workflow to begin execution.</p>
    #
    # @!attribute on_upload
    #   <p>A trigger that starts a workflow: the workflow begins to execute after a file is uploaded.</p>
    #            <p>To remove an associated workflow from a server, you can provide an empty <code>OnUpload</code> object, as in the following example.</p>
    #            <p>
    #               <code>aws transfer update-server --server-id s-01234567890abcdef --workflow-details '{"OnUpload":[]}'</code>
    #            </p>
    #
    #   @return [Array<WorkflowDetail>]
    #
    WorkflowDetails = ::Struct.new(
      :on_upload,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The basic building block of a workflow.</p>
    #
    # @!attribute type
    #   <p>
    #           Currently, the following step types are supported.
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>COPY</i>: copy the file to another location</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>CUSTOM</i>: custom step with a lambda target</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>DELETE</i>: delete the file</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>TAG</i>: add a tag to the file</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["COPY", "CUSTOM", "TAG", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute copy_step_details
    #   <p>Details for a step that performs a file copy.</p>
    #            <p>
    #           Consists of the following values:
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>A description</p>
    #               </li>
    #               <li>
    #                  <p>An S3 location for the destination of the file copy.</p>
    #               </li>
    #               <li>
    #                  <p>A flag that indicates whether or not to overwrite an existing file of the same name.
    #           The default is <code>FALSE</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [CopyStepDetails]
    #
    # @!attribute custom_step_details
    #   <p>Details for a step that invokes a lambda function.</p>
    #            <p>
    #           Consists of the lambda function name, target, and timeout (in seconds).
    #         </p>
    #
    #   @return [CustomStepDetails]
    #
    # @!attribute delete_step_details
    #   <p>Details for a step that deletes the file.</p>
    #
    #   @return [DeleteStepDetails]
    #
    # @!attribute tag_step_details
    #   <p>Details for a step that creates one or more tags.</p>
    #            <p>You specify one or more tags: each tag contains a key/value pair.</p>
    #
    #   @return [TagStepDetails]
    #
    WorkflowStep = ::Struct.new(
      :type,
      :copy_step_details,
      :custom_step_details,
      :delete_step_details,
      :tag_step_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WorkflowStepType
    #
    module WorkflowStepType
      # No documentation available.
      #
      COPY = "COPY"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"

      # No documentation available.
      #
      TAG = "TAG"

      # No documentation available.
      #
      DELETE = "DELETE"
    end

  end
end
