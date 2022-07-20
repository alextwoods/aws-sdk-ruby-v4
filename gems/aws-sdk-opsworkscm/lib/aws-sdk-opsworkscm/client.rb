# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::OpsWorksCM
  # An API client for OpsWorksCM_V2016_11_01
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS OpsWorks CM</fullname>
  #          <p>AWS OpsWorks for configuration management (CM) is a service that runs and manages
  #       configuration management servers. You can use AWS OpsWorks CM to create and manage AWS
  #       OpsWorks for Chef Automate and AWS OpsWorks for Puppet Enterprise servers, and add or remove
  #       nodes for the servers to manage.</p>
  #          <p>
  #             <b>Glossary of terms</b>
  #          </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <b>Server</b>: A configuration management server that can be
  #         highly-available. The configuration management server runs on
  #       an Amazon Elastic Compute Cloud (EC2) instance, and may use various other AWS services, such as Amazon Relational
  #       Database Service (RDS) and Elastic Load Balancing. A server is a generic abstraction over the configuration
  #       manager that you want to use, much like Amazon RDS. In AWS OpsWorks CM, you do not start
  #       or stop servers. After you create servers, they continue to run until they are deleted.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Engine</b>: The engine is the specific configuration manager
  #         that you want to use. Valid values in this release include <code>ChefAutomate</code> and <code>Puppet</code>.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Backup</b>: This
  #       is an application-level backup of the data that the configuration manager
  #       stores. AWS OpsWorks CM
  #       creates an S3 bucket for backups when you launch the first
  #       server. A backup maintains a snapshot of a server's configuration-related
  #       attributes at the time the backup starts.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Events</b>:
  #       Events are always related to a server. Events are written
  #       during server creation, when health checks run, when backups
  #       are created, when system maintenance is performed, etc. When you delete a server, the server's events are
  #       also deleted.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Account attributes</b>:
  #       Every account has attributes that are assigned in the AWS OpsWorks CM
  #       database. These attributes store information about configuration limits (servers,
  #       backups, etc.) and your customer account.
  #       </p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Endpoints</b>
  #          </p>
  #          <p>AWS OpsWorks CM supports the following endpoints, all HTTPS. You must connect to one of the following endpoints. Your servers
  #       can only be accessed or managed within the endpoint in which they are created.</p>
  #          <ul>
  #             <li>
  #                <p>opsworks-cm.us-east-1.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks-cm.us-east-2.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks-cm.us-west-1.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks-cm.us-west-2.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks-cm.ap-northeast-1.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks-cm.ap-southeast-1.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks-cm.ap-southeast-2.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks-cm.eu-central-1.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks-cm.eu-west-1.amazonaws.com</p>
  #             </li>
  #          </ul>
  #          <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/opsworks-service.html">AWS OpsWorks endpoints and quotas</a> in the AWS General Reference.</p>
  #          <p>
  #             <b>Throttling limits</b>
  #          </p>
  #          <p>All API operations allow for five requests per second with a burst of 10 requests per second.</p>
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
    def initialize(config = AWS::SDK::OpsWorksCM::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p> Associates a new node with the server. For more information about how to disassociate a node, see <a>DisassociateNode</a>.</p>
    #          <p>
    #       On a Chef server: This command is an alternative to  <code>knife bootstrap</code>.</p>
    #          <p>
    #         Example (Chef): <code>aws opsworks-cm associate-node --server-name <i>MyServer</i> --node-name <i>MyManagedNode</i> --engine-attributes "Name=<i>CHEF_ORGANIZATION</i>,Value=default" "Name=<i>CHEF_NODE_PUBLIC_KEY</i>,Value=<i>public-key-pem</i>"</code>
    #          </p>
    #          <p>
    #       On a Puppet server, this command is an alternative to the <code>puppet cert sign</code> command that signs a Puppet node CSR.
    #     </p>
    #          <p>
    #         Example (Puppet): <code>aws opsworks-cm associate-node --server-name <i>MyServer</i> --node-name <i>MyManagedNode</i> --engine-attributes "Name=<i>PUPPET_NODE_CSR</i>,Value=<i>csr-pem</i>"</code>
    #          </p>
    #          <p>
    #       A node can can only be associated with servers that are in a <code>HEALTHY</code> state. Otherwise, an <code>InvalidStateException</code> is thrown.
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #       The AssociateNode API call can be integrated into Auto Scaling configurations, AWS Cloudformation templates, or the user data of a server's instance.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::AssociateNodeInput}.
    #
    # @option params [String] :server_name
    #   <p>The name of the server with which to associate the node.
    #       </p>
    #
    # @option params [String] :node_name
    #   <p>The name of the node.
    #       </p>
    #
    # @option params [Array<EngineAttribute>] :engine_attributes
    #   <p>Engine attributes used for associating the node.
    #       </p>
    #            <p class="title">
    #               <b>Attributes accepted in a AssociateNode request for Chef</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHEF_ORGANIZATION</code>: The Chef organization
    #             with which the node is associated. By default only one organization
    #             named <code>default</code> can exist.
    #         </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CHEF_NODE_PUBLIC_KEY</code>: A PEM-formatted public key. This key is required for the <code>chef-client</code> agent to access the Chef API.
    #       </p>
    #               </li>
    #            </ul>
    #            <p class="title">
    #               <b>Attributes accepted in a AssociateNode request for Puppet</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_NODE_CSR</code>: A PEM-formatted certificate-signing request (CSR) that is created by the node.
    #       </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::AssociateNodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_node(
    #     server_name: 'ServerName', # required
    #     node_name: 'NodeName', # required
    #     engine_attributes: [
    #       {
    #         name: 'Name',
    #         value: 'Value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateNodeOutput
    #   resp.data.node_association_status_token #=> String
    #
    def associate_node(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateNodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateNodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateNode
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InvalidStateException]),
        data_parser: Parsers::AssociateNode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateNode,
        stubs: @stubs,
        params_class: Params::AssociateNodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_node
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Creates an application-level backup of a server. While the
    #       server is in the <code>BACKING_UP</code> state, the server cannot be
    #       changed, and no additional backup can be created.
    #     </p>
    #          <p>
    #       Backups can be created for servers in <code>RUNNING</code>, <code>HEALTHY</code>, and <code>UNHEALTHY</code> states. By default, you can create a maximum of 50
    #       manual backups.
    #     </p>
    #          <p>
    #       This operation is asynchronous.
    #     </p>
    #          <p>
    #       A <code>LimitExceededException</code> is thrown when the maximum number of manual backups is reached.
    #       An <code>InvalidStateException</code> is thrown when the server is not in any of the following states: RUNNING, HEALTHY, or UNHEALTHY.
    #       A <code>ResourceNotFoundException</code> is thrown when the server is not found.
    #       A <code>ValidationException</code> is thrown when parameters of the request are not valid.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::CreateBackupInput}.
    #
    # @option params [String] :server_name
    #   <p>The name of the server that you want to back up.
    #       </p>
    #
    # @option params [String] :description
    #   <p>
    #         A user-defined description of the backup.
    #       </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A map that contains tag keys and tag values to attach to an AWS OpsWorks-CM server backup.</p>
    #            <ul>
    #               <li>
    #                  <p>The key cannot be empty.</p>
    #               </li>
    #               <li>
    #                  <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Leading and trailing white spaces are trimmed from both the key and value.</p>
    #               </li>
    #               <li>
    #                  <p>A maximum of 50 user-applied tags is allowed for tag-supported AWS OpsWorks-CM resources.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateBackupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backup(
    #     server_name: 'ServerName', # required
    #     description: 'Description',
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
    #   resp.data #=> Types::CreateBackupOutput
    #   resp.data.backup #=> Types::Backup
    #   resp.data.backup.backup_arn #=> String
    #   resp.data.backup.backup_id #=> String
    #   resp.data.backup.backup_type #=> String, one of ["AUTOMATED", "MANUAL"]
    #   resp.data.backup.created_at #=> Time
    #   resp.data.backup.description #=> String
    #   resp.data.backup.engine #=> String
    #   resp.data.backup.engine_model #=> String
    #   resp.data.backup.engine_version #=> String
    #   resp.data.backup.instance_profile_arn #=> String
    #   resp.data.backup.instance_type #=> String
    #   resp.data.backup.key_pair #=> String
    #   resp.data.backup.preferred_backup_window #=> String
    #   resp.data.backup.preferred_maintenance_window #=> String
    #   resp.data.backup.s3_data_size #=> Integer
    #   resp.data.backup.s3_data_url #=> String
    #   resp.data.backup.s3_log_url #=> String
    #   resp.data.backup.security_group_ids #=> Array<String>
    #   resp.data.backup.security_group_ids[0] #=> String
    #   resp.data.backup.server_name #=> String
    #   resp.data.backup.service_role_arn #=> String
    #   resp.data.backup.status #=> String, one of ["IN_PROGRESS", "OK", "FAILED", "DELETING"]
    #   resp.data.backup.status_description #=> String
    #   resp.data.backup.subnet_ids #=> Array<String>
    #   resp.data.backup.tools_version #=> String
    #   resp.data.backup.user_arn #=> String
    #
    def create_backup(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBackupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBackupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBackup
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::InvalidStateException]),
        data_parser: Parsers::CreateBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBackup,
        stubs: @stubs,
        params_class: Params::CreateBackupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_backup
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Creates and immedately starts a new server. The server is ready to use when it is in the <code>HEALTHY</code> state. By default, you can create a maximum of 10 servers.
    #     </p>
    #          <p>
    #       This operation is asynchronous.
    #     </p>
    #          <p>
    #       A <code>LimitExceededException</code> is thrown when you have created the maximum number of servers (10). A <code>ResourceAlreadyExistsException</code>
    #       is thrown when a server with the same name already exists in the account. A <code>ResourceNotFoundException</code> is thrown when you
    #       specify a backup ID that is not valid or is for a backup that does not exist. A <code>ValidationException</code> is thrown when parameters
    #       of the request are not valid.
    #     </p>
    #          <p>
    #       If you do not specify a security group by adding the <code>SecurityGroupIds</code> parameter, AWS OpsWorks creates a new security group.
    #     </p>
    #          <p>
    #             <i>Chef Automate:</i> The default security group opens the Chef server to the world on TCP port 443. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22.
    #     </p>
    #          <p>
    #             <i>Puppet Enterprise:</i> The default security group opens TCP ports 22, 443, 4433, 8140, 8142, 8143, and 8170. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22.
    #     </p>
    #          <p>By default, your server is accessible from any IP address. We
    #       recommend that you update your security group rules to allow
    #       access from known IP addresses and address ranges only. To edit security group rules, open Security Groups
    #       in the navigation pane of the EC2 management console.
    #     </p>
    #          <p>To specify your own domain for a server, and provide your own self-signed or CA-signed certificate and private key, specify values for <code>CustomDomain</code>,
    #       <code>CustomCertificate</code>, and <code>CustomPrivateKey</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateServerInput}.
    #
    # @option params [Boolean] :associate_public_ip_address
    #   <p>
    #           Associate a public IP address with a server that you are launching. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>.
    #         </p>
    #
    # @option params [String] :custom_domain
    #   <p>An optional public endpoint of a server, such as <code>https://aws.my-company.com</code>. To access the server, create a CNAME DNS record in your preferred DNS service that points the custom
    #         domain to the endpoint that is generated when the server is created (the value of the CreateServer Endpoint attribute). You cannot access the server by using the
    #         generated <code>Endpoint</code> value if the server is using a custom domain. If you specify a custom domain, you must also specify values for <code>CustomCertificate</code>
    #         and <code>CustomPrivateKey</code>.</p>
    #
    # @option params [String] :custom_certificate
    #   <p>A PEM-formatted HTTPS certificate. The value can be be a single, self-signed certificate, or a certificate chain. If you specify a
    #         custom certificate, you must also specify values for <code>CustomDomain</code> and <code>CustomPrivateKey</code>. The following are requirements for the <code>CustomCertificate</code> value:</p>
    #            <ul>
    #               <li>
    #                  <p>You can provide either a self-signed, custom certificate, or the full certificate chain.</p>
    #               </li>
    #               <li>
    #                  <p>The certificate must be a valid X509 certificate, or a certificate chain in PEM format.</p>
    #               </li>
    #               <li>
    #                  <p>The certificate must be valid at the time of upload. A certificate can't be used before its validity period begins (the certificate's <code>NotBefore</code> date), or after it expires
    #           (the certificate's <code>NotAfter</code> date).</p>
    #               </li>
    #               <li>
    #                  <p>The certificate’s common name or subject alternative names (SANs), if present, must match the value of <code>CustomDomain</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The certificate must match the value of <code>CustomPrivateKey</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :custom_private_key
    #   <p>A private key in PEM format for connecting to the server by using HTTPS. The private key must not be encrypted; it cannot be protected by a password or passphrase.
    #         If you specify a custom private key, you must also specify values for <code>CustomDomain</code> and <code>CustomCertificate</code>.</p>
    #
    # @option params [Boolean] :disable_automated_backup
    #   <p>
    #           Enable or disable scheduled backups. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>.
    #         </p>
    #
    # @option params [String] :engine
    #   <p>
    #           The configuration management engine to use. Valid values include <code>ChefAutomate</code> and <code>Puppet</code>.
    #         </p>
    #
    # @option params [String] :engine_model
    #   <p>
    #           The engine model of the server. Valid values in this release include <code>Monolithic</code> for Puppet and <code>Single</code> for Chef.
    #         </p>
    #
    # @option params [String] :engine_version
    #   <p>
    #           The major release version of the engine that you want to use. For a Chef server, the valid value for EngineVersion
    #           is currently <code>2</code>. For a Puppet server, valid values are <code>2019</code> or <code>2017</code>.
    #         </p>
    #
    # @option params [Array<EngineAttribute>] :engine_attributes
    #   <p>Optional engine attributes on a specified server.
    #       </p>
    #            <p class="title">
    #               <b>Attributes accepted in a Chef createServer request:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHEF_AUTOMATE_PIVOTAL_KEY</code>: A
    #         base64-encoded RSA public key. The corresponding private key is required to
    #         access the Chef API. When no CHEF_AUTOMATE_PIVOTAL_KEY is set, a private key is
    #         generated and returned in the response.
    #         </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CHEF_AUTOMATE_ADMIN_PASSWORD</code>:
    #         The password for the administrative user in the Chef Automate web-based dashboard. The
    #         password length is a minimum of eight characters, and a maximum of 32. The
    #         password can contain letters, numbers, and special characters
    #         (!/@#$%^&+=_). The password must contain at least one lower case letter, one upper
    #         case letter, one number, and one special character. When no CHEF_AUTOMATE_ADMIN_PASSWORD is set, one is
    #         generated and returned in the response.</p>
    #               </li>
    #            </ul>
    #            <p class="title">
    #               <b>Attributes accepted in a Puppet createServer request:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_ADMIN_PASSWORD</code>: To work with the Puppet Enterprise console, a password must use ASCII characters.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_R10K_REMOTE</code>: The r10k remote is the URL of your control repository
    #           (for example, ssh://git@your.git-repo.com:user/control-repo.git). Specifying an r10k remote opens TCP port 8170.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_R10K_PRIVATE_KEY</code>: If you are using a private Git repository, add
    #           PUPPET_R10K_PRIVATE_KEY to specify a PEM-encoded private SSH key.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :backup_retention_count
    #   <p>
    #           The number of automated backups that you want to keep. Whenever a new backup is created, AWS OpsWorks CM deletes the oldest backups if this number is exceeded.
    #           The default value is <code>1</code>.
    #         </p>
    #
    # @option params [String] :server_name
    #   <p>
    #           The name of the server. The server name must be unique within your AWS account, within each region.
    #           Server names must start with a letter; then letters, numbers, or hyphens (-) are allowed, up to a maximum of 40 characters.
    #         </p>
    #
    # @option params [String] :instance_profile_arn
    #   <p>
    #           The ARN of the instance profile that your Amazon EC2
    #           instances use. Although the AWS OpsWorks console typically creates
    #           the instance profile for you, if you are using API commands instead, run the service-role-creation.yaml
    #           AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
    #           This template creates a CloudFormation stack that includes the instance profile you need.
    #
    #         </p>
    #
    # @option params [String] :instance_type
    #   <p>
    #           The Amazon EC2 instance type to use. For example, <code>m5.large</code>.
    #         </p>
    #
    # @option params [String] :key_pair
    #   <p>
    #           The Amazon EC2 key pair to set for the instance. This parameter is optional; if desired, you may specify this parameter to connect to your instances by using SSH.
    #         </p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>
    #         The start time for a one-hour period each week during which AWS OpsWorks CM performs maintenance on the instance.
    #         Valid values must be specified in the following format: <code>DDD:HH:MM</code>. <code>MM</code> must be specified as <code>00</code>. The specified time is in coordinated universal time (UTC).
    #         The default value is a random one-hour period on Tuesday, Wednesday, or Friday. See <code>TimeWindowDefinition</code> for more information.
    #       </p>
    #            <p>
    #               <b>Example:</b>
    #               <code>Mon:08:00</code>,
    #         which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)
    #       </p>
    #
    # @option params [String] :preferred_backup_window
    #   <p>
    #         The start time for a one-hour period during which AWS OpsWorks CM backs up application-level data on your server
    #         if automated backups are enabled. Valid values must be specified in one of the following formats:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HH:MM</code> for daily backups</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DDD:HH:MM</code> for weekly backups</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>MM</code> must be specified as <code>00</code>. The specified time is in coordinated universal time (UTC). The default value is a random, daily start time.</p>
    #            <p>
    #               <b>Example:</b>
    #               <code>08:00</code>, which represents a daily start time of 08:00 UTC.</p>
    #            <p>
    #               <b>Example:</b>
    #               <code>Mon:08:00</code>, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>
    #         A list of security group IDs to attach to the Amazon EC2 instance. If you add this parameter, the specified security groups
    #         must be within the VPC that is specified by <code>SubnetIds</code>.
    #       </p>
    #            <p>
    #         If you do not specify this parameter, AWS OpsWorks CM creates one new security group that uses TCP ports 22 and 443, open to
    #         0.0.0.0/0 (everyone).
    #       </p>
    #
    # @option params [String] :service_role_arn
    #   <p>
    #         The service role that the AWS OpsWorks CM service backend uses to work with your account. Although the AWS OpsWorks management console typically creates
    #         the service role for you, if you are using the AWS CLI or API commands,
    #         run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
    #         This template creates a CloudFormation stack that includes the service role and instance profile that you need.
    #       </p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>
    #         The IDs of subnets in which to launch the server EC2 instance.
    #       </p>
    #            <p>
    #         Amazon EC2-Classic customers: This field is required. All servers must run within a VPC. The VPC must have "Auto Assign Public IP" enabled.
    #       </p>
    #            <p>
    #         EC2-VPC customers: This field is optional. If you do not specify subnet IDs, your EC2 instances are created in a default subnet that is selected by Amazon EC2. If you specify subnet IDs, the VPC must have "Auto Assign Public IP" enabled.
    #       </p>
    #            <p>For more information about supported Amazon EC2 platforms, see
    #         <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A map that contains tag keys and tag values to attach to an AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise server.</p>
    #            <ul>
    #               <li>
    #                  <p>The key cannot be empty.</p>
    #               </li>
    #               <li>
    #                  <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : / @</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : / @</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Leading and trailing white spaces are trimmed from both the key and value.</p>
    #               </li>
    #               <li>
    #                  <p>A maximum of 50 user-applied tags is allowed for any AWS OpsWorks-CM server.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :backup_id
    #   <p>
    #         If you specify this field, AWS OpsWorks CM creates the server by using the backup represented by BackupId.
    #       </p>
    #
    # @return [Types::CreateServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_server(
    #     associate_public_ip_address: false,
    #     custom_domain: 'CustomDomain',
    #     custom_certificate: 'CustomCertificate',
    #     custom_private_key: 'CustomPrivateKey',
    #     disable_automated_backup: false,
    #     engine: 'Engine', # required
    #     engine_model: 'EngineModel',
    #     engine_version: 'EngineVersion',
    #     engine_attributes: [
    #       {
    #         name: 'Name',
    #         value: 'Value'
    #       }
    #     ],
    #     backup_retention_count: 1,
    #     server_name: 'ServerName', # required
    #     instance_profile_arn: 'InstanceProfileArn', # required
    #     instance_type: 'InstanceType', # required
    #     key_pair: 'KeyPair',
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     preferred_backup_window: 'PreferredBackupWindow',
    #     security_group_ids: [
    #       'member'
    #     ],
    #     service_role_arn: 'ServiceRoleArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     backup_id: 'BackupId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateServerOutput
    #   resp.data.server #=> Types::Server
    #   resp.data.server.associate_public_ip_address #=> Boolean
    #   resp.data.server.backup_retention_count #=> Integer
    #   resp.data.server.server_name #=> String
    #   resp.data.server.created_at #=> Time
    #   resp.data.server.cloud_formation_stack_arn #=> String
    #   resp.data.server.custom_domain #=> String
    #   resp.data.server.disable_automated_backup #=> Boolean
    #   resp.data.server.endpoint #=> String
    #   resp.data.server.engine #=> String
    #   resp.data.server.engine_model #=> String
    #   resp.data.server.engine_attributes #=> Array<EngineAttribute>
    #   resp.data.server.engine_attributes[0] #=> Types::EngineAttribute
    #   resp.data.server.engine_attributes[0].name #=> String
    #   resp.data.server.engine_attributes[0].value #=> String
    #   resp.data.server.engine_version #=> String
    #   resp.data.server.instance_profile_arn #=> String
    #   resp.data.server.instance_type #=> String
    #   resp.data.server.key_pair #=> String
    #   resp.data.server.maintenance_status #=> String, one of ["SUCCESS", "FAILED"]
    #   resp.data.server.preferred_maintenance_window #=> String
    #   resp.data.server.preferred_backup_window #=> String
    #   resp.data.server.security_group_ids #=> Array<String>
    #   resp.data.server.security_group_ids[0] #=> String
    #   resp.data.server.service_role_arn #=> String
    #   resp.data.server.status #=> String, one of ["BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"]
    #   resp.data.server.status_reason #=> String
    #   resp.data.server.subnet_ids #=> Array<String>
    #   resp.data.server.server_arn #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::ValidationException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
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

    # <p>
    #       Deletes a backup. You can delete both manual and automated backups. This operation is asynchronous.
    #     </p>
    #          <p>
    #       An <code>InvalidStateException</code> is thrown when a backup deletion is already in progress.
    #       A <code>ResourceNotFoundException</code> is thrown when the backup does not exist.
    #       A <code>ValidationException</code> is thrown when parameters of the request are not valid.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBackupInput}.
    #
    # @option params [String] :backup_id
    #   <p>The ID of the backup to delete. Run the DescribeBackups command to get a list of backup IDs.
    #         Backup IDs are in the format <code>ServerName-yyyyMMddHHmmssSSS</code>.
    #       </p>
    #
    # @return [Types::DeleteBackupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup(
    #     backup_id: 'BackupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBackupOutput
    #
    def delete_backup(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBackupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBackupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBackup
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InvalidStateException]),
        data_parser: Parsers::DeleteBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBackup,
        stubs: @stubs,
        params_class: Params::DeleteBackupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_backup
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Deletes the server and the underlying AWS CloudFormation stacks
    #       (including the server's EC2 instance). When you run this command, the server state is updated
    #       to <code>DELETING</code>. After the server is deleted, it is no longer returned by
    #       <code>DescribeServer</code> requests. If the AWS CloudFormation stack cannot be deleted, the server cannot be deleted.
    #     </p>
    #          <p>
    #       This operation is asynchronous.
    #     </p>
    #          <p>
    #       An <code>InvalidStateException</code> is thrown when a server deletion is already in progress.
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist.
    #       A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    #          <p>
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteServerInput}.
    #
    # @option params [String] :server_name
    #   <p>The ID of the server to delete.</p>
    #
    # @return [Types::DeleteServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_server(
    #     server_name: 'ServerName' # required
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InvalidStateException]),
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

    # <p>
    #       Describes your OpsWorks-CM account attributes.
    #     </p>
    #          <p>
    #       This operation is synchronous.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountAttributesInput}.
    #
    # @return [Types::DescribeAccountAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_attributes()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountAttributesOutput
    #   resp.data.attributes #=> Array<AccountAttribute>
    #   resp.data.attributes[0] #=> Types::AccountAttribute
    #   resp.data.attributes[0].name #=> String
    #   resp.data.attributes[0].maximum #=> Integer
    #   resp.data.attributes[0].used #=> Integer
    #
    def describe_account_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountAttributes
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DescribeAccountAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountAttributes,
        stubs: @stubs,
        params_class: Params::DescribeAccountAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Describes backups. The results are ordered by time, with newest backups first.
    #       If you do not specify a BackupId or ServerName, the command returns all backups.
    #     </p>
    #          <p>
    #       This operation is synchronous.
    #     </p>
    #          <p>
    #       A <code>ResourceNotFoundException</code> is thrown when the backup does not exist.
    #       A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBackupsInput}.
    #
    # @option params [String] :backup_id
    #   <p>Describes a single backup.
    #       </p>
    #
    # @option params [String] :server_name
    #   <p>Returns backups for the server with the specified ServerName.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>
    #
    # @option params [Integer] :max_results
    #   <p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>
    #
    # @return [Types::DescribeBackupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backups(
    #     backup_id: 'BackupId',
    #     server_name: 'ServerName',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBackupsOutput
    #   resp.data.backups #=> Array<Backup>
    #   resp.data.backups[0] #=> Types::Backup
    #   resp.data.backups[0].backup_arn #=> String
    #   resp.data.backups[0].backup_id #=> String
    #   resp.data.backups[0].backup_type #=> String, one of ["AUTOMATED", "MANUAL"]
    #   resp.data.backups[0].created_at #=> Time
    #   resp.data.backups[0].description #=> String
    #   resp.data.backups[0].engine #=> String
    #   resp.data.backups[0].engine_model #=> String
    #   resp.data.backups[0].engine_version #=> String
    #   resp.data.backups[0].instance_profile_arn #=> String
    #   resp.data.backups[0].instance_type #=> String
    #   resp.data.backups[0].key_pair #=> String
    #   resp.data.backups[0].preferred_backup_window #=> String
    #   resp.data.backups[0].preferred_maintenance_window #=> String
    #   resp.data.backups[0].s3_data_size #=> Integer
    #   resp.data.backups[0].s3_data_url #=> String
    #   resp.data.backups[0].s3_log_url #=> String
    #   resp.data.backups[0].security_group_ids #=> Array<String>
    #   resp.data.backups[0].security_group_ids[0] #=> String
    #   resp.data.backups[0].server_name #=> String
    #   resp.data.backups[0].service_role_arn #=> String
    #   resp.data.backups[0].status #=> String, one of ["IN_PROGRESS", "OK", "FAILED", "DELETING"]
    #   resp.data.backups[0].status_description #=> String
    #   resp.data.backups[0].subnet_ids #=> Array<String>
    #   resp.data.backups[0].tools_version #=> String
    #   resp.data.backups[0].user_arn #=> String
    #   resp.data.next_token #=> String
    #
    def describe_backups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBackupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBackupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBackups
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeBackups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBackups,
        stubs: @stubs,
        params_class: Params::DescribeBackupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_backups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Describes events for a specified server. Results are ordered by time, with newest events first.
    #     </p>
    #          <p>
    #       This operation is synchronous.
    #     </p>
    #          <p>
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist.
    #       A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventsInput}.
    #
    # @option params [String] :server_name
    #   <p>The name of the server for which you want to view events.</p>
    #
    # @option params [String] :next_token
    #   <p>NextToken is a string that is returned in some command responses. It indicates that
    #         not all entries have been returned, and that you must run at least one more request to get remaining
    #         items. To get remaining results, call <code>DescribeEvents</code> again, and assign the token from the previous
    #         results as the value of the <code>nextToken</code> parameter. If there are no more results,
    #         the response object's <code>nextToken</code> parameter value is <code>null</code>.
    #         Setting a <code>nextToken</code> value that was not returned in
    #         your previous results causes an <code>InvalidNextTokenException</code> to occur.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>To receive a paginated response, use this parameter to specify the maximum number
    #         of results to be returned with a single call. If the number of available results exceeds
    #         this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code>
    #         request parameter to get the next set of results.
    #       </p>
    #
    # @return [Types::DescribeEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events(
    #     server_name: 'ServerName', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventsOutput
    #   resp.data.server_events #=> Array<ServerEvent>
    #   resp.data.server_events[0] #=> Types::ServerEvent
    #   resp.data.server_events[0].created_at #=> Time
    #   resp.data.server_events[0].server_name #=> String
    #   resp.data.server_events[0].message #=> String
    #   resp.data.server_events[0].log_url #=> String
    #   resp.data.next_token #=> String
    #
    def describe_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEvents
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEvents,
        stubs: @stubs,
        params_class: Params::DescribeEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Returns the current status of an existing association or disassociation request.
    #     </p>
    #          <p>
    #       A <code>ResourceNotFoundException</code> is thrown when no recent association or disassociation request with the specified token is found,
    #       or when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeNodeAssociationStatusInput}.
    #
    # @option params [String] :node_association_status_token
    #   <p>The token returned in either the AssociateNodeResponse or the DisassociateNodeResponse.
    #       </p>
    #
    # @option params [String] :server_name
    #   <p>The name of the server from which to disassociate the node.
    #       </p>
    #
    # @return [Types::DescribeNodeAssociationStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_node_association_status(
    #     node_association_status_token: 'NodeAssociationStatusToken', # required
    #     server_name: 'ServerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeNodeAssociationStatusOutput
    #   resp.data.node_association_status #=> String, one of ["SUCCESS", "FAILED", "IN_PROGRESS"]
    #   resp.data.engine_attributes #=> Array<EngineAttribute>
    #   resp.data.engine_attributes[0] #=> Types::EngineAttribute
    #   resp.data.engine_attributes[0].name #=> String
    #   resp.data.engine_attributes[0].value #=> String
    #
    def describe_node_association_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeNodeAssociationStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeNodeAssociationStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeNodeAssociationStatus
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeNodeAssociationStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeNodeAssociationStatus,
        stubs: @stubs,
        params_class: Params::DescribeNodeAssociationStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_node_association_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Lists all configuration management servers that are identified with your account.
    #       Only the stored results from Amazon DynamoDB
    #       are returned. AWS OpsWorks CM does not query other services.
    #     </p>
    #          <p>
    #       This operation is synchronous.
    #     </p>
    #          <p>
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist.
    #       A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeServersInput}.
    #
    # @option params [String] :server_name
    #   <p>Describes the server with the specified ServerName.</p>
    #
    # @option params [String] :next_token
    #   <p>This is not currently implemented for <code>DescribeServers</code> requests.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>This is not currently implemented for <code>DescribeServers</code> requests.
    #       </p>
    #
    # @return [Types::DescribeServersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_servers(
    #     server_name: 'ServerName',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeServersOutput
    #   resp.data.servers #=> Array<Server>
    #   resp.data.servers[0] #=> Types::Server
    #   resp.data.servers[0].associate_public_ip_address #=> Boolean
    #   resp.data.servers[0].backup_retention_count #=> Integer
    #   resp.data.servers[0].server_name #=> String
    #   resp.data.servers[0].created_at #=> Time
    #   resp.data.servers[0].cloud_formation_stack_arn #=> String
    #   resp.data.servers[0].custom_domain #=> String
    #   resp.data.servers[0].disable_automated_backup #=> Boolean
    #   resp.data.servers[0].endpoint #=> String
    #   resp.data.servers[0].engine #=> String
    #   resp.data.servers[0].engine_model #=> String
    #   resp.data.servers[0].engine_attributes #=> Array<EngineAttribute>
    #   resp.data.servers[0].engine_attributes[0] #=> Types::EngineAttribute
    #   resp.data.servers[0].engine_attributes[0].name #=> String
    #   resp.data.servers[0].engine_attributes[0].value #=> String
    #   resp.data.servers[0].engine_version #=> String
    #   resp.data.servers[0].instance_profile_arn #=> String
    #   resp.data.servers[0].instance_type #=> String
    #   resp.data.servers[0].key_pair #=> String
    #   resp.data.servers[0].maintenance_status #=> String, one of ["SUCCESS", "FAILED"]
    #   resp.data.servers[0].preferred_maintenance_window #=> String
    #   resp.data.servers[0].preferred_backup_window #=> String
    #   resp.data.servers[0].security_group_ids #=> Array<String>
    #   resp.data.servers[0].security_group_ids[0] #=> String
    #   resp.data.servers[0].service_role_arn #=> String
    #   resp.data.servers[0].status #=> String, one of ["BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"]
    #   resp.data.servers[0].status_reason #=> String
    #   resp.data.servers[0].subnet_ids #=> Array<String>
    #   resp.data.servers[0].server_arn #=> String
    #   resp.data.next_token #=> String
    #
    def describe_servers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeServersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeServersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeServers
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeServers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeServers,
        stubs: @stubs,
        params_class: Params::DescribeServersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_servers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Disassociates a node from an AWS OpsWorks CM server, and removes the node from the server's managed nodes. After a node is disassociated,
    #       the node key pair is no longer valid for accessing the configuration manager's API. For more information about how to associate a node, see <a>AssociateNode</a>.
    #     </p>
    #          <p>A node can can only be disassociated from a server that is in a <code>HEALTHY</code> state. Otherwise, an <code>InvalidStateException</code> is thrown.
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist.
    #       A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateNodeInput}.
    #
    # @option params [String] :server_name
    #   <p>The name of the server from which to disassociate the node.
    #       </p>
    #
    # @option params [String] :node_name
    #   <p>The name of the client node.
    #       </p>
    #
    # @option params [Array<EngineAttribute>] :engine_attributes
    #   <p>Engine attributes that are used for disassociating the node. No attributes are required for Puppet.
    #       </p>
    #            <p class="title">
    #               <b>Attributes required in a DisassociateNode request for Chef</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHEF_ORGANIZATION</code>: The Chef organization
    #             with which the node was associated. By default only one organization
    #             named <code>default</code> can exist.
    #         </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DisassociateNodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_node(
    #     server_name: 'ServerName', # required
    #     node_name: 'NodeName', # required
    #     engine_attributes: [
    #       {
    #         name: 'Name',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateNodeOutput
    #   resp.data.node_association_status_token #=> String
    #
    def disassociate_node(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateNodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateNodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateNode
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InvalidStateException]),
        data_parser: Parsers::DisassociateNode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateNode,
        stubs: @stubs,
        params_class: Params::DisassociateNodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_node
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Exports a specified server engine attribute as a base64-encoded string. For example, you can export user data that you can use in EC2 to associate nodes with a server.
    #     </p>
    #          <p>
    #       This operation is synchronous.
    #     </p>
    #          <p>
    #       A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist.
    #       An <code>InvalidStateException</code> is thrown when the server is in any of the following states: CREATING, TERMINATED,
    #       FAILED or DELETING.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ExportServerEngineAttributeInput}.
    #
    # @option params [String] :export_attribute_name
    #   <p>The name of the export attribute. Currently, the supported export attribute is <code>Userdata</code>.
    #         This exports a user data script that includes parameters and values provided in the <code>InputAttributes</code> list.</p>
    #
    # @option params [String] :server_name
    #   <p>The name of the server from which you are exporting the attribute.</p>
    #
    # @option params [Array<EngineAttribute>] :input_attributes
    #   <p>The list of engine attributes. The list type is <code>EngineAttribute</code>. An <code>EngineAttribute</code> list item
    #         is a pair that includes an attribute name and its value. For the <code>Userdata</code> ExportAttributeName, the following are
    #         supported engine attribute names.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>RunList</b> In Chef, a list of roles or recipes that are run in the specified order.
    #           In Puppet, this parameter is ignored.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>OrganizationName</b> In Chef, an organization name. AWS OpsWorks for Chef Automate
    #           always creates the organization <code>default</code>. In Puppet, this parameter is ignored.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>NodeEnvironment</b> In Chef, a node environment (for example, development, staging, or one-box).
    #           In Puppet, this parameter is ignored.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>NodeClientVersion</b> In Chef, the version of the Chef engine (three numbers separated
    #           by dots, such as 13.8.5). If this attribute is empty, OpsWorks for Chef Automate uses the most current version. In Puppet,
    #           this parameter is ignored.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ExportServerEngineAttributeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_server_engine_attribute(
    #     export_attribute_name: 'ExportAttributeName', # required
    #     server_name: 'ServerName', # required
    #     input_attributes: [
    #       {
    #         name: 'Name',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportServerEngineAttributeOutput
    #   resp.data.engine_attribute #=> Types::EngineAttribute
    #   resp.data.engine_attribute.name #=> String
    #   resp.data.engine_attribute.value #=> String
    #   resp.data.server_name #=> String
    #
    def export_server_engine_attribute(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportServerEngineAttributeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportServerEngineAttributeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportServerEngineAttribute
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InvalidStateException]),
        data_parser: Parsers::ExportServerEngineAttribute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportServerEngineAttribute,
        stubs: @stubs,
        params_class: Params::ExportServerEngineAttributeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_server_engine_attribute
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of tags that are applied to the specified AWS OpsWorks for Chef Automate or
    #       AWS OpsWorks for Puppet Enterprise servers or backups.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of an AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise server for which you want to show applied tags. For example,
    #           <code>arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>NextToken is a string that is returned in some command responses. It indicates that
    #           not all entries have been returned, and that you must run at least one more request to get remaining
    #           items. To get remaining results, call <code>ListTagsForResource</code> again, and assign the token from the previous
    #           results as the value of the <code>nextToken</code> parameter. If there are no more results,
    #           the response object's <code>nextToken</code> parameter value is <code>null</code>.
    #           Setting a <code>nextToken</code> value that was not returned in
    #           your previous results causes an <code>InvalidNextTokenException</code> to occur.</p>
    #
    # @option params [Integer] :max_results
    #   <p>To receive a paginated response, use this parameter to specify the maximum number
    #           of results to be returned with a single call. If the number of available results exceeds
    #           this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code>
    #           request parameter to get the next set of results.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>
    #       Restores a backup to a server that is in a <code>CONNECTION_LOST</code>, <code>HEALTHY</code>, <code>RUNNING</code>, <code>UNHEALTHY</code>, or <code>TERMINATED</code> state.
    #       When you run RestoreServer, the server's EC2 instance is deleted, and a new EC2 instance is configured. RestoreServer maintains
    #       the existing server endpoint, so configuration management of the server's client devices (nodes) should continue to work.
    #     </p>
    #          <p>Restoring from a backup is performed by creating a new EC2 instance. If restoration is successful, and the server is in a <code>HEALTHY</code> state,
    #       AWS OpsWorks CM switches traffic over to the new instance. After restoration is finished, the old EC2 instance is maintained in a
    #       <code>Running</code> or <code>Stopped</code> state, but is eventually terminated.</p>
    #          <p>
    #       This operation is asynchronous.
    #     </p>
    #          <p>
    #       An <code>InvalidStateException</code> is thrown when the server is not in a valid state. A <code>ResourceNotFoundException</code> is thrown
    #       when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::RestoreServerInput}.
    #
    # @option params [String] :backup_id
    #   <p> The ID of the backup that you want to use to restore a server.
    #       </p>
    #
    # @option params [String] :server_name
    #   <p> The name of the server that you want to restore.
    #       </p>
    #
    # @option params [String] :instance_type
    #   <p> The type of instance to restore. Valid values must be specified in the following format: <code>^([cm][34]|t2).*</code>
    #         For example, <code>m5.large</code>. Valid values are <code>m5.large</code>, <code>r5.xlarge</code>, and <code>r5.2xlarge</code>. If you do not specify this parameter,
    #         RestoreServer uses the instance type from the specified backup.
    #       </p>
    #
    # @option params [String] :key_pair
    #   <p> The name of the key pair to set on the new EC2 instance. This can be helpful
    #         if the administrator no longer has the SSH key.
    #       </p>
    #
    # @return [Types::RestoreServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_server(
    #     backup_id: 'BackupId', # required
    #     server_name: 'ServerName', # required
    #     instance_type: 'InstanceType',
    #     key_pair: 'KeyPair'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreServerOutput
    #   resp.data.server #=> Types::Server
    #   resp.data.server.associate_public_ip_address #=> Boolean
    #   resp.data.server.backup_retention_count #=> Integer
    #   resp.data.server.server_name #=> String
    #   resp.data.server.created_at #=> Time
    #   resp.data.server.cloud_formation_stack_arn #=> String
    #   resp.data.server.custom_domain #=> String
    #   resp.data.server.disable_automated_backup #=> Boolean
    #   resp.data.server.endpoint #=> String
    #   resp.data.server.engine #=> String
    #   resp.data.server.engine_model #=> String
    #   resp.data.server.engine_attributes #=> Array<EngineAttribute>
    #   resp.data.server.engine_attributes[0] #=> Types::EngineAttribute
    #   resp.data.server.engine_attributes[0].name #=> String
    #   resp.data.server.engine_attributes[0].value #=> String
    #   resp.data.server.engine_version #=> String
    #   resp.data.server.instance_profile_arn #=> String
    #   resp.data.server.instance_type #=> String
    #   resp.data.server.key_pair #=> String
    #   resp.data.server.maintenance_status #=> String, one of ["SUCCESS", "FAILED"]
    #   resp.data.server.preferred_maintenance_window #=> String
    #   resp.data.server.preferred_backup_window #=> String
    #   resp.data.server.security_group_ids #=> Array<String>
    #   resp.data.server.security_group_ids[0] #=> String
    #   resp.data.server.service_role_arn #=> String
    #   resp.data.server.status #=> String, one of ["BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"]
    #   resp.data.server.status_reason #=> String
    #   resp.data.server.subnet_ids #=> Array<String>
    #   resp.data.server.server_arn #=> String
    #
    def restore_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreServer
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InvalidStateException]),
        data_parser: Parsers::RestoreServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreServer,
        stubs: @stubs,
        params_class: Params::RestoreServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Manually starts server maintenance. This command can be useful if an earlier maintenance attempt failed, and the underlying
    #       cause of maintenance failure has been resolved. The server is in an <code>UNDER_MAINTENANCE</code> state while maintenance is in progress.
    #     </p>
    #          <p>
    #       Maintenance can only be started on servers in <code>HEALTHY</code> and <code>UNHEALTHY</code> states. Otherwise, an <code>InvalidStateException</code> is thrown.
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::StartMaintenanceInput}.
    #
    # @option params [String] :server_name
    #   <p>The name of the server on which to run maintenance.
    #       </p>
    #
    # @option params [Array<EngineAttribute>] :engine_attributes
    #   <p>Engine attributes that are specific to the server on which you want to run maintenance.</p>
    #            <p class="title">
    #               <b>Attributes accepted in a StartMaintenance request for Chef</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHEF_MAJOR_UPGRADE</code>: If a Chef Automate server is eligible for upgrade to Chef Automate 2,
    #           add this engine attribute to a <code>StartMaintenance</code> request and set the value to <code>true</code> to upgrade the server to Chef Automate 2. For more information, see
    #           <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opscm-a2upgrade.html">Upgrade an AWS OpsWorks for Chef Automate Server to Chef Automate 2</a>.
    #         </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::StartMaintenanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_maintenance(
    #     server_name: 'ServerName', # required
    #     engine_attributes: [
    #       {
    #         name: 'Name',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartMaintenanceOutput
    #   resp.data.server #=> Types::Server
    #   resp.data.server.associate_public_ip_address #=> Boolean
    #   resp.data.server.backup_retention_count #=> Integer
    #   resp.data.server.server_name #=> String
    #   resp.data.server.created_at #=> Time
    #   resp.data.server.cloud_formation_stack_arn #=> String
    #   resp.data.server.custom_domain #=> String
    #   resp.data.server.disable_automated_backup #=> Boolean
    #   resp.data.server.endpoint #=> String
    #   resp.data.server.engine #=> String
    #   resp.data.server.engine_model #=> String
    #   resp.data.server.engine_attributes #=> Array<EngineAttribute>
    #   resp.data.server.engine_attributes[0] #=> Types::EngineAttribute
    #   resp.data.server.engine_attributes[0].name #=> String
    #   resp.data.server.engine_attributes[0].value #=> String
    #   resp.data.server.engine_version #=> String
    #   resp.data.server.instance_profile_arn #=> String
    #   resp.data.server.instance_type #=> String
    #   resp.data.server.key_pair #=> String
    #   resp.data.server.maintenance_status #=> String, one of ["SUCCESS", "FAILED"]
    #   resp.data.server.preferred_maintenance_window #=> String
    #   resp.data.server.preferred_backup_window #=> String
    #   resp.data.server.security_group_ids #=> Array<String>
    #   resp.data.server.security_group_ids[0] #=> String
    #   resp.data.server.service_role_arn #=> String
    #   resp.data.server.status #=> String, one of ["BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"]
    #   resp.data.server.status_reason #=> String
    #   resp.data.server.subnet_ids #=> Array<String>
    #   resp.data.server.server_arn #=> String
    #
    def start_maintenance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartMaintenanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartMaintenanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartMaintenance
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InvalidStateException]),
        data_parser: Parsers::StartMaintenance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartMaintenance,
        stubs: @stubs,
        params_class: Params::StartMaintenanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_maintenance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies tags to an AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise server, or to server backups.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of a resource to which you want to apply tags. For example,
    #         <code>arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A map that contains tag keys and tag values to attach to AWS OpsWorks-CM servers or backups.</p>
    #            <ul>
    #               <li>
    #                  <p>The key cannot be empty.</p>
    #               </li>
    #               <li>
    #                  <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Leading and trailing white spaces are trimmed from both the key and value.</p>
    #               </li>
    #               <li>
    #                  <p>A maximum of 50 user-applied tags is allowed for any AWS OpsWorks-CM server or backup.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InvalidStateException]),
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

    # <p>Removes specified tags from an AWS OpsWorks-CM server or backup.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of a resource from which you want to remove tags. For example,
    #         <code>arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE</code>.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of tags that you want to remove.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InvalidStateException]),
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

    # <p>
    #       Updates settings for a server.
    #     </p>
    #          <p>
    #       This operation is synchronous.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateServerInput}.
    #
    # @option params [Boolean] :disable_automated_backup
    #   <p>Setting DisableAutomatedBackup to <code>true</code> disables automated or scheduled backups. Automated backups are enabled by default.
    #       </p>
    #
    # @option params [Integer] :backup_retention_count
    #   <p>Sets the number of automated backups that you want to keep.
    #         </p>
    #
    # @option params [String] :server_name
    #   <p>The name of the server to update.
    #       </p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>
    #               <code>DDD:HH:MM</code> (weekly start time) or
    #       <code>HH:MM</code> (daily start time).
    #       </p>
    #            <p>
    #         Time windows always use coordinated universal time (UTC). Valid strings for day of week (<code>DDD</code>) are: <code>Mon</code>, <code>Tue</code>, <code>Wed</code>,
    #         <code>Thr</code>, <code>Fri</code>, <code>Sat</code>, or <code>Sun</code>.</p>
    #
    # @option params [String] :preferred_backup_window
    #   <p>
    #               <code>DDD:HH:MM</code> (weekly start time) or
    #       <code>HH:MM</code> (daily start time).
    #       </p>
    #            <p>
    #         Time windows always use coordinated universal time (UTC). Valid strings for day of week (<code>DDD</code>) are: <code>Mon</code>, <code>Tue</code>, <code>Wed</code>,
    #         <code>Thr</code>, <code>Fri</code>, <code>Sat</code>, or <code>Sun</code>.</p>
    #
    # @return [Types::UpdateServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_server(
    #     disable_automated_backup: false,
    #     backup_retention_count: 1,
    #     server_name: 'ServerName', # required
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     preferred_backup_window: 'PreferredBackupWindow'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServerOutput
    #   resp.data.server #=> Types::Server
    #   resp.data.server.associate_public_ip_address #=> Boolean
    #   resp.data.server.backup_retention_count #=> Integer
    #   resp.data.server.server_name #=> String
    #   resp.data.server.created_at #=> Time
    #   resp.data.server.cloud_formation_stack_arn #=> String
    #   resp.data.server.custom_domain #=> String
    #   resp.data.server.disable_automated_backup #=> Boolean
    #   resp.data.server.endpoint #=> String
    #   resp.data.server.engine #=> String
    #   resp.data.server.engine_model #=> String
    #   resp.data.server.engine_attributes #=> Array<EngineAttribute>
    #   resp.data.server.engine_attributes[0] #=> Types::EngineAttribute
    #   resp.data.server.engine_attributes[0].name #=> String
    #   resp.data.server.engine_attributes[0].value #=> String
    #   resp.data.server.engine_version #=> String
    #   resp.data.server.instance_profile_arn #=> String
    #   resp.data.server.instance_type #=> String
    #   resp.data.server.key_pair #=> String
    #   resp.data.server.maintenance_status #=> String, one of ["SUCCESS", "FAILED"]
    #   resp.data.server.preferred_maintenance_window #=> String
    #   resp.data.server.preferred_backup_window #=> String
    #   resp.data.server.security_group_ids #=> Array<String>
    #   resp.data.server.security_group_ids[0] #=> String
    #   resp.data.server.service_role_arn #=> String
    #   resp.data.server.status #=> String, one of ["BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"]
    #   resp.data.server.status_reason #=> String
    #   resp.data.server.subnet_ids #=> Array<String>
    #   resp.data.server.server_arn #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InvalidStateException]),
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

    # <p>
    #       Updates engine-specific attributes on a specified server. The server
    #       enters the <code>MODIFYING</code> state when this operation
    #       is in progress. Only one update can occur at a time.
    #       You can use this command to reset a Chef server's public key (<code>CHEF_PIVOTAL_KEY</code>) or a Puppet server's
    #       admin password (<code>PUPPET_ADMIN_PASSWORD</code>).
    #     </p>
    #          <p>
    #       This operation is asynchronous.
    #     </p>
    #          <p>
    #       This operation can only be called for servers in <code>HEALTHY</code> or <code>UNHEALTHY</code> states. Otherwise, an <code>InvalidStateException</code> is raised.
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateServerEngineAttributesInput}.
    #
    # @option params [String] :server_name
    #   <p>The name of the server to update.
    #       </p>
    #
    # @option params [String] :attribute_name
    #   <p>The name of the engine attribute to update.
    #       </p>
    #
    # @option params [String] :attribute_value
    #   <p>The value to set for the attribute.
    #       </p>
    #
    # @return [Types::UpdateServerEngineAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_server_engine_attributes(
    #     server_name: 'ServerName', # required
    #     attribute_name: 'AttributeName', # required
    #     attribute_value: 'AttributeValue'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServerEngineAttributesOutput
    #   resp.data.server #=> Types::Server
    #   resp.data.server.associate_public_ip_address #=> Boolean
    #   resp.data.server.backup_retention_count #=> Integer
    #   resp.data.server.server_name #=> String
    #   resp.data.server.created_at #=> Time
    #   resp.data.server.cloud_formation_stack_arn #=> String
    #   resp.data.server.custom_domain #=> String
    #   resp.data.server.disable_automated_backup #=> Boolean
    #   resp.data.server.endpoint #=> String
    #   resp.data.server.engine #=> String
    #   resp.data.server.engine_model #=> String
    #   resp.data.server.engine_attributes #=> Array<EngineAttribute>
    #   resp.data.server.engine_attributes[0] #=> Types::EngineAttribute
    #   resp.data.server.engine_attributes[0].name #=> String
    #   resp.data.server.engine_attributes[0].value #=> String
    #   resp.data.server.engine_version #=> String
    #   resp.data.server.instance_profile_arn #=> String
    #   resp.data.server.instance_type #=> String
    #   resp.data.server.key_pair #=> String
    #   resp.data.server.maintenance_status #=> String, one of ["SUCCESS", "FAILED"]
    #   resp.data.server.preferred_maintenance_window #=> String
    #   resp.data.server.preferred_backup_window #=> String
    #   resp.data.server.security_group_ids #=> Array<String>
    #   resp.data.server.security_group_ids[0] #=> String
    #   resp.data.server.service_role_arn #=> String
    #   resp.data.server.status #=> String, one of ["BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"]
    #   resp.data.server.status_reason #=> String
    #   resp.data.server.subnet_ids #=> Array<String>
    #   resp.data.server.server_arn #=> String
    #
    def update_server_engine_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServerEngineAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServerEngineAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateServerEngineAttributes
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InvalidStateException]),
        data_parser: Parsers::UpdateServerEngineAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateServerEngineAttributes,
        stubs: @stubs,
        params_class: Params::UpdateServerEngineAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_server_engine_attributes
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
