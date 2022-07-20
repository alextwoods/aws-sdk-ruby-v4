# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::EKS
  # An API client for AWSWesleyFrontend
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service that makes it easy
  #             for you to run Kubernetes on Amazon Web Services without needing to stand up or maintain
  #             your own Kubernetes control plane. Kubernetes is an open-source system for automating
  #             the deployment, scaling, and management of containerized applications. </p>
  #         <p>Amazon EKS runs up-to-date versions of the open-source Kubernetes software, so
  #             you can use all the existing plugins and tooling from the Kubernetes community.
  #             Applications running on Amazon EKS are fully compatible with applications
  #             running on any standard Kubernetes environment, whether running in on-premises data
  #             centers or public clouds. This means that you can easily migrate any standard Kubernetes
  #             application to Amazon EKS without any code modification required.</p>
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
    def initialize(config = AWS::SDK::EKS::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associate encryption configuration to an existing cluster.</p>
    #         <p>You can use this API to enable encryption on existing clusters which do not have
    #             encryption already enabled. This allows you to implement a defense-in-depth security
    #             strategy without migrating applications to new Amazon EKS clusters.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateEncryptionConfigInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster that you are associating with encryption configuration.</p>
    #
    # @option params [Array<EncryptionConfig>] :encryption_config
    #   <p>The configuration you are using for encryption.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The client request token you are using with the encryption configuration.</p>
    #
    # @return [Types::AssociateEncryptionConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_encryption_config(
    #     cluster_name: 'clusterName', # required
    #     encryption_config: [
    #       {
    #         resources: [
    #           'member'
    #         ],
    #         provider: {
    #           key_arn: 'keyArn'
    #         }
    #       }
    #     ], # required
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateEncryptionConfigOutput
    #   resp.data.update #=> Types::Update
    #   resp.data.update.id #=> String
    #   resp.data.update.status #=> String, one of ["InProgress", "Failed", "Cancelled", "Successful"]
    #   resp.data.update.type #=> String, one of ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate"]
    #   resp.data.update.params #=> Array<UpdateParam>
    #   resp.data.update.params[0] #=> Types::UpdateParam
    #   resp.data.update.params[0].type #=> String, one of ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage"]
    #   resp.data.update.params[0].value #=> String
    #   resp.data.update.created_at #=> Time
    #   resp.data.update.errors #=> Array<ErrorDetail>
    #   resp.data.update.errors[0] #=> Types::ErrorDetail
    #   resp.data.update.errors[0].error_code #=> String, one of ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"]
    #   resp.data.update.errors[0].error_message #=> String
    #   resp.data.update.errors[0].resource_ids #=> Array<String>
    #   resp.data.update.errors[0].resource_ids[0] #=> String
    #
    def associate_encryption_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateEncryptionConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateEncryptionConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateEncryptionConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServerException, Errors::ResourceInUseException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::AssociateEncryptionConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateEncryptionConfig,
        stubs: @stubs,
        params_class: Params::AssociateEncryptionConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_encryption_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associate an identity provider configuration to a cluster.</p>
    #         <p>If you want to authenticate identities using an identity provider, you can create an
    #             identity provider configuration and associate it to your cluster. After configuring
    #             authentication to your cluster you can create Kubernetes <code>roles</code> and
    #                 <code>clusterroles</code> to assign permissions to the roles, and then bind the
    #             roles to the identities using Kubernetes <code>rolebindings</code> and
    #                 <code>clusterrolebindings</code>. For more information see <a href="https://kubernetes.io/docs/reference/access-authn-authz/rbac/">Using RBAC
    #                 Authorization</a> in the Kubernetes documentation.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateIdentityProviderConfigInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster to associate the configuration to.</p>
    #
    # @option params [OidcIdentityProviderConfigRequest] :oidc
    #   <p>An object that represents an OpenID Connect (OIDC) identity provider
    #               configuration.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The metadata to apply to the configuration to assist with categorization and
    #               organization. Each tag consists of a key and an optional value. You define both.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @return [Types::AssociateIdentityProviderConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_identity_provider_config(
    #     cluster_name: 'clusterName', # required
    #     oidc: {
    #       identity_provider_config_name: 'identityProviderConfigName', # required
    #       issuer_url: 'issuerUrl', # required
    #       client_id: 'clientId', # required
    #       username_claim: 'usernameClaim',
    #       username_prefix: 'usernamePrefix',
    #       groups_claim: 'groupsClaim',
    #       groups_prefix: 'groupsPrefix',
    #       required_claims: {
    #         'key' => 'value'
    #       }
    #     }, # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateIdentityProviderConfigOutput
    #   resp.data.update #=> Types::Update
    #   resp.data.update.id #=> String
    #   resp.data.update.status #=> String, one of ["InProgress", "Failed", "Cancelled", "Successful"]
    #   resp.data.update.type #=> String, one of ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate"]
    #   resp.data.update.params #=> Array<UpdateParam>
    #   resp.data.update.params[0] #=> Types::UpdateParam
    #   resp.data.update.params[0].type #=> String, one of ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage"]
    #   resp.data.update.params[0].value #=> String
    #   resp.data.update.created_at #=> Time
    #   resp.data.update.errors #=> Array<ErrorDetail>
    #   resp.data.update.errors[0] #=> Types::ErrorDetail
    #   resp.data.update.errors[0].error_code #=> String, one of ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"]
    #   resp.data.update.errors[0].error_message #=> String
    #   resp.data.update.errors[0].resource_ids #=> Array<String>
    #   resp.data.update.errors[0].resource_ids[0] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def associate_identity_provider_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateIdentityProviderConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateIdentityProviderConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateIdentityProviderConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServerException, Errors::ResourceInUseException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::AssociateIdentityProviderConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateIdentityProviderConfig,
        stubs: @stubs,
        params_class: Params::AssociateIdentityProviderConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_identity_provider_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon EKS add-on.</p>
    #         <p>Amazon EKS add-ons help to automate the provisioning and lifecycle management
    #             of common operational software for Amazon EKS clusters. Amazon EKS
    #             add-ons require clusters running version 1.18 or later because Amazon EKS
    #             add-ons rely on the Server-side Apply Kubernetes feature, which is only available in
    #             Kubernetes 1.18 and later. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html">Amazon EKS add-ons</a> in
    #             the <i>Amazon EKS User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAddonInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster to create the add-on for.</p>
    #
    # @option params [String] :addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html">
    #                  <code>DescribeAddonVersions</code>
    #               </a>.</p>
    #
    # @option params [String] :addon_version
    #   <p>The version of the add-on. The version must match one of the versions returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html">
    #                  <code>DescribeAddonVersions</code>
    #               </a>.</p>
    #
    # @option params [String] :service_account_role_arn
    #   <p>The Amazon Resource Name (ARN) of an existing IAM role to bind to the add-on's service account. The role must be assigned the IAM permissions required by the add-on. If you don't specify an existing IAM role, then the add-on uses the
    #        permissions assigned to the node IAM role. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html">Amazon EKS node IAM role</a> in the <i>Amazon EKS User Guide</i>.</p>
    #           <note>
    #               <p>To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC) provider created for
    #                   your cluster. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html">Enabling
    #                       IAM roles for service accounts on your cluster</a> in the
    #                   <i>Amazon EKS User Guide</i>.</p>
    #            </note>
    #
    # @option params [String] :resolve_conflicts
    #   <p>How to resolve parameter value conflicts when migrating an existing add-on to an
    #                   Amazon EKS add-on.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The metadata to apply to the cluster to assist with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both.</p>
    #
    # @return [Types::CreateAddonOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_addon(
    #     cluster_name: 'clusterName', # required
    #     addon_name: 'addonName', # required
    #     addon_version: 'addonVersion',
    #     service_account_role_arn: 'serviceAccountRoleArn',
    #     resolve_conflicts: 'OVERWRITE', # accepts ["OVERWRITE", "NONE"]
    #     client_request_token: 'clientRequestToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAddonOutput
    #   resp.data.addon #=> Types::Addon
    #   resp.data.addon.addon_name #=> String
    #   resp.data.addon.cluster_name #=> String
    #   resp.data.addon.status #=> String, one of ["CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETE_FAILED", "DEGRADED"]
    #   resp.data.addon.addon_version #=> String
    #   resp.data.addon.health #=> Types::AddonHealth
    #   resp.data.addon.health.issues #=> Array<AddonIssue>
    #   resp.data.addon.health.issues[0] #=> Types::AddonIssue
    #   resp.data.addon.health.issues[0].code #=> String, one of ["AccessDenied", "InternalFailure", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"]
    #   resp.data.addon.health.issues[0].message #=> String
    #   resp.data.addon.health.issues[0].resource_ids #=> Array<String>
    #   resp.data.addon.health.issues[0].resource_ids[0] #=> String
    #   resp.data.addon.addon_arn #=> String
    #   resp.data.addon.created_at #=> Time
    #   resp.data.addon.modified_at #=> Time
    #   resp.data.addon.service_account_role_arn #=> String
    #   resp.data.addon.tags #=> Hash<String, String>
    #   resp.data.addon.tags['key'] #=> String
    #
    def create_addon(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAddonInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAddonInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAddon
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServerException, Errors::ResourceInUseException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::CreateAddon
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAddon,
        stubs: @stubs,
        params_class: Params::CreateAddonOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_addon
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon EKS control plane. </p>
    #         <p>The Amazon EKS control plane consists of control plane instances that run the Kubernetes
    #             software, such as <code>etcd</code> and the API server. The control plane runs in an
    #             account managed by Amazon Web Services, and the Kubernetes API is exposed by the Amazon EKS API server
    #             endpoint. Each Amazon EKS cluster control plane is single tenant and unique. It runs on its
    #             own set of Amazon EC2 instances.</p>
    #         <p>The cluster control plane is provisioned across multiple Availability Zones and
    #             fronted by an Elastic Load Balancing Network Load Balancer. Amazon EKS also provisions elastic network interfaces in your VPC
    #             subnets to provide connectivity from the control plane instances to the nodes (for
    #             example, to support <code>kubectl exec</code>, <code>logs</code>, and <code>proxy</code>
    #             data flows).</p>
    #         <p>Amazon EKS nodes run in your Amazon Web Services account and connect to your cluster's control plane over
    #             the Kubernetes API server endpoint and a certificate file that is created for your
    #             cluster.</p>
    #
    #         <p>In most cases, it takes several minutes to create a cluster. After you create an Amazon EKS cluster,
    #             you must configure your Kubernetes tooling to communicate with the API server and launch
    #             nodes into your cluster. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/managing-auth.html">Managing Cluster
    #                 Authentication</a> and <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html">Launching Amazon EKS nodes</a> in the
    #             <i>Amazon EKS User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateClusterInput}.
    #
    # @option params [String] :name
    #   <p>The unique name to give to your cluster.</p>
    #
    # @option params [String] :version
    #   <p>The desired Kubernetes version for your cluster. If you don't specify a value here,
    #               the latest version available in Amazon EKS is used.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the
    #               Kubernetes control plane to make calls to Amazon Web Services API operations on your
    #               behalf. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html">Amazon EKS Service IAM Role</a> in the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #
    # @option params [VpcConfigRequest] :resources_vpc_config
    #   <p>The VPC configuration that's used by the cluster control plane. Amazon EKS VPC resources have
    #               specific requirements to work properly with Kubernetes. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html">Cluster VPC
    #                   Considerations</a> and <a href="https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html">Cluster Security Group Considerations</a> in the
    #               <i>Amazon EKS User Guide</i>. You must specify at least two subnets. You can specify up to five
    #               security groups. However, we recommend that you use a dedicated security group for your
    #               cluster control plane.</p>
    #
    # @option params [KubernetesNetworkConfigRequest] :kubernetes_network_config
    #   <p>The Kubernetes network configuration for the cluster.</p>
    #
    # @option params [Logging] :logging
    #   <p>Enable or disable exporting the Kubernetes control plane logs for your cluster to
    #                   CloudWatch Logs. By default, cluster control plane logs aren't exported to
    #                   CloudWatch Logs. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html">Amazon EKS Cluster control plane logs</a> in the
    #                   <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #           <note>
    #               <p>CloudWatch Logs ingestion, archive storage, and data scanning rates apply to
    #                   exported control plane logs. For more information, see <a href="http://aws.amazon.com/cloudwatch/pricing/">CloudWatch
    #                   Pricing</a>.</p>
    #           </note>
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The metadata to apply to the cluster to assist with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both.</p>
    #
    # @option params [Array<EncryptionConfig>] :encryption_config
    #   <p>The encryption configuration for the cluster.</p>
    #
    # @return [Types::CreateClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster(
    #     name: 'name', # required
    #     version: 'version',
    #     role_arn: 'roleArn', # required
    #     resources_vpc_config: {
    #       subnet_ids: [
    #         'member'
    #       ],
    #       endpoint_public_access: false,
    #       endpoint_private_access: false,
    #     }, # required
    #     kubernetes_network_config: {
    #       service_ipv4_cidr: 'serviceIpv4Cidr',
    #       ip_family: 'ipv4' # accepts ["ipv4", "ipv6"]
    #     },
    #     logging: {
    #       cluster_logging: [
    #         {
    #           types: [
    #             'api' # accepts ["api", "audit", "authenticator", "controllerManager", "scheduler"]
    #           ],
    #           enabled: false
    #         }
    #       ]
    #     },
    #     client_request_token: 'clientRequestToken',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     encryption_config: [
    #       {
    #         provider: {
    #           key_arn: 'keyArn'
    #         }
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.name #=> String
    #   resp.data.cluster.arn #=> String
    #   resp.data.cluster.created_at #=> Time
    #   resp.data.cluster.version #=> String
    #   resp.data.cluster.endpoint #=> String
    #   resp.data.cluster.role_arn #=> String
    #   resp.data.cluster.resources_vpc_config #=> Types::VpcConfigResponse
    #   resp.data.cluster.resources_vpc_config.subnet_ids #=> Array<String>
    #   resp.data.cluster.resources_vpc_config.subnet_ids[0] #=> String
    #   resp.data.cluster.resources_vpc_config.security_group_ids #=> Array<String>
    #   resp.data.cluster.resources_vpc_config.cluster_security_group_id #=> String
    #   resp.data.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.data.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.data.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.data.cluster.resources_vpc_config.public_access_cidrs #=> Array<String>
    #   resp.data.cluster.kubernetes_network_config #=> Types::KubernetesNetworkConfigResponse
    #   resp.data.cluster.kubernetes_network_config.service_ipv4_cidr #=> String
    #   resp.data.cluster.kubernetes_network_config.service_ipv6_cidr #=> String
    #   resp.data.cluster.kubernetes_network_config.ip_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.cluster.logging #=> Types::Logging
    #   resp.data.cluster.logging.cluster_logging #=> Array<LogSetup>
    #   resp.data.cluster.logging.cluster_logging[0] #=> Types::LogSetup
    #   resp.data.cluster.logging.cluster_logging[0].types #=> Array<String>
    #   resp.data.cluster.logging.cluster_logging[0].types[0] #=> String, one of ["api", "audit", "authenticator", "controllerManager", "scheduler"]
    #   resp.data.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.data.cluster.identity #=> Types::Identity
    #   resp.data.cluster.identity.oidc #=> Types::OIDC
    #   resp.data.cluster.identity.oidc.issuer #=> String
    #   resp.data.cluster.status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"]
    #   resp.data.cluster.certificate_authority #=> Types::Certificate
    #   resp.data.cluster.certificate_authority.data #=> String
    #   resp.data.cluster.client_request_token #=> String
    #   resp.data.cluster.platform_version #=> String
    #   resp.data.cluster.tags #=> Hash<String, String>
    #   resp.data.cluster.tags['key'] #=> String
    #   resp.data.cluster.encryption_config #=> Array<EncryptionConfig>
    #   resp.data.cluster.encryption_config[0] #=> Types::EncryptionConfig
    #   resp.data.cluster.encryption_config[0].resources #=> Array<String>
    #   resp.data.cluster.encryption_config[0].provider #=> Types::Provider
    #   resp.data.cluster.encryption_config[0].provider.key_arn #=> String
    #   resp.data.cluster.connector_config #=> Types::ConnectorConfigResponse
    #   resp.data.cluster.connector_config.activation_id #=> String
    #   resp.data.cluster.connector_config.activation_code #=> String
    #   resp.data.cluster.connector_config.activation_expiry #=> Time
    #   resp.data.cluster.connector_config.provider #=> String
    #   resp.data.cluster.connector_config.role_arn #=> String
    #
    def create_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceLimitExceededException, Errors::ServerException, Errors::ResourceInUseException, Errors::InvalidParameterException, Errors::ClientException, Errors::ServiceUnavailableException, Errors::UnsupportedAvailabilityZoneException]),
        data_parser: Parsers::CreateCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCluster,
        stubs: @stubs,
        params_class: Params::CreateClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Fargate profile for your Amazon EKS cluster. You
    #             must have at least one Fargate profile in a cluster to be able to run
    #             pods on Fargate.</p>
    #         <p>The Fargate profile allows an administrator to declare which pods run
    #             on Fargate and specify which pods run on which Fargate
    #             profile. This declaration is done through the profile’s selectors. Each profile can have
    #             up to five selectors that contain a namespace and labels. A namespace is required for
    #             every selector. The label field consists of multiple optional key-value pairs. Pods that
    #             match the selectors are scheduled on Fargate. If a to-be-scheduled pod
    #             matches any of the selectors in the Fargate profile, then that pod is run
    #             on Fargate.</p>
    #         <p>When you create a Fargate profile, you must specify a pod execution
    #             role to use with the pods that are scheduled with the profile. This role is added to the
    #             cluster's Kubernetes <a href="https://kubernetes.io/docs/admin/authorization/rbac/">Role Based Access Control</a> (RBAC) for authorization so that the
    #                 <code>kubelet</code> that is running on the Fargate infrastructure
    #             can register with your Amazon EKS cluster so that it can appear in your cluster
    #             as a node. The pod execution role also provides IAM permissions to the
    #                 Fargate infrastructure to allow read access to Amazon ECR
    #             image repositories. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html">Pod
    #                 Execution Role</a> in the <i>Amazon EKS User Guide</i>.</p>
    #         <p>Fargate profiles are immutable. However, you can create a new updated
    #             profile to replace an existing profile and then delete the original after the updated
    #             profile has finished creating.</p>
    #         <p>If any Fargate profiles in a cluster are in the <code>DELETING</code>
    #             status, you must wait for that Fargate profile to finish deleting before
    #             you can create any other profiles in that cluster.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/fargate-profile.html">Fargate Profile</a> in the
    #             <i>Amazon EKS User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFargateProfileInput}.
    #
    # @option params [String] :fargate_profile_name
    #   <p>The name of the Fargate profile.</p>
    #
    # @option params [String] :cluster_name
    #   <p>The name of the Amazon EKS cluster to apply the Fargate profile
    #               to.</p>
    #
    # @option params [String] :pod_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the pod execution role to use for pods that match the selectors in
    #               the Fargate profile. The pod execution role allows Fargate
    #               infrastructure to register with your cluster as a node, and it provides read access to
    #                   Amazon ECR image repositories. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html">Pod
    #                   Execution Role</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    # @option params [Array<String>] :subnets
    #   <p>The IDs of subnets to launch your pods into. At this time, pods running on Fargate are not assigned public IP addresses, so only private subnets (with
    #               no direct route to an Internet Gateway) are accepted for this parameter.</p>
    #
    # @option params [Array<FargateProfileSelector>] :selectors
    #   <p>The selectors to match for pods to use this Fargate profile. Each
    #               selector must have an associated namespace. Optionally, you can also specify labels for
    #               a namespace. You may specify up to five selectors in a Fargate
    #               profile.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The metadata to apply to the Fargate profile to assist with categorization and
    #               organization. Each tag consists of a key and an optional value. You define both.
    #               Fargate profile tags do not propagate to any other resources associated with the
    #               Fargate profile, such as the pods that are scheduled with it.</p>
    #
    # @return [Types::CreateFargateProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fargate_profile(
    #     fargate_profile_name: 'fargateProfileName', # required
    #     cluster_name: 'clusterName', # required
    #     pod_execution_role_arn: 'podExecutionRoleArn', # required
    #     subnets: [
    #       'member'
    #     ],
    #     selectors: [
    #       {
    #         namespace: 'namespace',
    #         labels: {
    #           'key' => 'value'
    #         }
    #       }
    #     ],
    #     client_request_token: 'clientRequestToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFargateProfileOutput
    #   resp.data.fargate_profile #=> Types::FargateProfile
    #   resp.data.fargate_profile.fargate_profile_name #=> String
    #   resp.data.fargate_profile.fargate_profile_arn #=> String
    #   resp.data.fargate_profile.cluster_name #=> String
    #   resp.data.fargate_profile.created_at #=> Time
    #   resp.data.fargate_profile.pod_execution_role_arn #=> String
    #   resp.data.fargate_profile.subnets #=> Array<String>
    #   resp.data.fargate_profile.subnets[0] #=> String
    #   resp.data.fargate_profile.selectors #=> Array<FargateProfileSelector>
    #   resp.data.fargate_profile.selectors[0] #=> Types::FargateProfileSelector
    #   resp.data.fargate_profile.selectors[0].namespace #=> String
    #   resp.data.fargate_profile.selectors[0].labels #=> Hash<String, String>
    #   resp.data.fargate_profile.selectors[0].labels['key'] #=> String
    #   resp.data.fargate_profile.status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.fargate_profile.tags #=> Hash<String, String>
    #   resp.data.fargate_profile.tags['key'] #=> String
    #
    def create_fargate_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFargateProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFargateProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFargateProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceLimitExceededException, Errors::InvalidRequestException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException, Errors::UnsupportedAvailabilityZoneException]),
        data_parser: Parsers::CreateFargateProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFargateProfile,
        stubs: @stubs,
        params_class: Params::CreateFargateProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_fargate_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a managed node group for an Amazon EKS cluster. You can only create a
    #             node group for your cluster that is equal to the current Kubernetes version for the
    #             cluster. All node groups are created with the latest AMI release version for the
    #             respective minor Kubernetes version of the cluster, unless you deploy a custom AMI using
    #             a launch template. For more information about using launch templates, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch
    #                 template support</a>.</p>
    #         <p>An Amazon EKS managed node group is an Amazon EC2
    #             Auto Scaling group and associated Amazon EC2 instances that are managed by
    #                 Amazon Web Services for an Amazon EKS cluster. Each node group uses a version
    #             of the Amazon EKS optimized Amazon Linux 2 AMI. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html">Managed
    #                 Node Groups</a> in the <i>Amazon EKS User Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateNodegroupInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster to create the node group in.</p>
    #
    # @option params [String] :nodegroup_name
    #   <p>The unique name to give your node group.</p>
    #
    # @option params [NodegroupScalingConfig] :scaling_config
    #   <p>The scaling configuration details for the Auto Scaling group that is created for your
    #               node group.</p>
    #
    # @option params [Integer] :disk_size
    #   <p>The root device disk size (in GiB) for your node group instances. The default disk
    #               size is 20 GiB. If you specify <code>launchTemplate</code>, then don't specify  <code>diskSize</code>,
    #               or the node group  deployment will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    # @option params [Array<String>] :subnets
    #   <p>The subnets to use for the Auto Scaling group that is created for your node group.
    #               If you specify <code>launchTemplate</code>, then don't specify  <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html">
    #                  <code>SubnetId</code>
    #               </a> in your launch template, or the node group
    #               deployment will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    # @option params [Array<String>] :instance_types
    #   <p>Specify the instance types for a node group. If you specify a GPU instance type, be
    #               sure to specify <code>AL2_x86_64_GPU</code> with the <code>amiType</code> parameter. If
    #               you specify <code>launchTemplate</code>, then you can specify zero or one instance type
    #               in your launch template <i>or</i> you can specify 0-20 instance types for
    #                   <code>instanceTypes</code>. If however, you specify an instance type in your launch
    #               template <i>and</i> specify any <code>instanceTypes</code>, the node group
    #               deployment will fail. If you don't specify an instance type in a launch template or for
    #                   <code>instanceTypes</code>, then <code>t3.medium</code> is used, by default. If you
    #               specify <code>Spot</code> for <code>capacityType</code>, then we recommend specifying
    #               multiple values for <code>instanceTypes</code>. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html#managed-node-group-capacity-types">Managed node group capacity types</a> and <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in
    #               the <i>Amazon EKS User Guide</i>.</p>
    #
    # @option params [String] :ami_type
    #   <p>The AMI type for your node group. GPU instance types should use the
    #                   <code>AL2_x86_64_GPU</code> AMI type. Non-GPU instances should use the
    #                   <code>AL2_x86_64</code> AMI type. Arm instances should use the
    #                   <code>AL2_ARM_64</code> AMI type. All types use the Amazon EKS optimized
    #               Amazon Linux 2 AMI. If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI,
    #                   then don't specify <code>amiType</code>, or the node group  deployment
    #               will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    # @option params [RemoteAccessConfig] :remote_access
    #   <p>The remote access (SSH) configuration to use with your node group. If you specify <code>launchTemplate</code>,
    #               then don't specify  <code>remoteAccess</code>, or the node group  deployment
    #               will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    # @option params [String] :node_role
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with your node group. The
    #                   Amazon EKS worker node <code>kubelet</code> daemon makes calls to Amazon Web Services APIs on your behalf. Nodes receive permissions for these API calls
    #               through an IAM instance profile and associated policies. Before you can
    #               launch nodes and register them into a cluster, you must create an IAM
    #               role for those nodes to use when they are launched. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html">Amazon EKS node IAM role</a> in the
    #                   <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>. If you specify <code>launchTemplate</code>, then don't specify
    #                   <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html">
    #                  <code>IamInstanceProfile</code>
    #               </a> in your launch template,
    #               or the node group  deployment will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    # @option params [Hash<String, String>] :labels
    #   <p>The Kubernetes labels to be applied to the nodes in the node group when they are
    #               created.</p>
    #
    # @option params [Array<Taint>] :taints
    #   <p>The Kubernetes taints to be applied to the nodes in the node group. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node taints on managed node groups</a>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The metadata to apply to the node group to assist with categorization and
    #               organization. Each tag consists of a key and an optional value. You
    #               define both. Node group tags do not propagate to any other resources associated with the node
    #               group, such as the Amazon EC2 instances or subnets.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @option params [LaunchTemplateSpecification] :launch_template
    #   <p>An object representing a node group's launch template specification. If specified,
    #               then do not specify <code>instanceTypes</code>, <code>diskSize</code>, or
    #                   <code>remoteAccess</code> and make sure that the launch template meets the
    #               requirements in <code>launchTemplateSpecification</code>.</p>
    #
    # @option params [NodegroupUpdateConfig] :update_config
    #   <p>The node group update configuration.</p>
    #
    # @option params [String] :capacity_type
    #   <p>The capacity type for your node group.</p>
    #
    # @option params [String] :version
    #   <p>The Kubernetes version to use for your managed nodes. By default, the Kubernetes
    #               version of the cluster is used, and this is the only accepted specified value.
    #               If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify  <code>version</code>,
    #               or the node group  deployment will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    # @option params [String] :release_version
    #   <p>The AMI version of the Amazon EKS optimized AMI to use with your node group.
    #               By default, the latest available AMI version for the node group's current Kubernetes
    #               version is used. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html">Amazon EKS optimized Amazon Linux 2 AMI versions</a> in the <i>Amazon EKS User Guide</i>.
    #               If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify  <code>releaseVersion</code>,
    #               or the node group  deployment will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    # @return [Types::CreateNodegroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_nodegroup(
    #     cluster_name: 'clusterName', # required
    #     nodegroup_name: 'nodegroupName', # required
    #     scaling_config: {
    #       min_size: 1,
    #       max_size: 1,
    #       desired_size: 1
    #     },
    #     disk_size: 1,
    #     subnets: [
    #       'member'
    #     ], # required
    #     ami_type: 'AL2_x86_64', # accepts ["AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64", "CUSTOM", "BOTTLEROCKET_ARM_64", "BOTTLEROCKET_x86_64", "BOTTLEROCKET_ARM_64_NVIDIA", "BOTTLEROCKET_x86_64_NVIDIA"]
    #     remote_access: {
    #       ec2_ssh_key: 'ec2SshKey',
    #     },
    #     node_role: 'nodeRole', # required
    #     labels: {
    #       'key' => 'value'
    #     },
    #     taints: [
    #       {
    #         key: 'key',
    #         value: 'value',
    #         effect: 'NO_SCHEDULE' # accepts ["NO_SCHEDULE", "NO_EXECUTE", "PREFER_NO_SCHEDULE"]
    #       }
    #     ],
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_request_token: 'clientRequestToken',
    #     launch_template: {
    #       name: 'name',
    #       version: 'version',
    #       id: 'id'
    #     },
    #     update_config: {
    #       max_unavailable: 1,
    #       max_unavailable_percentage: 1
    #     },
    #     capacity_type: 'ON_DEMAND', # accepts ["ON_DEMAND", "SPOT"]
    #     version: 'version',
    #     release_version: 'releaseVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateNodegroupOutput
    #   resp.data.nodegroup #=> Types::Nodegroup
    #   resp.data.nodegroup.nodegroup_name #=> String
    #   resp.data.nodegroup.nodegroup_arn #=> String
    #   resp.data.nodegroup.cluster_name #=> String
    #   resp.data.nodegroup.version #=> String
    #   resp.data.nodegroup.release_version #=> String
    #   resp.data.nodegroup.created_at #=> Time
    #   resp.data.nodegroup.modified_at #=> Time
    #   resp.data.nodegroup.status #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "DEGRADED"]
    #   resp.data.nodegroup.capacity_type #=> String, one of ["ON_DEMAND", "SPOT"]
    #   resp.data.nodegroup.scaling_config #=> Types::NodegroupScalingConfig
    #   resp.data.nodegroup.scaling_config.min_size #=> Integer
    #   resp.data.nodegroup.scaling_config.max_size #=> Integer
    #   resp.data.nodegroup.scaling_config.desired_size #=> Integer
    #   resp.data.nodegroup.instance_types #=> Array<String>
    #   resp.data.nodegroup.instance_types[0] #=> String
    #   resp.data.nodegroup.subnets #=> Array<String>
    #   resp.data.nodegroup.remote_access #=> Types::RemoteAccessConfig
    #   resp.data.nodegroup.remote_access.ec2_ssh_key #=> String
    #   resp.data.nodegroup.remote_access.source_security_groups #=> Array<String>
    #   resp.data.nodegroup.ami_type #=> String, one of ["AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64", "CUSTOM", "BOTTLEROCKET_ARM_64", "BOTTLEROCKET_x86_64", "BOTTLEROCKET_ARM_64_NVIDIA", "BOTTLEROCKET_x86_64_NVIDIA"]
    #   resp.data.nodegroup.node_role #=> String
    #   resp.data.nodegroup.labels #=> Hash<String, String>
    #   resp.data.nodegroup.labels['key'] #=> String
    #   resp.data.nodegroup.taints #=> Array<Taint>
    #   resp.data.nodegroup.taints[0] #=> Types::Taint
    #   resp.data.nodegroup.taints[0].key #=> String
    #   resp.data.nodegroup.taints[0].value #=> String
    #   resp.data.nodegroup.taints[0].effect #=> String, one of ["NO_SCHEDULE", "NO_EXECUTE", "PREFER_NO_SCHEDULE"]
    #   resp.data.nodegroup.resources #=> Types::NodegroupResources
    #   resp.data.nodegroup.resources.auto_scaling_groups #=> Array<AutoScalingGroup>
    #   resp.data.nodegroup.resources.auto_scaling_groups[0] #=> Types::AutoScalingGroup
    #   resp.data.nodegroup.resources.auto_scaling_groups[0].name #=> String
    #   resp.data.nodegroup.resources.remote_access_security_group #=> String
    #   resp.data.nodegroup.disk_size #=> Integer
    #   resp.data.nodegroup.health #=> Types::NodegroupHealth
    #   resp.data.nodegroup.health.issues #=> Array<Issue>
    #   resp.data.nodegroup.health.issues[0] #=> Types::Issue
    #   resp.data.nodegroup.health.issues[0].code #=> String, one of ["AutoScalingGroupNotFound", "AutoScalingGroupInvalidConfiguration", "Ec2SecurityGroupNotFound", "Ec2SecurityGroupDeletionFailure", "Ec2LaunchTemplateNotFound", "Ec2LaunchTemplateVersionMismatch", "Ec2SubnetNotFound", "Ec2SubnetInvalidConfiguration", "IamInstanceProfileNotFound", "IamLimitExceeded", "IamNodeRoleNotFound", "NodeCreationFailure", "AsgInstanceLaunchFailures", "InstanceLimitExceeded", "InsufficientFreeAddresses", "AccessDenied", "InternalFailure", "ClusterUnreachable", "Ec2SubnetMissingIpv6Assignment"]
    #   resp.data.nodegroup.health.issues[0].message #=> String
    #   resp.data.nodegroup.health.issues[0].resource_ids #=> Array<String>
    #   resp.data.nodegroup.update_config #=> Types::NodegroupUpdateConfig
    #   resp.data.nodegroup.update_config.max_unavailable #=> Integer
    #   resp.data.nodegroup.update_config.max_unavailable_percentage #=> Integer
    #   resp.data.nodegroup.launch_template #=> Types::LaunchTemplateSpecification
    #   resp.data.nodegroup.launch_template.name #=> String
    #   resp.data.nodegroup.launch_template.version #=> String
    #   resp.data.nodegroup.launch_template.id #=> String
    #   resp.data.nodegroup.tags #=> Hash<String, String>
    #   resp.data.nodegroup.tags['key'] #=> String
    #
    def create_nodegroup(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateNodegroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateNodegroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateNodegroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceLimitExceededException, Errors::InvalidRequestException, Errors::ServerException, Errors::ResourceInUseException, Errors::InvalidParameterException, Errors::ClientException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateNodegroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateNodegroup,
        stubs: @stubs,
        params_class: Params::CreateNodegroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_nodegroup
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an Amazon EKS add-on.</p>
    #         <p>When you remove the add-on, it will also be deleted from the cluster. You can always
    #             manually start an add-on on the cluster using the Kubernetes API.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAddonInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster to delete the add-on from.</p>
    #
    # @option params [String] :addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    #
    # @option params [Boolean] :preserve
    #   <p>Specifying this option preserves the add-on software on your cluster but Amazon EKS stops managing any settings for the add-on. If an IAM
    #               account is associated with the add-on, it is not removed.</p>
    #
    # @return [Types::DeleteAddonOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_addon(
    #     cluster_name: 'clusterName', # required
    #     addon_name: 'addonName', # required
    #     preserve: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAddonOutput
    #   resp.data.addon #=> Types::Addon
    #   resp.data.addon.addon_name #=> String
    #   resp.data.addon.cluster_name #=> String
    #   resp.data.addon.status #=> String, one of ["CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETE_FAILED", "DEGRADED"]
    #   resp.data.addon.addon_version #=> String
    #   resp.data.addon.health #=> Types::AddonHealth
    #   resp.data.addon.health.issues #=> Array<AddonIssue>
    #   resp.data.addon.health.issues[0] #=> Types::AddonIssue
    #   resp.data.addon.health.issues[0].code #=> String, one of ["AccessDenied", "InternalFailure", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"]
    #   resp.data.addon.health.issues[0].message #=> String
    #   resp.data.addon.health.issues[0].resource_ids #=> Array<String>
    #   resp.data.addon.health.issues[0].resource_ids[0] #=> String
    #   resp.data.addon.addon_arn #=> String
    #   resp.data.addon.created_at #=> Time
    #   resp.data.addon.modified_at #=> Time
    #   resp.data.addon.service_account_role_arn #=> String
    #   resp.data.addon.tags #=> Hash<String, String>
    #   resp.data.addon.tags['key'] #=> String
    #
    def delete_addon(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAddonInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAddonInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAddon
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DeleteAddon
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAddon,
        stubs: @stubs,
        params_class: Params::DeleteAddonOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_addon
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the Amazon EKS cluster control plane.</p>
    #         <p>If you have active services in your cluster that are associated with a load balancer,
    #             you must delete those services before deleting the cluster so that the load balancers
    #             are deleted properly. Otherwise, you can have orphaned resources in your VPC that
    #             prevent you from being able to delete the VPC. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html">Deleting a
    #                 Cluster</a> in the <i>Amazon EKS User Guide</i>.</p>
    #         <p>If you have managed node groups or Fargate profiles attached to the
    #             cluster, you must delete them first. For more information, see <a>DeleteNodegroup</a> and <a>DeleteFargateProfile</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteClusterInput}.
    #
    # @option params [String] :name
    #   <p>The name of the cluster to delete.</p>
    #
    # @return [Types::DeleteClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.name #=> String
    #   resp.data.cluster.arn #=> String
    #   resp.data.cluster.created_at #=> Time
    #   resp.data.cluster.version #=> String
    #   resp.data.cluster.endpoint #=> String
    #   resp.data.cluster.role_arn #=> String
    #   resp.data.cluster.resources_vpc_config #=> Types::VpcConfigResponse
    #   resp.data.cluster.resources_vpc_config.subnet_ids #=> Array<String>
    #   resp.data.cluster.resources_vpc_config.subnet_ids[0] #=> String
    #   resp.data.cluster.resources_vpc_config.security_group_ids #=> Array<String>
    #   resp.data.cluster.resources_vpc_config.cluster_security_group_id #=> String
    #   resp.data.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.data.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.data.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.data.cluster.resources_vpc_config.public_access_cidrs #=> Array<String>
    #   resp.data.cluster.kubernetes_network_config #=> Types::KubernetesNetworkConfigResponse
    #   resp.data.cluster.kubernetes_network_config.service_ipv4_cidr #=> String
    #   resp.data.cluster.kubernetes_network_config.service_ipv6_cidr #=> String
    #   resp.data.cluster.kubernetes_network_config.ip_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.cluster.logging #=> Types::Logging
    #   resp.data.cluster.logging.cluster_logging #=> Array<LogSetup>
    #   resp.data.cluster.logging.cluster_logging[0] #=> Types::LogSetup
    #   resp.data.cluster.logging.cluster_logging[0].types #=> Array<String>
    #   resp.data.cluster.logging.cluster_logging[0].types[0] #=> String, one of ["api", "audit", "authenticator", "controllerManager", "scheduler"]
    #   resp.data.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.data.cluster.identity #=> Types::Identity
    #   resp.data.cluster.identity.oidc #=> Types::OIDC
    #   resp.data.cluster.identity.oidc.issuer #=> String
    #   resp.data.cluster.status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"]
    #   resp.data.cluster.certificate_authority #=> Types::Certificate
    #   resp.data.cluster.certificate_authority.data #=> String
    #   resp.data.cluster.client_request_token #=> String
    #   resp.data.cluster.platform_version #=> String
    #   resp.data.cluster.tags #=> Hash<String, String>
    #   resp.data.cluster.tags['key'] #=> String
    #   resp.data.cluster.encryption_config #=> Array<EncryptionConfig>
    #   resp.data.cluster.encryption_config[0] #=> Types::EncryptionConfig
    #   resp.data.cluster.encryption_config[0].resources #=> Array<String>
    #   resp.data.cluster.encryption_config[0].provider #=> Types::Provider
    #   resp.data.cluster.encryption_config[0].provider.key_arn #=> String
    #   resp.data.cluster.connector_config #=> Types::ConnectorConfigResponse
    #   resp.data.cluster.connector_config.activation_id #=> String
    #   resp.data.cluster.connector_config.activation_code #=> String
    #   resp.data.cluster.connector_config.activation_expiry #=> Time
    #   resp.data.cluster.connector_config.provider #=> String
    #   resp.data.cluster.connector_config.role_arn #=> String
    #
    def delete_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCluster
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServerException, Errors::ResourceInUseException, Errors::ClientException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCluster,
        stubs: @stubs,
        params_class: Params::DeleteClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Fargate profile.</p>
    #         <p>When you delete a Fargate profile, any pods running on Fargate that were created with the profile are deleted. If those pods match
    #             another Fargate profile, then they are scheduled on Fargate with that profile. If they no longer match any Fargate profiles, then
    #             they are not scheduled on Fargate and they may remain in a pending
    #             state.</p>
    #         <p>Only one Fargate profile in a cluster can be in the
    #                 <code>DELETING</code> status at a time. You must wait for a Fargate
    #             profile to finish deleting before you can delete any other profiles in that
    #             cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFargateProfileInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the Amazon EKS cluster associated with the Fargate
    #               profile to delete.</p>
    #
    # @option params [String] :fargate_profile_name
    #   <p>The name of the Fargate profile to delete.</p>
    #
    # @return [Types::DeleteFargateProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fargate_profile(
    #     cluster_name: 'clusterName', # required
    #     fargate_profile_name: 'fargateProfileName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFargateProfileOutput
    #   resp.data.fargate_profile #=> Types::FargateProfile
    #   resp.data.fargate_profile.fargate_profile_name #=> String
    #   resp.data.fargate_profile.fargate_profile_arn #=> String
    #   resp.data.fargate_profile.cluster_name #=> String
    #   resp.data.fargate_profile.created_at #=> Time
    #   resp.data.fargate_profile.pod_execution_role_arn #=> String
    #   resp.data.fargate_profile.subnets #=> Array<String>
    #   resp.data.fargate_profile.subnets[0] #=> String
    #   resp.data.fargate_profile.selectors #=> Array<FargateProfileSelector>
    #   resp.data.fargate_profile.selectors[0] #=> Types::FargateProfileSelector
    #   resp.data.fargate_profile.selectors[0].namespace #=> String
    #   resp.data.fargate_profile.selectors[0].labels #=> Hash<String, String>
    #   resp.data.fargate_profile.selectors[0].labels['key'] #=> String
    #   resp.data.fargate_profile.status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.fargate_profile.tags #=> Hash<String, String>
    #   resp.data.fargate_profile.tags['key'] #=> String
    #
    def delete_fargate_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFargateProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFargateProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFargateProfile
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DeleteFargateProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFargateProfile,
        stubs: @stubs,
        params_class: Params::DeleteFargateProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_fargate_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon EKS node group for a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteNodegroupInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the Amazon EKS cluster that is associated with your node
    #               group.</p>
    #
    # @option params [String] :nodegroup_name
    #   <p>The name of the node group to delete.</p>
    #
    # @return [Types::DeleteNodegroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_nodegroup(
    #     cluster_name: 'clusterName', # required
    #     nodegroup_name: 'nodegroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteNodegroupOutput
    #   resp.data.nodegroup #=> Types::Nodegroup
    #   resp.data.nodegroup.nodegroup_name #=> String
    #   resp.data.nodegroup.nodegroup_arn #=> String
    #   resp.data.nodegroup.cluster_name #=> String
    #   resp.data.nodegroup.version #=> String
    #   resp.data.nodegroup.release_version #=> String
    #   resp.data.nodegroup.created_at #=> Time
    #   resp.data.nodegroup.modified_at #=> Time
    #   resp.data.nodegroup.status #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "DEGRADED"]
    #   resp.data.nodegroup.capacity_type #=> String, one of ["ON_DEMAND", "SPOT"]
    #   resp.data.nodegroup.scaling_config #=> Types::NodegroupScalingConfig
    #   resp.data.nodegroup.scaling_config.min_size #=> Integer
    #   resp.data.nodegroup.scaling_config.max_size #=> Integer
    #   resp.data.nodegroup.scaling_config.desired_size #=> Integer
    #   resp.data.nodegroup.instance_types #=> Array<String>
    #   resp.data.nodegroup.instance_types[0] #=> String
    #   resp.data.nodegroup.subnets #=> Array<String>
    #   resp.data.nodegroup.remote_access #=> Types::RemoteAccessConfig
    #   resp.data.nodegroup.remote_access.ec2_ssh_key #=> String
    #   resp.data.nodegroup.remote_access.source_security_groups #=> Array<String>
    #   resp.data.nodegroup.ami_type #=> String, one of ["AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64", "CUSTOM", "BOTTLEROCKET_ARM_64", "BOTTLEROCKET_x86_64", "BOTTLEROCKET_ARM_64_NVIDIA", "BOTTLEROCKET_x86_64_NVIDIA"]
    #   resp.data.nodegroup.node_role #=> String
    #   resp.data.nodegroup.labels #=> Hash<String, String>
    #   resp.data.nodegroup.labels['key'] #=> String
    #   resp.data.nodegroup.taints #=> Array<Taint>
    #   resp.data.nodegroup.taints[0] #=> Types::Taint
    #   resp.data.nodegroup.taints[0].key #=> String
    #   resp.data.nodegroup.taints[0].value #=> String
    #   resp.data.nodegroup.taints[0].effect #=> String, one of ["NO_SCHEDULE", "NO_EXECUTE", "PREFER_NO_SCHEDULE"]
    #   resp.data.nodegroup.resources #=> Types::NodegroupResources
    #   resp.data.nodegroup.resources.auto_scaling_groups #=> Array<AutoScalingGroup>
    #   resp.data.nodegroup.resources.auto_scaling_groups[0] #=> Types::AutoScalingGroup
    #   resp.data.nodegroup.resources.auto_scaling_groups[0].name #=> String
    #   resp.data.nodegroup.resources.remote_access_security_group #=> String
    #   resp.data.nodegroup.disk_size #=> Integer
    #   resp.data.nodegroup.health #=> Types::NodegroupHealth
    #   resp.data.nodegroup.health.issues #=> Array<Issue>
    #   resp.data.nodegroup.health.issues[0] #=> Types::Issue
    #   resp.data.nodegroup.health.issues[0].code #=> String, one of ["AutoScalingGroupNotFound", "AutoScalingGroupInvalidConfiguration", "Ec2SecurityGroupNotFound", "Ec2SecurityGroupDeletionFailure", "Ec2LaunchTemplateNotFound", "Ec2LaunchTemplateVersionMismatch", "Ec2SubnetNotFound", "Ec2SubnetInvalidConfiguration", "IamInstanceProfileNotFound", "IamLimitExceeded", "IamNodeRoleNotFound", "NodeCreationFailure", "AsgInstanceLaunchFailures", "InstanceLimitExceeded", "InsufficientFreeAddresses", "AccessDenied", "InternalFailure", "ClusterUnreachable", "Ec2SubnetMissingIpv6Assignment"]
    #   resp.data.nodegroup.health.issues[0].message #=> String
    #   resp.data.nodegroup.health.issues[0].resource_ids #=> Array<String>
    #   resp.data.nodegroup.update_config #=> Types::NodegroupUpdateConfig
    #   resp.data.nodegroup.update_config.max_unavailable #=> Integer
    #   resp.data.nodegroup.update_config.max_unavailable_percentage #=> Integer
    #   resp.data.nodegroup.launch_template #=> Types::LaunchTemplateSpecification
    #   resp.data.nodegroup.launch_template.name #=> String
    #   resp.data.nodegroup.launch_template.version #=> String
    #   resp.data.nodegroup.launch_template.id #=> String
    #   resp.data.nodegroup.tags #=> Hash<String, String>
    #   resp.data.nodegroup.tags['key'] #=> String
    #
    def delete_nodegroup(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteNodegroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteNodegroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteNodegroup
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServerException, Errors::ResourceInUseException, Errors::InvalidParameterException, Errors::ClientException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteNodegroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteNodegroup,
        stubs: @stubs,
        params_class: Params::DeleteNodegroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_nodegroup
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters a connected cluster to remove it from the Amazon EKS control
    #             plane.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterClusterInput}.
    #
    # @option params [String] :name
    #   <p>The name of the connected cluster to deregister.</p>
    #
    # @return [Types::DeregisterClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_cluster(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.name #=> String
    #   resp.data.cluster.arn #=> String
    #   resp.data.cluster.created_at #=> Time
    #   resp.data.cluster.version #=> String
    #   resp.data.cluster.endpoint #=> String
    #   resp.data.cluster.role_arn #=> String
    #   resp.data.cluster.resources_vpc_config #=> Types::VpcConfigResponse
    #   resp.data.cluster.resources_vpc_config.subnet_ids #=> Array<String>
    #   resp.data.cluster.resources_vpc_config.subnet_ids[0] #=> String
    #   resp.data.cluster.resources_vpc_config.security_group_ids #=> Array<String>
    #   resp.data.cluster.resources_vpc_config.cluster_security_group_id #=> String
    #   resp.data.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.data.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.data.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.data.cluster.resources_vpc_config.public_access_cidrs #=> Array<String>
    #   resp.data.cluster.kubernetes_network_config #=> Types::KubernetesNetworkConfigResponse
    #   resp.data.cluster.kubernetes_network_config.service_ipv4_cidr #=> String
    #   resp.data.cluster.kubernetes_network_config.service_ipv6_cidr #=> String
    #   resp.data.cluster.kubernetes_network_config.ip_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.cluster.logging #=> Types::Logging
    #   resp.data.cluster.logging.cluster_logging #=> Array<LogSetup>
    #   resp.data.cluster.logging.cluster_logging[0] #=> Types::LogSetup
    #   resp.data.cluster.logging.cluster_logging[0].types #=> Array<String>
    #   resp.data.cluster.logging.cluster_logging[0].types[0] #=> String, one of ["api", "audit", "authenticator", "controllerManager", "scheduler"]
    #   resp.data.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.data.cluster.identity #=> Types::Identity
    #   resp.data.cluster.identity.oidc #=> Types::OIDC
    #   resp.data.cluster.identity.oidc.issuer #=> String
    #   resp.data.cluster.status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"]
    #   resp.data.cluster.certificate_authority #=> Types::Certificate
    #   resp.data.cluster.certificate_authority.data #=> String
    #   resp.data.cluster.client_request_token #=> String
    #   resp.data.cluster.platform_version #=> String
    #   resp.data.cluster.tags #=> Hash<String, String>
    #   resp.data.cluster.tags['key'] #=> String
    #   resp.data.cluster.encryption_config #=> Array<EncryptionConfig>
    #   resp.data.cluster.encryption_config[0] #=> Types::EncryptionConfig
    #   resp.data.cluster.encryption_config[0].resources #=> Array<String>
    #   resp.data.cluster.encryption_config[0].provider #=> Types::Provider
    #   resp.data.cluster.encryption_config[0].provider.key_arn #=> String
    #   resp.data.cluster.connector_config #=> Types::ConnectorConfigResponse
    #   resp.data.cluster.connector_config.activation_id #=> String
    #   resp.data.cluster.connector_config.activation_code #=> String
    #   resp.data.cluster.connector_config.activation_expiry #=> Time
    #   resp.data.cluster.connector_config.provider #=> String
    #   resp.data.cluster.connector_config.role_arn #=> String
    #
    def deregister_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterCluster
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServerException, Errors::AccessDeniedException, Errors::ResourceInUseException, Errors::ClientException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeregisterCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterCluster,
        stubs: @stubs,
        params_class: Params::DeregisterClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an Amazon EKS add-on.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAddonInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster.</p>
    #
    # @option params [String] :addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    #
    # @return [Types::DescribeAddonOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_addon(
    #     cluster_name: 'clusterName', # required
    #     addon_name: 'addonName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAddonOutput
    #   resp.data.addon #=> Types::Addon
    #   resp.data.addon.addon_name #=> String
    #   resp.data.addon.cluster_name #=> String
    #   resp.data.addon.status #=> String, one of ["CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETE_FAILED", "DEGRADED"]
    #   resp.data.addon.addon_version #=> String
    #   resp.data.addon.health #=> Types::AddonHealth
    #   resp.data.addon.health.issues #=> Array<AddonIssue>
    #   resp.data.addon.health.issues[0] #=> Types::AddonIssue
    #   resp.data.addon.health.issues[0].code #=> String, one of ["AccessDenied", "InternalFailure", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"]
    #   resp.data.addon.health.issues[0].message #=> String
    #   resp.data.addon.health.issues[0].resource_ids #=> Array<String>
    #   resp.data.addon.health.issues[0].resource_ids[0] #=> String
    #   resp.data.addon.addon_arn #=> String
    #   resp.data.addon.created_at #=> Time
    #   resp.data.addon.modified_at #=> Time
    #   resp.data.addon.service_account_role_arn #=> String
    #   resp.data.addon.tags #=> Hash<String, String>
    #   resp.data.addon.tags['key'] #=> String
    #
    def describe_addon(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAddonInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAddonInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAddon
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeAddon
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAddon,
        stubs: @stubs,
        params_class: Params::DescribeAddonOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_addon
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the Kubernetes versions that the add-on can be used with.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAddonVersionsInput}.
    #
    # @option params [String] :kubernetes_version
    #   <p>The Kubernetes versions that the add-on can be used with.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribeAddonVersionsRequest</code> where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value.</p>
    #           <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    # @option params [String] :addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    #
    # @return [Types::DescribeAddonVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_addon_versions(
    #     kubernetes_version: 'kubernetesVersion',
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     addon_name: 'addonName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAddonVersionsOutput
    #   resp.data.addons #=> Array<AddonInfo>
    #   resp.data.addons[0] #=> Types::AddonInfo
    #   resp.data.addons[0].addon_name #=> String
    #   resp.data.addons[0].type #=> String
    #   resp.data.addons[0].addon_versions #=> Array<AddonVersionInfo>
    #   resp.data.addons[0].addon_versions[0] #=> Types::AddonVersionInfo
    #   resp.data.addons[0].addon_versions[0].addon_version #=> String
    #   resp.data.addons[0].addon_versions[0].architecture #=> Array<String>
    #   resp.data.addons[0].addon_versions[0].architecture[0] #=> String
    #   resp.data.addons[0].addon_versions[0].compatibilities #=> Array<Compatibility>
    #   resp.data.addons[0].addon_versions[0].compatibilities[0] #=> Types::Compatibility
    #   resp.data.addons[0].addon_versions[0].compatibilities[0].cluster_version #=> String
    #   resp.data.addons[0].addon_versions[0].compatibilities[0].platform_versions #=> Array<String>
    #   resp.data.addons[0].addon_versions[0].compatibilities[0].default_version #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_addon_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAddonVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAddonVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAddonVersions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::DescribeAddonVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAddonVersions,
        stubs: @stubs,
        params_class: Params::DescribeAddonVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_addon_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns descriptive information about an Amazon EKS cluster.</p>
    #         <p>The API server endpoint and certificate authority data returned by this operation are
    #             required for <code>kubelet</code> and <code>kubectl</code> to communicate with your
    #             Kubernetes API server. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html">Create a
    #                 kubeconfig for Amazon EKS</a>.</p>
    #         <note>
    #             <p>The API server endpoint and certificate authority data aren't available until the
    #                 cluster reaches the <code>ACTIVE</code> state.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeClusterInput}.
    #
    # @option params [String] :name
    #   <p>The name of the cluster to describe.</p>
    #
    # @return [Types::DescribeClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.name #=> String
    #   resp.data.cluster.arn #=> String
    #   resp.data.cluster.created_at #=> Time
    #   resp.data.cluster.version #=> String
    #   resp.data.cluster.endpoint #=> String
    #   resp.data.cluster.role_arn #=> String
    #   resp.data.cluster.resources_vpc_config #=> Types::VpcConfigResponse
    #   resp.data.cluster.resources_vpc_config.subnet_ids #=> Array<String>
    #   resp.data.cluster.resources_vpc_config.subnet_ids[0] #=> String
    #   resp.data.cluster.resources_vpc_config.security_group_ids #=> Array<String>
    #   resp.data.cluster.resources_vpc_config.cluster_security_group_id #=> String
    #   resp.data.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.data.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.data.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.data.cluster.resources_vpc_config.public_access_cidrs #=> Array<String>
    #   resp.data.cluster.kubernetes_network_config #=> Types::KubernetesNetworkConfigResponse
    #   resp.data.cluster.kubernetes_network_config.service_ipv4_cidr #=> String
    #   resp.data.cluster.kubernetes_network_config.service_ipv6_cidr #=> String
    #   resp.data.cluster.kubernetes_network_config.ip_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.cluster.logging #=> Types::Logging
    #   resp.data.cluster.logging.cluster_logging #=> Array<LogSetup>
    #   resp.data.cluster.logging.cluster_logging[0] #=> Types::LogSetup
    #   resp.data.cluster.logging.cluster_logging[0].types #=> Array<String>
    #   resp.data.cluster.logging.cluster_logging[0].types[0] #=> String, one of ["api", "audit", "authenticator", "controllerManager", "scheduler"]
    #   resp.data.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.data.cluster.identity #=> Types::Identity
    #   resp.data.cluster.identity.oidc #=> Types::OIDC
    #   resp.data.cluster.identity.oidc.issuer #=> String
    #   resp.data.cluster.status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"]
    #   resp.data.cluster.certificate_authority #=> Types::Certificate
    #   resp.data.cluster.certificate_authority.data #=> String
    #   resp.data.cluster.client_request_token #=> String
    #   resp.data.cluster.platform_version #=> String
    #   resp.data.cluster.tags #=> Hash<String, String>
    #   resp.data.cluster.tags['key'] #=> String
    #   resp.data.cluster.encryption_config #=> Array<EncryptionConfig>
    #   resp.data.cluster.encryption_config[0] #=> Types::EncryptionConfig
    #   resp.data.cluster.encryption_config[0].resources #=> Array<String>
    #   resp.data.cluster.encryption_config[0].provider #=> Types::Provider
    #   resp.data.cluster.encryption_config[0].provider.key_arn #=> String
    #   resp.data.cluster.connector_config #=> Types::ConnectorConfigResponse
    #   resp.data.cluster.connector_config.activation_id #=> String
    #   resp.data.cluster.connector_config.activation_code #=> String
    #   resp.data.cluster.connector_config.activation_expiry #=> Time
    #   resp.data.cluster.connector_config.provider #=> String
    #   resp.data.cluster.connector_config.role_arn #=> String
    #
    def describe_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCluster
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServerException, Errors::ClientException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCluster,
        stubs: @stubs,
        params_class: Params::DescribeClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns descriptive information about an Fargate profile.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFargateProfileInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the Amazon EKS cluster associated with the Fargate
    #               profile.</p>
    #
    # @option params [String] :fargate_profile_name
    #   <p>The name of the Fargate profile to describe.</p>
    #
    # @return [Types::DescribeFargateProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fargate_profile(
    #     cluster_name: 'clusterName', # required
    #     fargate_profile_name: 'fargateProfileName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFargateProfileOutput
    #   resp.data.fargate_profile #=> Types::FargateProfile
    #   resp.data.fargate_profile.fargate_profile_name #=> String
    #   resp.data.fargate_profile.fargate_profile_arn #=> String
    #   resp.data.fargate_profile.cluster_name #=> String
    #   resp.data.fargate_profile.created_at #=> Time
    #   resp.data.fargate_profile.pod_execution_role_arn #=> String
    #   resp.data.fargate_profile.subnets #=> Array<String>
    #   resp.data.fargate_profile.subnets[0] #=> String
    #   resp.data.fargate_profile.selectors #=> Array<FargateProfileSelector>
    #   resp.data.fargate_profile.selectors[0] #=> Types::FargateProfileSelector
    #   resp.data.fargate_profile.selectors[0].namespace #=> String
    #   resp.data.fargate_profile.selectors[0].labels #=> Hash<String, String>
    #   resp.data.fargate_profile.selectors[0].labels['key'] #=> String
    #   resp.data.fargate_profile.status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.fargate_profile.tags #=> Hash<String, String>
    #   resp.data.fargate_profile.tags['key'] #=> String
    #
    def describe_fargate_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFargateProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFargateProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFargateProfile
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeFargateProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFargateProfile,
        stubs: @stubs,
        params_class: Params::DescribeFargateProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fargate_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns descriptive information about an identity provider configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeIdentityProviderConfigInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The cluster name that the identity provider configuration is associated to.</p>
    #
    # @option params [IdentityProviderConfig] :identity_provider_config
    #   <p>An object that represents an identity provider configuration.</p>
    #
    # @return [Types::DescribeIdentityProviderConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity_provider_config(
    #     cluster_name: 'clusterName', # required
    #     identity_provider_config: {
    #       type: 'type', # required
    #       name: 'name' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeIdentityProviderConfigOutput
    #   resp.data.identity_provider_config #=> Types::IdentityProviderConfigResponse
    #   resp.data.identity_provider_config.oidc #=> Types::OidcIdentityProviderConfig
    #   resp.data.identity_provider_config.oidc.identity_provider_config_name #=> String
    #   resp.data.identity_provider_config.oidc.identity_provider_config_arn #=> String
    #   resp.data.identity_provider_config.oidc.cluster_name #=> String
    #   resp.data.identity_provider_config.oidc.issuer_url #=> String
    #   resp.data.identity_provider_config.oidc.client_id #=> String
    #   resp.data.identity_provider_config.oidc.username_claim #=> String
    #   resp.data.identity_provider_config.oidc.username_prefix #=> String
    #   resp.data.identity_provider_config.oidc.groups_claim #=> String
    #   resp.data.identity_provider_config.oidc.groups_prefix #=> String
    #   resp.data.identity_provider_config.oidc.required_claims #=> Hash<String, String>
    #   resp.data.identity_provider_config.oidc.required_claims['key'] #=> String
    #   resp.data.identity_provider_config.oidc.tags #=> Hash<String, String>
    #   resp.data.identity_provider_config.oidc.tags['key'] #=> String
    #   resp.data.identity_provider_config.oidc.status #=> String, one of ["CREATING", "DELETING", "ACTIVE"]
    #
    def describe_identity_provider_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeIdentityProviderConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeIdentityProviderConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeIdentityProviderConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeIdentityProviderConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeIdentityProviderConfig,
        stubs: @stubs,
        params_class: Params::DescribeIdentityProviderConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_identity_provider_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns descriptive information about an Amazon EKS node group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeNodegroupInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the Amazon EKS cluster associated with the node group.</p>
    #
    # @option params [String] :nodegroup_name
    #   <p>The name of the node group to describe.</p>
    #
    # @return [Types::DescribeNodegroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_nodegroup(
    #     cluster_name: 'clusterName', # required
    #     nodegroup_name: 'nodegroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeNodegroupOutput
    #   resp.data.nodegroup #=> Types::Nodegroup
    #   resp.data.nodegroup.nodegroup_name #=> String
    #   resp.data.nodegroup.nodegroup_arn #=> String
    #   resp.data.nodegroup.cluster_name #=> String
    #   resp.data.nodegroup.version #=> String
    #   resp.data.nodegroup.release_version #=> String
    #   resp.data.nodegroup.created_at #=> Time
    #   resp.data.nodegroup.modified_at #=> Time
    #   resp.data.nodegroup.status #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "DEGRADED"]
    #   resp.data.nodegroup.capacity_type #=> String, one of ["ON_DEMAND", "SPOT"]
    #   resp.data.nodegroup.scaling_config #=> Types::NodegroupScalingConfig
    #   resp.data.nodegroup.scaling_config.min_size #=> Integer
    #   resp.data.nodegroup.scaling_config.max_size #=> Integer
    #   resp.data.nodegroup.scaling_config.desired_size #=> Integer
    #   resp.data.nodegroup.instance_types #=> Array<String>
    #   resp.data.nodegroup.instance_types[0] #=> String
    #   resp.data.nodegroup.subnets #=> Array<String>
    #   resp.data.nodegroup.remote_access #=> Types::RemoteAccessConfig
    #   resp.data.nodegroup.remote_access.ec2_ssh_key #=> String
    #   resp.data.nodegroup.remote_access.source_security_groups #=> Array<String>
    #   resp.data.nodegroup.ami_type #=> String, one of ["AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64", "CUSTOM", "BOTTLEROCKET_ARM_64", "BOTTLEROCKET_x86_64", "BOTTLEROCKET_ARM_64_NVIDIA", "BOTTLEROCKET_x86_64_NVIDIA"]
    #   resp.data.nodegroup.node_role #=> String
    #   resp.data.nodegroup.labels #=> Hash<String, String>
    #   resp.data.nodegroup.labels['key'] #=> String
    #   resp.data.nodegroup.taints #=> Array<Taint>
    #   resp.data.nodegroup.taints[0] #=> Types::Taint
    #   resp.data.nodegroup.taints[0].key #=> String
    #   resp.data.nodegroup.taints[0].value #=> String
    #   resp.data.nodegroup.taints[0].effect #=> String, one of ["NO_SCHEDULE", "NO_EXECUTE", "PREFER_NO_SCHEDULE"]
    #   resp.data.nodegroup.resources #=> Types::NodegroupResources
    #   resp.data.nodegroup.resources.auto_scaling_groups #=> Array<AutoScalingGroup>
    #   resp.data.nodegroup.resources.auto_scaling_groups[0] #=> Types::AutoScalingGroup
    #   resp.data.nodegroup.resources.auto_scaling_groups[0].name #=> String
    #   resp.data.nodegroup.resources.remote_access_security_group #=> String
    #   resp.data.nodegroup.disk_size #=> Integer
    #   resp.data.nodegroup.health #=> Types::NodegroupHealth
    #   resp.data.nodegroup.health.issues #=> Array<Issue>
    #   resp.data.nodegroup.health.issues[0] #=> Types::Issue
    #   resp.data.nodegroup.health.issues[0].code #=> String, one of ["AutoScalingGroupNotFound", "AutoScalingGroupInvalidConfiguration", "Ec2SecurityGroupNotFound", "Ec2SecurityGroupDeletionFailure", "Ec2LaunchTemplateNotFound", "Ec2LaunchTemplateVersionMismatch", "Ec2SubnetNotFound", "Ec2SubnetInvalidConfiguration", "IamInstanceProfileNotFound", "IamLimitExceeded", "IamNodeRoleNotFound", "NodeCreationFailure", "AsgInstanceLaunchFailures", "InstanceLimitExceeded", "InsufficientFreeAddresses", "AccessDenied", "InternalFailure", "ClusterUnreachable", "Ec2SubnetMissingIpv6Assignment"]
    #   resp.data.nodegroup.health.issues[0].message #=> String
    #   resp.data.nodegroup.health.issues[0].resource_ids #=> Array<String>
    #   resp.data.nodegroup.update_config #=> Types::NodegroupUpdateConfig
    #   resp.data.nodegroup.update_config.max_unavailable #=> Integer
    #   resp.data.nodegroup.update_config.max_unavailable_percentage #=> Integer
    #   resp.data.nodegroup.launch_template #=> Types::LaunchTemplateSpecification
    #   resp.data.nodegroup.launch_template.name #=> String
    #   resp.data.nodegroup.launch_template.version #=> String
    #   resp.data.nodegroup.launch_template.id #=> String
    #   resp.data.nodegroup.tags #=> Hash<String, String>
    #   resp.data.nodegroup.tags['key'] #=> String
    #
    def describe_nodegroup(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeNodegroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeNodegroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeNodegroup
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeNodegroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeNodegroup,
        stubs: @stubs,
        params_class: Params::DescribeNodegroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_nodegroup
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns descriptive information about an update against your Amazon EKS
    #             cluster or associated managed node group or Amazon EKS add-on.</p>
    #         <p>When the status of the update is <code>Succeeded</code>, the update is complete. If an
    #             update fails, the status is <code>Failed</code>, and an error detail explains the reason
    #             for the failure.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUpdateInput}.
    #
    # @option params [String] :name
    #   <p>The name of the Amazon EKS cluster associated with the update.</p>
    #
    # @option params [String] :update_id
    #   <p>The ID of the update to describe.</p>
    #
    # @option params [String] :nodegroup_name
    #   <p>The name of the Amazon EKS node group associated with the update. This
    #               parameter is required if the update is a node group update.</p>
    #
    # @option params [String] :addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>. This parameter is required if the update is an add-on update.</p>
    #
    # @return [Types::DescribeUpdateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_update(
    #     name: 'name', # required
    #     update_id: 'updateId', # required
    #     nodegroup_name: 'nodegroupName',
    #     addon_name: 'addonName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUpdateOutput
    #   resp.data.update #=> Types::Update
    #   resp.data.update.id #=> String
    #   resp.data.update.status #=> String, one of ["InProgress", "Failed", "Cancelled", "Successful"]
    #   resp.data.update.type #=> String, one of ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate"]
    #   resp.data.update.params #=> Array<UpdateParam>
    #   resp.data.update.params[0] #=> Types::UpdateParam
    #   resp.data.update.params[0].type #=> String, one of ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage"]
    #   resp.data.update.params[0].value #=> String
    #   resp.data.update.created_at #=> Time
    #   resp.data.update.errors #=> Array<ErrorDetail>
    #   resp.data.update.errors[0] #=> Types::ErrorDetail
    #   resp.data.update.errors[0].error_code #=> String, one of ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"]
    #   resp.data.update.errors[0].error_message #=> String
    #   resp.data.update.errors[0].resource_ids #=> Array<String>
    #   resp.data.update.errors[0].resource_ids[0] #=> String
    #
    def describe_update(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUpdateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUpdateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUpdate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeUpdate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUpdate,
        stubs: @stubs,
        params_class: Params::DescribeUpdateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_update
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates an identity provider configuration from a cluster. If you disassociate
    #             an identity provider from your cluster, users included in the provider can no longer
    #             access the cluster. However, you can still access the cluster with Amazon Web Services
    #             IAM users.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateIdentityProviderConfigInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster to disassociate an identity provider from.</p>
    #
    # @option params [IdentityProviderConfig] :identity_provider_config
    #   <p>An object that represents an identity provider configuration.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @return [Types::DisassociateIdentityProviderConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_identity_provider_config(
    #     cluster_name: 'clusterName', # required
    #     identity_provider_config: {
    #       type: 'type', # required
    #       name: 'name' # required
    #     }, # required
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateIdentityProviderConfigOutput
    #   resp.data.update #=> Types::Update
    #   resp.data.update.id #=> String
    #   resp.data.update.status #=> String, one of ["InProgress", "Failed", "Cancelled", "Successful"]
    #   resp.data.update.type #=> String, one of ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate"]
    #   resp.data.update.params #=> Array<UpdateParam>
    #   resp.data.update.params[0] #=> Types::UpdateParam
    #   resp.data.update.params[0].type #=> String, one of ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage"]
    #   resp.data.update.params[0].value #=> String
    #   resp.data.update.created_at #=> Time
    #   resp.data.update.errors #=> Array<ErrorDetail>
    #   resp.data.update.errors[0] #=> Types::ErrorDetail
    #   resp.data.update.errors[0].error_code #=> String, one of ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"]
    #   resp.data.update.errors[0].error_message #=> String
    #   resp.data.update.errors[0].resource_ids #=> Array<String>
    #   resp.data.update.errors[0].resource_ids[0] #=> String
    #
    def disassociate_identity_provider_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateIdentityProviderConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateIdentityProviderConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateIdentityProviderConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServerException, Errors::ResourceInUseException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DisassociateIdentityProviderConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateIdentityProviderConfig,
        stubs: @stubs,
        params_class: Params::DisassociateIdentityProviderConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_identity_provider_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the available add-ons.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAddonsInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of add-on results returned by <code>ListAddonsRequest</code> in
    #               paginated output. When you use this parameter, <code>ListAddonsRequest</code> returns
    #               only <code>maxResults</code> results in a single page along with a
    #                   <code>nextToken</code> response element. You can see the remaining results of the
    #               initial request by sending another <code>ListAddonsRequest</code> request with the
    #               returned <code>nextToken</code> value. This value can be between 1 and
    #               100. If you don't use this parameter, <code>ListAddonsRequest</code>
    #               returns up to 100 results and a <code>nextToken</code> value, if
    #               applicable.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListAddonsRequest</code> where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value.</p>
    #           <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    # @return [Types::ListAddonsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_addons(
    #     cluster_name: 'clusterName', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAddonsOutput
    #   resp.data.addons #=> Array<String>
    #   resp.data.addons[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_addons(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAddonsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAddonsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAddons
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ListAddons
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAddons,
        stubs: @stubs,
        params_class: Params::ListAddonsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_addons
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Amazon EKS clusters in your Amazon Web Services account in the
    #             specified Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListClustersInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of cluster results returned by <code>ListClusters</code> in
    #               paginated output. When you use this parameter, <code>ListClusters</code> returns only
    #                   <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another <code>ListClusters</code> request with the returned <code>nextToken</code>
    #               value. This value can be between 1 and 100. If you don't
    #               use this parameter, <code>ListClusters</code> returns up to 100
    #               results and a <code>nextToken</code> value if applicable.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListClusters</code> request where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value.</p>
    #           <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    # @option params [Array<String>] :include
    #   <p>Indicates whether external clusters are included in the returned list. Use '<code>all</code>' to return connected clusters, or blank to return only Amazon EKS clusters. '<code>all</code>' must be in lowercase otherwise an error occurs.</p>
    #
    # @return [Types::ListClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters(
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     include: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListClustersOutput
    #   resp.data.clusters #=> Array<String>
    #   resp.data.clusters[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListClustersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListClustersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListClusters
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListClusters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListClusters,
        stubs: @stubs,
        params_class: Params::ListClustersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_clusters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Fargate profiles associated with the specified cluster in
    #             your Amazon Web Services account in the specified Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFargateProfilesInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the Amazon EKS cluster that you would like to list Fargate profiles in.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of Fargate profile results returned by
    #                   <code>ListFargateProfiles</code> in paginated output. When you use this parameter,
    #                   <code>ListFargateProfiles</code> returns only <code>maxResults</code> results in a
    #               single page along with a <code>nextToken</code> response element. You can see the
    #               remaining results of the initial request by sending another
    #                   <code>ListFargateProfiles</code> request with the returned <code>nextToken</code>
    #               value. This value can be between 1 and 100. If you don't
    #               use this parameter, <code>ListFargateProfiles</code> returns up to 100
    #               results and a <code>nextToken</code> value if applicable.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListFargateProfiles</code> request where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value.</p>
    #
    # @return [Types::ListFargateProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fargate_profiles(
    #     cluster_name: 'clusterName', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFargateProfilesOutput
    #   resp.data.fargate_profile_names #=> Array<String>
    #   resp.data.fargate_profile_names[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_fargate_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFargateProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFargateProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFargateProfiles
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ListFargateProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFargateProfiles,
        stubs: @stubs,
        params_class: Params::ListFargateProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_fargate_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A list of identity provider configurations.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIdentityProviderConfigsInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The cluster name that you want to list identity provider configurations for.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of identity provider configurations returned by
    #                   <code>ListIdentityProviderConfigs</code> in paginated output. When you use this
    #               parameter, <code>ListIdentityProviderConfigs</code> returns only <code>maxResults</code>
    #               results in a single page along with a <code>nextToken</code> response element. You can
    #               see the remaining results of the initial request by sending another
    #                   <code>ListIdentityProviderConfigs</code> request with the returned
    #                   <code>nextToken</code> value. This value can be between 1 and
    #               100. If you don't use this parameter,
    #                   <code>ListIdentityProviderConfigs</code> returns up to 100 results
    #               and a <code>nextToken</code> value, if applicable.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>IdentityProviderConfigsRequest</code> where <code>maxResults</code> was used
    #               and the results exceeded the value of that parameter. Pagination continues from the end
    #               of the previous results that returned the <code>nextToken</code> value.</p>
    #
    # @return [Types::ListIdentityProviderConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_provider_configs(
    #     cluster_name: 'clusterName', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIdentityProviderConfigsOutput
    #   resp.data.identity_provider_configs #=> Array<IdentityProviderConfig>
    #   resp.data.identity_provider_configs[0] #=> Types::IdentityProviderConfig
    #   resp.data.identity_provider_configs[0].type #=> String
    #   resp.data.identity_provider_configs[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_identity_provider_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIdentityProviderConfigsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIdentityProviderConfigsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIdentityProviderConfigs
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListIdentityProviderConfigs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIdentityProviderConfigs,
        stubs: @stubs,
        params_class: Params::ListIdentityProviderConfigsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_identity_provider_configs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Amazon EKS managed node groups associated with the specified cluster
    #             in your Amazon Web Services account in the specified Region. Self-managed node groups are
    #             not listed.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNodegroupsInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the Amazon EKS cluster that you would like to list node groups
    #               in.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of node group results returned by <code>ListNodegroups</code> in
    #               paginated output. When you use this parameter, <code>ListNodegroups</code> returns only
    #                   <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another <code>ListNodegroups</code> request with the returned <code>nextToken</code>
    #               value. This value can be between 1 and 100. If you don't
    #               use this parameter, <code>ListNodegroups</code> returns up to 100
    #               results and a <code>nextToken</code> value if applicable.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListNodegroups</code> request where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value.</p>
    #
    # @return [Types::ListNodegroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_nodegroups(
    #     cluster_name: 'clusterName', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNodegroupsOutput
    #   resp.data.nodegroups #=> Array<String>
    #   resp.data.nodegroups[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_nodegroups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNodegroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNodegroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNodegroups
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListNodegroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNodegroups,
        stubs: @stubs,
        params_class: Params::ListNodegroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_nodegroups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the tags for an Amazon EKS resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the
    #               supported resources are Amazon EKS clusters and managed node groups.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException]),
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

    # <p>Lists the updates associated with an Amazon EKS cluster or managed node group
    #             in your Amazon Web Services account, in the specified Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUpdatesInput}.
    #
    # @option params [String] :name
    #   <p>The name of the Amazon EKS cluster to list updates for.</p>
    #
    # @option params [String] :nodegroup_name
    #   <p>The name of the Amazon EKS managed node group to list updates for.</p>
    #
    # @option params [String] :addon_name
    #   <p>The names of the installed add-ons that have available updates.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListUpdates</code> request where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of update results returned by <code>ListUpdates</code> in paginated
    #               output. When you use this parameter, <code>ListUpdates</code> returns only
    #                   <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another <code>ListUpdates</code> request with the returned <code>nextToken</code> value.
    #               This value can be between 1 and 100. If you don't use this
    #               parameter, <code>ListUpdates</code> returns up to 100 results and a
    #                   <code>nextToken</code> value if applicable.</p>
    #
    # @return [Types::ListUpdatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_updates(
    #     name: 'name', # required
    #     nodegroup_name: 'nodegroupName',
    #     addon_name: 'addonName',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUpdatesOutput
    #   resp.data.update_ids #=> Array<String>
    #   resp.data.update_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_updates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUpdatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUpdatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUpdates
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ListUpdates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUpdates,
        stubs: @stubs,
        params_class: Params::ListUpdatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_updates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Connects a Kubernetes cluster to the Amazon EKS control plane. </p>
    #         <p>Any Kubernetes cluster can be connected to the Amazon EKS control plane to
    #             view current information about the cluster and its nodes. </p>
    #         <p>Cluster connection requires two steps. First, send a <code>
    #                <a>RegisterClusterRequest</a>
    #             </code> to add it to the Amazon EKS
    #             control plane.</p>
    #         <p>Second, a <a href="https://amazon-eks.s3.us-west-2.amazonaws.com/eks-connector/manifests/eks-connector/latest/eks-connector.yaml">Manifest</a> containing the <code>activationID</code> and
    #                 <code>activationCode</code> must be applied to the Kubernetes cluster through it's
    #             native provider to provide visibility.</p>
    #
    #         <p>After the Manifest is updated and applied, then the connected cluster is visible to
    #             the Amazon EKS control plane. If the Manifest is not applied within three days,
    #             then the connected cluster will no longer be visible and must be deregistered. See <a>DeregisterCluster</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterClusterInput}.
    #
    # @option params [String] :name
    #   <p>Define a unique name for this cluster for your Region.</p>
    #
    # @option params [ConnectorConfigRequest] :connector_config
    #   <p>The configuration settings required to connect the Kubernetes cluster to the Amazon EKS control plane.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The metadata that you apply to the cluster to assist with categorization and
    #               organization. Each tag consists of a key and an optional value, both of which you
    #               define. Cluster tags do not propagate to any other resources associated with the
    #               cluster.</p>
    #
    # @return [Types::RegisterClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_cluster(
    #     name: 'name', # required
    #     connector_config: {
    #       role_arn: 'roleArn', # required
    #       provider: 'EKS_ANYWHERE' # required - accepts ["EKS_ANYWHERE", "ANTHOS", "GKE", "AKS", "OPENSHIFT", "TANZU", "RANCHER", "EC2", "OTHER"]
    #     }, # required
    #     client_request_token: 'clientRequestToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.name #=> String
    #   resp.data.cluster.arn #=> String
    #   resp.data.cluster.created_at #=> Time
    #   resp.data.cluster.version #=> String
    #   resp.data.cluster.endpoint #=> String
    #   resp.data.cluster.role_arn #=> String
    #   resp.data.cluster.resources_vpc_config #=> Types::VpcConfigResponse
    #   resp.data.cluster.resources_vpc_config.subnet_ids #=> Array<String>
    #   resp.data.cluster.resources_vpc_config.subnet_ids[0] #=> String
    #   resp.data.cluster.resources_vpc_config.security_group_ids #=> Array<String>
    #   resp.data.cluster.resources_vpc_config.cluster_security_group_id #=> String
    #   resp.data.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.data.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.data.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.data.cluster.resources_vpc_config.public_access_cidrs #=> Array<String>
    #   resp.data.cluster.kubernetes_network_config #=> Types::KubernetesNetworkConfigResponse
    #   resp.data.cluster.kubernetes_network_config.service_ipv4_cidr #=> String
    #   resp.data.cluster.kubernetes_network_config.service_ipv6_cidr #=> String
    #   resp.data.cluster.kubernetes_network_config.ip_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.cluster.logging #=> Types::Logging
    #   resp.data.cluster.logging.cluster_logging #=> Array<LogSetup>
    #   resp.data.cluster.logging.cluster_logging[0] #=> Types::LogSetup
    #   resp.data.cluster.logging.cluster_logging[0].types #=> Array<String>
    #   resp.data.cluster.logging.cluster_logging[0].types[0] #=> String, one of ["api", "audit", "authenticator", "controllerManager", "scheduler"]
    #   resp.data.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.data.cluster.identity #=> Types::Identity
    #   resp.data.cluster.identity.oidc #=> Types::OIDC
    #   resp.data.cluster.identity.oidc.issuer #=> String
    #   resp.data.cluster.status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"]
    #   resp.data.cluster.certificate_authority #=> Types::Certificate
    #   resp.data.cluster.certificate_authority.data #=> String
    #   resp.data.cluster.client_request_token #=> String
    #   resp.data.cluster.platform_version #=> String
    #   resp.data.cluster.tags #=> Hash<String, String>
    #   resp.data.cluster.tags['key'] #=> String
    #   resp.data.cluster.encryption_config #=> Array<EncryptionConfig>
    #   resp.data.cluster.encryption_config[0] #=> Types::EncryptionConfig
    #   resp.data.cluster.encryption_config[0].resources #=> Array<String>
    #   resp.data.cluster.encryption_config[0].provider #=> Types::Provider
    #   resp.data.cluster.encryption_config[0].provider.key_arn #=> String
    #   resp.data.cluster.connector_config #=> Types::ConnectorConfigResponse
    #   resp.data.cluster.connector_config.activation_id #=> String
    #   resp.data.cluster.connector_config.activation_code #=> String
    #   resp.data.cluster.connector_config.activation_expiry #=> Time
    #   resp.data.cluster.connector_config.provider #=> String
    #   resp.data.cluster.connector_config.role_arn #=> String
    #
    def register_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceLimitExceededException, Errors::ServerException, Errors::AccessDeniedException, Errors::ResourceInUseException, Errors::ResourcePropagationDelayException, Errors::InvalidParameterException, Errors::ClientException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::RegisterCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterCluster,
        stubs: @stubs,
        params_class: Params::RegisterClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified tags to a resource with the specified
    #                 <code>resourceArn</code>. If existing tags on a resource are not specified in the
    #             request parameters, they are not changed. When a resource is deleted, the tags
    #             associated with that resource are deleted as well. Tags that you create for Amazon EKS resources do not propagate to any other resources associated with the
    #             cluster. For example, if you tag a cluster with this operation, that tag does not
    #             automatically propagate to the subnets and nodes associated with the cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which to add tags. Currently, the supported resources
    #               are Amazon EKS clusters and managed node groups.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException]),
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

    # <p>Deletes specified tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to delete tags. Currently, the supported
    #               resources are Amazon EKS clusters and managed node groups.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::BadRequestException]),
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

    # <p>Updates an Amazon EKS add-on.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAddonInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster.</p>
    #
    # @option params [String] :addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    #
    # @option params [String] :addon_version
    #   <p>The version of the add-on. The version must match one of the versions returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html">
    #                  <code>DescribeAddonVersions</code>
    #               </a>.</p>
    #
    # @option params [String] :service_account_role_arn
    #   <p>The Amazon Resource Name (ARN) of an existing IAM role to bind to the add-on's service account. The role must be assigned the IAM permissions required by the add-on. If you don't specify an existing IAM role, then the add-on uses the
    #        permissions assigned to the node IAM role. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html">Amazon EKS node IAM role</a> in the <i>Amazon EKS User Guide</i>.</p>
    #           <note>
    #               <p>To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC) provider created for
    #                   your cluster. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html">Enabling
    #                       IAM roles for service accounts on your cluster</a> in the
    #                   <i>Amazon EKS User Guide</i>.</p>
    #            </note>
    #
    # @option params [String] :resolve_conflicts
    #   <p>How to resolve parameter value conflicts when applying the new version of the add-on
    #               to the cluster.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @return [Types::UpdateAddonOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_addon(
    #     cluster_name: 'clusterName', # required
    #     addon_name: 'addonName', # required
    #     addon_version: 'addonVersion',
    #     service_account_role_arn: 'serviceAccountRoleArn',
    #     resolve_conflicts: 'OVERWRITE', # accepts ["OVERWRITE", "NONE"]
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAddonOutput
    #   resp.data.update #=> Types::Update
    #   resp.data.update.id #=> String
    #   resp.data.update.status #=> String, one of ["InProgress", "Failed", "Cancelled", "Successful"]
    #   resp.data.update.type #=> String, one of ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate"]
    #   resp.data.update.params #=> Array<UpdateParam>
    #   resp.data.update.params[0] #=> Types::UpdateParam
    #   resp.data.update.params[0].type #=> String, one of ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage"]
    #   resp.data.update.params[0].value #=> String
    #   resp.data.update.created_at #=> Time
    #   resp.data.update.errors #=> Array<ErrorDetail>
    #   resp.data.update.errors[0] #=> Types::ErrorDetail
    #   resp.data.update.errors[0].error_code #=> String, one of ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"]
    #   resp.data.update.errors[0].error_message #=> String
    #   resp.data.update.errors[0].resource_ids #=> Array<String>
    #   resp.data.update.errors[0].resource_ids[0] #=> String
    #
    def update_addon(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAddonInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAddonInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAddon
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServerException, Errors::ResourceInUseException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::UpdateAddon
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAddon,
        stubs: @stubs,
        params_class: Params::UpdateAddonOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_addon
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an Amazon EKS cluster configuration. Your cluster continues to
    #             function during the update. The response output includes an update ID that you can use
    #             to track the status of your cluster update with the <a>DescribeUpdate</a> API
    #             operation.</p>
    #         <p>You can use this API operation to enable or disable exporting the Kubernetes control
    #             plane logs for your cluster to CloudWatch Logs. By default, cluster control plane
    #             logs aren't exported to CloudWatch Logs. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html">Amazon EKS Cluster Control Plane Logs</a> in the
    #                 <i>
    #                <i>Amazon EKS User Guide</i>
    #             </i>.</p>
    #         <note>
    #             <p>CloudWatch Logs ingestion, archive storage, and data scanning rates apply to
    #                 exported control plane logs. For more information, see <a href="http://aws.amazon.com/cloudwatch/pricing/">CloudWatch
    #                 Pricing</a>.</p>
    #         </note>
    #         <p>You can also use this API operation to enable or disable public and private access to
    #             your cluster's Kubernetes API server endpoint. By default, public access is enabled, and
    #             private access is disabled. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html">Amazon EKS cluster endpoint access control</a> in the
    #                 <i>
    #                <i>Amazon EKS User Guide</i>
    #             </i>. </p>
    #         <important>
    #             <p>You can't update the subnets or security group IDs for an existing cluster.</p>
    #         </important>
    #         <p>Cluster updates are asynchronous, and they should finish within a few minutes. During
    #             an update, the cluster status moves to <code>UPDATING</code> (this status transition is
    #             eventually consistent). When the update is complete (either <code>Failed</code> or
    #                 <code>Successful</code>), the cluster status moves to <code>Active</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateClusterConfigInput}.
    #
    # @option params [String] :name
    #   <p>The name of the Amazon EKS cluster to update.</p>
    #
    # @option params [VpcConfigRequest] :resources_vpc_config
    #   <p>An object representing the VPC configuration to use for an Amazon EKS
    #               cluster.</p>
    #
    # @option params [Logging] :logging
    #   <p>Enable or disable exporting the Kubernetes control plane logs for your cluster to
    #                   CloudWatch Logs. By default, cluster control plane logs aren't exported to
    #                   CloudWatch Logs. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html">Amazon EKS cluster control plane logs</a> in the
    #                   <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #           <note>
    #               <p>CloudWatch Logs ingestion, archive storage, and data scanning rates apply to
    #                   exported control plane logs. For more information, see <a href="http://aws.amazon.com/cloudwatch/pricing/">CloudWatch
    #                   Pricing</a>.</p>
    #           </note>
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @return [Types::UpdateClusterConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster_config(
    #     name: 'name', # required
    #     resources_vpc_config: {
    #       subnet_ids: [
    #         'member'
    #       ],
    #       endpoint_public_access: false,
    #       endpoint_private_access: false,
    #     },
    #     logging: {
    #       cluster_logging: [
    #         {
    #           types: [
    #             'api' # accepts ["api", "audit", "authenticator", "controllerManager", "scheduler"]
    #           ],
    #           enabled: false
    #         }
    #       ]
    #     },
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateClusterConfigOutput
    #   resp.data.update #=> Types::Update
    #   resp.data.update.id #=> String
    #   resp.data.update.status #=> String, one of ["InProgress", "Failed", "Cancelled", "Successful"]
    #   resp.data.update.type #=> String, one of ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate"]
    #   resp.data.update.params #=> Array<UpdateParam>
    #   resp.data.update.params[0] #=> Types::UpdateParam
    #   resp.data.update.params[0].type #=> String, one of ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage"]
    #   resp.data.update.params[0].value #=> String
    #   resp.data.update.created_at #=> Time
    #   resp.data.update.errors #=> Array<ErrorDetail>
    #   resp.data.update.errors[0] #=> Types::ErrorDetail
    #   resp.data.update.errors[0].error_code #=> String, one of ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"]
    #   resp.data.update.errors[0].error_message #=> String
    #   resp.data.update.errors[0].resource_ids #=> Array<String>
    #   resp.data.update.errors[0].resource_ids[0] #=> String
    #
    def update_cluster_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateClusterConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateClusterConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateClusterConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServerException, Errors::ResourceInUseException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::UpdateClusterConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateClusterConfig,
        stubs: @stubs,
        params_class: Params::UpdateClusterConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_cluster_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an Amazon EKS cluster to the specified Kubernetes version. Your
    #             cluster continues to function during the update. The response output includes an update
    #             ID that you can use to track the status of your cluster update with the <a>DescribeUpdate</a> API operation.</p>
    #         <p>Cluster updates are asynchronous, and they should finish within a few minutes. During
    #             an update, the cluster status moves to <code>UPDATING</code> (this status transition is
    #             eventually consistent). When the update is complete (either <code>Failed</code> or
    #                 <code>Successful</code>), the cluster status moves to <code>Active</code>.</p>
    #         <p>If your cluster has managed node groups attached to it, all of your node groups’
    #             Kubernetes versions must match the cluster’s Kubernetes version in order to update the
    #             cluster to a new Kubernetes version.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateClusterVersionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the Amazon EKS cluster to update.</p>
    #
    # @option params [String] :version
    #   <p>The desired Kubernetes version following a successful update.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @return [Types::UpdateClusterVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster_version(
    #     name: 'name', # required
    #     version: 'version', # required
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateClusterVersionOutput
    #   resp.data.update #=> Types::Update
    #   resp.data.update.id #=> String
    #   resp.data.update.status #=> String, one of ["InProgress", "Failed", "Cancelled", "Successful"]
    #   resp.data.update.type #=> String, one of ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate"]
    #   resp.data.update.params #=> Array<UpdateParam>
    #   resp.data.update.params[0] #=> Types::UpdateParam
    #   resp.data.update.params[0].type #=> String, one of ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage"]
    #   resp.data.update.params[0].value #=> String
    #   resp.data.update.created_at #=> Time
    #   resp.data.update.errors #=> Array<ErrorDetail>
    #   resp.data.update.errors[0] #=> Types::ErrorDetail
    #   resp.data.update.errors[0].error_code #=> String, one of ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"]
    #   resp.data.update.errors[0].error_message #=> String
    #   resp.data.update.errors[0].resource_ids #=> Array<String>
    #   resp.data.update.errors[0].resource_ids[0] #=> String
    #
    def update_cluster_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateClusterVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateClusterVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateClusterVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServerException, Errors::ResourceInUseException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::UpdateClusterVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateClusterVersion,
        stubs: @stubs,
        params_class: Params::UpdateClusterVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_cluster_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an Amazon EKS managed node group configuration. Your node group
    #             continues to function during the update. The response output includes an update ID that
    #             you can use to track the status of your node group update with the <a>DescribeUpdate</a> API operation. Currently you can update the Kubernetes
    #             labels for a node group or the scaling configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateNodegroupConfigInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the Amazon EKS cluster that the managed node group resides
    #               in.</p>
    #
    # @option params [String] :nodegroup_name
    #   <p>The name of the managed node group to update.</p>
    #
    # @option params [UpdateLabelsPayload] :labels
    #   <p>The Kubernetes labels to be applied to the nodes in the node group after the
    #               update.</p>
    #
    # @option params [UpdateTaintsPayload] :taints
    #   <p>The Kubernetes taints to be applied to the nodes in the node group after the
    #               update. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node taints on managed node groups</a>.</p>
    #
    # @option params [NodegroupScalingConfig] :scaling_config
    #   <p>The scaling configuration details for the Auto Scaling group after the update.</p>
    #
    # @option params [NodegroupUpdateConfig] :update_config
    #   <p>The node group update configuration.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @return [Types::UpdateNodegroupConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_nodegroup_config(
    #     cluster_name: 'clusterName', # required
    #     nodegroup_name: 'nodegroupName', # required
    #     labels: {
    #       add_or_update_labels: {
    #         'key' => 'value'
    #       },
    #       remove_labels: [
    #         'member'
    #       ]
    #     },
    #     taints: {
    #       add_or_update_taints: [
    #         {
    #           key: 'key',
    #           value: 'value',
    #           effect: 'NO_SCHEDULE' # accepts ["NO_SCHEDULE", "NO_EXECUTE", "PREFER_NO_SCHEDULE"]
    #         }
    #       ],
    #     },
    #     scaling_config: {
    #       min_size: 1,
    #       max_size: 1,
    #       desired_size: 1
    #     },
    #     update_config: {
    #       max_unavailable: 1,
    #       max_unavailable_percentage: 1
    #     },
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateNodegroupConfigOutput
    #   resp.data.update #=> Types::Update
    #   resp.data.update.id #=> String
    #   resp.data.update.status #=> String, one of ["InProgress", "Failed", "Cancelled", "Successful"]
    #   resp.data.update.type #=> String, one of ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate"]
    #   resp.data.update.params #=> Array<UpdateParam>
    #   resp.data.update.params[0] #=> Types::UpdateParam
    #   resp.data.update.params[0].type #=> String, one of ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage"]
    #   resp.data.update.params[0].value #=> String
    #   resp.data.update.created_at #=> Time
    #   resp.data.update.errors #=> Array<ErrorDetail>
    #   resp.data.update.errors[0] #=> Types::ErrorDetail
    #   resp.data.update.errors[0].error_code #=> String, one of ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"]
    #   resp.data.update.errors[0].error_message #=> String
    #   resp.data.update.errors[0].resource_ids #=> Array<String>
    #   resp.data.update.errors[0].resource_ids[0] #=> String
    #
    def update_nodegroup_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateNodegroupConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateNodegroupConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateNodegroupConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServerException, Errors::ResourceInUseException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::UpdateNodegroupConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateNodegroupConfig,
        stubs: @stubs,
        params_class: Params::UpdateNodegroupConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_nodegroup_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the Kubernetes version or AMI version of an Amazon EKS managed node
    #             group.</p>
    #         <p>You can update a node group using a launch template only if the node group was
    #             originally deployed with a launch template. If you need to update a custom AMI in a node
    #             group that was deployed with a launch template, then update your custom AMI, specify the
    #             new ID in a new version of the launch template, and then update the node group to the
    #             new version of the launch template.</p>
    #         <p>If you update without a launch template, then you can update to the latest available
    #             AMI version of a node group's current Kubernetes version by not specifying a Kubernetes
    #             version in the request. You can update to the latest AMI version of your cluster's
    #             current Kubernetes version by specifying your cluster's Kubernetes version in the
    #             request. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html">Amazon EKS optimized Amazon Linux 2 AMI versions</a> in the <i>Amazon EKS User Guide</i>.</p>
    #         <p>You cannot roll back a node group to an earlier Kubernetes version or AMI
    #             version.</p>
    #         <p>When a node in a managed node group is terminated due to a scaling action or update,
    #             the pods in that node are drained first. Amazon EKS attempts to drain the nodes
    #             gracefully and will fail if it is unable to do so. You can <code>force</code> the update
    #             if Amazon EKS is unable to drain the nodes as a result of a pod disruption
    #             budget issue.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateNodegroupVersionInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the Amazon EKS cluster that is associated with the managed node
    #               group to update.</p>
    #
    # @option params [String] :nodegroup_name
    #   <p>The name of the managed node group to update.</p>
    #
    # @option params [String] :version
    #   <p>The Kubernetes version to update to. If no version is specified, then the Kubernetes
    #               version of the node group does not change. You can specify the Kubernetes version of the
    #               cluster to update the node group to the latest AMI version of the cluster's Kubernetes
    #               version. If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify
    #                   <code>version</code>, or the node group  update will fail.
    #               For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    # @option params [String] :release_version
    #   <p>The AMI version of the Amazon EKS optimized AMI to use for the update. By
    #               default, the latest available AMI version for the node group's Kubernetes version is
    #               used. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html">Amazon EKS optimized Amazon Linux 2 AMI versions </a> in the <i>Amazon EKS User Guide</i>.
    #               If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify  <code>releaseVersion</code>,
    #               or the node group  update will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    # @option params [LaunchTemplateSpecification] :launch_template
    #   <p>An object representing a node group's launch template specification. You can only
    #               update a node group using a launch template if the node group was originally deployed
    #               with a launch template.</p>
    #
    # @option params [Boolean] :force
    #   <p>Force the update if the existing node group's pods are unable to be drained due to a
    #               pod disruption budget issue. If an update fails because pods could not be drained, you
    #               can force the update after it fails to terminate the old node whether or not any pods
    #               are running on the node.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @return [Types::UpdateNodegroupVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_nodegroup_version(
    #     cluster_name: 'clusterName', # required
    #     nodegroup_name: 'nodegroupName', # required
    #     version: 'version',
    #     release_version: 'releaseVersion',
    #     launch_template: {
    #       name: 'name',
    #       version: 'version',
    #       id: 'id'
    #     },
    #     force: false,
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateNodegroupVersionOutput
    #   resp.data.update #=> Types::Update
    #   resp.data.update.id #=> String
    #   resp.data.update.status #=> String, one of ["InProgress", "Failed", "Cancelled", "Successful"]
    #   resp.data.update.type #=> String, one of ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate"]
    #   resp.data.update.params #=> Array<UpdateParam>
    #   resp.data.update.params[0] #=> Types::UpdateParam
    #   resp.data.update.params[0].type #=> String, one of ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage"]
    #   resp.data.update.params[0].value #=> String
    #   resp.data.update.created_at #=> Time
    #   resp.data.update.errors #=> Array<ErrorDetail>
    #   resp.data.update.errors[0] #=> Types::ErrorDetail
    #   resp.data.update.errors[0].error_code #=> String, one of ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"]
    #   resp.data.update.errors[0].error_message #=> String
    #   resp.data.update.errors[0].resource_ids #=> Array<String>
    #   resp.data.update.errors[0].resource_ids[0] #=> String
    #
    def update_nodegroup_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateNodegroupVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateNodegroupVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateNodegroupVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServerException, Errors::ResourceInUseException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::UpdateNodegroupVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateNodegroupVersion,
        stubs: @stubs,
        params_class: Params::UpdateNodegroupVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_nodegroup_version
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
