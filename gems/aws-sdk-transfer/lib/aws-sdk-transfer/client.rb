# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Transfer
  # An API client for TransferService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Web Services Transfer Family is a fully managed service that enables the transfer of files over the
  #       File Transfer Protocol (FTP), File Transfer Protocol over SSL (FTPS), or Secure Shell (SSH)
  #       File Transfer Protocol (SFTP) directly into and out of Amazon Simple Storage Service (Amazon
  #       S3). Amazon Web Services helps you seamlessly migrate your file transfer workflows to Amazon Web Services Transfer Family by
  #       integrating with existing authentication systems, and providing DNS routing with Amazon Route
  #       53 so nothing changes for your customers and partners, or their applications. With your data
  #       in Amazon S3, you can use it with Amazon Web Services services for processing, analytics, machine learning,
  #       and archiving. Getting started with Amazon Web Services Transfer Family is easy since there is no
  #       infrastructure to buy and set up.</p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::Transfer::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Used by administrators to choose which groups in the directory should have access to
    #       upload and download files over the enabled protocols using Amazon Web Services Transfer Family. For example, a
    #       Microsoft Active Directory might contain 50,000 users, but only a small fraction might need
    #       the ability to transfer files to the server. An administrator can use
    #         <code>CreateAccess</code> to limit the access to the correct set of users who need this
    #       ability.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAccessInput}.
    #
    # @option params [String] :home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p>
    #            <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>
    #
    # @option params [String] :home_directory_type
    #   <p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    #       If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    #       If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    #       S3 or EFS paths visible to your users.</p>
    #
    # @option params [Array<HomeDirectoryMapEntry>] :home_directory_mappings
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
    # @option params [String] :policy
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
    # @option params [PosixProfile] :posix_profile
    #   <p>The full POSIX identity, including user ID (<code>Uid</code>), group ID
    #         (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
    #         your users' access to your Amazon EFS file systems. The POSIX permissions that are set on
    #         files and directories in your file system determine the level of access your users get when
    #         transferring files into and out of your Amazon EFS file systems.</p>
    #
    # @option params [String] :role
    #   <p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
    #         file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
    #         files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
    #         server to access your resources when servicing your users' transfer requests.</p>
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server that you added your user to.</p>
    #
    # @option params [String] :external_id
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
    # @return [Types::CreateAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access(
    #     home_directory: 'HomeDirectory',
    #     home_directory_type: 'PATH', # accepts ["PATH", "LOGICAL"]
    #     home_directory_mappings: [
    #       {
    #         entry: 'Entry', # required
    #         target: 'Target' # required
    #       }
    #     ],
    #     policy: 'Policy',
    #     posix_profile: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [
    #         1
    #       ]
    #     },
    #     role: 'Role', # required
    #     server_id: 'ServerId', # required
    #     external_id: 'ExternalId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAccessOutput
    #   resp.data.server_id #=> String
    #   resp.data.external_id #=> String
    #
    def create_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAccess
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceExistsException, Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::CreateAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAccess,
        stubs: @stubs,
        params_class: Params::CreateAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Instantiates an auto-scaling virtual server based on the selected file transfer protocol
    #       in Amazon Web Services. When you make updates to your file transfer protocol-enabled server or when you work
    #       with users, use the service-generated <code>ServerId</code> property that is assigned to the
    #       newly created server.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateServerInput}.
    #
    # @option params [String] :certificate
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
    # @option params [String] :domain
    #   <p>The domain of the storage system that is used for file transfers. There are two domains
    #         available: Amazon Simple Storage Service (Amazon S3) and Amazon Elastic File System (Amazon EFS). The
    #         default value is S3.</p>
    #
    #            <note>
    #               <p>After the server is created, the domain cannot be changed.</p>
    #            </note>
    #
    # @option params [EndpointDetails] :endpoint_details
    #   <p>The virtual private cloud (VPC) endpoint settings that are configured for your server.
    #         When you host your endpoint within your VPC, you can make it accessible only to resources
    #         within your VPC, or you can attach Elastic IP addresses and make it accessible to clients over
    #         the internet. Your VPC's default security groups are automatically assigned to your
    #         endpoint.</p>
    #
    # @option params [String] :endpoint_type
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
    #           https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.</p>
    #               <p>It is recommended that you use <code>VPC</code> as the <code>EndpointType</code>. With
    #           this endpoint type, you have the option to directly associate up to three Elastic IPv4
    #           addresses (BYO IP included) with your server's endpoint and use VPC security groups to
    #           restrict traffic by the client's public IP address. This is not possible with
    #             <code>EndpointType</code> set to <code>VPC_ENDPOINT</code>.</p>
    #            </note>
    #
    # @option params [String] :host_key
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
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key">Change the host key for your SFTP-enabled server</a> in the <i>Amazon Web Services Transfer
    #           Family User Guide</i>.</p>
    #
    # @option params [IdentityProviderDetails] :identity_provider_details
    #   <p>Required when <code>IdentityProviderType</code> is set to
    #           <code>AWS_DIRECTORY_SERVICE</code> or <code>API_GATEWAY</code>. Accepts an array containing
    #         all of the information required to use a directory in <code>AWS_DIRECTORY_SERVICE</code> or
    #         invoke a customer-supplied authentication API, including the API Gateway URL. Not required
    #         when <code>IdentityProviderType</code> is set to <code>SERVICE_MANAGED</code>.</p>
    #
    # @option params [String] :identity_provider_type
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
    # @option params [String] :logging_role
    #   <p>Specifies the Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that allows a server to turn
    #         on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, user activity can be viewed in
    #         your CloudWatch logs.</p>
    #
    # @option params [String] :post_authentication_login_banner
    #   <p>Specify a string to display when users connect to a server. This string is displayed after the user authenticates.</p>
    #            <note>
    #               <p>The SFTP protocol does not support post-authentication display banners.</p>
    #            </note>
    #
    # @option params [String] :pre_authentication_login_banner
    #   <p>Specify a string to display when users connect to a server. This string is displayed before the user authenticates.
    #       For example, the following banner displays details about using the system.</p>
    #            <p>
    #               <code>This system is for the use of authorized users only. Individuals using this computer system without authority,
    #       or in excess of their authority, are subject to having all of their activities on this system monitored and recorded by
    #       system personnel.</code>
    #            </p>
    #
    # @option params [Array<String>] :protocols
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
    # @option params [ProtocolDetails] :protocol_details
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
    # @option params [String] :security_policy_name
    #   <p>Specifies the name of the security policy that is attached to the server.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Key-value pairs that can be used to group and search for servers.</p>
    #
    # @option params [WorkflowDetails] :workflow_details
    #   <p>Specifies the workflow ID for the workflow to assign and the execution role used for executing the workflow.</p>
    #
    # @return [Types::CreateServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_server(
    #     certificate: 'Certificate',
    #     domain: 'S3', # accepts ["S3", "EFS"]
    #     endpoint_details: {
    #       address_allocation_ids: [
    #         'member'
    #       ],
    #       subnet_ids: [
    #         'member'
    #       ],
    #       vpc_endpoint_id: 'VpcEndpointId',
    #       vpc_id: 'VpcId',
    #       security_group_ids: [
    #         'member'
    #       ]
    #     },
    #     endpoint_type: 'PUBLIC', # accepts ["PUBLIC", "VPC", "VPC_ENDPOINT"]
    #     host_key: 'HostKey',
    #     identity_provider_details: {
    #       url: 'Url',
    #       invocation_role: 'InvocationRole',
    #       directory_id: 'DirectoryId',
    #       function: 'Function'
    #     },
    #     identity_provider_type: 'SERVICE_MANAGED', # accepts ["SERVICE_MANAGED", "API_GATEWAY", "AWS_DIRECTORY_SERVICE", "AWS_LAMBDA"]
    #     logging_role: 'LoggingRole',
    #     post_authentication_login_banner: 'PostAuthenticationLoginBanner',
    #     pre_authentication_login_banner: 'PreAuthenticationLoginBanner',
    #     protocols: [
    #       'SFTP' # accepts ["SFTP", "FTP", "FTPS"]
    #     ],
    #     protocol_details: {
    #       passive_ip: 'PassiveIp',
    #       tls_session_resumption_mode: 'DISABLED', # accepts ["DISABLED", "ENABLED", "ENFORCED"]
    #       set_stat_option: 'DEFAULT' # accepts ["DEFAULT", "ENABLE_NO_OP"]
    #     },
    #     security_policy_name: 'SecurityPolicyName',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     workflow_details: {
    #       on_upload: [
    #         {
    #           workflow_id: 'WorkflowId', # required
    #           execution_role: 'ExecutionRole' # required
    #         }
    #       ] # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateServerOutput
    #   resp.data.server_id #=> String
    #
    def create_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateServer
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceExistsException, Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceError]),
        data_parser: Parsers::CreateServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateServer,
        stubs: @stubs,
        params_class: Params::CreateServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a user and associates them with an existing file transfer protocol-enabled server.
    #       You can only create and associate users with servers that have the
    #         <code>IdentityProviderType</code> set to <code>SERVICE_MANAGED</code>. Using parameters for
    #         <code>CreateUser</code>, you can specify the user name, set the home directory, store the
    #       user's public key, and assign the user's Amazon Web Services Identity and Access Management (IAM)
    #       role. You can also optionally add a session policy, and assign metadata with tags that can
    #       be used to group and search for users.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserInput}.
    #
    # @option params [String] :home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p>
    #            <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>
    #
    # @option params [String] :home_directory_type
    #   <p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    #       If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    #       If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    #       S3 or EFS paths visible to your users.</p>
    #
    # @option params [Array<HomeDirectoryMapEntry>] :home_directory_mappings
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
    # @option params [String] :policy
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
    # @option params [PosixProfile] :posix_profile
    #   <p>Specifies the full POSIX identity, including user ID (<code>Uid</code>), group ID
    #           (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
    #         your users' access to your Amazon EFS file systems. The POSIX permissions that are set on
    #         files and directories in Amazon EFS determine the level of access your users get when
    #         transferring files into and out of your Amazon EFS file systems.</p>
    #
    # @option params [String] :role
    #   <p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
    #         file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
    #         files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
    #         server to access your resources when servicing your users' transfer requests.</p>
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server
    #         that you added your user to.</p>
    #
    # @option params [String] :ssh_public_key_body
    #   <p>The public portion of the Secure Shell (SSH) key used to authenticate the user to the
    #         server.</p>
    #            <note>
    #               <p>
    #           Currently, Transfer Family does not accept elliptical curve keys (keys beginning with <code>ecdsa</code>).
    #         </p>
    #            </note>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Key-value pairs that can be used to group and search for users. Tags are metadata attached
    #         to users for any purpose.</p>
    #
    # @option params [String] :user_name
    #   <p>A unique string that identifies a user and is associated with a <code>ServerId</code>. This user name must be a minimum of 3 and a maximum of 100 characters
    #         long. The following are valid characters: a-z, A-Z, 0-9, underscore '_', hyphen
    #         '-', period '.', and at sign '@'. The user name can't start
    #         with a hyphen, period, or at sign.</p>
    #
    # @return [Types::CreateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user(
    #     home_directory: 'HomeDirectory',
    #     home_directory_type: 'PATH', # accepts ["PATH", "LOGICAL"]
    #     home_directory_mappings: [
    #       {
    #         entry: 'Entry', # required
    #         target: 'Target' # required
    #       }
    #     ],
    #     policy: 'Policy',
    #     posix_profile: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [
    #         1
    #       ]
    #     },
    #     role: 'Role', # required
    #     server_id: 'ServerId', # required
    #     ssh_public_key_body: 'SshPublicKeyBody',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     user_name: 'UserName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserOutput
    #   resp.data.server_id #=> String
    #   resp.data.user_name #=> String
    #
    def create_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUser
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceExistsException, Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::CreateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUser,
        stubs: @stubs,
        params_class: Params::CreateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Allows you to create a workflow with specified steps and step details the workflow invokes after file transfer completes.
    #       After creating a workflow, you can associate the workflow created with any transfer servers by specifying the <code>workflow-details</code> field in <code>CreateServer</code> and <code>UpdateServer</code> operations.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::CreateWorkflowInput}.
    #
    # @option params [String] :description
    #   <p>A textual description for the workflow.</p>
    #
    # @option params [Array<WorkflowStep>] :steps
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
    # @option params [Array<WorkflowStep>] :on_exception_steps
    #   <p>Specifies the steps (actions) to take if errors are encountered during execution of the workflow.</p>
    #            <note>
    #               <p>For custom steps, the lambda function needs to send <code>FAILURE</code> to the call
    #           back API to kick off the exception steps. Additionally, if the lambda does not send
    #             <code>SUCCESS</code> before it times out, the exception steps are executed.</p>
    #            </note>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Key-value pairs that can be used to group and search for workflows. Tags are metadata attached
    #         to workflows for any purpose.</p>
    #
    # @return [Types::CreateWorkflowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workflow(
    #     description: 'Description',
    #     steps: [
    #       {
    #         type: 'COPY', # accepts ["COPY", "CUSTOM", "TAG", "DELETE"]
    #         copy_step_details: {
    #           name: 'Name',
    #           destination_file_location: {
    #             s3_file_location: {
    #               bucket: 'Bucket',
    #               key: 'Key'
    #             },
    #             efs_file_location: {
    #               file_system_id: 'FileSystemId',
    #               path: 'Path'
    #             }
    #           },
    #           overwrite_existing: 'TRUE', # accepts ["TRUE", "FALSE"]
    #           source_file_location: 'SourceFileLocation'
    #         },
    #         custom_step_details: {
    #           name: 'Name',
    #           target: 'Target',
    #           timeout_seconds: 1,
    #           source_file_location: 'SourceFileLocation'
    #         },
    #         delete_step_details: {
    #           name: 'Name',
    #           source_file_location: 'SourceFileLocation'
    #         },
    #         tag_step_details: {
    #           name: 'Name',
    #           tags: [
    #             {
    #               key: 'Key', # required
    #               value: 'Value' # required
    #             }
    #           ],
    #           source_file_location: 'SourceFileLocation'
    #         }
    #       }
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWorkflowOutput
    #   resp.data.workflow_id #=> String
    #
    def create_workflow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWorkflowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWorkflowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWorkflow
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceExistsException, Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceError]),
        data_parser: Parsers::CreateWorkflow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWorkflow,
        stubs: @stubs,
        params_class: Params::CreateWorkflowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_workflow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows you to delete the access specified in the <code>ServerID</code> and
    #       <code>ExternalID</code> parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccessInput}.
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server that has this user assigned.</p>
    #
    # @option params [String] :external_id
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
    # @return [Types::DeleteAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access(
    #     server_id: 'ServerId', # required
    #     external_id: 'ExternalId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccessOutput
    #
    def delete_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccess
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::DeleteAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccess,
        stubs: @stubs,
        params_class: Params::DeleteAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the file transfer protocol-enabled server that you specify.</p>
    #
    #          <p>No response returns from this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteServerInput}.
    #
    # @option params [String] :server_id
    #   <p>A unique system-assigned identifier for a server instance.</p>
    #
    # @return [Types::DeleteServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_server(
    #     server_id: 'ServerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteServerOutput
    #
    def delete_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteServer
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceError]),
        data_parser: Parsers::DeleteServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteServer,
        stubs: @stubs,
        params_class: Params::DeleteServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a user's Secure Shell (SSH) public key.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSshPublicKeyInput}.
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a file transfer protocol-enabled server instance
    #         that has the user assigned to it.</p>
    #
    # @option params [String] :ssh_public_key_id
    #   <p>A unique identifier used to reference your user's specific SSH key.</p>
    #
    # @option params [String] :user_name
    #   <p>A unique string that identifies a user whose public key is being deleted.</p>
    #
    # @return [Types::DeleteSshPublicKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ssh_public_key(
    #     server_id: 'ServerId', # required
    #     ssh_public_key_id: 'SshPublicKeyId', # required
    #     user_name: 'UserName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSshPublicKeyOutput
    #
    def delete_ssh_public_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSshPublicKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSshPublicKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSshPublicKey
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceError]),
        data_parser: Parsers::DeleteSshPublicKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSshPublicKey,
        stubs: @stubs,
        params_class: Params::DeleteSshPublicKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_ssh_public_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the user belonging to a file transfer protocol-enabled server you specify.</p>
    #
    #          <p>No response returns from this operation.</p>
    #
    #          <note>
    #             <p>When you delete a user from a server, the user's information is lost.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserInput}.
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server instance that has the user assigned to
    #         it.</p>
    #
    # @option params [String] :user_name
    #   <p>A unique string that identifies a user that is being deleted from a server.</p>
    #
    # @return [Types::DeleteUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user(
    #     server_id: 'ServerId', # required
    #     user_name: 'UserName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserOutput
    #
    def delete_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUser
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::DeleteUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUser,
        stubs: @stubs,
        params_class: Params::DeleteUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified workflow.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWorkflowInput}.
    #
    # @option params [String] :workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    # @return [Types::DeleteWorkflowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow(
    #     workflow_id: 'WorkflowId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWorkflowOutput
    #
    def delete_workflow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWorkflowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWorkflowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWorkflow
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceError]),
        data_parser: Parsers::DeleteWorkflow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWorkflow,
        stubs: @stubs,
        params_class: Params::DeleteWorkflowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_workflow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the access that is assigned to the specific file transfer protocol-enabled
    #       server, as identified by its <code>ServerId</code> property and its
    #       <code>ExternalID</code>.</p>
    #
    #          <p>The response from this call returns the properties of the access that is associated with
    #       the <code>ServerId</code> value that was specified.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccessInput}.
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server that has this access assigned.</p>
    #
    # @option params [String] :external_id
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
    # @return [Types::DescribeAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_access(
    #     server_id: 'ServerId', # required
    #     external_id: 'ExternalId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccessOutput
    #   resp.data.server_id #=> String
    #   resp.data.access #=> Types::DescribedAccess
    #   resp.data.access.home_directory #=> String
    #   resp.data.access.home_directory_mappings #=> Array<HomeDirectoryMapEntry>
    #   resp.data.access.home_directory_mappings[0] #=> Types::HomeDirectoryMapEntry
    #   resp.data.access.home_directory_mappings[0].entry #=> String
    #   resp.data.access.home_directory_mappings[0].target #=> String
    #   resp.data.access.home_directory_type #=> String, one of ["PATH", "LOGICAL"]
    #   resp.data.access.policy #=> String
    #   resp.data.access.posix_profile #=> Types::PosixProfile
    #   resp.data.access.posix_profile.uid #=> Integer
    #   resp.data.access.posix_profile.gid #=> Integer
    #   resp.data.access.posix_profile.secondary_gids #=> Array<Integer>
    #   resp.data.access.posix_profile.secondary_gids[0] #=> Integer
    #   resp.data.access.role #=> String
    #   resp.data.access.external_id #=> String
    #
    def describe_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccess
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::DescribeAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccess,
        stubs: @stubs,
        params_class: Params::DescribeAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>You can use <code>DescribeExecution</code> to check the details of the execution of the specified workflow.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeExecutionInput}.
    #
    # @option params [String] :execution_id
    #   <p>A unique identifier for the execution of a workflow.</p>
    #
    # @option params [String] :workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    # @return [Types::DescribeExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_execution(
    #     execution_id: 'ExecutionId', # required
    #     workflow_id: 'WorkflowId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeExecutionOutput
    #   resp.data.workflow_id #=> String
    #   resp.data.execution #=> Types::DescribedExecution
    #   resp.data.execution.execution_id #=> String
    #   resp.data.execution.initial_file_location #=> Types::FileLocation
    #   resp.data.execution.initial_file_location.s3_file_location #=> Types::S3FileLocation
    #   resp.data.execution.initial_file_location.s3_file_location.bucket #=> String
    #   resp.data.execution.initial_file_location.s3_file_location.key #=> String
    #   resp.data.execution.initial_file_location.s3_file_location.version_id #=> String
    #   resp.data.execution.initial_file_location.s3_file_location.etag #=> String
    #   resp.data.execution.initial_file_location.efs_file_location #=> Types::EfsFileLocation
    #   resp.data.execution.initial_file_location.efs_file_location.file_system_id #=> String
    #   resp.data.execution.initial_file_location.efs_file_location.path #=> String
    #   resp.data.execution.service_metadata #=> Types::ServiceMetadata
    #   resp.data.execution.service_metadata.user_details #=> Types::UserDetails
    #   resp.data.execution.service_metadata.user_details.user_name #=> String
    #   resp.data.execution.service_metadata.user_details.server_id #=> String
    #   resp.data.execution.service_metadata.user_details.session_id #=> String
    #   resp.data.execution.execution_role #=> String
    #   resp.data.execution.logging_configuration #=> Types::LoggingConfiguration
    #   resp.data.execution.logging_configuration.logging_role #=> String
    #   resp.data.execution.logging_configuration.log_group_name #=> String
    #   resp.data.execution.posix_profile #=> Types::PosixProfile
    #   resp.data.execution.posix_profile.uid #=> Integer
    #   resp.data.execution.posix_profile.gid #=> Integer
    #   resp.data.execution.posix_profile.secondary_gids #=> Array<Integer>
    #   resp.data.execution.posix_profile.secondary_gids[0] #=> Integer
    #   resp.data.execution.status #=> String, one of ["IN_PROGRESS", "COMPLETED", "EXCEPTION", "HANDLING_EXCEPTION"]
    #   resp.data.execution.results #=> Types::ExecutionResults
    #   resp.data.execution.results.steps #=> Array<ExecutionStepResult>
    #   resp.data.execution.results.steps[0] #=> Types::ExecutionStepResult
    #   resp.data.execution.results.steps[0].step_type #=> String, one of ["COPY", "CUSTOM", "TAG", "DELETE"]
    #   resp.data.execution.results.steps[0].outputs #=> String
    #   resp.data.execution.results.steps[0].error #=> Types::ExecutionError
    #   resp.data.execution.results.steps[0].error.type #=> String, one of ["PERMISSION_DENIED", "CUSTOM_STEP_FAILED", "THROTTLED", "ALREADY_EXISTS", "NOT_FOUND", "BAD_REQUEST", "TIMEOUT", "INTERNAL_SERVER_ERROR"]
    #   resp.data.execution.results.steps[0].error.message #=> String
    #   resp.data.execution.results.on_exception_steps #=> Array<ExecutionStepResult>
    #
    def describe_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeExecution
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::DescribeExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeExecution,
        stubs: @stubs,
        params_class: Params::DescribeExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the security policy that is attached to your file transfer protocol-enabled
    #       server. The response contains a description of the security policy's properties. For more
    #       information about security policies, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html">Working with security
    #         policies</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSecurityPolicyInput}.
    #
    # @option params [String] :security_policy_name
    #   <p>Specifies the name of the security policy that is attached to the server.</p>
    #
    # @return [Types::DescribeSecurityPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_security_policy(
    #     security_policy_name: 'SecurityPolicyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSecurityPolicyOutput
    #   resp.data.security_policy #=> Types::DescribedSecurityPolicy
    #   resp.data.security_policy.fips #=> Boolean
    #   resp.data.security_policy.security_policy_name #=> String
    #   resp.data.security_policy.ssh_ciphers #=> Array<String>
    #   resp.data.security_policy.ssh_ciphers[0] #=> String
    #   resp.data.security_policy.ssh_kexs #=> Array<String>
    #   resp.data.security_policy.ssh_macs #=> Array<String>
    #   resp.data.security_policy.tls_ciphers #=> Array<String>
    #
    def describe_security_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSecurityPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSecurityPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSecurityPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::DescribeSecurityPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSecurityPolicy,
        stubs: @stubs,
        params_class: Params::DescribeSecurityPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_security_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a file transfer protocol-enabled server that you specify by passing the
    #         <code>ServerId</code> parameter.</p>
    #
    #          <p>The response contains a description of a server's properties. When you set
    #         <code>EndpointType</code> to VPC, the response will contain the
    #       <code>EndpointDetails</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeServerInput}.
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server.</p>
    #
    # @return [Types::DescribeServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_server(
    #     server_id: 'ServerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeServerOutput
    #   resp.data.server #=> Types::DescribedServer
    #   resp.data.server.arn #=> String
    #   resp.data.server.certificate #=> String
    #   resp.data.server.protocol_details #=> Types::ProtocolDetails
    #   resp.data.server.protocol_details.passive_ip #=> String
    #   resp.data.server.protocol_details.tls_session_resumption_mode #=> String, one of ["DISABLED", "ENABLED", "ENFORCED"]
    #   resp.data.server.protocol_details.set_stat_option #=> String, one of ["DEFAULT", "ENABLE_NO_OP"]
    #   resp.data.server.domain #=> String, one of ["S3", "EFS"]
    #   resp.data.server.endpoint_details #=> Types::EndpointDetails
    #   resp.data.server.endpoint_details.address_allocation_ids #=> Array<String>
    #   resp.data.server.endpoint_details.address_allocation_ids[0] #=> String
    #   resp.data.server.endpoint_details.subnet_ids #=> Array<String>
    #   resp.data.server.endpoint_details.subnet_ids[0] #=> String
    #   resp.data.server.endpoint_details.vpc_endpoint_id #=> String
    #   resp.data.server.endpoint_details.vpc_id #=> String
    #   resp.data.server.endpoint_details.security_group_ids #=> Array<String>
    #   resp.data.server.endpoint_details.security_group_ids[0] #=> String
    #   resp.data.server.endpoint_type #=> String, one of ["PUBLIC", "VPC", "VPC_ENDPOINT"]
    #   resp.data.server.host_key_fingerprint #=> String
    #   resp.data.server.identity_provider_details #=> Types::IdentityProviderDetails
    #   resp.data.server.identity_provider_details.url #=> String
    #   resp.data.server.identity_provider_details.invocation_role #=> String
    #   resp.data.server.identity_provider_details.directory_id #=> String
    #   resp.data.server.identity_provider_details.function #=> String
    #   resp.data.server.identity_provider_type #=> String, one of ["SERVICE_MANAGED", "API_GATEWAY", "AWS_DIRECTORY_SERVICE", "AWS_LAMBDA"]
    #   resp.data.server.logging_role #=> String
    #   resp.data.server.post_authentication_login_banner #=> String
    #   resp.data.server.pre_authentication_login_banner #=> String
    #   resp.data.server.protocols #=> Array<String>
    #   resp.data.server.protocols[0] #=> String, one of ["SFTP", "FTP", "FTPS"]
    #   resp.data.server.security_policy_name #=> String
    #   resp.data.server.server_id #=> String
    #   resp.data.server.state #=> String, one of ["OFFLINE", "ONLINE", "STARTING", "STOPPING", "START_FAILED", "STOP_FAILED"]
    #   resp.data.server.tags #=> Array<Tag>
    #   resp.data.server.tags[0] #=> Types::Tag
    #   resp.data.server.tags[0].key #=> String
    #   resp.data.server.tags[0].value #=> String
    #   resp.data.server.user_count #=> Integer
    #   resp.data.server.workflow_details #=> Types::WorkflowDetails
    #   resp.data.server.workflow_details.on_upload #=> Array<WorkflowDetail>
    #   resp.data.server.workflow_details.on_upload[0] #=> Types::WorkflowDetail
    #   resp.data.server.workflow_details.on_upload[0].workflow_id #=> String
    #   resp.data.server.workflow_details.on_upload[0].execution_role #=> String
    #
    def describe_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeServer
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::DescribeServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeServer,
        stubs: @stubs,
        params_class: Params::DescribeServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the user assigned to the specific file transfer protocol-enabled server, as
    #       identified by its <code>ServerId</code> property.</p>
    #
    #          <p>The response from this call returns the properties of the user associated with the
    #         <code>ServerId</code> value that was specified.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserInput}.
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server that has this user assigned.</p>
    #
    # @option params [String] :user_name
    #   <p>The name of the user assigned to one or more servers. User names are part of the sign-in
    #         credentials to use the Amazon Web Services Transfer Family service and perform file transfer tasks.</p>
    #
    # @return [Types::DescribeUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user(
    #     server_id: 'ServerId', # required
    #     user_name: 'UserName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserOutput
    #   resp.data.server_id #=> String
    #   resp.data.user #=> Types::DescribedUser
    #   resp.data.user.arn #=> String
    #   resp.data.user.home_directory #=> String
    #   resp.data.user.home_directory_mappings #=> Array<HomeDirectoryMapEntry>
    #   resp.data.user.home_directory_mappings[0] #=> Types::HomeDirectoryMapEntry
    #   resp.data.user.home_directory_mappings[0].entry #=> String
    #   resp.data.user.home_directory_mappings[0].target #=> String
    #   resp.data.user.home_directory_type #=> String, one of ["PATH", "LOGICAL"]
    #   resp.data.user.policy #=> String
    #   resp.data.user.posix_profile #=> Types::PosixProfile
    #   resp.data.user.posix_profile.uid #=> Integer
    #   resp.data.user.posix_profile.gid #=> Integer
    #   resp.data.user.posix_profile.secondary_gids #=> Array<Integer>
    #   resp.data.user.posix_profile.secondary_gids[0] #=> Integer
    #   resp.data.user.role #=> String
    #   resp.data.user.ssh_public_keys #=> Array<SshPublicKey>
    #   resp.data.user.ssh_public_keys[0] #=> Types::SshPublicKey
    #   resp.data.user.ssh_public_keys[0].date_imported #=> Time
    #   resp.data.user.ssh_public_keys[0].ssh_public_key_body #=> String
    #   resp.data.user.ssh_public_keys[0].ssh_public_key_id #=> String
    #   resp.data.user.tags #=> Array<Tag>
    #   resp.data.user.tags[0] #=> Types::Tag
    #   resp.data.user.tags[0].key #=> String
    #   resp.data.user.tags[0].value #=> String
    #   resp.data.user.user_name #=> String
    #
    def describe_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUser
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::DescribeUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUser,
        stubs: @stubs,
        params_class: Params::DescribeUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified workflow.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorkflowInput}.
    #
    # @option params [String] :workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    # @return [Types::DescribeWorkflowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workflow(
    #     workflow_id: 'WorkflowId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorkflowOutput
    #   resp.data.workflow #=> Types::DescribedWorkflow
    #   resp.data.workflow.arn #=> String
    #   resp.data.workflow.description #=> String
    #   resp.data.workflow.steps #=> Array<WorkflowStep>
    #   resp.data.workflow.steps[0] #=> Types::WorkflowStep
    #   resp.data.workflow.steps[0].type #=> String, one of ["COPY", "CUSTOM", "TAG", "DELETE"]
    #   resp.data.workflow.steps[0].copy_step_details #=> Types::CopyStepDetails
    #   resp.data.workflow.steps[0].copy_step_details.name #=> String
    #   resp.data.workflow.steps[0].copy_step_details.destination_file_location #=> Types::InputFileLocation
    #   resp.data.workflow.steps[0].copy_step_details.destination_file_location.s3_file_location #=> Types::S3InputFileLocation
    #   resp.data.workflow.steps[0].copy_step_details.destination_file_location.s3_file_location.bucket #=> String
    #   resp.data.workflow.steps[0].copy_step_details.destination_file_location.s3_file_location.key #=> String
    #   resp.data.workflow.steps[0].copy_step_details.destination_file_location.efs_file_location #=> Types::EfsFileLocation
    #   resp.data.workflow.steps[0].copy_step_details.destination_file_location.efs_file_location.file_system_id #=> String
    #   resp.data.workflow.steps[0].copy_step_details.destination_file_location.efs_file_location.path #=> String
    #   resp.data.workflow.steps[0].copy_step_details.overwrite_existing #=> String, one of ["TRUE", "FALSE"]
    #   resp.data.workflow.steps[0].copy_step_details.source_file_location #=> String
    #   resp.data.workflow.steps[0].custom_step_details #=> Types::CustomStepDetails
    #   resp.data.workflow.steps[0].custom_step_details.name #=> String
    #   resp.data.workflow.steps[0].custom_step_details.target #=> String
    #   resp.data.workflow.steps[0].custom_step_details.timeout_seconds #=> Integer
    #   resp.data.workflow.steps[0].custom_step_details.source_file_location #=> String
    #   resp.data.workflow.steps[0].delete_step_details #=> Types::DeleteStepDetails
    #   resp.data.workflow.steps[0].delete_step_details.name #=> String
    #   resp.data.workflow.steps[0].delete_step_details.source_file_location #=> String
    #   resp.data.workflow.steps[0].tag_step_details #=> Types::TagStepDetails
    #   resp.data.workflow.steps[0].tag_step_details.name #=> String
    #   resp.data.workflow.steps[0].tag_step_details.tags #=> Array<S3Tag>
    #   resp.data.workflow.steps[0].tag_step_details.tags[0] #=> Types::S3Tag
    #   resp.data.workflow.steps[0].tag_step_details.tags[0].key #=> String
    #   resp.data.workflow.steps[0].tag_step_details.tags[0].value #=> String
    #   resp.data.workflow.steps[0].tag_step_details.source_file_location #=> String
    #   resp.data.workflow.on_exception_steps #=> Array<WorkflowStep>
    #   resp.data.workflow.workflow_id #=> String
    #   resp.data.workflow.tags #=> Array<Tag>
    #   resp.data.workflow.tags[0] #=> Types::Tag
    #   resp.data.workflow.tags[0].key #=> String
    #   resp.data.workflow.tags[0].value #=> String
    #
    def describe_workflow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorkflowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorkflowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorkflow
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::DescribeWorkflow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorkflow,
        stubs: @stubs,
        params_class: Params::DescribeWorkflowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_workflow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a Secure Shell (SSH) public key to a user account identified by a
    #         <code>UserName</code> value assigned to the specific file transfer protocol-enabled server,
    #       identified by <code>ServerId</code>.</p>
    #
    #          <p>The response returns the <code>UserName</code> value, the <code>ServerId</code> value, and
    #       the name of the <code>SshPublicKeyId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportSshPublicKeyInput}.
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server.</p>
    #
    # @option params [String] :ssh_public_key_body
    #   <p>The public key portion of an SSH key pair.</p>
    #
    # @option params [String] :user_name
    #   <p>The name of the user account that is assigned to one or more servers.</p>
    #
    # @return [Types::ImportSshPublicKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_ssh_public_key(
    #     server_id: 'ServerId', # required
    #     ssh_public_key_body: 'SshPublicKeyBody', # required
    #     user_name: 'UserName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportSshPublicKeyOutput
    #   resp.data.server_id #=> String
    #   resp.data.ssh_public_key_id #=> String
    #   resp.data.user_name #=> String
    #
    def import_ssh_public_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportSshPublicKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportSshPublicKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportSshPublicKey
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceExistsException, Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceError]),
        data_parser: Parsers::ImportSshPublicKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportSshPublicKey,
        stubs: @stubs,
        params_class: Params::ImportSshPublicKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_ssh_public_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the details for all the accesses you have on your server.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccessesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of access SIDs to return.</p>
    #
    # @option params [String] :next_token
    #   <p>When you can get additional results from the <code>ListAccesses</code> call, a
    #           <code>NextToken</code> parameter is returned in the output. You can then pass in a
    #         subsequent command to the <code>NextToken</code> parameter to continue listing additional
    #         accesses.</p>
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server that has users assigned to it.</p>
    #
    # @return [Types::ListAccessesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accesses(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     server_id: 'ServerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccessesOutput
    #   resp.data.next_token #=> String
    #   resp.data.server_id #=> String
    #   resp.data.accesses #=> Array<ListedAccess>
    #   resp.data.accesses[0] #=> Types::ListedAccess
    #   resp.data.accesses[0].home_directory #=> String
    #   resp.data.accesses[0].home_directory_type #=> String, one of ["PATH", "LOGICAL"]
    #   resp.data.accesses[0].role #=> String
    #   resp.data.accesses[0].external_id #=> String
    #
    def list_accesses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccessesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccessesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccesses
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListAccesses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccesses,
        stubs: @stubs,
        params_class: Params::ListAccessesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_accesses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all executions for the specified workflow.</p>
    #
    # @param [Hash] params
    #   See {Types::ListExecutionsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the aximum number of executions to return.</p>
    #
    # @option params [String] :next_token
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
    # @option params [String] :workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    # @return [Types::ListExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_executions(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     workflow_id: 'WorkflowId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExecutionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.workflow_id #=> String
    #   resp.data.executions #=> Array<ListedExecution>
    #   resp.data.executions[0] #=> Types::ListedExecution
    #   resp.data.executions[0].execution_id #=> String
    #   resp.data.executions[0].initial_file_location #=> Types::FileLocation
    #   resp.data.executions[0].initial_file_location.s3_file_location #=> Types::S3FileLocation
    #   resp.data.executions[0].initial_file_location.s3_file_location.bucket #=> String
    #   resp.data.executions[0].initial_file_location.s3_file_location.key #=> String
    #   resp.data.executions[0].initial_file_location.s3_file_location.version_id #=> String
    #   resp.data.executions[0].initial_file_location.s3_file_location.etag #=> String
    #   resp.data.executions[0].initial_file_location.efs_file_location #=> Types::EfsFileLocation
    #   resp.data.executions[0].initial_file_location.efs_file_location.file_system_id #=> String
    #   resp.data.executions[0].initial_file_location.efs_file_location.path #=> String
    #   resp.data.executions[0].service_metadata #=> Types::ServiceMetadata
    #   resp.data.executions[0].service_metadata.user_details #=> Types::UserDetails
    #   resp.data.executions[0].service_metadata.user_details.user_name #=> String
    #   resp.data.executions[0].service_metadata.user_details.server_id #=> String
    #   resp.data.executions[0].service_metadata.user_details.session_id #=> String
    #   resp.data.executions[0].status #=> String, one of ["IN_PROGRESS", "COMPLETED", "EXCEPTION", "HANDLING_EXCEPTION"]
    #
    def list_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExecutionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExecutions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExecutions,
        stubs: @stubs,
        params_class: Params::ListExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the security policies that are attached to your file transfer protocol-enabled
    #       servers.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSecurityPoliciesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the number of security policies to return as a response to the
    #           <code>ListSecurityPolicies</code> query.</p>
    #
    # @option params [String] :next_token
    #   <p>When additional results are obtained from the <code>ListSecurityPolicies</code> command, a
    #           <code>NextToken</code> parameter is returned in the output. You can then pass the
    #           <code>NextToken</code> parameter in a subsequent command to continue listing additional
    #         security policies.</p>
    #
    # @return [Types::ListSecurityPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_policies(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSecurityPoliciesOutput
    #   resp.data.next_token #=> String
    #   resp.data.security_policy_names #=> Array<String>
    #   resp.data.security_policy_names[0] #=> String
    #
    def list_security_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSecurityPoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSecurityPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSecurityPolicies
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::InternalServiceError, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListSecurityPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSecurityPolicies,
        stubs: @stubs,
        params_class: Params::ListSecurityPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_security_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the file transfer protocol-enabled servers that are associated with your Amazon Web Services
    #       account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServersInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the number of servers to return as a response to the <code>ListServers</code>
    #         query.</p>
    #
    # @option params [String] :next_token
    #   <p>When additional results are obtained from the <code>ListServers</code> command, a
    #           <code>NextToken</code> parameter is returned in the output. You can then pass the
    #           <code>NextToken</code> parameter in a subsequent command to continue listing additional
    #         servers.</p>
    #
    # @return [Types::ListServersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_servers(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServersOutput
    #   resp.data.next_token #=> String
    #   resp.data.servers #=> Array<ListedServer>
    #   resp.data.servers[0] #=> Types::ListedServer
    #   resp.data.servers[0].arn #=> String
    #   resp.data.servers[0].domain #=> String, one of ["S3", "EFS"]
    #   resp.data.servers[0].identity_provider_type #=> String, one of ["SERVICE_MANAGED", "API_GATEWAY", "AWS_DIRECTORY_SERVICE", "AWS_LAMBDA"]
    #   resp.data.servers[0].endpoint_type #=> String, one of ["PUBLIC", "VPC", "VPC_ENDPOINT"]
    #   resp.data.servers[0].logging_role #=> String
    #   resp.data.servers[0].server_id #=> String
    #   resp.data.servers[0].state #=> String, one of ["OFFLINE", "ONLINE", "STARTING", "STOPPING", "START_FAILED", "STOP_FAILED"]
    #   resp.data.servers[0].user_count #=> Integer
    #
    def list_servers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServers
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::InternalServiceError, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListServers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServers,
        stubs: @stubs,
        params_class: Params::ListServersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_servers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the tags associated with the Amazon Resource Name (ARN) that you specify. The
    #       resource can be a user, server, or role.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :arn
    #   <p>Requests the tags associated with a particular Amazon Resource Name (ARN). An ARN is an
    #         identifier for a specific Amazon Web Services resource, such as a server, user, or role.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the number of tags to return as a response to the
    #           <code>ListTagsForResource</code> request.</p>
    #
    # @option params [String] :next_token
    #   <p>When you request additional results from the <code>ListTagsForResource</code> operation, a
    #           <code>NextToken</code> parameter is returned in the input. You can then pass in a subsequent
    #         command to the <code>NextToken</code> parameter to continue listing additional tags.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     arn: 'Arn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.arn #=> String
    #   resp.data.next_token #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::InternalServiceError, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the users for a file transfer protocol-enabled server that you specify by passing
    #       the <code>ServerId</code> parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUsersInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the number of users to return as a response to the <code>ListUsers</code>
    #         request.</p>
    #
    # @option params [String] :next_token
    #   <p>When you can get additional results from the <code>ListUsers</code> call, a
    #           <code>NextToken</code> parameter is returned in the output. You can then pass in a
    #         subsequent command to the <code>NextToken</code> parameter to continue listing additional
    #         users.</p>
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server that has users assigned to it.</p>
    #
    # @return [Types::ListUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     server_id: 'ServerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUsersOutput
    #   resp.data.next_token #=> String
    #   resp.data.server_id #=> String
    #   resp.data.users #=> Array<ListedUser>
    #   resp.data.users[0] #=> Types::ListedUser
    #   resp.data.users[0].arn #=> String
    #   resp.data.users[0].home_directory #=> String
    #   resp.data.users[0].home_directory_type #=> String, one of ["PATH", "LOGICAL"]
    #   resp.data.users[0].role #=> String
    #   resp.data.users[0].ssh_public_key_count #=> Integer
    #   resp.data.users[0].user_name #=> String
    #
    def list_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUsers
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUsers,
        stubs: @stubs,
        params_class: Params::ListUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of your workflows.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWorkflowsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of workflows to return.</p>
    #
    # @option params [String] :next_token
    #   <p>
    #               <code>ListWorkflows</code> returns the <code>NextToken</code> parameter in the output.
    #         You can then pass the <code>NextToken</code> parameter in a subsequent command to
    #         continue listing additional workflows.</p>
    #
    # @return [Types::ListWorkflowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflows(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorkflowsOutput
    #   resp.data.next_token #=> String
    #   resp.data.workflows #=> Array<ListedWorkflow>
    #   resp.data.workflows[0] #=> Types::ListedWorkflow
    #   resp.data.workflows[0].workflow_id #=> String
    #   resp.data.workflows[0].description #=> String
    #   resp.data.workflows[0].arn #=> String
    #
    def list_workflows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorkflowsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorkflowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorkflows
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::InternalServiceError, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListWorkflows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorkflows,
        stubs: @stubs,
        params_class: Params::ListWorkflowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_workflows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends a callback for asynchronous custom steps.</p>
    #          <p>
    #       The <code>ExecutionId</code>, <code>WorkflowId</code>, and <code>Token</code> are passed to the target resource during execution of a custom step of a workflow.
    #       You must include those with their callback as well as providing a status.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::SendWorkflowStepStateInput}.
    #
    # @option params [String] :workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #
    # @option params [String] :execution_id
    #   <p>A unique identifier for the execution of a workflow.</p>
    #
    # @option params [String] :token
    #   <p>Used to distinguish between multiple callbacks for multiple Lambda steps within the same execution.</p>
    #
    # @option params [String] :status
    #   <p>Indicates whether the specified step succeeded or failed.</p>
    #
    # @return [Types::SendWorkflowStepStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_workflow_step_state(
    #     workflow_id: 'WorkflowId', # required
    #     execution_id: 'ExecutionId', # required
    #     token: 'Token', # required
    #     status: 'SUCCESS' # required - accepts ["SUCCESS", "FAILURE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendWorkflowStepStateOutput
    #
    def send_workflow_step_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendWorkflowStepStateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendWorkflowStepStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendWorkflowStepState
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceError]),
        data_parser: Parsers::SendWorkflowStepState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendWorkflowStepState,
        stubs: @stubs,
        params_class: Params::SendWorkflowStepStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_workflow_step_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the state of a file transfer protocol-enabled server from <code>OFFLINE</code> to
    #         <code>ONLINE</code>. It has no impact on a server that is already <code>ONLINE</code>. An
    #         <code>ONLINE</code> server can accept and process file transfer jobs.</p>
    #
    #          <p>The state of <code>STARTING</code> indicates that the server is in an intermediate state,
    #       either not fully able to respond, or not fully online. The values of <code>START_FAILED</code>
    #       can indicate an error condition.</p>
    #
    #          <p>No response is returned from this call.</p>
    #
    # @param [Hash] params
    #   See {Types::StartServerInput}.
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server that you start.</p>
    #
    # @return [Types::StartServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_server(
    #     server_id: 'ServerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartServerOutput
    #
    def start_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartServer
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceError]),
        data_parser: Parsers::StartServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartServer,
        stubs: @stubs,
        params_class: Params::StartServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the state of a file transfer protocol-enabled server from <code>ONLINE</code> to
    #         <code>OFFLINE</code>. An <code>OFFLINE</code> server cannot accept and process file transfer
    #       jobs. Information tied to your server, such as server and user properties, are not affected by
    #       stopping your server.</p>
    #
    #          <note>
    #             <p>Stopping the server will not reduce or impact your file transfer protocol endpoint
    #         billing; you must delete the server to stop being billed.</p>
    #          </note>
    #
    #          <p>The state of <code>STOPPING</code> indicates that the server is in an intermediate state,
    #       either not fully able to respond, or not fully offline. The values of <code>STOP_FAILED</code>
    #       can indicate an error condition.</p>
    #
    #          <p>No response is returned from this call.</p>
    #
    # @param [Hash] params
    #   See {Types::StopServerInput}.
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server that you stopped.</p>
    #
    # @return [Types::StopServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_server(
    #     server_id: 'ServerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopServerOutput
    #
    def stop_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopServer
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceError]),
        data_parser: Parsers::StopServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopServer,
        stubs: @stubs,
        params_class: Params::StopServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches a key-value pair to a resource, as identified by its Amazon Resource Name (ARN).
    #       Resources are users, servers, roles, and other entities.</p>
    #
    #          <p>There is no response returned from this call.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :arn
    #   <p>An Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a server, user, or
    #         role.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Key-value pairs assigned to ARNs that you can use to group and search for resources by
    #         type. You can attach this metadata to user accounts for any purpose.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     arn: 'Arn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>If the <code>IdentityProviderType</code> of a file transfer protocol-enabled server is
    #         <code>AWS_DIRECTORY_SERVICE</code> or <code>API_Gateway</code>, tests whether your identity
    #       provider is set up successfully. We highly recommend that you call this operation to test your
    #       authentication method as soon as you create your server. By doing so, you can troubleshoot
    #       issues with the identity provider integration to ensure that your users can successfully use
    #       the service.</p>
    #          <p>
    #       The <code>ServerId</code> and <code>UserName</code> parameters are required. The <code>ServerProtocol</code>, <code>SourceIp</code>, and <code>UserPassword</code> are all optional.
    #     </p>
    #          <note>
    #             <p>
    #         You cannot use <code>TestIdentityProvider</code> if the <code>IdentityProviderType</code> of your server is <code>SERVICE_MANAGED</code>.
    #       </p>
    #          </note>
    #          <ul>
    #             <li>
    #                <p>
    #         If you provide any incorrect values for any parameters, the <code>Response</code> field is empty.
    #       </p>
    #             </li>
    #             <li>
    #                <p>
    #         If you provide a server ID for a server that uses service-managed users, you get an error:
    #       </p>
    #                <p>
    #                   <code>
    #         An error occurred (InvalidRequestException) when calling the TestIdentityProvider operation: s-<i>server-ID</i> not configured for external auth
    #       </code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #           If you enter a Server ID for the <code>--server-id</code> parameter that does not identify an actual Transfer server, you receive the following error:
    #         </p>
    #                <p>
    #                   <code>An error occurred (ResourceNotFoundException) when calling the TestIdentityProvider operation: Unknown server</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::TestIdentityProviderInput}.
    #
    # @option params [String] :server_id
    #   <p>A system-assigned identifier for a specific server. That server's user authentication
    #         method is tested with a user name and password.</p>
    #
    # @option params [String] :server_protocol
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
    # @option params [String] :source_ip
    #   <p>The source IP address of the user account to be tested.</p>
    #
    # @option params [String] :user_name
    #   <p>The name of the user account to be tested.</p>
    #
    # @option params [String] :user_password
    #   <p>The password of the user account to be tested.</p>
    #
    # @return [Types::TestIdentityProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_identity_provider(
    #     server_id: 'ServerId', # required
    #     server_protocol: 'SFTP', # accepts ["SFTP", "FTP", "FTPS"]
    #     source_ip: 'SourceIp',
    #     user_name: 'UserName', # required
    #     user_password: 'UserPassword'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestIdentityProviderOutput
    #   resp.data.response #=> String
    #   resp.data.status_code #=> Integer
    #   resp.data.message #=> String
    #   resp.data.url #=> String
    #
    def test_identity_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestIdentityProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestIdentityProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestIdentityProvider
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::TestIdentityProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestIdentityProvider,
        stubs: @stubs,
        params_class: Params::TestIdentityProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_identity_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detaches a key-value pair from a resource, as identified by its Amazon Resource Name
    #       (ARN). Resources are users, servers, roles, and other entities.</p>
    #
    #          <p>No response is returned from this call.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :arn
    #   <p>The value of the resource that will have the tag removed. An Amazon Resource Name (ARN) is
    #         an identifier for a specific Amazon Web Services resource, such as a server, user, or role.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>TagKeys are key-value pairs assigned to ARNs that can be used to group and search for
    #         resources by type. This metadata can be attached to resources for any purpose.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     arn: 'Arn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows you to update parameters for the access specified in the <code>ServerID</code> and
    #       <code>ExternalID</code> parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAccessInput}.
    #
    # @option params [String] :home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p>
    #            <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>
    #
    # @option params [String] :home_directory_type
    #   <p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    #       If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    #       If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    #       S3 or EFS paths visible to your users.</p>
    #
    # @option params [Array<HomeDirectoryMapEntry>] :home_directory_mappings
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
    # @option params [String] :policy
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
    # @option params [PosixProfile] :posix_profile
    #   <p>The full POSIX identity, including user ID (<code>Uid</code>), group ID
    #         (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
    #         your users' access to your Amazon EFS file systems. The POSIX permissions that are set on
    #         files and directories in your file system determine the level of access your users get when
    #         transferring files into and out of your Amazon EFS file systems.</p>
    #
    # @option params [String] :role
    #   <p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
    #         file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
    #         files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
    #         server to access your resources when servicing your users' transfer requests.</p>
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server that you added your user to.</p>
    #
    # @option params [String] :external_id
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
    # @return [Types::UpdateAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_access(
    #     home_directory: 'HomeDirectory',
    #     home_directory_type: 'PATH', # accepts ["PATH", "LOGICAL"]
    #     home_directory_mappings: [
    #       {
    #         entry: 'Entry', # required
    #         target: 'Target' # required
    #       }
    #     ],
    #     policy: 'Policy',
    #     posix_profile: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [
    #         1
    #       ]
    #     },
    #     role: 'Role',
    #     server_id: 'ServerId', # required
    #     external_id: 'ExternalId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAccessOutput
    #   resp.data.server_id #=> String
    #   resp.data.external_id #=> String
    #
    def update_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAccess
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceExistsException, Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::UpdateAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAccess,
        stubs: @stubs,
        params_class: Params::UpdateAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the file transfer protocol-enabled server's properties after that server has
    #       been created.</p>
    #
    #          <p>The <code>UpdateServer</code> call returns the <code>ServerId</code> of the server you
    #       updated.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateServerInput}.
    #
    # @option params [String] :certificate
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
    # @option params [ProtocolDetails] :protocol_details
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
    # @option params [EndpointDetails] :endpoint_details
    #   <p>The virtual private cloud (VPC) endpoint settings that are configured for your server.
    #         When you host your endpoint within your VPC, you can make it accessible only to resources
    #         within your VPC, or you can attach Elastic IP addresses and make it accessible to clients over
    #         the internet. Your VPC's default security groups are automatically assigned to your
    #         endpoint.</p>
    #
    # @option params [String] :endpoint_type
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
    #           https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.</p>
    #               <p>It is recommended that you use <code>VPC</code> as the <code>EndpointType</code>. With
    #           this endpoint type, you have the option to directly associate up to three Elastic IPv4
    #           addresses (BYO IP included) with your server's endpoint and use VPC security groups to
    #           restrict traffic by the client's public IP address. This is not possible with
    #             <code>EndpointType</code> set to <code>VPC_ENDPOINT</code>.</p>
    #            </note>
    #
    # @option params [String] :host_key
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
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key">Change the host key for your SFTP-enabled server</a> in the <i>Amazon Web ServicesTransfer
    #           Family User Guide</i>.</p>
    #
    # @option params [IdentityProviderDetails] :identity_provider_details
    #   <p>An array containing all of the information required to call a customer's
    #         authentication API method.</p>
    #
    # @option params [String] :logging_role
    #   <p>Specifies the Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that allows a server to turn
    #         on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, user activity can be viewed in
    #         your CloudWatch logs.</p>
    #
    # @option params [String] :post_authentication_login_banner
    #   <p>Specify a string to display when users connect to a server. This string is displayed after the user authenticates.</p>
    #            <note>
    #               <p>The SFTP protocol does not support post-authentication display banners.</p>
    #            </note>
    #
    # @option params [String] :pre_authentication_login_banner
    #   <p>Specify a string to display when users connect to a server. This string is displayed before the user authenticates.
    #       For example, the following banner displays details about using the system.</p>
    #            <p>
    #               <code>This system is for the use of authorized users only. Individuals using this computer system without authority,
    #       or in excess of their authority, are subject to having all of their activities on this system monitored and recorded by
    #       system personnel.</code>
    #            </p>
    #
    # @option params [Array<String>] :protocols
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
    # @option params [String] :security_policy_name
    #   <p>Specifies the name of the security policy that is attached to the server.</p>
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server instance that the user account is
    #         assigned to.</p>
    #
    # @option params [WorkflowDetails] :workflow_details
    #   <p>Specifies the workflow ID for the workflow to assign and the execution role used for executing the workflow.</p>
    #            <p>To remove an associated workflow from a server, you can provide an empty <code>OnUpload</code> object, as in the following example.</p>
    #            <p>
    #               <code>aws transfer update-server --server-id s-01234567890abcdef --workflow-details '{"OnUpload":[]}'</code>
    #            </p>
    #
    # @return [Types::UpdateServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_server(
    #     certificate: 'Certificate',
    #     protocol_details: {
    #       passive_ip: 'PassiveIp',
    #       tls_session_resumption_mode: 'DISABLED', # accepts ["DISABLED", "ENABLED", "ENFORCED"]
    #       set_stat_option: 'DEFAULT' # accepts ["DEFAULT", "ENABLE_NO_OP"]
    #     },
    #     endpoint_details: {
    #       address_allocation_ids: [
    #         'member'
    #       ],
    #       subnet_ids: [
    #         'member'
    #       ],
    #       vpc_endpoint_id: 'VpcEndpointId',
    #       vpc_id: 'VpcId',
    #       security_group_ids: [
    #         'member'
    #       ]
    #     },
    #     endpoint_type: 'PUBLIC', # accepts ["PUBLIC", "VPC", "VPC_ENDPOINT"]
    #     host_key: 'HostKey',
    #     identity_provider_details: {
    #       url: 'Url',
    #       invocation_role: 'InvocationRole',
    #       directory_id: 'DirectoryId',
    #       function: 'Function'
    #     },
    #     logging_role: 'LoggingRole',
    #     post_authentication_login_banner: 'PostAuthenticationLoginBanner',
    #     pre_authentication_login_banner: 'PreAuthenticationLoginBanner',
    #     protocols: [
    #       'SFTP' # accepts ["SFTP", "FTP", "FTPS"]
    #     ],
    #     security_policy_name: 'SecurityPolicyName',
    #     server_id: 'ServerId', # required
    #     workflow_details: {
    #       on_upload: [
    #         {
    #           workflow_id: 'WorkflowId', # required
    #           execution_role: 'ExecutionRole' # required
    #         }
    #       ] # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServerOutput
    #   resp.data.server_id #=> String
    #
    def update_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateServer
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceExistsException, Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServiceError]),
        data_parser: Parsers::UpdateServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateServer,
        stubs: @stubs,
        params_class: Params::UpdateServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns new properties to a user. Parameters you pass modify any or all of the following:
    #       the home directory, role, and policy for the <code>UserName</code> and <code>ServerId</code>
    #       you specify.</p>
    #
    #          <p>The response returns the <code>ServerId</code> and the <code>UserName</code> for the
    #       updated user.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserInput}.
    #
    # @option params [String] :home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p>
    #            <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>
    #
    # @option params [String] :home_directory_type
    #   <p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    #       If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    #       If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    #       S3 or EFS paths visible to your users.</p>
    #
    # @option params [Array<HomeDirectoryMapEntry>] :home_directory_mappings
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
    # @option params [String] :policy
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
    # @option params [PosixProfile] :posix_profile
    #   <p>Specifies the full POSIX identity, including user ID (<code>Uid</code>), group ID
    #           (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
    #         your users' access to your Amazon Elastic File Systems (Amazon EFS). The POSIX permissions
    #         that are set on files and directories in your file system determines the level of access your
    #         users get when transferring files into and out of your Amazon EFS file systems.</p>
    #
    # @option params [String] :role
    #   <p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
    #         file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
    #         files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
    #         server to access your resources when servicing your users' transfer requests.</p>
    #
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server instance that the user account is
    #         assigned to.</p>
    #
    # @option params [String] :user_name
    #   <p>A unique string that identifies a user and is associated with a server as specified by the
    #           <code>ServerId</code>. This user name must be a minimum of 3 and a maximum of 100 characters
    #         long. The following are valid characters: a-z, A-Z, 0-9, underscore '_', hyphen
    #         '-', period '.', and at sign '@'. The user name can't start
    #         with a hyphen, period, or at sign.</p>
    #
    # @return [Types::UpdateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user(
    #     home_directory: 'HomeDirectory',
    #     home_directory_type: 'PATH', # accepts ["PATH", "LOGICAL"]
    #     home_directory_mappings: [
    #       {
    #         entry: 'Entry', # required
    #         target: 'Target' # required
    #       }
    #     ],
    #     policy: 'Policy',
    #     posix_profile: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [
    #         1
    #       ]
    #     },
    #     role: 'Role',
    #     server_id: 'ServerId', # required
    #     user_name: 'UserName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserOutput
    #   resp.data.server_id #=> String
    #   resp.data.user_name #=> String
    #
    def update_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUser
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceError]),
        data_parser: Parsers::UpdateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUser,
        stubs: @stubs,
        params_class: Params::UpdateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
